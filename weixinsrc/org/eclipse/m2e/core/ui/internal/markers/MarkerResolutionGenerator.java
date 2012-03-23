// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarkerResolutionGenerator.java

package org.eclipse.m2e.core.ui.internal.markers;

import java.util.*;
import org.eclipse.core.resources.*;
import org.eclipse.core.runtime.*;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.UpdateConfigurationJob;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.*;
import org.eclipse.ui.views.markers.WorkbenchMarkerResolution;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class MarkerResolutionGenerator
    implements IMarkerResolutionGenerator, IMarkerResolutionGenerator2
{
    private class RefreshResolution extends WorkbenchMarkerResolution
    {

        public String getDescription()
        {
            return Messages.MarkerResolutionGenerator_desc;
        }

        public Image getImage()
        {
            return null;
        }

        public String getLabel()
        {
            return Messages.MarkerResolutionGenerator_label;
        }

        public void run(IMarker marker)
        {
            Set projects = getProjects(new IMarker[] {
                marker
            });
            (new UpdateConfigurationJob((IProject[])projects.toArray(new IProject[projects.size()]))).schedule();
        }

        public void run(IMarker markers[], IProgressMonitor monitor)
        {
            Set projects = getProjects(markers);
            (new UpdateConfigurationJob((IProject[])projects.toArray(new IProject[projects.size()]))).schedule();
        }

        private transient Set getProjects(IMarker markers[])
        {
            Set toRet = new HashSet();
            IMarker aimarker[];
            int j = (aimarker = markers).length;
            for(int i = 0; i < j; i++)
            {
                IMarker mark = aimarker[i];
                IResource res = mark.getResource();
                IProject prj = res.getProject();
                if(prj != null)
                    toRet.add(prj);
            }

            return toRet;
        }

        public IMarker[] findOtherMarkers(IMarker markers[])
        {
            List toRet = new ArrayList();
            IMarker aimarker[];
            int j = (aimarker = markers).length;
            for(int i = 0; i < j; i++)
            {
                IMarker m = aimarker[i];
                try
                {
                    if("org.eclipse.m2e.core.maven2Problem.configuration".equals(m.getType()) && m != marker)
                        toRet.add(m);
                }
                catch(CoreException ex)
                {
                    MarkerResolutionGenerator.LOG.error(ex.getMessage(), ex);
                }
            }

            return (IMarker[])toRet.toArray(new IMarker[0]);
        }

        private IMarker marker;
        final MarkerResolutionGenerator this$0;

        public RefreshResolution(IMarker marker)
        {
            this$0 = MarkerResolutionGenerator.this;
            super();
            this.marker = marker;
        }
    }


    public MarkerResolutionGenerator()
    {
    }

    public boolean hasResolutions(IMarker marker)
    {
        return true;
    }

    public IMarkerResolution[] getResolutions(IMarker marker)
    {
        try
        {
            IMarkerResolution cached[] = (IMarkerResolution[])marker.getResource().getSessionProperty(QUALIFIED);
            if(cached == null)
            {
                cached = (new IMarkerResolution[] {
                    new RefreshResolution(marker)
                });
                marker.getResource().setSessionProperty(QUALIFIED, cached);
            }
            return cached;
        }
        catch(CoreException _ex)
        {
            return (new IMarkerResolution[] {
                new RefreshResolution(marker)
            });
        }
    }

    private static final Logger LOG = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/markers/MarkerResolutionGenerator);
    static QualifiedName QUALIFIED = new QualifiedName("org.eclipse.m2e.core.ui", "refreshResolution");


}
