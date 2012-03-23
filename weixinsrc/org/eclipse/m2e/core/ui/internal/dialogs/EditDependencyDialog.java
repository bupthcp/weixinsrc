// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   EditDependencyDialog.java

package org.eclipse.m2e.core.ui.internal.dialogs;

import org.apache.maven.model.Dependency;
import org.apache.maven.project.MavenProject;
import org.eclipse.core.resources.IProject;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.editing.PomEdits;
import org.eclipse.m2e.core.ui.internal.search.util.Packaging;
import org.eclipse.m2e.core.ui.internal.util.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.w3c.dom.Document;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.dialogs:
//            AbstractMavenDialog, MavenRepositorySearchDialog

public class EditDependencyDialog extends AbstractMavenDialog
{

    public EditDependencyDialog(Shell parent, boolean dependencyManagement, IProject project, MavenProject mavenProject)
    {
        super(parent, org/eclipse/m2e/core/ui/internal/dialogs/EditDependencyDialog.getName());
        this.project = project;
        mavenproject = mavenProject;
        setShellStyle(getShellStyle() | 0x10);
        setTitle(Messages.EditDependencyDialog_title);
        this.dependencyManagement = dependencyManagement;
        if(!dependencyManagement)
            scopes = MavenRepositorySearchDialog.SCOPES;
        else
            scopes = MavenRepositorySearchDialog.DEP_MANAGEMENT_SCOPES;
    }

    protected Control createDialogArea(Composite parent)
    {
        readSettings();
        Composite superComposite = (Composite)super.createDialogArea(parent);
        Composite composite = new Composite(superComposite, 0);
        composite.setLayout(new GridLayout(3, false));
        composite.setLayoutData(new GridData(4, 4, true, true));
        Label groupIdLabel = new Label(composite, 0);
        groupIdLabel.setText(Messages.EditDependencyDialog_groupId_label);
        groupIdText = new Text(composite, 2048);
        GridData gd_groupIdText = new GridData(4, 0x1000000, true, false, 2, 1);
        gd_groupIdText.horizontalIndent = 4;
        groupIdText.setLayoutData(gd_groupIdText);
        ProposalUtil.addGroupIdProposal(project, groupIdText, Packaging.ALL);
        M2EUIUtils.addRequiredDecoration(groupIdText);
        Label artifactIdLabel = new Label(composite, 0);
        artifactIdLabel.setText(Messages.EditDependencyDialog_artifactId_label);
        artifactIdText = new Text(composite, 2048);
        GridData gd_artifactIdText = new GridData(4, 0x1000000, true, false, 2, 1);
        gd_artifactIdText.horizontalIndent = 4;
        artifactIdText.setLayoutData(gd_artifactIdText);
        ProposalUtil.addArtifactIdProposal(project, groupIdText, artifactIdText, Packaging.ALL);
        M2EUIUtils.addRequiredDecoration(artifactIdText);
        Label versionLabel = new Label(composite, 0);
        versionLabel.setText(Messages.EditDependencyDialog_version_label);
        versionText = new Text(composite, 2048);
        GridData versionTextData = new GridData(16384, 0x1000000, true, false, 2, 1);
        versionTextData.horizontalIndent = 4;
        versionTextData.widthHint = 200;
        versionText.setLayoutData(versionTextData);
        ProposalUtil.addVersionProposal(project, mavenproject, groupIdText, artifactIdText, versionText, Packaging.ALL);
        Label classifierLabel = new Label(composite, 0);
        classifierLabel.setText(Messages.EditDependencyDialog_classifier_label);
        classifierText = new Text(composite, 2048);
        GridData gd_classifierText = new GridData(16384, 0x1000000, true, false, 2, 1);
        gd_classifierText.horizontalIndent = 4;
        gd_classifierText.widthHint = 200;
        classifierText.setLayoutData(gd_classifierText);
        ProposalUtil.addClassifierProposal(project, groupIdText, artifactIdText, versionText, classifierText, Packaging.ALL);
        Label typeLabel = new Label(composite, 0);
        typeLabel.setText(Messages.EditDependencyDialog_type_label);
        typeCombo = new Combo(composite, 0);
        typeCombo.setItems(TYPES);
        GridData gd_typeText = new GridData(16384, 0x1000000, true, false, 2, 1);
        gd_typeText.horizontalIndent = 4;
        gd_typeText.widthHint = 120;
        typeCombo.setLayoutData(gd_typeText);
        Label scopeLabel = new Label(composite, 0);
        scopeLabel.setText(Messages.EditDependencyDialog_scope_label);
        scopeCombo = new Combo(composite, 0);
        scopeCombo.setItems(scopes);
        GridData gd_scopeText = new GridData(16384, 0x1000000, true, false, 2, 1);
        gd_scopeText.horizontalIndent = 4;
        gd_scopeText.widthHint = 120;
        scopeCombo.setLayoutData(gd_scopeText);
        Label systemPathLabel = new Label(composite, 0);
        systemPathLabel.setText(Messages.EditDependencyDialog_systemPath_label);
        systemPathText = new Text(composite, 2048);
        GridData gd_systemPathText = new GridData(4, 0x1000000, true, false, 2, 1);
        gd_systemPathText.horizontalIndent = 4;
        gd_systemPathText.widthHint = 200;
        systemPathText.setLayoutData(gd_systemPathText);
        new Label(composite, 0);
        optionalButton = new Button(composite, 32);
        optionalButton.setText(Messages.EditDependencyDialog_optional_checkbox);
        GridData gd_optionalButton = new GridData(16384, 128, false, false, 2, 1);
        gd_optionalButton.horizontalIndent = 4;
        optionalButton.setLayoutData(gd_optionalButton);
        composite.setTabList(new Control[] {
            groupIdText, artifactIdText, versionText, classifierText, typeCombo, scopeCombo, systemPathText, optionalButton
        });
        setDependency(dependency);
        return superComposite;
    }

    public org.eclipse.m2e.core.ui.internal.editing.PomEdits.Operation getEditOperation()
    {
        return resultOperation;
    }

    protected void computeResult()
    {
        final String oldArtifactId = dependency.getArtifactId();
        final String oldGroupId = dependency.getGroupId();
        final String groupId = valueOrNull(groupIdText.getText());
        final String artifactId = valueOrNull(artifactIdText.getText());
        final String version = valueOrNull(versionText.getText());
        final String type = valueOrNull(typeCombo.getText());
        final String scope = valueOrNull(scopeCombo.getText());
        final String classifier = valueOrNull(classifierText.getText());
        final String system = valueOrNull(systemPathText.getText());
        final boolean optional = optionalButton.getSelection();
        resultOperation = new org.eclipse.m2e.core.ui.internal.editing.PomEdits.Operation() {

            public void process(Document document)
            {
                org.w3c.dom.Element depsEl = dependencyManagement ? PomEdits.getChild(document.getDocumentElement(), new String[] {
                    "dependencyManagement", "dependencies"
                }) : PomEdits.getChild(document.getDocumentElement(), new String[] {
                    "dependencies"
                });
                org.w3c.dom.Element dep = PomEdits.findChild(depsEl, "dependency", new org.eclipse.m2e.core.ui.internal.editing.PomEdits.Matcher[] {
                    PomEdits.childEquals("groupId", oldGroupId), PomEdits.childEquals("artifactId", oldArtifactId)
                });
                if(dep != null)
                {
                    if(artifactId != null && !artifactId.equals(oldArtifactId))
                        PomEdits.setText(PomEdits.getChild(dep, new String[] {
                            "artifactId"
                        }), artifactId);
                    if(groupId != null && !groupId.equals(oldGroupId))
                        PomEdits.setText(PomEdits.getChild(dep, new String[] {
                            "groupId"
                        }), groupId);
                    if(version != null)
                        PomEdits.setText(PomEdits.getChild(dep, new String[] {
                            "version"
                        }), version);
                    else
                        PomEdits.removeChild(dep, PomEdits.findChild(dep, "version"));
                    if(type != null && !"jar".equals(type) && !"null".equals(type))
                        PomEdits.setText(PomEdits.getChild(dep, new String[] {
                            "type"
                        }), type);
                    else
                        PomEdits.removeChild(dep, PomEdits.findChild(dep, "type"));
                    if(classifier != null)
                        PomEdits.setText(PomEdits.getChild(dep, new String[] {
                            "classifier"
                        }), classifier);
                    else
                        PomEdits.removeChild(dep, PomEdits.findChild(dep, "classifier"));
                    if(scope != null && !"compile".equals(scope))
                        PomEdits.setText(PomEdits.getChild(dep, new String[] {
                            "scope"
                        }), scope);
                    else
                        PomEdits.removeChild(dep, PomEdits.findChild(dep, "scope"));
                    if(system != null)
                        PomEdits.setText(PomEdits.getChild(dep, new String[] {
                            "systemPath"
                        }), system);
                    else
                        PomEdits.removeChild(dep, PomEdits.findChild(dep, "systemPath"));
                    if(optional)
                        PomEdits.setText(PomEdits.getChild(dep, new String[] {
                            "optional"
                        }), Boolean.toString(optional));
                    else
                        PomEdits.removeChild(dep, PomEdits.findChild(dep, "optional"));
                }
            }

            final EditDependencyDialog this$0;
            private final String val$oldGroupId;
            private final String val$oldArtifactId;
            private final String val$artifactId;
            private final String val$groupId;
            private final String val$version;
            private final String val$type;
            private final String val$classifier;
            private final String val$scope;
            private final String val$system;
            private final boolean val$optional;

            
            {
                this$0 = EditDependencyDialog.this;
                oldGroupId = s;
                oldArtifactId = s1;
                artifactId = s2;
                groupId = s3;
                version = s4;
                type = s5;
                classifier = s6;
                scope = s7;
                system = s8;
                optional = flag;
                super();
            }
        }
;
    }

    private String valueOrNull(String value)
    {
        if(value != null)
        {
            value = value.trim();
            if(value.length() == 0)
                value = null;
        }
        return value;
    }

    public void setDependency(Dependency dependency)
    {
        this.dependency = dependency;
        if(dependency != null && groupIdText != null && !groupIdText.isDisposed())
        {
            groupIdText.setText(Util.nvl(dependency.getGroupId()));
            artifactIdText.setText(Util.nvl(dependency.getArtifactId()));
            versionText.setText(Util.nvl(dependency.getVersion()));
            classifierText.setText(Util.nvl(dependency.getClassifier()));
            typeCombo.setText("".equals(Util.nvl(dependency.getType())) ? "jar" : dependency.getType());
            scopeCombo.setText("".equals(Util.nvl(dependency.getScope())) ? "compile" : dependency.getScope());
            systemPathText.setText(Util.nvl(dependency.getSystemPath()));
            boolean optional = Boolean.parseBoolean(dependency.getOptional());
            if(optionalButton.getSelection() != optional)
                optionalButton.setSelection(optional);
        }
    }

    private static final String TYPES[] = {
        "jar", "war", "rar", "ear", "par", "ejb", "ejb-client", "test-jar", "java-source", "javadoc", 
        "maven-plugin", "pom"
    };
    private final IProject project;
    private String scopes[];
    protected Text groupIdText;
    protected Text artifactIdText;
    protected Text versionText;
    protected Text classifierText;
    protected Combo typeCombo;
    protected Combo scopeCombo;
    protected Text systemPathText;
    protected Button optionalButton;
    private Dependency dependency;
    private final MavenProject mavenproject;
    private final boolean dependencyManagement;
    private org.eclipse.m2e.core.ui.internal.editing.PomEdits.Operation resultOperation;


}
