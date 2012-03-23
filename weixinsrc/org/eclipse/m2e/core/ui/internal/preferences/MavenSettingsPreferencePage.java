// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenSettingsPreferencePage.java

package org.eclipse.m2e.core.ui.internal.preferences;

import java.io.File;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;
import org.apache.maven.artifact.repository.ArtifactRepository;
import org.apache.maven.cli.MavenCli;
import org.apache.maven.repository.RepositorySystem;
import org.apache.maven.settings.Settings;
import org.apache.maven.settings.building.SettingsProblem;
import org.eclipse.core.filesystem.*;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.*;
import org.eclipse.m2e.core.internal.index.IMutableIndex;
import org.eclipse.m2e.core.internal.index.IndexManager;
import org.eclipse.m2e.core.project.*;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.*;
import org.eclipse.ui.ide.IDE;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class MavenSettingsPreferencePage extends PreferencePage
    implements IWorkbenchPreferencePage
{

    public MavenSettingsPreferencePage()
    {
        dirty = false;
        setTitle(Messages.MavenSettingsPreferencePage_title);
    }

    public void init(IWorkbench iworkbench)
    {
    }

    public void setVisible(boolean visible)
    {
        super.setVisible(visible);
        if(visible)
            updateLocalRepository();
    }

    protected void performDefaults()
    {
        userSettingsText.setText(MavenCli.DEFAULT_USER_SETTINGS_FILE.getAbsolutePath());
        setDirty(true);
        updateLocalRepository();
        super.performDefaults();
    }

    protected void updateSettings(boolean updateMavenDependencies)
    {
        String userSettings = getUserSettings();
        (new Job(updateMavenDependencies) {

            protected IStatus run(IProgressMonitor monitor)
            {
                try
                {
                    File localRepositoryDir = new File(maven.getLocalRepository().getBasedir());
                    if(userSettings.length() > 0)
                        mavenConfiguration.setUserSettingsFile(userSettings);
                    else
                        mavenConfiguration.setUserSettingsFile(null);
                    File newRepositoryDir = new File(maven.getLocalRepository().getBasedir());
                    if(!newRepositoryDir.equals(localRepositoryDir))
                    {
                        IndexManager indexManager = MavenPlugin.getIndexManager();
                        indexManager.getWorkspaceIndex().updateIndex(true, monitor);
                    }
                    if(updateMavenDependencies)
                    {
                        IMavenProjectFacade projects[] = MavenPlugin.getMavenProjectRegistry().getProjects();
                        ArrayList allProjects = new ArrayList();
                        if(projects != null)
                        {
                            MavenPlugin.getMaven().reloadSettings();
                            SubProgressMonitor subMonitor = new SubProgressMonitor(monitor, projects.length);
                            for(int i = 0; i < projects.length; i++)
                            {
                                subMonitor.beginTask(NLS.bind(Messages.MavenSettingsPreferencePage_task_updating, projects[i].getProject().getName()), 1);
                                allProjects.add(projects[i].getProject());
                            }

                            MavenPlugin.getMavenProjectRegistry().refresh(new MavenUpdateRequest((IProject[])allProjects.toArray(new IProject[0]), mavenConfiguration.isOffline(), true));
                            subMonitor.done();
                        }
                    }
                    return Status.OK_STATUS;
                }
                catch(CoreException e)
                {
                    MavenSettingsPreferencePage.log.error(e.getMessage(), e);
                    return e.getStatus();
                }
            }

            final MavenSettingsPreferencePage this$0;
            private final String val$userSettings;
            private final boolean val$updateMavenDependencies;

            
            {
                this$0 = MavenSettingsPreferencePage.this;
                userSettings = s;
                updateMavenDependencies = flag;
                super($anonymous0);
            }
        }
).schedule();
    }

    protected void performApply()
    {
        if(dirty)
            updateSettings(false);
    }

    public boolean performOk()
    {
        if(dirty)
            updateSettings(false);
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

    protected Control createContents(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        GridLayout gridLayout = new GridLayout(4, false);
        gridLayout.marginBottom = 5;
        gridLayout.marginRight = 5;
        gridLayout.marginHeight = 0;
        gridLayout.marginWidth = 0;
        composite.setLayout(gridLayout);
        createUserSettings(composite);
        Label localRepositoryLabel = new Label(composite, 0);
        GridData gd = new GridData(4, 0x1000000, true, false, 4, 1);
        gd.verticalIndent = 25;
        localRepositoryLabel.setLayoutData(gd);
        localRepositoryLabel.setText(Messages.MavenSettingsPreferencePage_lblLocal);
        localRepositoryText = new Text(composite, 2056);
        localRepositoryText.setLayoutData(new GridData(4, 0x1000000, true, false, 3, 1));
        localRepositoryText.setData("name", "localRepositoryText");
        localRepositoryText.setEditable(false);
        Button reindexButton = new Button(composite, 0);
        reindexButton.setLayoutData(new GridData(4, 0x20000, false, false, 1, 1));
        reindexButton.setText(Messages.preferencesReindexButton);
        reindexButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                (new WorkspaceJob(Messages.MavenSettingsPreferencePage_job_indexing) {

                    public IStatus runInWorkspace(IProgressMonitor monitor)
                        throws CoreException
                    {
                        IndexManager indexManager = MavenPlugin.getIndexManager();
                        indexManager.getWorkspaceIndex().updateIndex(true, monitor);
                        return Status.OK_STATUS;
                    }

                    final _cls2 this$1;

                    
                    {
                        this$1 = _cls2.this;
                        super($anonymous0);
                    }
                }
).schedule();
            }

            final MavenSettingsPreferencePage this$0;

            
            {
                this$0 = MavenSettingsPreferencePage.this;
                super();
            }
        }
);
        defaultRuntime = runtimeManager.getDefaultRuntime();
        String userSettings = mavenConfiguration.getUserSettingsFile();
        if(userSettings == null || userSettings.length() == 0)
            userSettingsText.setText(MavenCli.DEFAULT_USER_SETTINGS_FILE.getAbsolutePath());
        else
            userSettingsText.setText(userSettings);
        checkSettings();
        updateLocalRepository();
        userSettingsText.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent modifyevent)
            {
                updateLocalRepository();
                checkSettings();
                setDirty(true);
            }

            final MavenSettingsPreferencePage this$0;

            
            {
                this$0 = MavenSettingsPreferencePage.this;
                super();
            }
        }
);
        return composite;
    }

    public void updateSettingsLink(boolean active)
    {
        String text = Messages.MavenSettingsPreferencePage_link1;
        if(active)
            text = Messages.MavenSettingsPreferencePage_link2;
        userSettingsLink.setText(text);
    }

    private void createUserSettings(Composite composite)
    {
        userSettingsLink = new Link(composite, 0);
        userSettingsLink.setData("name", "userSettingsLink");
        userSettingsLink.setText(Messages.MavenSettingsPreferencePage_link2);
        userSettingsLink.setToolTipText(Messages.MavenSettingsPreferencePage_link_tooltip);
        GridData gd_userSettingsLabel = new GridData(4, 0x1000000, true, false, 4, 1);
        gd_userSettingsLabel.verticalIndent = 15;
        userSettingsLink.setLayoutData(gd_userSettingsLabel);
        userSettingsLink.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                String userSettings = getUserSettings();
                if(userSettings.length() == 0)
                    userSettings = MavenCli.DEFAULT_USER_SETTINGS_FILE.getAbsolutePath();
                openEditor(userSettings);
            }

            final MavenSettingsPreferencePage this$0;

            
            {
                this$0 = MavenSettingsPreferencePage.this;
                super();
            }
        }
);
        userSettingsText = new Text(composite, 2048);
        userSettingsText.setData("name", "userSettingsText");
        GridData gd_userSettingsText = new GridData(4, 0x1000000, true, false, 3, 1);
        gd_userSettingsText.verticalIndent = 5;
        gd_userSettingsText.widthHint = 100;
        userSettingsText.setLayoutData(gd_userSettingsText);
        Button userSettingsBrowseButton = new Button(composite, 0);
        GridData gd_userSettingsBrowseButton = new GridData(4, 0x20000, false, false, 1, 1);
        userSettingsBrowseButton.setLayoutData(gd_userSettingsBrowseButton);
        userSettingsBrowseButton.setText(Messages.MavenSettingsPreferencePage_btnBrowse);
        userSettingsBrowseButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                FileDialog dialog = new FileDialog(getShell(), 4096);
                if(getUserSettings().length() > 0)
                    dialog.setFileName(getUserSettings());
                String file = dialog.open();
                if(file != null)
                {
                    file = file.trim();
                    if(file.length() > 0)
                    {
                        userSettingsText.setText(file);
                        updateLocalRepository();
                        checkSettings();
                    }
                }
            }

            final MavenSettingsPreferencePage this$0;

            
            {
                this$0 = MavenSettingsPreferencePage.this;
                super();
            }
        }
);
        Button updateSettings = new Button(composite, 0);
        updateSettings.setText(Messages.MavenSettingsPreferencePage_btnUpdate);
        updateSettings.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                updateSettings(true);
            }

            final MavenSettingsPreferencePage this$0;

            
            {
                this$0 = MavenSettingsPreferencePage.this;
                super();
            }
        }
);
    }

    protected void updateLocalRepository()
    {
        String userSettings = getUserSettings();
        String globalSettings = runtimeManager.getGlobalSettingsFile();
        try
        {
            Settings settings = maven.buildSettings(globalSettings, userSettings);
            String localRepository = settings.getLocalRepository();
            if(localRepository == null)
                localRepository = RepositorySystem.defaultUserLocalRepository.getAbsolutePath();
            if(!localRepositoryText.isDisposed())
                localRepositoryText.setText(localRepository != null ? localRepository : "");
        }
        catch(CoreException e)
        {
            setMessage(e.getMessage(), 3);
        }
    }

    protected void checkSettings()
    {
        setErrorMessage(null);
        setMessage(null);
        boolean fileExists = false;
        String userSettings = getUserSettings();
        if(userSettings != null && userSettings.length() > 0)
        {
            File userSettingsFile = new File(userSettings);
            if(!userSettingsFile.exists())
            {
                setMessage(Messages.MavenSettingsPreferencePage_error_missing, 2);
                userSettings = null;
            } else
            {
                fileExists = true;
            }
        } else
        {
            userSettings = null;
        }
        updateSettingsLink(fileExists);
        List result = maven.validateSettings(userSettings);
        if(result.size() > 0)
            setMessage(NLS.bind(Messages.MavenSettingsPreferencePage_error_parse, ((SettingsProblem)result.get(0)).getMessage()), 2);
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
                        MavenSettingsPreferencePage.log.info((new StringBuilder("Refreshing settings ")).append(fileName).toString());
                }

                final MavenSettingsPreferencePage this$0;
                private final IEditorPart val$editor;
                private final String val$fileName;

            
            {
                this$0 = MavenSettingsPreferencePage.this;
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

    String getUserSettings()
    {
        return userSettingsText.getText().trim();
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/preferences/MavenSettingsPreferencePage);
    final MavenRuntimeManager runtimeManager = MavenPlugin.getMavenRuntimeManager();
    final IMavenConfiguration mavenConfiguration = MavenPlugin.getMavenConfiguration();
    final IMaven maven = MavenPlugin.getMaven();
    MavenRuntime defaultRuntime;
    Text userSettingsText;
    Text localRepositoryText;
    boolean dirty;
    private Link userSettingsLink;


}
