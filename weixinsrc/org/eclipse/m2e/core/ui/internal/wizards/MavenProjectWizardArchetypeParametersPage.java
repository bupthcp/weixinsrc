// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenProjectWizardArchetypeParametersPage.java

package org.eclipse.m2e.core.ui.internal.wizards;

import com.ibm.icu.lang.UCharacter;
import java.lang.reflect.InvocationTargetException;
import java.util.*;
import java.util.regex.Pattern;
import org.apache.maven.archetype.catalog.Archetype;
import org.apache.maven.archetype.common.ArchetypeArtifactManager;
import org.apache.maven.archetype.exception.UnknownArchetype;
import org.apache.maven.archetype.metadata.ArchetypeDescriptor;
import org.apache.maven.archetype.metadata.RequiredProperty;
import org.apache.maven.model.Model;
import org.eclipse.core.runtime.*;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.viewers.*;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.IMaven;
import org.eclipse.m2e.core.internal.MavenPluginActivator;
import org.eclipse.m2e.core.project.ProjectImportConfiguration;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.components.TextComboBoxCellEditor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            AbstractMavenWizardPage, ResolverConfigurationComponent

public class MavenProjectWizardArchetypeParametersPage extends AbstractMavenWizardPage
{

    public MavenProjectWizardArchetypeParametersPage(ProjectImportConfiguration projectImportConfiguration)
    {
        super("Maven2ProjectWizardArchifactPage", projectImportConfiguration);
        isUsed = true;
        archetypeChanged = false;
        packageCustomized = false;
        setTitle(Messages.wizardProjectPageMaven2Title);
        setDescription(Messages.wizardProjectPageMaven2ArchetypeParametersDescription);
        setPageComplete(false);
        requiredProperties = new HashSet();
        optionalProperties = new HashSet();
    }

    public void createControl(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        composite.setLayout(new GridLayout(3, false));
        createArtifactGroup(composite);
        createPropertiesGroup(composite);
        validate();
        createAdvancedSettings(composite, new GridData(4, 128, false, false, 3, 1));
        resolverConfigurationComponent.setModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                validate();
            }

            final MavenProjectWizardArchetypeParametersPage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypeParametersPage.this;
                super();
            }
        }
);
        setControl(composite);
    }

    private void createArtifactGroup(Composite parent)
    {
        Label groupIdlabel = new Label(parent, 0);
        groupIdlabel.setText(Messages.artifactComponentGroupId);
        groupIdCombo = new Combo(parent, 2048);
        groupIdCombo.setLayoutData(new GridData(4, 0x1000000, true, false, 2, 1));
        addFieldWithHistory("groupId", groupIdCombo);
        groupIdCombo.setData("name", "groupId");
        groupIdCombo.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                updateJavaPackage();
                validate();
            }

            final MavenProjectWizardArchetypeParametersPage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypeParametersPage.this;
                super();
            }
        }
);
        Label artifactIdLabel = new Label(parent, 0);
        artifactIdLabel.setText(Messages.artifactComponentArtifactId);
        artifactIdCombo = new Combo(parent, 2048);
        artifactIdCombo.setLayoutData(new GridData(4, 0x1000000, false, false, 2, 1));
        addFieldWithHistory("artifactId", artifactIdCombo);
        artifactIdCombo.setData("name", "artifactId");
        artifactIdCombo.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                updateJavaPackage();
                validate();
            }

            final MavenProjectWizardArchetypeParametersPage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypeParametersPage.this;
                super();
            }
        }
);
        Label versionLabel = new Label(parent, 0);
        versionLabel.setText(Messages.artifactComponentVersion);
        versionCombo = new Combo(parent, 2048);
        GridData gd_versionCombo = new GridData(16384, 0x1000000, false, false, 2, 1);
        gd_versionCombo.widthHint = 150;
        versionCombo.setLayoutData(gd_versionCombo);
        versionCombo.setText("0.0.1-SNAPSHOT");
        addFieldWithHistory("version", versionCombo);
        versionCombo.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                validate();
            }

            final MavenProjectWizardArchetypeParametersPage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypeParametersPage.this;
                super();
            }
        }
);
        Label packageLabel = new Label(parent, 0);
        packageLabel.setText(Messages.artifactComponentPackage);
        packageCombo = new Combo(parent, 2048);
        packageCombo.setLayoutData(new GridData(4, 0x1000000, false, false, 2, 1));
        packageCombo.setData("name", "package");
        addFieldWithHistory("package", packageCombo);
        packageCombo.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                if(!packageCustomized && !packageCombo.getText().equals(getDefaultJavaPackage()))
                    packageCustomized = true;
                validate();
            }

            final MavenProjectWizardArchetypeParametersPage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypeParametersPage.this;
                super();
            }
        }
);
    }

    private void createPropertiesGroup(Composite composite)
    {
        Label propertiesLabel = new Label(composite, 0);
        propertiesLabel.setLayoutData(new GridData(16384, 0x1000000, false, false, 3, 1));
        propertiesLabel.setText(Messages.MavenProjectWizardArchetypeParametersPage_lblProps);
        propertiesViewer = new TableViewer(composite, 0x10800);
        propertiesTable = propertiesViewer.getTable();
        propertiesTable.setLinesVisible(true);
        propertiesTable.setHeaderVisible(true);
        propertiesTable.setLayoutData(new GridData(4, 4, true, true, 2, 2));
        TableColumn propertiesTableNameColumn = new TableColumn(propertiesTable, 0);
        propertiesTableNameColumn.setWidth(130);
        propertiesTableNameColumn.setText(Messages.MavenProjectWizardArchetypeParametersPage_columnName);
        TableColumn propertiesTableValueColumn = new TableColumn(propertiesTable, 0);
        propertiesTableValueColumn.setWidth(230);
        propertiesTableValueColumn.setText(Messages.MavenProjectWizardArchetypeParametersPage_columnValue);
        propertiesViewer.setColumnProperties(new String[] {
            "key", "value"
        });
        propertiesViewer.setCellEditors(new CellEditor[] {
            new TextCellEditor(propertiesTable, 0), new TextCellEditor(propertiesTable, 0)
        });
        propertiesViewer.setCellModifier(new ICellModifier() {

            public boolean canModify(Object element, String property)
            {
                return true;
            }

            public void modify(Object element, String property, Object value)
            {
                if(element instanceof TableItem)
                {
                    ((TableItem)element).setText(getTextIndex(property), String.valueOf(value));
                    validate();
                }
            }

            public Object getValue(Object element, String property)
            {
                if(element instanceof TableItem)
                    return ((TableItem)element).getText(getTextIndex(property));
                else
                    return null;
            }

            final MavenProjectWizardArchetypeParametersPage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypeParametersPage.this;
                super();
            }
        }
);
        Button addButton = new Button(composite, 0);
        addButton.setLayoutData(new GridData(4, 128, false, false));
        addButton.setText(Messages.MavenProjectWizardArchetypeParametersPage_btnAdd);
        addButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                propertiesViewer.editElement(addTableItem("?", "?"), 0);
            }

            final MavenProjectWizardArchetypeParametersPage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypeParametersPage.this;
                super();
            }
        }
);
        removeButton = new Button(composite, 0);
        removeButton.setLayoutData(new GridData(16384, 128, false, false));
        removeButton.setText(Messages.MavenProjectWizardArchetypeParametersPage_btnRemove);
        removeButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                if(propertiesTable.getSelectionCount() > 0)
                {
                    propertiesTable.remove(propertiesTable.getSelectionIndices());
                    removeButton.setEnabled(propertiesTable.getItemCount() > 0);
                    validate();
                }
            }

            final MavenProjectWizardArchetypeParametersPage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypeParametersPage.this;
                super();
            }
        }
);
    }

    void validate()
    {
        String error = validateInput();
        setErrorMessage(error);
        setPageComplete(error == null);
    }

    private String validateInput()
    {
        String error = validateGroupIdInput(groupIdCombo.getText().trim());
        if(error != null)
            return error;
        error = validateArtifactIdInput(artifactIdCombo.getText().trim());
        if(error != null)
            return error;
        String versionValue = versionCombo.getText().trim();
        if(versionValue.length() == 0)
            return Messages.wizardProjectPageMaven2ValidatorVersion;
        String packageName = packageCombo.getText();
        if(packageName.trim().length() != 0 && !Pattern.matches("[A-Za-z_$][A-Za-z_$\\d]*(?:\\.[A-Za-z_$][A-Za-z_$\\d]*)*", packageName))
            return Messages.MavenProjectWizardArchetypeParametersPage_error_package;
        IStatus nameStatus = getImportConfiguration().validateProjectName(getModel());
        if(!nameStatus.isOK())
            return NLS.bind(Messages.wizardProjectPageMaven2ValidatorProjectNameInvalid, nameStatus.getMessage());
        if(requiredProperties.size() > 0)
        {
            Properties properties = getProperties();
            for(Iterator iterator = requiredProperties.iterator(); iterator.hasNext();)
            {
                String key = (String)iterator.next();
                String value = properties.getProperty(key);
                if(value == null || value.length() == 0)
                    return NLS.bind(Messages.wizardProjectPageMaven2ValidatorRequiredProperty, key);
            }

        }
        return null;
    }

    public IWizardPage getNextPage()
    {
        return null;
    }

    public void setArchetype(Archetype archetype)
    {
        if(archetype == null)
        {
            propertiesTable.removeAll();
            archetypeChanged = false;
        } else
        if(!archetype.equals(this.archetype))
        {
            this.archetype = archetype;
            propertiesTable.removeAll();
            requiredProperties.clear();
            optionalProperties.clear();
            archetypeChanged = true;
            Properties properties = archetype.getProperties();
            if(properties != null)
            {
                String key;
                for(Iterator it = properties.entrySet().iterator(); it.hasNext(); optionalProperties.add(key))
                {
                    java.util.Map.Entry e = (java.util.Map.Entry)it.next();
                    key = (String)e.getKey();
                    addTableItem(key, (String)e.getValue());
                }

            }
        }
    }

    void loadArchetypeDescriptor()
    {
        final String groupId = archetype.getGroupId();
        final String artifactId = archetype.getArtifactId();
        final String version = archetype.getVersion();
        final String archetypeName = (new StringBuilder(String.valueOf(groupId))).append(":").append(artifactId).append(":").append(version).toString();
        try
        {
            getContainer().run(false, true, new IRunnableWithProgress() {

                public void run(IProgressMonitor monitor)
                {
                    monitor.beginTask(NLS.bind(Messages.MavenProjectWizardArchetypeParametersPage_task, archetypeName), -1);
                    IMaven maven = MavenPlugin.getMaven();
                    org.apache.maven.artifact.repository.ArtifactRepository localRepository = maven.getLocalRepository();
                    List repositories = maven.getArtifactRepositories();
                    ArchetypeArtifactManager aaMgr = MavenPluginActivator.getDefault().getArchetypeArtifactManager();
                    if(aaMgr.isFileSetArchetype(groupId, artifactId, version, null, localRepository, repositories))
                    {
                        ArchetypeDescriptor descriptor = aaMgr.getFileSetArchetypeDescriptor(groupId, artifactId, version, null, localRepository, repositories);
                        List properties = descriptor.getRequiredProperties();
                        if(properties != null)
                        {
                            for(Iterator iterator = properties.iterator(); iterator.hasNext();)
                            {
                                Object o = iterator.next();
                                if(o instanceof RequiredProperty)
                                {
                                    RequiredProperty rp = (RequiredProperty)o;
                                    requiredProperties.add(rp.getKey());
                                    addTableItem(rp.getKey(), rp.getDefaultValue());
                                }
                            }

                        }
                    }
                    break MISSING_BLOCK_LABEL_254;
                    UnknownArchetype e;
                    e;
                    MavenProjectWizardArchetypeParametersPage.log.error(NLS.bind("Error downloading archetype {0}", archetypeName), e);
                    monitor.done();
                    break MISSING_BLOCK_LABEL_260;
                    CoreException ex;
                    ex;
                    MavenProjectWizardArchetypeParametersPage.log.error(ex.getMessage(), ex);
                    monitor.done();
                    break MISSING_BLOCK_LABEL_260;
                    Exception exception;
                    exception;
                    monitor.done();
                    throw exception;
                    monitor.done();
                }

                final MavenProjectWizardArchetypeParametersPage this$0;
                private final String val$archetypeName;
                private final String val$groupId;
                private final String val$artifactId;
                private final String val$version;

            
            {
                this$0 = MavenProjectWizardArchetypeParametersPage.this;
                archetypeName = s;
                groupId = s1;
                artifactId = s2;
                version = s3;
                super();
            }
            }
);
        }
        catch(InterruptedException _ex) { }
        catch(InvocationTargetException ex)
        {
            String msg = NLS.bind(Messages.MavenProjectWizardArchetypeParametersPage_error_download, archetypeName);
            log.error(msg, ex);
            setErrorMessage((new StringBuilder(String.valueOf(msg))).append("\n").append(ex.toString()).toString());
        }
    }

    TableItem addTableItem(String key, String value)
    {
        TableItem item = new TableItem(propertiesTable, 0);
        item.setData(item);
        item.setText(0, key);
        item.setText(1, value != null ? value : "");
        return item;
    }

    public void setProjectName(String projectName)
    {
        if(artifactIdCombo.getText().equals(groupIdCombo.getText()))
            groupIdCombo.setText(projectName);
        artifactIdCombo.setText(projectName);
        packageCombo.setText((new StringBuilder("org.")).append(projectName.replace('-', '.')).toString());
        validate();
    }

    public void setParentProject(String groupId, String artifactId, String version)
    {
        groupIdCombo.setText(groupId);
        versionCombo.setText(version);
        validate();
    }

    public void setArtifactIdEnabled(boolean b)
    {
        artifactIdCombo.setEnabled(b);
    }

    public String getJavaPackage()
    {
        if(packageCombo.getText().length() > 0)
            return packageCombo.getText();
        else
            return getDefaultJavaPackage();
    }

    protected void updateJavaPackage()
    {
        if(packageCustomized)
        {
            return;
        } else
        {
            String defaultPackageName = getDefaultJavaPackage();
            packageCombo.setText(defaultPackageName);
            return;
        }
    }

    protected String getDefaultJavaPackage()
    {
        return getDefaultJavaPackage(groupIdCombo.getText().trim(), artifactIdCombo.getText().trim());
    }

    public Model getModel()
    {
        Model model = new Model();
        model.setModelVersion("4.0.0");
        model.setGroupId(groupIdCombo.getText());
        model.setArtifactId(artifactIdCombo.getText());
        model.setVersion(versionCombo.getText());
        return model;
    }

    public void setUsed(boolean isUsed)
    {
        this.isUsed = isUsed;
    }

    public boolean isPageComplete()
    {
        return !isUsed || super.isPageComplete();
    }

    public void setVisible(boolean visible)
    {
        super.setVisible(visible);
        if(visible)
        {
            if(groupIdCombo.getText().length() == 0 && groupIdCombo.getItemCount() > 0)
            {
                groupIdCombo.setText(groupIdCombo.getItem(0));
                packageCombo.setText(getDefaultJavaPackage());
                packageCustomized = false;
            }
            if(archetypeChanged && archetype != null)
            {
                archetypeChanged = false;
                loadArchetypeDescriptor();
                validate();
            }
            updatePropertyEditors();
        }
    }

    public Properties getProperties()
    {
        if(propertiesViewer.isCellEditorActive())
            propertiesTable.setFocus();
        Properties properties = new Properties();
        for(int i = 0; i < propertiesTable.getItemCount(); i++)
        {
            TableItem item = propertiesTable.getItem(i);
            properties.put(item.getText(0), item.getText(1));
        }

        return properties;
    }

    public int getTextIndex(String property)
    {
        return "key".equals(property) ? 0 : 1;
    }

    public void updatePropertyEditors()
    {
        CellEditor ce[] = propertiesViewer.getCellEditors();
        int n = requiredProperties.size() + optionalProperties.size();
        if(n == 0)
        {
            if(ce[0] instanceof TextComboBoxCellEditor)
            {
                ce[0].dispose();
                ce[0] = new TextCellEditor(propertiesTable, 0x800000);
            }
        } else
        {
            TextComboBoxCellEditor comboEditor = null;
            if(ce[0] instanceof TextComboBoxCellEditor)
            {
                comboEditor = (TextComboBoxCellEditor)ce[0];
            } else
            {
                ce[0].dispose();
                comboEditor = new TextComboBoxCellEditor(propertiesTable, 0x800000);
                ce[0] = comboEditor;
            }
            List propertyKeys = new ArrayList(n);
            propertyKeys.addAll(requiredProperties);
            propertyKeys.addAll(optionalProperties);
            comboEditor.setItems((String[])propertyKeys.toArray(new String[n]));
        }
    }

    public static String getDefaultJavaPackage(String groupId, String artifactId)
    {
        StringBuffer sb = new StringBuffer(groupId);
        if(sb.length() > 0 && artifactId.length() > 0)
            sb.append('.');
        sb.append(artifactId);
        if(sb.length() == 0)
            sb.append("foo");
        boolean isFirst = true;
        StringBuffer pkg = new StringBuffer();
        for(int i = 0; i < sb.length(); i++)
        {
            char c = sb.charAt(i);
            if(c == '-')
            {
                pkg.append('_');
                isFirst = false;
            } else
            if(isFirst)
            {
                if(UCharacter.isJavaIdentifierStart(c))
                {
                    pkg.append(c);
                    isFirst = false;
                }
            } else
            if(c == '.')
            {
                pkg.append('.');
                isFirst = true;
            } else
            if(UCharacter.isJavaIdentifierPart(c))
                pkg.append(c);
        }

        return pkg.toString();
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/wizards/MavenProjectWizardArchetypeParametersPage);
    public static final String DEFAULT_VERSION = "0.0.1-SNAPSHOT";
    public static final String DEFAULT_PACKAGE = "foo";
    Table propertiesTable;
    TableViewer propertiesViewer;
    public static final String KEY_PROPERTY = "key";
    public static final int KEY_INDEX = 0;
    public static final String VALUE_PROPERTY = "value";
    public static final int VALUE_INDEX = 1;
    protected Combo groupIdCombo;
    protected Combo artifactIdCombo;
    protected Combo versionCombo;
    protected Combo packageCombo;
    protected Button removeButton;
    private boolean isUsed;
    protected Set requiredProperties;
    protected Set optionalProperties;
    protected Archetype archetype;
    protected boolean archetypeChanged;
    protected boolean packageCustomized;


}
