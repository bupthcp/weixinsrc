// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   OpenPomAction.java

package org.eclipse.m2e.core.ui.internal.actions;

import java.io.*;
import java.net.URL;
import org.apache.maven.artifact.Artifact;
import org.apache.maven.model.Dependency;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.ArtifactKey;
import org.eclipse.m2e.core.embedder.IMaven;
import org.eclipse.m2e.core.internal.index.IndexedArtifact;
import org.eclipse.m2e.core.internal.index.IndexedArtifactFile;
import org.eclipse.m2e.core.project.IMavenProjectFacade;
import org.eclipse.m2e.core.project.IMavenProjectRegistry;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.dialogs.MavenRepositorySearchDialog;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.*;
import org.eclipse.ui.actions.ActionDelegate;
import org.eclipse.ui.part.FileEditorInput;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.actions:
//            SelectionUtil

public class OpenPomAction extends ActionDelegate
    implements IWorkbenchWindowActionDelegate
{
    public static class MavenPathStorageEditorInput extends MavenStorageEditorInput
        implements IPathEditorInput
    {

        public boolean equals(Object obj)
        {
            IPath path = getPath();
            if(path != null && (obj instanceof MavenPathStorageEditorInput))
                return path.equals(((MavenPathStorageEditorInput)obj).getPath());
            else
                return super.equals(obj);
        }

        public MavenPathStorageEditorInput(String name, String tooltip, String path, byte content[])
        {
            super(name, tooltip, path, content);
        }
    }

    private static class MavenStorage
        implements IStorage
    {

        public String getName()
        {
            return name;
        }

        public IPath getFullPath()
        {
            return path != null ? new Path(path) : null;
        }

        public InputStream getContents()
        {
            return new ByteArrayInputStream(content);
        }

        public boolean isReadOnly()
        {
            return true;
        }

        public Object getAdapter(Class adapter)
        {
            return null;
        }

        private String name;
        private final String path;
        private final byte content[];

        public MavenStorage(String name, String path, byte content[])
        {
            this.name = name;
            this.path = path;
            this.content = content;
        }
    }

    public static class MavenStorageEditorInput
        implements IStorageEditorInput
    {

        public boolean exists()
        {
            return true;
        }

        public String getName()
        {
            return name;
        }

        public String getToolTipText()
        {
            return tooltip;
        }

        public IStorage getStorage()
        {
            return new MavenStorage(name, path, content);
        }

        public ImageDescriptor getImageDescriptor()
        {
            return null;
        }

        public IPersistableElement getPersistable()
        {
            return null;
        }

        public Object getAdapter(Class adapter)
        {
            return null;
        }

        public IPath getPath()
        {
            return path != null ? new Path(path) : null;
        }

        private final String name;
        private final String path;
        private final String tooltip;
        private final byte content[];

        public MavenStorageEditorInput(String name, String tooltip, String path, byte content[])
        {
            this.name = name;
            this.path = path;
            this.tooltip = tooltip;
            this.content = content;
        }
    }


    public OpenPomAction()
    {
        type = "artifact";
    }

    public void init(IWorkbenchWindow iworkbenchwindow)
    {
    }

    public void selectionChanged(IAction action, ISelection selection)
    {
        if(selection instanceof IStructuredSelection)
            this.selection = (IStructuredSelection)selection;
        else
            this.selection = null;
    }

    public void run(IAction action)
    {
        if(selection != null)
        {
            Object element = selection.getFirstElement();
            if("artifact".equals(type) && element != null)
                try
                {
                    ArtifactKey ak = SelectionUtil.getArtifactKey(element);
                    if(ak != null)
                    {
                        (new Job(ak) {

                            protected IStatus run(IProgressMonitor monitor)
                            {
                                OpenPomAction.openEditor(ak.getGroupId(), ak.getArtifactId(), ak.getVersion(), monitor);
                                return Status.OK_STATUS;
                            }

                            final OpenPomAction this$0;
                            private final ArtifactKey val$ak;

            
            {
                this$0 = OpenPomAction.this;
                ak = artifactkey;
                super($anonymous0);
            }
                        }
).schedule();
                        return;
                    }
                }
                catch(CoreException ex)
                {
                    log.error(ex.getMessage(), ex);
                    PlatformUI.getWorkbench().getDisplay().asyncExec(new Runnable() {

                        public void run()
                        {
                            MessageDialog.openInformation(Display.getDefault().getActiveShell(), Messages.OpenPomAction_open_error_title, Messages.OpenPomAction_open_error_message);
                        }

                        final OpenPomAction this$0;

            
            {
                this$0 = OpenPomAction.this;
                super();
            }
                    }
);
                }
        }
        String title = Messages.OpenPomAction_title_pom;
        org.eclipse.swt.widgets.Shell shell = PlatformUI.getWorkbench().getActiveWorkbenchWindow().getShell();
        MavenRepositorySearchDialog dialog = MavenRepositorySearchDialog.createOpenPomDialog(shell, title);
        if(dialog.open() == 0)
        {
            IndexedArtifactFile iaf = (IndexedArtifactFile)dialog.getFirstResult();
            (new Job(iaf) {

                protected IStatus run(IProgressMonitor monitor)
                {
                    if(iaf != null)
                        OpenPomAction.openEditor(iaf.group, iaf.artifact, iaf.version, monitor);
                    return Status.OK_STATUS;
                }

                final OpenPomAction this$0;
                private final IndexedArtifactFile val$iaf;

            
            {
                this$0 = OpenPomAction.this;
                iaf = indexedartifactfile;
                super($anonymous0);
            }
            }
).schedule();
        }
    }

    public static void openEditor(IndexedArtifact ia, IndexedArtifactFile f, IProgressMonitor monitor)
    {
        String groupId;
        String artifactId;
        String version;
        String name;
        String fileName;
        String tooltip;
        if(f == null || ia.getClassname() == null || ia.getPackageName() == null)
            return;
        groupId = f.getDependency().getGroupId();
        artifactId = f.getDependency().getArtifactId();
        version = f.getDependency().getVersion();
        name = ia.getClassname();
        fileName = (new StringBuilder(String.valueOf(ia.getPackageName().replace('.', '/')))).append("/").append(ia.getClassname()).append(".java").toString();
        tooltip = (new StringBuilder(String.valueOf(groupId))).append(":").append(artifactId).append(":").append(version).append("/").append(fileName).toString();
        File file;
        IMaven maven = MavenPlugin.getMaven();
        java.util.List artifactRepositories = maven.getArtifactRepositories();
        Artifact artifact = maven.resolve(groupId, artifactId, version, "java-source", "sources", artifactRepositories, monitor);
        file = artifact.getFile();
        if(file == null)
        {
            openDialog(NLS.bind(Messages.OpenPomAction_error_download_source, tooltip));
            return;
        }
        try
        {
            String url = (new StringBuilder("jar:")).append(file.toURL().toString()).append("!/").append(fileName).toString();
            InputStream is = (new URL(url)).openStream();
            byte buff[] = readStream(is);
            openEditor(((IEditorInput) (new MavenPathStorageEditorInput((new StringBuilder(String.valueOf(name))).append(".java").toString(), tooltip, url, buff))), (new StringBuilder(String.valueOf(name))).append(".java").toString());
        }
        catch(IOException ex)
        {
            String msg = NLS.bind(Messages.OpenPomAction_error_open_editor, name);
            log.error(msg, ex);
            openDialog((new StringBuilder(String.valueOf(msg))).append("\n").append(ex.toString()).toString());
        }
        catch(CoreException ex)
        {
            log.error(ex.getMessage(), ex);
            openDialog((new StringBuilder(String.valueOf(ex.getMessage()))).append("\n").append(ex.toString()).toString());
        }
        return;
    }

    public static IEditorPart openEditor(String groupId, String artifactId, String version, IProgressMonitor monitor)
    {
        String name;
        if(groupId.length() <= 0 || artifactId.length() <= 0)
            break MISSING_BLOCK_LABEL_306;
        name = (new StringBuilder(String.valueOf(groupId))).append(":").append(artifactId).append(":").append(version).append(".pom").toString();
        IMavenProjectRegistry projectManager = MavenPlugin.getMavenProjectRegistry();
        IMavenProjectFacade projectFacade = projectManager.getMavenProject(groupId, artifactId, version);
        if(projectFacade != null)
        {
            org.eclipse.core.resources.IFile pomFile = projectFacade.getPom();
            return openEditor(((IEditorInput) (new FileEditorInput(pomFile))), name);
        }
        IMaven maven = MavenPlugin.getMaven();
        java.util.List artifactRepositories = maven.getArtifactRepositories();
        Artifact artifact = maven.resolve(groupId, artifactId, version, "pom", null, artifactRepositories, monitor);
        File file = artifact.getFile();
        if(file != null)
            return openEditor(((IEditorInput) (new MavenPathStorageEditorInput(name, name, file.getAbsolutePath(), readStream(new FileInputStream(file))))), name);
        try
        {
            openDialog(NLS.bind(Messages.OpenPomAction_error_download, name));
        }
        catch(IOException ex)
        {
            String msg = NLS.bind(Messages.OpenPomAction_error_open_pom, name);
            log.error(msg, ex);
            openDialog((new StringBuilder(String.valueOf(msg))).append("\n").append(ex.toString()).toString());
        }
        catch(CoreException ex)
        {
            log.error(ex.getMessage(), ex);
            openDialog((new StringBuilder(String.valueOf(ex.getMessage()))).append("\n").append(ex.toString()).toString());
        }
        return null;
    }

    public static IEditorPart openEditor(final IEditorInput editorInput, final String name)
    {
        final IEditorPart part[] = new IEditorPart[1];
        PlatformUI.getWorkbench().getDisplay().syncExec(new Runnable() {

            public void run()
            {
                IContentTypeManager contentTypeManager = Platform.getContentTypeManager();
                org.eclipse.core.runtime.content.IContentType contentType = contentTypeManager.findContentTypeFor(name);
                IEditorRegistry editorRegistry = PlatformUI.getWorkbench().getEditorRegistry();
                IEditorDescriptor editor = editorRegistry.getDefaultEditor(name, contentType);
                IWorkbenchWindow window = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
                if(window != null)
                {
                    IWorkbenchPage page = window.getActivePage();
                    if(page != null)
                        try
                        {
                            part[0] = page.openEditor(editorInput, editor.getId());
                        }
                        catch(PartInitException ex)
                        {
                            MessageDialog.openInformation(Display.getDefault().getActiveShell(), Messages.OpenPomAction_open_title, NLS.bind(Messages.OpenPomAction_33, editorInput.getName(), ex.toString()));
                        }
                }
            }

            private final String val$name;
            private final IEditorPart val$part[];
            private final IEditorInput val$editorInput;

            
            {
                name = s;
                part = aieditorpart;
                editorInput = ieditorinput;
                super();
            }
        }
);
        return part[0];
    }

    private static void openDialog(final String msg)
    {
        PlatformUI.getWorkbench().getDisplay().asyncExec(new Runnable() {

            public void run()
            {
                MessageDialog.openInformation(Display.getDefault().getActiveShell(), Messages.OpenPomAction_open_title, msg);
            }

            private final String val$msg;

            
            {
                msg = s;
                super();
            }
        }
);
    }

    private static byte[] readStream(InputStream is)
        throws IOException
    {
        byte b[] = new byte[is.available()];
        int len = 0;
        do
        {
            byte c[];
            do
            {
                int n = is.read(b, len, b.length - len);
                if(n == -1)
                {
                    if(len < b.length)
                    {
                        c = new byte[len];
                        System.arraycopy(b, 0, c, 0, len);
                        b = c;
                    }
                    return b;
                }
                len += n;
            } while(len != b.length);
            c = new byte[b.length + 1000];
            System.arraycopy(b, 0, c, 0, len);
            b = c;
        } while(true);
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/actions/OpenPomAction);
    String type;
    private IStructuredSelection selection;

}
