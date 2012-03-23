// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenVersionDecorator.java

package org.eclipse.m2e.core.ui.internal;

import java.util.*;
import org.eclipse.core.resources.*;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.jface.viewers.*;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.ArtifactKey;
import org.eclipse.m2e.core.project.*;
import org.eclipse.swt.graphics.Image;

public class MavenVersionDecorator
    implements ILabelDecorator
{

    public MavenVersionDecorator()
    {
        listeners = new HashMap();
    }

    public Image decorateImage(Image image, Object element)
    {
        return null;
    }

    public String decorateText(String text, Object element)
    {
        if(element instanceof IResource)
        {
            IResource resource = (IResource)element;
            org.eclipse.core.resources.IProject project = resource.getProject();
            if(project != null)
            {
                IMavenProjectRegistry projectManager = MavenPlugin.getMavenProjectRegistry();
                IMavenProjectFacade facade = projectManager.create(project, new NullProgressMonitor());
                if(facade != null)
                {
                    ArtifactKey mavenProject = facade.getArtifactKey();
                    if(mavenProject != null)
                    {
                        String name = resource.getName();
                        int start = text.indexOf(name);
                        if(start > -1)
                        {
                            int n = text.indexOf(' ', start + name.length());
                            if(n > -1)
                                return (new StringBuilder(String.valueOf(text.substring(0, n)))).append("  ").append(mavenProject.getVersion()).append(text.substring(n)).toString();
                        }
                        return (new StringBuilder(String.valueOf(text))).append("  ").append(mavenProject.getVersion()).toString();
                    }
                }
            }
        }
        return null;
    }

    public boolean isLabelProperty(Object element, String property)
    {
        return false;
    }

    public void addListener(final ILabelProviderListener listener)
    {
        IMavenProjectChangedListener projectChangeListener = new IMavenProjectChangedListener() {

            public void mavenProjectChanged(MavenProjectChangedEvent events[], IProgressMonitor monitor)
            {
                ArrayList pomList = new ArrayList();
                for(int i = 0; i < events.length; i++)
                    if(events[i] != null && events[i].getMavenProject() != null)
                    {
                        IFile pom = events[i].getMavenProject().getPom();
                        pomList.add(pom);
                        if(pom.getParent().getType() == 4)
                            pomList.add(pom.getParent());
                    }

                listener.labelProviderChanged(new LabelProviderChangedEvent(MavenVersionDecorator.this, pomList.toArray()));
            }

            final MavenVersionDecorator this$0;
            private final ILabelProviderListener val$listener;

            
            {
                this$0 = MavenVersionDecorator.this;
                listener = ilabelproviderlistener;
                super();
            }
        }
;
        listeners.put(listener, projectChangeListener);
        IMavenProjectRegistry projectManager = MavenPlugin.getMavenProjectRegistry();
        projectManager.addMavenProjectChangedListener(projectChangeListener);
    }

    public void removeListener(ILabelProviderListener listener)
    {
        IMavenProjectChangedListener projectChangeListener = (IMavenProjectChangedListener)listeners.get(listener);
        if(projectChangeListener != null)
        {
            IMavenProjectRegistry projectManager = MavenPlugin.getMavenProjectRegistry();
            projectManager.removeMavenProjectChangedListener(projectChangeListener);
        }
    }

    public void dispose()
    {
    }

    private Map listeners;
}
