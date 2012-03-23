// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ParentGatherer.java

package org.eclipse.m2e.core.ui.internal.util;

import java.util.LinkedList;
import org.apache.maven.model.Model;
import org.apache.maven.project.MavenProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.IMaven;
import org.eclipse.m2e.core.project.IMavenProjectFacade;
import org.eclipse.m2e.core.project.IMavenProjectRegistry;

public class ParentGatherer
{

    public ParentGatherer(MavenProject leafProject, IMavenProjectFacade facade)
    {
        mavenProject = leafProject;
        projectFacade = facade;
    }

    public LinkedList getParentHierarchy(IProgressMonitor monitor)
        throws CoreException
    {
        LinkedList hierarchy = new LinkedList();
        IMaven maven = MavenPlugin.getMaven();
        IMavenProjectRegistry projectManager = MavenPlugin.getMavenProjectRegistry();
        maven.detachFromSession(mavenProject);
        hierarchy.add(mavenProject);
        for(MavenProject project = mavenProject; project.getModel().getParent() != null; hierarchy.add(project))
        {
            if(monitor.isCanceled())
                return null;
            org.apache.maven.execution.MavenExecutionRequest request = projectManager.createExecutionRequest(projectFacade, monitor);
            project = maven.resolveParentProject(request, project, monitor);
        }

        return hierarchy;
    }

    private MavenProject mavenProject;
    private IMavenProjectFacade projectFacade;
}
