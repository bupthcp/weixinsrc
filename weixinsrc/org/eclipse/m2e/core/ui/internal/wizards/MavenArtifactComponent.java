// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenArtifactComponent.java

package org.eclipse.m2e.core.ui.internal.wizards;

import org.apache.maven.model.Model;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            WidthGroup

public class MavenArtifactComponent extends Composite
{

    public MavenArtifactComponent(Composite parent, int styles)
    {
        super(parent, styles);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.numColumns = 2;
        setLayout(layout);
        Group artifactGroup = new Group(this, 0);
        artifactGroup.setText(Messages.artifactComponentArtifact);
        GridData gd_artifactGroup = new GridData(4, 4, true, true, 3, 1);
        artifactGroup.setLayoutData(gd_artifactGroup);
        artifactGroup.setLayout(new GridLayout(2, false));
        groupIdlabel = new Label(artifactGroup, 0);
        groupIdlabel.setText(Messages.artifactComponentGroupId);
        groupIdCombo = new Combo(artifactGroup, 2048);
        groupIdCombo.setLayoutData(new GridData(4, 2, true, false));
        groupIdCombo.setData("name", "groupIdCombo");
        artifactIdLabel = new Label(artifactGroup, 0);
        artifactIdLabel.setText(Messages.artifactComponentArtifactId);
        artifactIdCombo = new Combo(artifactGroup, 2048);
        artifactIdCombo.setLayoutData(new GridData(4, 2, false, false));
        artifactIdCombo.setData("name", "artifactIdCombo");
        versionLabel = new Label(artifactGroup, 0);
        versionLabel.setText(Messages.artifactComponentVersion);
        versionCombo = new Combo(artifactGroup, 2048);
        versionCombo.setLayoutData(new GridData(150, -1));
        versionCombo.setText("0.0.1-SNAPSHOT");
        versionCombo.setData("name", "versionCombo");
        packagingLabel = new Label(artifactGroup, 0);
        packagingLabel.setText(Messages.artifactComponentPackaging);
        packagingCombo = new Combo(artifactGroup, 0);
        packagingCombo.setItems(PACKAGING_OPTIONS);
        packagingCombo.setText("jar");
        packagingCombo.setLayoutData(new GridData(150, -1));
        packagingCombo.setData("name", "packagingCombo");
        nameLabel = new Label(artifactGroup, 0);
        nameLabel.setLayoutData(new GridData());
        nameLabel.setText(Messages.artifactComponentName);
        nameCombo = new Combo(artifactGroup, 2048);
        nameCombo.setLayoutData(new GridData(4, 0x1000000, true, false));
        nameCombo.setData("name", "nameCombo");
        descriptionLabel = new Label(artifactGroup, 0);
        descriptionLabel.setLayoutData(new GridData(16384, 4, false, false));
        descriptionLabel.setText(Messages.artifactComponentDescription);
        descriptionText = new Text(artifactGroup, 2624);
        GridData gd_descriptionText = new GridData(4, 4, false, true);
        gd_descriptionText.minimumHeight = 20;
        descriptionText.setLayoutData(gd_descriptionText);
        descriptionText.setData("name", "descriptionText");
    }

    public void setModifyingListener(ModifyListener modifyingListener)
    {
        this.modifyingListener = modifyingListener;
        groupIdCombo.addModifyListener(modifyingListener);
        artifactIdCombo.addModifyListener(modifyingListener);
        versionCombo.addModifyListener(modifyingListener);
        packagingCombo.addModifyListener(modifyingListener);
    }

    public void dispose()
    {
        super.dispose();
        if(modifyingListener != null)
        {
            groupIdCombo.removeModifyListener(modifyingListener);
            artifactIdCombo.removeModifyListener(modifyingListener);
            versionCombo.removeModifyListener(modifyingListener);
            packagingCombo.removeModifyListener(modifyingListener);
        }
    }

    public boolean setFocus()
    {
        if(groupIdCombo != null)
            return groupIdCombo.setFocus();
        else
            return super.setFocus();
    }

    public String getModelName()
    {
        return nameCombo.getText();
    }

    public String getArtifactId()
    {
        return artifactIdCombo.getText();
    }

    public String getGroupId()
    {
        return groupIdCombo.getText();
    }

    public String getVersion()
    {
        return versionCombo.getText();
    }

    public String getPackaging()
    {
        return packagingCombo.getText();
    }

    public String getDescription()
    {
        return descriptionText.getText();
    }

    public void setModelName(String name)
    {
        nameCombo.setText(name);
    }

    public void setGroupId(String groupId)
    {
        groupIdCombo.setText(groupId);
    }

    public void setArtifactId(String artifact)
    {
        artifactIdCombo.setText(artifact);
    }

    public void setVersion(String version)
    {
        versionCombo.setText(version);
    }

    public void setPackaging(String packaging)
    {
        if(packagingCombo != null)
            packagingCombo.setText(packaging);
    }

    public void setDescription(String description)
    {
        if(descriptionText != null)
            descriptionText.setText(description);
    }

    public Model getModel()
    {
        Model model = new Model();
        model.setModelVersion("4.0.0");
        model.setGroupId(getGroupId());
        model.setArtifactId(getArtifactId());
        model.setVersion(getVersion());
        model.setPackaging(getPackaging());
        if(getModelName().length() > 0)
            model.setName(getModelName());
        if(getDescription().length() > 0)
            model.setDescription(getDescription());
        return model;
    }

    public void setArtifactIdEditable(boolean b)
    {
        artifactIdCombo.setEnabled(b);
    }

    public Combo getGroupIdCombo()
    {
        return groupIdCombo;
    }

    public Combo getArtifactIdCombo()
    {
        return artifactIdCombo;
    }

    public Combo getVersionCombo()
    {
        return versionCombo;
    }

    public Combo getNameCombo()
    {
        return nameCombo;
    }

    public void setWidthGroup(WidthGroup widthGroup)
    {
        widthGroup.addControl(groupIdlabel);
        widthGroup.addControl(artifactIdLabel);
        widthGroup.addControl(versionLabel);
        widthGroup.addControl(packagingLabel);
        widthGroup.addControl(nameLabel);
        widthGroup.addControl(descriptionLabel);
    }

    public static final String JAR = "jar";
    public static final String WAR = "war";
    public static final String EAR = "ear";
    public static final String RAR = "rar";
    public static final String POM = "pom";
    public static final String EJB = "ejb";
    public static final String PACKAGING_OPTIONS[] = {
        "jar", "pom", "war"
    };
    public static final String DEFAULT_PACKAGING = "jar";
    public static final String DEFAULT_VERSION = "0.0.1-SNAPSHOT";
    protected Combo groupIdCombo;
    protected Combo artifactIdCombo;
    protected Combo versionCombo;
    protected Combo packagingCombo;
    protected Combo nameCombo;
    protected Text descriptionText;
    private ModifyListener modifyingListener;
    private Label groupIdlabel;
    private Label artifactIdLabel;
    private Label versionLabel;
    private Label packagingLabel;
    private Label nameLabel;
    private Label descriptionLabel;

}
