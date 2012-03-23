// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenPropertyTester.java

package org.eclipse.m2e.core.ui.internal.actions;

import java.util.Map;
import org.eclipse.core.expressions.PropertyTester;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.ArtifactKey;
import org.eclipse.m2e.core.project.*;
import org.sonatype.aether.graph.DependencyNode;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.actions:
//            SelectionUtil

public class MavenPropertyTester extends PropertyTester
{

    public MavenPropertyTester()
    {
    }

    public boolean test(Object receiver, String property, Object args[], Object expectedValue)
    {
        if("workspaceResulutionEnable".equals(property))
        {
            boolean enableWorkspaceResolution = true;
            IAdaptable adaptable = (IAdaptable)receiver;
            IProject projectAdapter = (IProject)adaptable.getAdapter(org/eclipse/core/resources/IProject);
            if(projectAdapter != null)
            {
                IMavenProjectRegistry projectManager = MavenPlugin.getMavenProjectRegistry();
                IMavenProjectFacade projectFacade = projectManager.create(projectAdapter, new NullProgressMonitor());
                if(projectFacade != null)
                {
                    ResolverConfiguration configuration = projectFacade.getResolverConfiguration();
                    return !configuration.shouldResolveWorkspaceProjects();
                }
            }
            return enableWorkspaceResolution;
        }
        if("hasArtifactKey".equals(property))
        {
            ArtifactKey ak = (ArtifactKey)SelectionUtil.getType(receiver, org/eclipse/m2e/core/embedder/ArtifactKey);
            return ak != null;
        }
        if("hasProjectArtifactKey".equals(property))
        {
            ArtifactKey key = (ArtifactKey)SelectionUtil.getType(receiver, org/eclipse/m2e/core/embedder/ArtifactKey);
            if(key != null)
            {
                IMavenProjectRegistry projectManager = MavenPlugin.getMavenProjectRegistry();
                IMavenProjectFacade mavenProject = null;
                mavenProject = projectManager.getMavenProject(key.getGroupId(), key.getArtifactId(), key.getVersion());
                return mavenProject != null;
            }
        }
        if("isTransitiveDependencyTreeNode".equals(property) && (receiver instanceof DependencyNode))
        {
            DependencyNode nd = (DependencyNode)receiver;
            return nd.getData().get("LEVEL") == null;
        }
        if("isDirectDependencyTreeNode".equals(property) && (receiver instanceof DependencyNode))
        {
            DependencyNode nd = (DependencyNode)receiver;
            return "DIRECT".equals(nd.getData().get("LEVEL"));
        } else
        {
            return false;
        }
    }

    private static final String IS_DIRECT_DEPENDENCY_TREE_NODE = "isDirectDependencyTreeNode";
    private static final String IS_TRANSITIVE_DEPENDENCY_TREE_NODE = "isTransitiveDependencyTreeNode";
    private static final String HAS_PROJECT_ARTIFACT_KEY = "hasProjectArtifactKey";
    private static final String HAS_ARTIFACT_KEY = "hasArtifactKey";
    private static final String WORKSPACE_RESULUTION_ENABLE = "workspaceResulutionEnable";
}
