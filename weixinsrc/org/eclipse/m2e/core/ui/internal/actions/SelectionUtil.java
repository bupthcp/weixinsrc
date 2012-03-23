// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SelectionUtil.java

package org.eclipse.m2e.core.ui.internal.actions;

import java.io.*;
import java.net.URI;
import java.util.*;
import org.apache.maven.artifact.Artifact;
import org.apache.maven.execution.MavenExecutionRequest;
import org.apache.maven.execution.MavenExecutionResult;
import org.apache.maven.project.MavenProject;
import org.codehaus.plexus.util.IOUtil;
import org.eclipse.core.resources.*;
import org.eclipse.core.runtime.*;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.ArtifactKey;
import org.eclipse.m2e.core.embedder.IMaven;
import org.eclipse.m2e.core.project.IMavenProjectFacade;
import org.eclipse.m2e.core.project.IMavenProjectRegistry;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.util.Util;
import org.eclipse.ui.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.sonatype.aether.graph.Dependency;
import org.sonatype.aether.graph.DependencyNode;

public class SelectionUtil
{

    public SelectionUtil()
    {
    }

    public static int getSelectionType(IStructuredSelection selection)
    {
        int type = 0;
        if(selection != null)
        {
            for(Iterator it = selection.iterator(); it.hasNext();)
            {
                int elementType = getElementType(it.next());
                if(elementType == 0)
                    return 0;
                type |= elementType;
            }

        }
        return type;
    }

    public static int getElementType(Object element)
    {
        IProject project;
        project = (IProject)getType(element, org/eclipse/core/resources/IProject);
        if(project == null)
            break MISSING_BLOCK_LABEL_30;
        return !project.hasNature("org.eclipse.m2e.core.maven2Nature") ? 2 : 1;
        JVM INSTR pop ;
        IFile file = (IFile)getType(element, org/eclipse/core/resources/IFile);
        if(file != null && "pom.xml".equals(file.getFullPath().lastSegment()))
            return 4;
        ArtifactKey artifactKey = (ArtifactKey)getType(element, org/eclipse/m2e/core/embedder/ArtifactKey);
        if(artifactKey != null)
            return 8;
        IWorkingSet workingSet = (IWorkingSet)getType(element, org/eclipse/ui/IWorkingSet);
        return workingSet == null ? 0 : 16;
    }

    public static Object getType(Object element, Class type)
    {
        if(element == null)
            return null;
        if(type.isInstance(element))
            return element;
        if(element instanceof IAdaptable)
        {
            Object adapter = ((IAdaptable)element).getAdapter(type);
            if(adapter != null)
                return adapter;
        }
        return Platform.getAdapterManager().getAdapter(element, type);
    }

    public static IPath getSelectedLocation(IStructuredSelection selection)
    {
        Object element = selection != null ? selection.getFirstElement() : null;
        IPath path = (IPath)getType(element, org/eclipse/core/runtime/IPath);
        if(path != null)
            return path;
        IResource resource = (IResource)getType(element, org/eclipse/core/resources/IResource);
        if(resource != null)
            return resource.getLocation();
        else
            return null;
    }

    public static IWorkingSet getSelectedWorkingSet(IStructuredSelection selection)
    {
        Object element = selection != null ? selection.getFirstElement() : null;
        if(element == null)
            return null;
        IWorkingSet workingSet = (IWorkingSet)getType(element, org/eclipse/ui/IWorkingSet);
        if(workingSet != null)
            return workingSet;
        IResource resource = (IResource)getType(element, org/eclipse/core/resources/IResource);
        if(resource != null)
            return getWorkingSet(resource.getProject());
        else
            return null;
    }

    public static IWorkingSet getWorkingSet(Object element)
    {
        IWorkingSetManager workingSetManager = PlatformUI.getWorkbench().getWorkingSetManager();
        IWorkingSet aiworkingset[];
        int j = (aiworkingset = workingSetManager.getWorkingSets()).length;
        for(int i = 0; i < j; i++)
        {
            IWorkingSet workingSet = aiworkingset[i];
            IAdaptable aiadaptable[];
            int l = (aiadaptable = workingSet.getElements()).length;
            for(int k = 0; k < l; k++)
            {
                IAdaptable adaptable = aiadaptable[k];
                if(adaptable.getAdapter(org/eclipse/core/resources/IResource) == element)
                    return workingSet;
            }

        }

        return null;
    }

    public static List getAssignedWorkingSets(Object element)
    {
        List list = new ArrayList();
        IWorkingSetManager workingSetManager = PlatformUI.getWorkbench().getWorkingSetManager();
        IWorkingSet aiworkingset[];
        int j = (aiworkingset = workingSetManager.getWorkingSets()).length;
        for(int i = 0; i < j; i++)
        {
            IWorkingSet workingSet = aiworkingset[i];
            IAdaptable aiadaptable[];
            int l = (aiadaptable = workingSet.getElements()).length;
            for(int k = 0; k < l; k++)
            {
                IAdaptable adaptable = aiadaptable[k];
                if(adaptable.getAdapter(org/eclipse/core/resources/IResource) == element)
                    list.add(workingSet);
            }

        }

        return list;
    }

    public static ArtifactKey getArtifactKey(Object element)
        throws CoreException
    {
        if(element instanceof Artifact)
            return new ArtifactKey((Artifact)element);
        if(element instanceof DependencyNode)
        {
            org.sonatype.aether.artifact.Artifact artifact = ((DependencyNode)element).getDependency().getArtifact();
            return new ArtifactKey(artifact);
        } else
        {
            return (ArtifactKey)getType(element, org/eclipse/m2e/core/embedder/ArtifactKey);
        }
    }

    public static MavenProject getMavenProject(IEditorInput editorInput, IProgressMonitor monitor)
        throws CoreException
    {
        IStorage storage;
        IPath path;
        File tempPomFile;
        java.io.InputStream is;
        java.io.OutputStream os;
        if(editorInput instanceof IFileEditorInput)
        {
            IFile pomFile = ((IFileEditorInput)editorInput).getFile();
            IMavenProjectRegistry projectManager = MavenPlugin.getMavenProjectRegistry();
            IMavenProjectFacade facade = projectManager.create(pomFile, true, monitor);
            if(facade != null)
                return facade.getMavenProject(monitor);
            break MISSING_BLOCK_LABEL_299;
        }
        if(!(editorInput instanceof IStorageEditorInput))
            break MISSING_BLOCK_LABEL_253;
        IStorageEditorInput storageInput = (IStorageEditorInput)editorInput;
        storage = storageInput.getStorage();
        path = storage.getFullPath();
        if(path != null && (new File(path.toOSString())).exists())
            break MISSING_BLOCK_LABEL_241;
        tempPomFile = null;
        is = null;
        os = null;
        MavenProject mavenproject;
        tempPomFile = File.createTempFile("maven-pom", ".pom");
        os = new FileOutputStream(tempPomFile);
        is = storage.getContents();
        IOUtil.copy(is, os);
        mavenproject = readMavenProject(tempPomFile, monitor);
        IOUtil.close(is);
        IOUtil.close(os);
        if(tempPomFile != null)
            tempPomFile.delete();
        return mavenproject;
        IOException ex;
        ex;
        log.error("Can't close stream", ex);
        IOUtil.close(is);
        IOUtil.close(os);
        if(tempPomFile != null)
            tempPomFile.delete();
        break MISSING_BLOCK_LABEL_299;
        Exception exception;
        exception;
        IOUtil.close(is);
        IOUtil.close(os);
        if(tempPomFile != null)
            tempPomFile.delete();
        throw exception;
        return readMavenProject(path.toFile(), monitor);
        if(editorInput.getClass().getName().endsWith("FileStoreEditorInput"))
            return readMavenProject(new File(((org.eclipse.m2e.core.ui.internal.util.Util.FileStoreEditorInputStub)Util.proxy(editorInput, org/eclipse/m2e/core/ui/internal/util/Util$FileStoreEditorInputStub)).getURI().getPath()), monitor);
        return null;
    }

    private static MavenProject readMavenProject(File pomFile, IProgressMonitor monitor)
        throws CoreException
    {
        if(monitor == null)
            monitor = new NullProgressMonitor();
        IMaven maven = MavenPlugin.getMaven();
        MavenExecutionRequest request = maven.createExecutionRequest(monitor);
        request.setOffline(false);
        request.setUpdateSnapshots(false);
        request.setRecursive(false);
        request.setPom(pomFile);
        MavenExecutionResult result = maven.readProject(request, monitor);
        MavenProject project = result.getProject();
        if(project != null)
            return project;
        if(result.hasExceptions())
        {
            List statuses = new ArrayList();
            List exceptions = result.getExceptions();
            Throwable e;
            for(Iterator iterator = exceptions.iterator(); iterator.hasNext(); statuses.add(new Status(4, "org.eclipse.m2e.core", -1, e.getMessage(), e)))
                e = (Throwable)iterator.next();

            throw new CoreException(new MultiStatus("org.eclipse.m2e.core", 4, (IStatus[])statuses.toArray(new IStatus[statuses.size()]), Messages.SelectionUtil_error_cannot_read, null));
        } else
        {
            throw new CoreException(new Status(4, "org.eclipse.m2e.core", -1, Messages.SelectionUtil_error_cannot_read, null));
        }
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/actions/SelectionUtil);
    public static final int UNSUPPORTED = 0;
    public static final int PROJECT_WITH_NATURE = 1;
    public static final int PROJECT_WITHOUT_NATURE = 2;
    public static final int POM_FILE = 4;
    public static final int JAR_FILE = 8;
    public static final int WORKING_SET = 16;

}
