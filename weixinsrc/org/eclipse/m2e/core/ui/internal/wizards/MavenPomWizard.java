// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenPomWizard.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.lang.reflect.InvocationTargetException;
import org.apache.maven.model.Model;
import org.eclipse.core.resources.*;
import org.eclipse.core.runtime.*;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.jface.wizard.Wizard;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.MavenModelManager;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.*;
import org.eclipse.ui.ide.IDE;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            MavenPomWizardPage

public class MavenPomWizard extends Wizard
    implements INewWizard
{

    public MavenPomWizard()
    {
        setNeedsProgressMonitor(true);
        setWindowTitle(Messages.MavenPomWizard_title);
    }

    public void addPages()
    {
        artifactPage = new MavenPomWizardPage(selection);
        addPage(artifactPage);
    }

    public boolean performFinish()
    {
        final String projectName = artifactPage.getProject();
        final Model model = artifactPage.getModel();
        IRunnableWithProgress op = new IRunnableWithProgress() {

            public void run(IProgressMonitor monitor)
                throws InvocationTargetException
            {
                monitor.beginTask(Messages.MavenPomWizard_task, 1);
                try
                {
                    doFinish(projectName, model, monitor);
                    monitor.worked(1);
                }
                catch(CoreException e)
                {
                    throw new InvocationTargetException(e);
                }
                break MISSING_BLOCK_LABEL_55;
                Exception exception;
                exception;
                monitor.done();
                throw exception;
                monitor.done();
                return;
            }

            final MavenPomWizard this$0;
            private final String val$projectName;
            private final Model val$model;

            
            {
                this$0 = MavenPomWizard.this;
                projectName = s;
                model = model1;
                super();
            }
        }
;
        try
        {
            getContainer().run(true, false, op);
        }
        catch(InterruptedException _ex)
        {
            return false;
        }
        catch(InvocationTargetException e)
        {
            Throwable realException = e.getTargetException();
            MessageDialog.openError(getShell(), Messages.MavenPomWizard_error_title, realException.getMessage());
            return false;
        }
        return true;
    }

    void doFinish(String projectName, Model model, IProgressMonitor monitor)
        throws CoreException
    {
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        IResource resource = root.findMember(new Path(projectName));
        if(!resource.exists() || (resource.getType() & 2 | 4) == 0)
            throw new CoreException(new Status(4, "org.eclipse.m2e.core", -1, NLS.bind(Messages.MavenPomWizard_status_not_exists, projectName), null));
        IContainer container = (IContainer)resource;
        final IFile file = container.getFile(new Path("pom.xml"));
        if(file.exists())
            throw new CoreException(new Status(4, "org.eclipse.m2e.core", -1, Messages.MavenPomWizard_error_exists, null));
        java.io.File pom = file.getLocation().toFile();
        try
        {
            MavenModelManager modelManager = MavenPlugin.getMavenModelManager();
            modelManager.createMavenModel(file, model);
            getShell().getDisplay().asyncExec(new Runnable() {

                public void run()
                {
                    org.eclipse.ui.IWorkbenchPage page = PlatformUI.getWorkbench().getActiveWorkbenchWindow().getActivePage();
                    try
                    {
                        IDE.openEditor(page, file, true);
                    }
                    catch(PartInitException _ex) { }
                }

                final MavenPomWizard this$0;
                private final IFile val$file;

            
            {
                this$0 = MavenPomWizard.this;
                file = ifile;
                super();
            }
            }
);
        }
        catch(Exception ex)
        {
            log.error((new StringBuilder("Unable to create POM ")).append(pom).append("; ").append(ex.getMessage()).toString(), ex);
        }
    }

    public void init(IWorkbench workbench, IStructuredSelection selection)
    {
        this.selection = selection;
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/wizards/MavenPomWizard);
    private MavenPomWizardPage artifactPage;
    private ISelection selection;

}
