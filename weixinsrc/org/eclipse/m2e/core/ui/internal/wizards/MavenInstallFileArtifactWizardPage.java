// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenInstallFileArtifactWizardPage.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.io.File;
import org.apache.maven.project.MavenProject;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jface.wizard.WizardPage;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.ArtifactKey;
import org.eclipse.m2e.core.embedder.IMaven;
import org.eclipse.m2e.core.internal.index.*;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.actions.SelectionUtil;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            MavenArtifactComponent

public class MavenInstallFileArtifactWizardPage extends WizardPage
{

    public MavenInstallFileArtifactWizardPage(IFile file)
    {
        super("mavenInstallFileWizardPage");
        this.file = file;
        setTitle(Messages.MavenInstallFileArtifactWizardPage_title);
        setDescription(Messages.MavenInstallFileArtifactWizardPage_desc);
    }

    public void createControl(Composite parent)
    {
        Composite container = new Composite(parent, 0);
        container.setLayout(new GridLayout(3, false));
        container.setLayoutData(new GridData(4, 4, true, true));
        ModifyListener modifyingListener = new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                pageChanged();
            }

            final MavenInstallFileArtifactWizardPage this$0;

            
            {
                this$0 = MavenInstallFileArtifactWizardPage.this;
                super();
            }
        }
;
        Label artifactFileNameLabel = new Label(container, 0);
        artifactFileNameLabel.setText(Messages.MavenInstallFileArtifactWizardPage_lblFileName);
        artifactFileNameText = new Text(container, 2048);
        artifactFileNameText.setLayoutData(new GridData(4, 0x1000000, true, false));
        artifactFileNameText.setData("name", "artifactFileNametext");
        artifactFileNameText.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                updateFileName(getArtifactFileName());
                pageChanged();
            }

            final MavenInstallFileArtifactWizardPage this$0;

            
            {
                this$0 = MavenInstallFileArtifactWizardPage.this;
                super();
            }
        }
);
        final Button artifactFileNameButton = new Button(container, 0);
        artifactFileNameButton.setLayoutData(new GridData());
        artifactFileNameButton.setData("name", "externalPomFileButton");
        artifactFileNameButton.setText(Messages.MavenInstallFileArtifactWizardPage_btnFilename);
        artifactFileNameButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                FileDialog fileDialog = new FileDialog(artifactFileNameButton.getShell());
                fileDialog.setText(Messages.MavenInstallFileArtifactWizardPage_file_title);
                fileDialog.setFileName(artifactFileNameText.getText());
                String name = fileDialog.open();
                if(name != null)
                    updateFileName(name);
            }

            final MavenInstallFileArtifactWizardPage this$0;
            private final Button val$artifactFileNameButton;

            
            {
                this$0 = MavenInstallFileArtifactWizardPage.this;
                artifactFileNameButton = button;
                super();
            }
        }
);
        Label pomFileNameLabel = new Label(container, 0);
        pomFileNameLabel.setText(Messages.MavenInstallFileArtifactWizardPage_lblPom);
        pomFileNameText = new Text(container, 2048);
        pomFileNameText.setData("name", "pomFileNameText");
        pomFileNameText.setLayoutData(new GridData(4, 0x1000000, true, false));
        pomFileNameText.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                generatePomButton.setSelection(getPomFileName().length() == 0);
                pageChanged();
            }

            final MavenInstallFileArtifactWizardPage this$0;

            
            {
                this$0 = MavenInstallFileArtifactWizardPage.this;
                super();
            }
        }
);
        final Button pomFileNameButton = new Button(container, 0);
        pomFileNameButton.setLayoutData(new GridData());
        pomFileNameButton.setData("name", "externalPomFileButton");
        pomFileNameButton.setText(Messages.MavenInstallFileArtifactWizardPage_btnPom);
        pomFileNameButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                FileDialog fileDialog = new FileDialog(pomFileNameButton.getShell());
                fileDialog.setText(Messages.MavenInstallFileArtifactWizardPage_file_title);
                fileDialog.setFileName(pomFileNameText.getText());
                String res = fileDialog.open();
                if(res != null)
                    pomFileNameText.setText(res);
            }

            final MavenInstallFileArtifactWizardPage this$0;
            private final Button val$pomFileNameButton;

            
            {
                this$0 = MavenInstallFileArtifactWizardPage.this;
                pomFileNameButton = button;
                super();
            }
        }
);
        new Label(container, 0);
        generatePomButton = new Button(container, 32);
        generatePomButton.setData("name", "generatePomButton");
        generatePomButton.setLayoutData(new GridData(16384, 0x1000000, false, false, 2, 1));
        generatePomButton.setText(Messages.MavenInstallFileArtifactWizardPage_btnGenerate);
        generatePomButton.setSelection(true);
        new Label(container, 0);
        createChecksumButton = new Button(container, 32);
        createChecksumButton.setData("name", "createChecksumButton");
        createChecksumButton.setLayoutData(new GridData(16384, 0x1000000, false, false, 2, 1));
        createChecksumButton.setText(Messages.MavenInstallFileArtifactWizardPage_btnChecksum);
        createChecksumButton.setSelection(true);
        Label separator = new Label(container, 258);
        GridData separatorData = new GridData(4, 0x1000000, false, false, 3, 1);
        separatorData.verticalIndent = 5;
        separator.setLayoutData(separatorData);
        Label groupIdlabel = new Label(container, 0);
        groupIdlabel.setText(Messages.MavenInstallFileArtifactWizardPage_lblgroupid);
        groupIdCombo = new Combo(container, 0);
        groupIdCombo.setData("name", "groupIdCombo");
        groupIdCombo.setLayoutData(new GridData(4, 0x1000000, true, false));
        groupIdCombo.addModifyListener(modifyingListener);
        new Label(container, 0);
        Label artifactIdLabel = new Label(container, 0);
        artifactIdLabel.setText(Messages.MavenInstallFileArtifactWizardPage_lblArtifact);
        artifactIdCombo = new Combo(container, 0);
        artifactIdCombo.setData("name", "artifactIdCombo");
        artifactIdCombo.setLayoutData(new GridData(4, 0x1000000, false, false));
        artifactIdCombo.addModifyListener(modifyingListener);
        new Label(container, 0);
        Label versionLabel = new Label(container, 0);
        versionLabel.setText(Messages.MavenInstallFileArtifactWizardPage_lblVersion);
        versionCombo = new Combo(container, 0);
        versionCombo.setData("name", "versionCombo");
        versionCombo.setText("0.0.1-SNAPSHOT");
        GridData versionComboData = new GridData(16384, 0x1000000, false, false, 2, 1);
        versionComboData.widthHint = 150;
        versionCombo.setLayoutData(versionComboData);
        versionCombo.addModifyListener(modifyingListener);
        Label packagingLabel = new Label(container, 0);
        packagingLabel.setText(Messages.MavenInstallFileArtifactWizardPage_lblPackaging);
        packagingCombo = new Combo(container, 0);
        packagingCombo.setData("name", "packagingCombo");
        packagingCombo.setText("jar");
        packagingCombo.setItems(MavenArtifactComponent.PACKAGING_OPTIONS);
        GridData packagingComboData = new GridData(16384, 0x1000000, false, false, 2, 1);
        packagingComboData.widthHint = 150;
        packagingCombo.setLayoutData(packagingComboData);
        packagingCombo.addModifyListener(modifyingListener);
        Label classifierLabel = new Label(container, 0);
        classifierLabel.setText(Messages.MavenInstallFileArtifactWizardPage_lblClassifier);
        classifierCombo = new Combo(container, 0);
        classifierCombo.setData("name", "classifierText");
        classifierCombo.setItems(new String[] {
            "sources", "javadoc"
        });
        GridData classifierTextData = new GridData(16384, 0x1000000, false, false, 2, 1);
        classifierTextData.widthHint = 150;
        classifierCombo.setLayoutData(classifierTextData);
        classifierCombo.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                generatePomButton.setSelection(getClassifier().length() == 0);
            }

            final MavenInstallFileArtifactWizardPage this$0;

            
            {
                this$0 = MavenInstallFileArtifactWizardPage.this;
                super();
            }
        }
);
        if(file != null)
            updateFileName(file.getLocation().toOSString());
        setControl(container);
    }

    void updateFileName(String fileName)
    {
        if(!getArtifactFileName().equals(fileName))
            artifactFileNameText.setText(fileName);
        File file = new File(fileName);
        if(!file.exists() || !file.isFile())
            return;
        if(fileName.endsWith(".jar") || fileName.endsWith(".war") || fileName.endsWith(".ear"))
            packagingCombo.setText(fileName.substring(fileName.length() - 3));
        int n = fileName.lastIndexOf('.');
        if(n > -1)
        {
            String pomFileName = (new StringBuilder(String.valueOf(fileName.substring(0, n)))).append(".pom").toString();
            if((new File(pomFileName)).exists())
                pomFileNameText.setText(pomFileName);
        } else
        {
            pomFileNameText.setText("");
        }
        try
        {
            IndexedArtifactFile iaf = MavenPlugin.getIndexManager().getAllIndexes().identify(file);
            if(iaf != null)
            {
                groupIdCombo.setText(iaf.group);
                artifactIdCombo.setText(iaf.artifact);
                versionCombo.setText(iaf.version);
                if(iaf.classifier != null)
                    classifierCombo.setText(iaf.classifier);
                String name = (new StringBuilder(String.valueOf(iaf.group))).append(":").append(iaf.artifact).append("-").append(iaf.version).append(iaf.classifier != null ? iaf.classifier : "").toString();
                setMessage(NLS.bind(Messages.MavenInstallFileArtifactWizardPage_message, name), 2);
                return;
            }
        }
        catch(CoreException ex)
        {
            log.error(ex.getMessage(), ex);
        }
        if(n > -1)
        {
            String pomFileName = (new StringBuilder(String.valueOf(fileName.substring(0, n)))).append(".pom").toString();
            if((new File(pomFileName)).exists())
            {
                pomFileNameText.setText(pomFileName);
                try
                {
                    IMaven maven = MavenPlugin.getMaven();
                    MavenProject mavenProject = maven.readProject(new File(pomFileName), null);
                    groupIdCombo.setText(mavenProject.getGroupId());
                    artifactIdCombo.setText(mavenProject.getArtifactId());
                    versionCombo.setText(mavenProject.getVersion());
                    packagingCombo.setText(mavenProject.getPackaging());
                    return;
                }
                catch(CoreException ex)
                {
                    log.error(ex.getMessage(), ex);
                }
            }
        }
        ArtifactKey artifactKey = (ArtifactKey)SelectionUtil.getType(file, org/eclipse/m2e/core/embedder/ArtifactKey);
        if(artifactKey != null)
        {
            groupIdCombo.setText(artifactKey.getGroupId());
            artifactIdCombo.setText(artifactKey.getArtifactId());
            versionCombo.setText(artifactKey.getVersion());
            if(artifactKey.getClassifier() != null)
                classifierCombo.setText(artifactKey.getClassifier());
        }
    }

    void pageChanged()
    {
        String artifactFileName = getArtifactFileName();
        if(artifactFileName.length() == 0)
        {
            updateStatus(Messages.MavenInstallFileArtifactWizardPage_error_no_name);
            return;
        }
        File file = new File(artifactFileName);
        if(!file.exists() || !file.isFile())
        {
            updateStatus(Messages.MavenInstallFileArtifactWizardPage_error_missing);
            return;
        }
        String pomFileName = getPomFileName();
        if(pomFileName.length() > 0 && !(new File(pomFileName)).exists())
        {
            updateStatus(Messages.MavenInstallFileArtifactWizardPage_error_missingpom);
            return;
        }
        if(getGroupId().length() == 0)
        {
            updateStatus(Messages.MavenInstallFileArtifactWizardPage_error_groupid);
            return;
        }
        if(getArtifactId().length() == 0)
        {
            updateStatus(Messages.MavenInstallFileArtifactWizardPage_error_artifactid);
            return;
        }
        if(getVersion().length() == 0)
        {
            updateStatus(Messages.MavenInstallFileArtifactWizardPage_error_version);
            return;
        }
        if(getPackaging().length() == 0)
        {
            updateStatus(Messages.MavenInstallFileArtifactWizardPage_error_packaging);
            return;
        } else
        {
            updateStatus(null);
            return;
        }
    }

    private void updateStatus(String message)
    {
        setErrorMessage(message);
        setPageComplete(message == null);
    }

    public String getArtifactFileName()
    {
        return artifactFileNameText.getText().trim();
    }

    public String getPomFileName()
    {
        return pomFileNameText.getText().trim();
    }

    public String getGroupId()
    {
        return groupIdCombo.getText().trim();
    }

    public String getArtifactId()
    {
        return artifactIdCombo.getText().trim();
    }

    public String getVersion()
    {
        return versionCombo.getText().trim();
    }

    public String getPackaging()
    {
        return packagingCombo.getText().trim();
    }

    public String getClassifier()
    {
        return classifierCombo.getText().trim();
    }

    public boolean isGeneratePom()
    {
        return generatePomButton.getSelection();
    }

    public boolean isCreateChecksum()
    {
        return createChecksumButton.getSelection();
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/wizards/MavenInstallFileArtifactWizardPage);
    Text artifactFileNameText;
    Text pomFileNameText;
    private Combo groupIdCombo;
    private Combo artifactIdCombo;
    private Combo versionCombo;
    private Combo packagingCombo;
    private Combo classifierCombo;
    Button createChecksumButton;
    Button generatePomButton;
    private final IFile file;

}
