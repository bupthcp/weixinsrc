// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AbstractCreateMavenProjectsOperation.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.lang.reflect.InvocationTargetException;
import java.util.*;
import org.eclipse.core.resources.*;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.jobs.IJobManager;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.m2e.core.project.IMavenProjectImportResult;
import org.eclipse.ui.IWorkingSet;

public abstract class AbstractCreateMavenProjectsOperation
    implements IRunnableWithProgress
{

    public AbstractCreateMavenProjectsOperation(List workingSets)
    {
        this.workingSets = workingSets;
    }

    protected abstract List doCreateMavenProjects(IProgressMonitor iprogressmonitor)
        throws CoreException;

    public static void addToWorkingSets(IProject project, List workingSets)
    {
        if(workingSets != null && workingSets.size() > 0)
        {
            for(Iterator iterator = workingSets.iterator(); iterator.hasNext();)
            {
                IWorkingSet workingSet = (IWorkingSet)iterator.next();
                if(workingSet != null)
                {
                    IAdaptable oldElements[] = workingSet.getElements();
                    IAdaptable newElements[] = new IAdaptable[oldElements.length + 1];
                    System.arraycopy(oldElements, 0, newElements, 0, oldElements.length);
                    newElements[oldElements.length] = project;
                    workingSet.setElements(newElements);
                }
            }

        }
    }

    protected static ArrayList toProjects(List results)
    {
        ArrayList projects = new ArrayList();
        for(Iterator iterator = results.iterator(); iterator.hasNext();)
        {
            IMavenProjectImportResult result = (IMavenProjectImportResult)iterator.next();
            if(result.getProject() != null)
                projects.add(result.getProject());
        }

        return projects;
    }

    public void run(IProgressMonitor monitor)
        throws InvocationTargetException, InterruptedException
    {
        org.eclipse.core.runtime.jobs.ISchedulingRule rule;
        rule = ResourcesPlugin.getWorkspace().getRoot();
        Job.getJobManager().beginRule(rule, monitor);
        try
        {
            List projects = doCreateMavenProjects(monitor);
            if(projects != null)
            {
                IProject project;
                for(Iterator iterator = projects.iterator(); iterator.hasNext(); addToWorkingSets(project, workingSets))
                    project = (IProject)iterator.next();

            }
        }
        catch(CoreException e)
        {
            throw new InvocationTargetException(e);
        }
        break MISSING_BLOCK_LABEL_100;
        Exception exception;
        exception;
        Job.getJobManager().endRule(rule);
        throw exception;
        Job.getJobManager().endRule(rule);
        return;
    }

    public static IStatus toStatus(InvocationTargetException e)
    {
        Throwable t = e.getCause();
        if(t instanceof CoreException)
            return ((CoreException)t).getStatus();
        else
            return new Status(4, "org.eclipse.m2e.core.ui", t.getMessage(), t);
    }

    private final List workingSets;
}
