// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenInstallFileWizard.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.util.*;
import org.apache.maven.execution.MavenExecutionRequest;
import org.apache.maven.execution.MavenExecutionResult;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.Wizard;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.IMaven;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.actions.OpenMavenConsoleAction;
import org.eclipse.ui.IImportWizard;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.progress.IProgressConstants;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            MavenInstallFileArtifactWizardPage

public class MavenInstallFileWizard extends Wizard
    implements IImportWizard
{

    public MavenInstallFileWizard()
    {
        setNeedsProgressMonitor(true);
        setWindowTitle(Messages.MavenInstallFileWizard_title);
    }

    public void addPages()
    {
        artifactPage = new MavenInstallFileArtifactWizardPage(selectedFile);
        addPage(artifactPage);
    }

    public boolean performFinish()
    {
        Properties properties = new Properties();
        properties.setProperty("file", artifactPage.getArtifactFileName());
        properties.setProperty("groupId", artifactPage.getGroupId());
        properties.setProperty("artifactId", artifactPage.getArtifactId());
        properties.setProperty("version", artifactPage.getVersion());
        properties.setProperty("packaging", artifactPage.getPackaging());
        if(artifactPage.getClassifier().length() > 0)
            properties.setProperty("classifier", artifactPage.getClassifier());
        if(artifactPage.getPomFileName().length() > 0)
            properties.setProperty("pomFile", artifactPage.getPomFileName());
        if(artifactPage.isGeneratePom())
            properties.setProperty("generatePom", "true");
        if(artifactPage.isCreateChecksum())
            properties.setProperty("createChecksum", "true");
        (new Job(properties) {

            protected IStatus run(IProgressMonitor monitor)
            {
                setProperty(IProgressConstants.ACTION_PROPERTY, new OpenMavenConsoleAction());
                try
                {
                    IMaven maven = MavenPlugin.getMaven();
                    MavenExecutionRequest request = maven.createExecutionRequest(monitor);
                    request.setGoals(Arrays.asList(new String[] {
                        "install:install-file"
                    }));
                    request.setUserProperties(properties);
                    MavenExecutionResult executionResult = maven.execute(request, monitor);
                    List exceptions = executionResult.getExceptions();
                    if(!exceptions.isEmpty())
                    {
                        Throwable exception;
                        String msg;
                        for(Iterator iterator = exceptions.iterator(); iterator.hasNext(); MavenInstallFileWizard.log.error(msg, exception))
                        {
                            exception = (Throwable)iterator.next();
                            msg = Messages.MavenInstallFileWizard_error;
                            msg = (new StringBuilder(String.valueOf(msg))).append("; ").append(exception.toString()).toString();
                        }

                    }
                }
                catch(CoreException ex)
                {
                    MavenInstallFileWizard.log.error((new StringBuilder("Failed to install artifact:")).append(ex.getMessage()).toString(), ex);
                }
                return Status.OK_STATUS;
            }

            final MavenInstallFileWizard this$0;
            private final Properties val$properties;

            
            {
                this$0 = MavenInstallFileWizard.this;
                properties = properties1;
                super($anonymous0);
            }
        }
).schedule();
        return true;
    }

    public void init(IWorkbench workbench, IStructuredSelection selection)
    {
        Object element = selection.getFirstElement();
        if(element instanceof IFile)
        {
            selectedFile = (IFile)element;
            setPomFile(selectedFile.getProject());
        } else
        if(element instanceof IProject)
            setPomFile((IProject)element);
    }

    private void setPomFile(IProject project)
    {
        if(project.isAccessible())
        {
            IFile pomFile = project.getFile("pom.xml");
            if(pomFile != null && pomFile.isAccessible())
                this.pomFile = pomFile;
        }
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/wizards/MavenInstallFileWizard);
    private IFile selectedFile;
    private IFile pomFile;
    private MavenInstallFileArtifactWizardPage artifactPage;


}
