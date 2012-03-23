// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenProjectActionSupport.java

package org.eclipse.m2e.core.ui.internal.actions;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.core.resources.*;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.actions:
//            MavenActionSupport, UpdateDependenciesAction

public abstract class MavenProjectActionSupport extends MavenActionSupport
    implements IWorkbenchWindowActionDelegate
{

    public MavenProjectActionSupport()
    {
    }

    protected IProject[] getProjects()
    {
        ArrayList projectList = new ArrayList();
        if(selection != null)
        {
            for(Iterator it = selection.iterator(); it.hasNext();)
            {
                Object o = it.next();
                if(o instanceof IProject)
                    projectList.add((IProject)o);
                else
                if(o instanceof IWorkingSet)
                {
                    IWorkingSet workingSet = (IWorkingSet)o;
                    IAdaptable aiadaptable[];
                    int j = (aiadaptable = workingSet.getElements()).length;
                    for(int i = 0; i < j; i++)
                    {
                        IAdaptable adaptable = aiadaptable[i];
                        IProject project = (IProject)adaptable.getAdapter(org/eclipse/core/resources/IProject);
                        try
                        {
                            if(project != null && project.isAccessible() && project.hasNature("org.eclipse.m2e.core.maven2Nature"))
                                projectList.add(project);
                        }
                        catch(CoreException ex)
                        {
                            log.error(ex.getMessage(), ex);
                        }
                    }

                }
            }

        }
        if(projectList.isEmpty())
            return ResourcesPlugin.getWorkspace().getRoot().getProjects();
        else
            return (IProject[])projectList.toArray(new IProject[projectList.size()]);
    }

    public void dispose()
    {
    }

    public void init(IWorkbenchWindow iworkbenchwindow)
    {
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/actions/UpdateDependenciesAction);

}
