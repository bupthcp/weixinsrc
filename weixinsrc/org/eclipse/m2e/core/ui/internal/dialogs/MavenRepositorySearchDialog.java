// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenRepositorySearchDialog.java

package org.eclipse.m2e.core.ui.internal.dialogs;

import java.util.*;
import org.apache.maven.model.*;
import org.apache.maven.project.MavenProject;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.viewers.*;
import org.eclipse.m2e.core.embedder.ArtifactKey;
import org.eclipse.m2e.core.internal.index.IndexedArtifact;
import org.eclipse.m2e.core.internal.index.IndexedArtifactFile;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.search.util.Packaging;
import org.eclipse.m2e.core.ui.internal.util.M2EUIUtils;
import org.eclipse.m2e.core.ui.internal.util.ProposalUtil;
import org.eclipse.m2e.core.ui.internal.wizards.MavenPomSelectionComponent;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.dialogs:
//            AbstractMavenDialog

public class MavenRepositorySearchDialog extends AbstractMavenDialog
{

    public static MavenRepositorySearchDialog createOpenPomDialog(Shell parent, String title)
    {
        return new MavenRepositorySearchDialog(parent, title, "artifact", Collections.emptySet(), Collections.emptySet(), false, null, null, false);
    }

    public static MavenRepositorySearchDialog createSearchDependencyDialog(Shell parent, String title, MavenProject mp, IProject p, boolean inManagedSection)
    {
        Set artifacts = new HashSet();
        Set managed = new HashSet();
        if(mp != null)
        {
            Set keys = inManagedSection ? artifacts : managed;
            DependencyManagement dm = mp.getDependencyManagement();
            if(dm != null && dm.getDependencies() != null)
            {
                Dependency dep;
                for(Iterator iterator = dm.getDependencies().iterator(); iterator.hasNext(); keys.add(new ArtifactKey(dep.getGroupId(), dep.getArtifactId(), dep.getVersion(), dep.getClassifier())))
                    dep = (Dependency)iterator.next();

            }
            if(!inManagedSection)
            {
                Dependency dep;
                for(Iterator iterator1 = mp.getModel().getDependencies().iterator(); iterator1.hasNext(); artifacts.add(new ArtifactKey(dep.getGroupId(), dep.getArtifactId(), dep.getVersion(), dep.getClassifier())))
                    dep = (Dependency)iterator1.next();

            }
        }
        return new MavenRepositorySearchDialog(parent, title, "artifact", artifacts, managed, true, mp, p, true);
    }

    public static MavenRepositorySearchDialog createSearchParentDialog(Shell parent, String title, MavenProject mp, IProject p)
    {
        Set artifacts = new HashSet();
        Set managed = new HashSet();
        if(mp != null && mp.getModel().getParent() != null)
        {
            Parent par = mp.getModel().getParent();
            artifacts.add(new ArtifactKey(par.getGroupId(), par.getArtifactId(), par.getVersion(), null));
        }
        return new MavenRepositorySearchDialog(parent, title, "parents", artifacts, managed, false, mp, p, true);
    }

    public static MavenRepositorySearchDialog createSearchPluginDialog(Shell parent, String title, MavenProject mp, IProject p, boolean inManagedSection)
    {
        Set artifacts = new HashSet();
        Set managed = new HashSet();
        Set keys = inManagedSection ? artifacts : managed;
        if(mp != null && mp.getBuild() != null)
        {
            PluginManagement pm = mp.getBuild().getPluginManagement();
            if(pm != null && pm.getPlugins() != null)
            {
                Plugin plug;
                for(Iterator iterator = pm.getPlugins().iterator(); iterator.hasNext(); keys.add(new ArtifactKey(plug.getGroupId(), plug.getArtifactId(), plug.getVersion(), null)))
                    plug = (Plugin)iterator.next();

            }
            if(!inManagedSection && mp.getModel().getBuild() != null)
            {
                Plugin plug;
                for(Iterator iterator1 = mp.getModel().getBuild().getPlugins().iterator(); iterator1.hasNext(); artifacts.add(new ArtifactKey(plug.getGroupId(), plug.getArtifactId(), plug.getVersion(), null)))
                    plug = (Plugin)iterator1.next();

            }
        }
        return new MavenRepositorySearchDialog(parent, title, "plugin", artifacts, managed, false, mp, p, true);
    }

    private MavenRepositorySearchDialog(Shell parent, String title, String queryType, Set artifacts, Set managed, boolean showScope, MavenProject mp, 
            IProject p, boolean showCoordinates)
    {
        super(parent, DIALOG_SETTINGS);
        ignoreTextChange = false;
        this.artifacts = artifacts;
        this.managed = managed;
        this.queryType = queryType;
        this.showScope = showScope;
        project = p;
        mavenproject = mp;
        showCoords = showCoordinates;
        setShellStyle(getShellStyle() | 0x10);
        setStatusLineAboveButtons(true);
        setTitle(title);
    }

    public void setQuery(String query)
    {
        queryText = query;
    }

    protected Control createDialogArea(Composite parent)
    {
        readSettings();
        Composite composite = (Composite)super.createDialogArea(parent);
        if(showCoords)
        {
            createGAVControls(composite);
            Label separator = new Label(composite, 258);
            separator.setLayoutData(new GridData(4, 0x1000000, true, false));
        }
        pomSelectionComponent = new MavenPomSelectionComponent(composite, 0);
        pomSelectionComponent.init(queryText, queryType, project, artifacts, managed);
        pomSelectionComponent.setLayoutData(new GridData(4, 4, true, true));
        pomSelectionComponent.addDoubleClickListener(new IDoubleClickListener() {

            public void doubleClick(DoubleClickEvent event)
            {
                if(!pomSelectionComponent.getStatus().matches(4))
                    okPressedDelegate();
            }

            final MavenRepositorySearchDialog this$0;

            
            {
                this$0 = MavenRepositorySearchDialog.this;
                super();
            }
        }
);
        pomSelectionComponent.addSelectionChangedListener(new ISelectionChangedListener() {

            public void selectionChanged(SelectionChangedEvent event)
            {
                updateStatusDelegate(pomSelectionComponent.getStatus());
                computeResultFromTree();
            }

            final MavenRepositorySearchDialog this$0;

            
            {
                this$0 = MavenRepositorySearchDialog.this;
                super();
            }
        }
);
        pomSelectionComponent.setFocus();
        return composite;
    }

    private Composite createGAVControls(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        composite.setLayoutData(new GridData(4, 128, true, false));
        GridLayout gridLayout = new GridLayout(showScope ? 4 : 2, false);
        gridLayout.marginWidth = 0;
        gridLayout.horizontalSpacing = 10;
        composite.setLayout(gridLayout);
        Label groupIDlabel = new Label(composite, 0);
        groupIDlabel.setText(Messages.AddDependencyDialog_groupId_label);
        txtGroupId = new Text(composite, 2048);
        txtGroupId.setLayoutData(new GridData(4, 0x1000000, true, false));
        M2EUIUtils.addRequiredDecoration(txtGroupId);
        if(showScope)
        {
            new Label(composite, 0);
            new Label(composite, 0);
        }
        Label artifactIDlabel = new Label(composite, 0);
        artifactIDlabel.setText(Messages.AddDependencyDialog_artifactId_label);
        txtArtifactId = new Text(composite, 2048);
        txtArtifactId.setLayoutData(new GridData(4, 0x1000000, true, false));
        M2EUIUtils.addRequiredDecoration(txtArtifactId);
        if(showScope)
        {
            new Label(composite, 0);
            new Label(composite, 0);
        }
        Label versionLabel = new Label(composite, 0);
        versionLabel.setText(Messages.AddDependencyDialog_version_label);
        txtVersion = new Text(composite, 2048);
        txtVersion.setLayoutData(new GridData(4, 0x1000000, true, false));
        if(showScope)
        {
            Label scopeLabel = new Label(composite, 0);
            scopeLabel.setText(Messages.AddDependencyDialog_scope_label);
            comScope = new Combo(composite, 12);
            comScope.setItems(SCOPES);
            GridData scopeListData = new GridData(16384, 0x1000000, false, false);
            comScope.setLayoutData(scopeListData);
            comScope.setText(SCOPES[0]);
        }
        if(showScope)
            composite.setTabList(new Control[] {
                txtGroupId, txtArtifactId, txtVersion, comScope
            });
        else
            composite.setTabList(new Control[] {
                txtGroupId, txtArtifactId, txtVersion
            });
        Packaging pack;
        if(queryType.equals("parents"))
            pack = Packaging.POM;
        else
        if(queryType.equals("plugin"))
            pack = Packaging.PLUGIN;
        else
            pack = Packaging.ALL;
        ProposalUtil.addGroupIdProposal(project, txtGroupId, pack);
        ProposalUtil.addArtifactIdProposal(project, txtGroupId, txtArtifactId, pack);
        ProposalUtil.addVersionProposal(project, mavenproject, txtGroupId, txtArtifactId, txtVersion, pack);
        txtArtifactId.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                if(!ignoreTextChange)
                    computeResultFromField(valueOrNull(txtGroupId.getText()), valueOrNull(txtArtifactId.getText()), valueOrNull(txtVersion.getText()));
            }

            final MavenRepositorySearchDialog this$0;

            
            {
                this$0 = MavenRepositorySearchDialog.this;
                super();
            }
        }
);
        txtGroupId.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                if(!ignoreTextChange)
                    computeResultFromField(valueOrNull(txtGroupId.getText()), valueOrNull(txtArtifactId.getText()), valueOrNull(txtVersion.getText()));
            }

            final MavenRepositorySearchDialog this$0;

            
            {
                this$0 = MavenRepositorySearchDialog.this;
                super();
            }
        }
);
        txtVersion.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                if(!ignoreTextChange)
                    computeResultFromField(valueOrNull(txtGroupId.getText()), valueOrNull(txtArtifactId.getText()), valueOrNull(txtVersion.getText()));
            }

            final MavenRepositorySearchDialog this$0;

            
            {
                this$0 = MavenRepositorySearchDialog.this;
                super();
            }
        }
);
        return composite;
    }

    void okPressedDelegate()
    {
        okPressed();
    }

    void updateStatusDelegate(IStatus status)
    {
        updateStatus(status);
    }

    private String valueOrNull(String text)
    {
        return text.trim().length() != 0 ? text : null;
    }

    protected void computeResult()
    {
        if(showCoords)
            computeResultFromField(valueOrNull(txtGroupId.getText()), valueOrNull(txtArtifactId.getText()), valueOrNull(txtVersion.getText()));
        else
            computeResultFromTree();
    }

    private void computeResultFromField(String groupId, String artifactId, String version)
    {
        selectedIndexedArtifact = cloneIndexedArtifact(selectedIndexedArtifact, groupId, artifactId);
        selectedIndexedArtifactFile = cloneIndexedArtifactFile(selectedIndexedArtifactFile, groupId, artifactId, version);
        selectedScope = comScope != null ? comScope.getText() : null;
        setResult(Collections.singletonList(selectedIndexedArtifactFile));
    }

    private void computeResultFromTree()
    {
        selectedIndexedArtifact = pomSelectionComponent.getIndexedArtifact();
        selectedIndexedArtifactFile = pomSelectionComponent.getIndexedArtifactFile();
        selectedScope = comScope != null ? comScope.getText() : null;
        setResult(Collections.singletonList(selectedIndexedArtifactFile));
        if(selectedIndexedArtifactFile == null || !showCoords)
            break MISSING_BLOCK_LABEL_192;
        ignoreTextChange = true;
        txtGroupId.setText(selectedIndexedArtifactFile.group);
        txtArtifactId.setText(selectedIndexedArtifactFile.artifact);
        if(!managed.contains(new ArtifactKey(selectedIndexedArtifactFile.group, selectedIndexedArtifactFile.artifact, selectedIndexedArtifactFile.version, selectedIndexedArtifactFile.classifier)))
            txtVersion.setText(selectedIndexedArtifactFile.version);
        else
            txtVersion.setText("");
        break MISSING_BLOCK_LABEL_187;
        Exception exception;
        exception;
        ignoreTextChange = false;
        throw exception;
        ignoreTextChange = false;
    }

    public IndexedArtifact getSelectedIndexedArtifact()
    {
        return selectedIndexedArtifact;
    }

    public IndexedArtifactFile getSelectedIndexedArtifactFile()
    {
        return selectedIndexedArtifactFile;
    }

    public String getSelectedScope()
    {
        return selectedScope;
    }

    private IndexedArtifact cloneIndexedArtifact(IndexedArtifact old, String groupId, String artifactId)
    {
        if(old == null)
            return new IndexedArtifact(groupId, artifactId, null, null, null);
        else
            return new IndexedArtifact(groupId == null ? old.getGroupId() : groupId, artifactId == null ? old.getArtifactId() : artifactId, old.getPackageName(), old.getClassname(), old.getPackaging());
    }

    private IndexedArtifactFile cloneIndexedArtifactFile(IndexedArtifactFile old, String groupId, String artifactId, String version)
    {
        if(old == null)
            return new IndexedArtifactFile(null, groupId, artifactId, version, null, null, null, 0L, null, 0, 0, null, null);
        else
            return new IndexedArtifactFile(old.repository, groupId, artifactId, version, old.type, old.classifier, old.fname, old.size, old.date, old.sourcesExists, old.javadocExists, old.prefix, old.goals);
    }

    private static final String DIALOG_SETTINGS = org/eclipse/m2e/core/ui/internal/dialogs/MavenRepositorySearchDialog.getName();
    public static final String SCOPES[] = {
        "compile", "provided", "runtime", "test", "system"
    };
    public static final String DEP_MANAGEMENT_SCOPES[] = {
        "compile", "provided", "runtime", "test", "system", "import"
    };
    private final boolean showScope;
    private final Set artifacts;
    private final Set managed;
    private final String queryType;
    private String queryText;
    MavenPomSelectionComponent pomSelectionComponent;
    private IndexedArtifact selectedIndexedArtifact;
    private IndexedArtifactFile selectedIndexedArtifactFile;
    private String selectedScope;
    private Combo comScope;
    private Text txtGroupId;
    private Text txtArtifactId;
    private Text txtVersion;
    private boolean ignoreTextChange;
    private IProject project;
    private MavenProject mavenproject;
    private final boolean showCoords;








}
