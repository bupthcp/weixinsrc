// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenInstallationsPreferencePage.java

package org.eclipse.m2e.core.ui.internal.preferences;

import java.io.File;
import java.lang.reflect.Constructor;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import org.apache.maven.settings.building.SettingsProblem;
import org.eclipse.core.filesystem.*;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.viewers.*;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.*;
import org.eclipse.m2e.core.internal.embedder.MavenEmbeddedRuntime;
import org.eclipse.m2e.core.internal.index.IMutableIndex;
import org.eclipse.m2e.core.internal.index.IndexManager;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.*;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.*;
import org.eclipse.ui.browser.IWebBrowser;
import org.eclipse.ui.browser.IWorkbenchBrowserSupport;
import org.eclipse.ui.ide.IDE;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class MavenInstallationsPreferencePage extends PreferencePage
    implements IWorkbenchPreferencePage
{
    static class RuntimesLabelProvider
        implements ITableLabelProvider, IColorProvider
    {

        public String getColumnText(Object element, int columnIndex)
        {
            MavenRuntime runtime = (MavenRuntime)element;
            return runtime.toString();
        }

        public Image getColumnImage(Object element, int columnIndex)
        {
            return null;
        }

        public Color getBackground(Object element)
        {
            return null;
        }

        public Color getForeground(Object element)
        {
            MavenRuntime runtime = (MavenRuntime)element;
            if(!runtime.isEditable())
                return Display.getCurrent().getSystemColor(16);
            else
                return null;
        }

        public void dispose()
        {
        }

        public boolean isLabelProperty(Object element, String property)
        {
            return false;
        }

        public void addListener(ILabelProviderListener ilabelproviderlistener)
        {
        }

        public void removeListener(ILabelProviderListener ilabelproviderlistener)
        {
        }

        RuntimesLabelProvider()
        {
        }
    }


    public MavenInstallationsPreferencePage()
    {
        dirty = false;
        setTitle(Messages.MavenInstallationsPreferencePage_title);
    }

    public void init(IWorkbench iworkbench)
    {
    }

    protected void performDefaults()
    {
        runtimeManager.reset();
        defaultRuntime = runtimeManager.getDefaultRuntime();
        runtimes = runtimeManager.getMavenRuntimes();
        runtimesViewer.setInput(runtimes);
        runtimesViewer.setChecked(defaultRuntime, true);
        runtimesViewer.refresh();
        storeCustom("");
        globalSettingsText.setText("");
        try
        {
            mavenConfiguration.setGlobalSettingsFile("");
        }
        catch(CoreException e)
        {
            log.error(e.getMessage(), e);
        }
        updateGlobals(true);
        super.performDefaults();
        setDirty(true);
    }

    protected void storeCustom(String dir)
    {
        M2EUIPluginActivator.getDefault().getPreferenceStore().setValue("customGlobalSettingsFile", dir != null ? dir : "");
    }

    protected void performApply()
    {
        updateSettings();
    }

    private void updateSettings()
    {
        (new Job(Messages.MavenInstallationsPreferencePage_job_updating) {

            protected IStatus run(IProgressMonitor monitor)
            {
                String dir = getGlobalSettingsText();
                runtimeManager.setRuntimes(runtimes);
                runtimeManager.setDefaultRuntime(defaultRuntime);
                String oldSettings = mavenConfiguration.getGlobalSettingsFile();
                try
                {
                    mavenConfiguration.setGlobalSettingsFile(dir);
                }
                catch(CoreException e)
                {
                    MavenInstallationsPreferencePage.log.error(e.getMessage(), e);
                    throw new RuntimeException(e.getMessage(), e);
                }
                if(defaultRuntime == null || (defaultRuntime instanceof MavenEmbeddedRuntime))
                    storeCustom(dir);
                IndexManager indexManager = MavenPlugin.getIndexManager();
                try
                {
                    indexManager.getWorkspaceIndex().updateIndex(true, monitor);
                }
                catch(CoreException ex)
                {
                    return ex.getStatus();
                }
                if((dir != null || oldSettings == null) && dir != null)
                    dir.equals(oldSettings);
                return Status.OK_STATUS;
            }

            final MavenInstallationsPreferencePage this$0;

            
            {
                this$0 = MavenInstallationsPreferencePage.this;
                super($anonymous0);
            }
        }
).schedule();
    }

    public boolean performOk()
    {
        if(dirty)
            updateSettings();
        return true;
    }

    public void setDirty(boolean dirty)
    {
        this.dirty = dirty;
    }

    public boolean isDirty()
    {
        return dirty;
    }

    protected boolean validateMavenInstall(String dir)
    {
        if(dir == null || dir.length() == 0)
            return false;
        File selectedDir = new File(dir);
        if(!selectedDir.isDirectory())
        {
            MessageDialog.openError(getShell(), Messages.MavenInstallationsPreferencePage_error_title, Messages.MavenInstallationsPreferencePage_error_message);
            return false;
        }
        File binDir = new File(dir, "bin");
        File confDir = new File(dir, "conf");
        File libDir = new File(dir, "lib");
        if(!binDir.exists() || !confDir.exists() || !libDir.exists())
        {
            MessageDialog.openError(getShell(), Messages.MavenInstallationsPreferencePage_error_title, Messages.MavenInstallationsPreferencePage_error2_message);
            return false;
        } else
        {
            return true;
        }
    }

    protected Control createContents(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        GridLayout gridLayout = new GridLayout(3, false);
        gridLayout.marginBottom = 5;
        gridLayout.marginRight = 5;
        gridLayout.marginHeight = 0;
        gridLayout.marginWidth = 0;
        composite.setLayout(gridLayout);
        Label link = new Label(composite, 0);
        link.setLayoutData(new GridData(4, 128, false, false, 3, 1));
        link.setText(Messages.MavenInstallationsPreferencePage_link);
        createTable(composite);
        createGlobalSettings(composite);
        defaultRuntime = runtimeManager.getDefaultRuntime();
        runtimes = runtimeManager.getMavenRuntimes();
        runtimesViewer.setInput(runtimes);
        runtimesViewer.setChecked(defaultRuntime, true);
        runtimesViewer.refresh();
        checkSettings();
        updateGlobals(false);
        globalSettingsText.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent modifyevent)
            {
                setGlobalSettingsText(globalSettingsText.getText());
                updateGlobalSettingsLink();
                checkSettings();
                setDirty(true);
            }

            final MavenInstallationsPreferencePage this$0;

            
            {
                this$0 = MavenInstallationsPreferencePage.this;
                super();
            }
        }
);
        return composite;
    }

    private void updateGlobalSettingsText(boolean useLastCustomGlobal)
    {
        String globalSettings = getGlobalSettingsFile(useLastCustomGlobal);
        globalSettingsText.setText(globalSettings != null ? globalSettings : "");
    }

    private String getGlobalSettingsFile(boolean useLastCustomGlobal)
    {
        if(defaultRuntime == null || (defaultRuntime instanceof MavenEmbeddedRuntime))
        {
            String globalSettings = null;
            if(useLastCustomGlobal)
                globalSettings = M2EUIPluginActivator.getDefault().getPreferenceStore().getString("customGlobalSettingsFile");
            else
                globalSettings = M2EUIPluginActivator.getDefault().getPreferenceStore().getString("eclipse.m2.globalSettingsFile");
            return globalSettings.trim().length() != 0 ? globalSettings : null;
        } else
        {
            return defaultRuntime != null ? defaultRuntime.getSettings() : null;
        }
    }

    public void setGlobalSettingsText(String settings)
    {
        globalSettings = settings;
    }

    public String getGlobalSettingsText()
    {
        return globalSettings;
    }

    private void updateGlobals(boolean useLastCustomGlobal)
    {
        updateGlobalSettingsText(useLastCustomGlobal);
        updateGlobalSettingsLink();
        updateGlobalSettingsBrowseButton();
    }

    private MavenRuntime getCheckedRuntime()
    {
        Object runtimes[] = runtimesViewer.getCheckedElements();
        if(runtimes != null && runtimes.length > 0)
            return (MavenRuntime)runtimes[0];
        else
            return null;
    }

    protected MavenRuntime getSelectedMavenRuntime()
    {
        IStructuredSelection sel = (IStructuredSelection)runtimesViewer.getSelection();
        return (MavenRuntime)sel.getFirstElement();
    }

    private void updateGlobalSettingsLink()
    {
        MavenRuntime runtime = getCheckedRuntime();
        String text = "";
        String currText = globalSettingsText.getText();
        boolean showURL = false;
        File f = new File(currText);
        if(f.exists())
            showURL = true;
        String openFile = showURL ? Messages.MavenInstallationsPreferencePage_link_open : "";
        if(runtime instanceof MavenEmbeddedRuntime)
            text = NLS.bind(Messages.MavenInstallationsPreferencePage_settings, openFile);
        else
            text = NLS.bind(Messages.MavenInstallationsPreferencePage_settings_install, openFile);
        globalSettingsLink.setText(text);
    }

    private void updateGlobalSettingsBrowseButton()
    {
        MavenRuntime runtime = getCheckedRuntime();
        boolean enabled = runtime != null && (runtime instanceof MavenEmbeddedRuntime);
        globalSettingsBrowseButton.setEnabled(enabled);
        globalSettingsText.setEditable(enabled);
    }

    private void createGlobalSettings(Composite composite)
    {
        globalSettingsLink = new Link(composite, 0);
        globalSettingsLink.setData("name", "globalSettingsLink");
        globalSettingsLink.setToolTipText(Messages.MavenInstallationsPreferencePage_link_global);
        GridData gd = new GridData(4, 0x1000000, true, false, 3, 1);
        gd.verticalIndent = 25;
        globalSettingsLink.setLayoutData(gd);
        globalSettingsLink.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                String globalSettings = getGlobalSettings();
                if(globalSettings.length() == 0)
                    globalSettings = defaultRuntime.getSettings();
                if(globalSettings != null && globalSettings.length() > 0)
                    openEditor(globalSettings);
            }

            final MavenInstallationsPreferencePage this$0;

            
            {
                this$0 = MavenInstallationsPreferencePage.this;
                super();
            }
        }
);
        globalSettingsText = new Text(composite, 2048);
        globalSettingsText.setLayoutData(new GridData(4, 0x1000000, true, false, 2, 1));
        globalSettingsText.setData("name", "globalSettingsText");
        globalSettingsBrowseButton = new Button(composite, 0);
        GridData gd_globalSettingsBrowseButton = new GridData(4, 0x1000000, false, false);
        globalSettingsBrowseButton.setLayoutData(gd_globalSettingsBrowseButton);
        globalSettingsBrowseButton.setText(Messages.MavenInstallationsPreferencePage_btnGlobalBrowse);
        globalSettingsBrowseButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                FileDialog dialog = new FileDialog(getShell(), 4096);
                if(getGlobalSettings().length() > 0)
                    dialog.setFileName(getGlobalSettings());
                String file = dialog.open();
                if(file != null)
                {
                    file = file.trim();
                    if(file.length() > 0)
                        globalSettingsText.setText(file);
                }
            }

            final MavenInstallationsPreferencePage this$0;

            
            {
                this$0 = MavenInstallationsPreferencePage.this;
                super();
            }
        }
);
    }

    private void createTable(Composite composite)
    {
        runtimesViewer = CheckboxTableViewer.newCheckList(composite, 0x10800);
        runtimesViewer.setLabelProvider(new RuntimesLabelProvider());
        runtimesViewer.setContentProvider(new IStructuredContentProvider() {

            public Object[] getElements(Object input)
            {
                if(input instanceof List)
                {
                    List list = (List)input;
                    if(list.size() > 0)
                        return list.toArray(new MavenRuntime[list.size()]);
                }
                return new Object[0];
            }

            public void inputChanged(Viewer viewer1, Object obj, Object obj1)
            {
            }

            public void dispose()
            {
            }

            final MavenInstallationsPreferencePage this$0;

            
            {
                this$0 = MavenInstallationsPreferencePage.this;
                super();
            }
        }
);
        Table table = runtimesViewer.getTable();
        table.setLinesVisible(false);
        table.setHeaderVisible(false);
        GridData gd_table = new GridData(4, 4, true, false, 2, 3);
        gd_table.heightHint = 151;
        gd_table.widthHint = 333;
        table.setLayoutData(gd_table);
        Button addButton = new Button(composite, 0);
        addButton.setLayoutData(new GridData(4, 128, false, false));
        addButton.setText(Messages.MavenInstallationsPreferencePage_btnAdd);
        addButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                DirectoryDialog dlg = new DirectoryDialog(getShell());
                dlg.setText(Messages.MavenInstallationsPreferencePage_dialog_install_title);
                dlg.setMessage(Messages.MavenInstallationsPreferencePage_dialog_install_message);
                String dir = dlg.open();
                if(dir == null)
                    return;
                boolean ok = validateMavenInstall(dir);
                if(ok)
                {
                    MavenRuntime runtime = MavenRuntimeManager.createExternalRuntime(dir);
                    if(runtimes.contains(runtime))
                    {
                        MessageDialog.openError(getShell(), Messages.MavenInstallationsPreferencePage_error_title, Messages.MavenInstallationsPreferencePage_error3_message);
                    } else
                    {
                        runtimes.add(runtime);
                        runtimesViewer.refresh();
                        runtimesViewer.setAllChecked(false);
                        runtimesViewer.setChecked(runtime, true);
                        if(runtime != null)
                            setCheckedRuntime(runtime);
                    }
                }
            }

            final MavenInstallationsPreferencePage this$0;

            
            {
                this$0 = MavenInstallationsPreferencePage.this;
                super();
            }
        }
);
        final Button editButton = new Button(composite, 0);
        editButton.setLayoutData(new GridData(4, 128, false, false));
        editButton.setEnabled(false);
        editButton.setText(Messages.MavenInstallationsPreferencePage_btnEdit);
        editButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                MavenRuntime runtime = getSelectedMavenRuntime();
                DirectoryDialog dlg = new DirectoryDialog(Display.getCurrent().getActiveShell());
                dlg.setText(Messages.MavenInstallationsPreferencePage_dialog_title);
                dlg.setMessage(Messages.MavenInstallationsPreferencePage_dialog_message);
                dlg.setFilterPath(runtime.getLocation());
                String dir = dlg.open();
                boolean ok = validateMavenInstall(dir);
                if(ok && !dir.equals(runtime.getLocation()))
                {
                    MavenRuntime newRuntime = MavenRuntimeManager.createExternalRuntime(dir);
                    if(runtimes.contains(newRuntime))
                    {
                        MessageDialog.openError(getShell(), Messages.MavenInstallationsPreferencePage_error_title, Messages.MavenInstallationsPreferencePage_error4_message);
                    } else
                    {
                        runtimes.set(runtimes.indexOf(runtime), newRuntime);
                        runtimesViewer.refresh();
                        setDirty(true);
                        if(newRuntime != null)
                            setCheckedRuntime(newRuntime);
                    }
                }
            }

            final MavenInstallationsPreferencePage this$0;

            
            {
                this$0 = MavenInstallationsPreferencePage.this;
                super();
            }
        }
);
        final Button removeButton = new Button(composite, 0);
        removeButton.setEnabled(false);
        removeButton.setLayoutData(new GridData(4, 128, false, false));
        removeButton.setText(Messages.MavenInstallationsPreferencePage_btnRemove);
        removeButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                MavenRuntime runtime = getSelectedMavenRuntime();
                runtimes.remove(runtime);
                runtimesViewer.refresh();
                Object checkedElements[] = runtimesViewer.getCheckedElements();
                if(checkedElements == null || checkedElements.length == 0)
                {
                    defaultRuntime = runtimeManager.getRuntime("EMBEDDED");
                    runtimesViewer.setChecked(defaultRuntime, true);
                    setCheckedRuntime(defaultRuntime);
                }
                setDirty(true);
            }

            final MavenInstallationsPreferencePage this$0;

            
            {
                this$0 = MavenInstallationsPreferencePage.this;
                super();
            }
        }
);
        runtimesViewer.addSelectionChangedListener(new ISelectionChangedListener() {

            public void selectionChanged(SelectionChangedEvent event)
            {
                if(runtimesViewer.getSelection() instanceof IStructuredSelection)
                {
                    MavenRuntime runtime = getSelectedMavenRuntime();
                    boolean isEnabled = runtime != null && runtime.isEditable();
                    removeButton.setEnabled(isEnabled);
                    editButton.setEnabled(isEnabled);
                }
            }

            final MavenInstallationsPreferencePage this$0;
            private final Button val$removeButton;
            private final Button val$editButton;

            
            {
                this$0 = MavenInstallationsPreferencePage.this;
                removeButton = button;
                editButton = button1;
                super();
            }
        }
);
        runtimesViewer.addCheckStateListener(new ICheckStateListener() {

            public void checkStateChanged(CheckStateChangedEvent event)
            {
                if(event.getElement() != null && event.getChecked())
                    setCheckedRuntime((MavenRuntime)event.getElement());
            }

            final MavenInstallationsPreferencePage this$0;

            
            {
                this$0 = MavenInstallationsPreferencePage.this;
                super();
            }
        }
);
        Link noteLabel = new Link(composite, 72);
        GridData noteLabelData = new GridData(4, 128, false, false, 2, 1);
        noteLabelData.horizontalIndent = 15;
        noteLabelData.widthHint = 100;
        noteLabel.setLayoutData(noteLabelData);
        noteLabel.setText((new StringBuilder(String.valueOf(Messages.MavenInstallationsPreferencePage_lblNote1))).append(Messages.MavenInstallationsPreferencePage_lblNote2).toString());
        noteLabel.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                try
                {
                    URL url = new URL(e.text);
                    IWebBrowser browser = PlatformUI.getWorkbench().getBrowserSupport().getExternalBrowser();
                    browser.openURL(url);
                }
                catch(MalformedURLException ex)
                {
                    MavenInstallationsPreferencePage.log.error("Malformed URL", ex);
                }
                catch(PartInitException ex)
                {
                    MavenInstallationsPreferencePage.log.error(ex.getMessage(), ex);
                }
            }

            final MavenInstallationsPreferencePage this$0;

            
            {
                this$0 = MavenInstallationsPreferencePage.this;
                super();
            }
        }
);
    }

    protected void setCheckedRuntime(MavenRuntime runtime)
    {
        runtimesViewer.setAllChecked(false);
        runtimesViewer.setChecked(runtime, true);
        defaultRuntime = runtime;
        boolean useDefault = defaultRuntime == null || (defaultRuntime instanceof MavenEmbeddedRuntime);
        updateGlobals(useDefault);
        setDirty(true);
    }

    void checkSettings()
    {
        setErrorMessage(null);
        setMessage(null);
        String globalSettings = getGlobalSettings();
        if(globalSettings != null && globalSettings.length() > 0)
        {
            File globalSettingsFile = new File(globalSettings);
            if(!globalSettingsFile.exists())
            {
                setMessage(Messages.MavenInstallationsPreferencePage_error_global_missing, 2);
                globalSettings = null;
            }
        } else
        {
            globalSettings = null;
        }
        List result = maven.validateSettings(globalSettings);
        if(result.size() > 0)
            setMessage((new StringBuilder(String.valueOf(Messages.MavenInstallationsPreferencePage_error_global_parse))).append(((SettingsProblem)result.get(0)).getMessage()).toString(), 2);
    }

    void openEditor(final String fileName)
    {
        IWorkbench workbench = PlatformUI.getWorkbench();
        IWorkbenchWindow window = workbench.getActiveWorkbenchWindow();
        org.eclipse.ui.IWorkbenchPage page = window.getActivePage();
        IEditorDescriptor desc = PlatformUI.getWorkbench().getEditorRegistry().getDefaultEditor("settings.xml");
        File file = new File(fileName);
        IEditorInput input = null;
        try
        {
            Class javaInput = null;
            try
            {
                javaInput = Class.forName("org.eclipse.ui.internal.editors.text.JavaFileEditorInput");
                Constructor cons = javaInput.getConstructor(new Class[] {
                    java/io/File
                });
                input = (IEditorInput)cons.newInstance(new Object[] {
                    file
                });
            }
            catch(Exception _ex)
            {
                try
                {
                    IFileStore fileStore = EFS.getLocalFileSystem().fromLocalFile(file);
                    Class storeInput = Class.forName("org.eclipse.ui.ide.FileStoreEditorInput");
                    Constructor cons = storeInput.getConstructor(new Class[] {
                        org/eclipse/core/filesystem/IFileStore
                    });
                    input = (IEditorInput)cons.newInstance(new Object[] {
                        fileStore
                    });
                }
                catch(Exception _ex2) { }
            }
            final IEditorPart editor = IDE.openEditor(page, input, desc.getId());
            editor.addPropertyListener(new IPropertyListener() {

                public void propertyChanged(Object source, int propId)
                {
                    if(!editor.isDirty())
                    {
                        MavenInstallationsPreferencePage.log.info((new StringBuilder("Refreshing settings ")).append(fileName).toString());
                        invalidateMavenSettings(false);
                    }
                }

                final MavenInstallationsPreferencePage this$0;
                private final IEditorPart val$editor;
                private final String val$fileName;

            
            {
                this$0 = MavenInstallationsPreferencePage.this;
                editor = ieditorpart;
                fileName = s;
                super();
            }
            }
);
        }
        catch(PartInitException ex)
        {
            log.error(ex.getMessage(), ex);
        }
    }

    void invalidateMavenSettings(boolean flag)
    {
    }

    String getGlobalSettings()
    {
        return globalSettingsText.getText().trim();
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/preferences/MavenInstallationsPreferencePage);
    final MavenRuntimeManager runtimeManager = MavenPlugin.getMavenRuntimeManager();
    final IMavenConfiguration mavenConfiguration = MavenPlugin.getMavenConfiguration();
    final IMaven maven = MavenPlugin.getMaven();
    MavenRuntime defaultRuntime;
    List runtimes;
    CheckboxTableViewer runtimesViewer;
    Text globalSettingsText;
    private String globalSettings;
    boolean dirty;
    private Link globalSettingsLink;
    private Button globalSettingsBrowseButton;
    private static final String P_MAVEN_CUSTOM_GLOBAL = "customGlobalSettingsFile";



}
