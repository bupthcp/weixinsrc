// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenImportWizardPage.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.*;
import org.apache.maven.model.Model;
import org.apache.maven.model.Parent;
import org.eclipse.core.resources.*;
import org.eclipse.core.runtime.*;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.viewers.*;
import org.eclipse.jface.wizard.*;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.internal.lifecyclemapping.discovery.LifecycleMappingConfiguration;
import org.eclipse.m2e.core.project.*;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.*;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            AbstractMavenWizardPage, MavenImportWizard, ResolverConfigurationComponent, WorkingSetGroup

public class MavenImportWizardPage extends AbstractMavenWizardPage
{
    class ProjectLabelProvider extends LabelProvider
        implements IColorProvider, org.eclipse.jface.viewers.DelegatingStyledCellLabelProvider.IStyledLabelProvider
    {

        public String getText(Object element)
        {
            if(element instanceof MavenProjectInfo)
            {
                MavenProjectInfo info = (MavenProjectInfo)element;
                if(info.getProfiles().isEmpty())
                    return (new StringBuilder(String.valueOf(info.getLabel()))).append(" - ").append(getId(info)).toString();
                else
                    return (new StringBuilder(String.valueOf(info.getLabel()))).append(" - ").append(getId(info)).append("  ").append(info.getProfiles()).toString();
            } else
            {
                return super.getText(element);
            }
        }

        private String getId(MavenProjectInfo info)
        {
            Model model = info.getModel();
            String groupId = model.getGroupId();
            String artifactId = model.getArtifactId();
            String version = model.getVersion();
            String packaging = model.getPackaging();
            Parent parent = model.getParent();
            if(groupId == null && parent != null)
                groupId = parent.getGroupId();
            if(groupId == null)
                groupId = Messages.MavenImportWizardPage_inherited;
            if(version == null && parent != null)
                version = parent.getVersion();
            if(version == null)
                version = Messages.MavenImportWizardPage_inherited;
            return (new StringBuilder(String.valueOf(groupId))).append(":").append(artifactId).append(":").append(version).append(":").append(packaging).toString();
        }

        public Color getForeground(Object element)
        {
            if(element instanceof MavenProjectInfo)
            {
                MavenProjectInfo info = (MavenProjectInfo)element;
                if(isWorkspaceFolder(info))
                    return Display.getDefault().getSystemColor(3);
                if(isAlreadyExists(info))
                    return Display.getDefault().getSystemColor(15);
            }
            return null;
        }

        public Color getBackground(Object element)
        {
            return null;
        }

        public StyledString getStyledText(Object element)
        {
            if(element instanceof MavenProjectInfo)
            {
                MavenProjectInfo info = (MavenProjectInfo)element;
                StyledString ss = new StyledString();
                ss.append((new StringBuilder(String.valueOf(info.getLabel()))).append("  ").toString());
                ss.append(getId(info), StyledString.DECORATIONS_STYLER);
                if(!info.getProfiles().isEmpty())
                    ss.append((new StringBuilder(" - ")).append(info.getProfiles()).toString(), StyledString.QUALIFIER_STYLER);
                return ss;
            } else
            {
                return null;
            }
        }

        final MavenImportWizardPage this$0;

        ProjectLabelProvider()
        {
            this$0 = MavenImportWizardPage.this;
            super();
        }
    }


    protected MavenImportWizardPage(ProjectImportConfiguration importConfiguration, List workingSets)
    {
        super("MavenProjectImportWizardPage", importConfiguration);
        workspaceRoot = ResourcesPlugin.getWorkspace().getRoot();
        showLocation = true;
        this.workingSets = workingSets;
        setTitle(Messages.MavenImportWizardPage_title);
        setDescription(Messages.MavenImportWizardPage_desc);
        setPageComplete(false);
    }

    public void setShowLocation(boolean showLocation)
    {
        this.showLocation = showLocation;
    }

    public void setLocations(List locations)
    {
        this.locations = locations;
    }

    public void createControl(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        composite.setLayout(new GridLayout(3, false));
        setControl(composite);
        if(showLocation || locations == null || locations.isEmpty())
        {
            Label selectRootDirectoryLabel = new Label(composite, 0);
            selectRootDirectoryLabel.setLayoutData(new GridData());
            selectRootDirectoryLabel.setText(Messages.wizardImportPageRoot);
            rootDirectoryCombo = new Combo(composite, 0);
            rootDirectoryCombo.setLayoutData(new GridData(4, 0x1000000, true, false));
            rootDirectoryCombo.setFocus();
            addFieldWithHistory("rootDirectory", rootDirectoryCombo);
            if(locations != null && locations.size() == 1)
            {
                rootDirectoryCombo.setText((String)locations.get(0));
                rootDirectory = (String)locations.get(0);
            }
            Button browseButton = new Button(composite, 0);
            browseButton.setText(Messages.wizardImportPageBrowse);
            browseButton.setLayoutData(new GridData(4, 0x1000000, false, false));
            browseButton.addSelectionListener(new SelectionAdapter() {

                public void widgetSelected(SelectionEvent e)
                {
                    DirectoryDialog dialog = new DirectoryDialog(getShell(), 0);
                    dialog.setText(Messages.wizardImportPageSelectRootFolder);
                    String path = rootDirectoryCombo.getText();
                    if(path.length() == 0)
                        path = ResourcesPlugin.getWorkspace().getRoot().getLocation().toPortableString();
                    dialog.setFilterPath(path);
                    String result = dialog.open();
                    if(result != null)
                    {
                        rootDirectoryCombo.setText(result);
                        if(rootDirectoryChanged())
                            scanProjects();
                    }
                }

                final MavenImportWizardPage this$0;

            
            {
                this$0 = MavenImportWizardPage.this;
                super();
            }
            }
);
            rootDirectoryCombo.addModifyListener(new ModifyListener() {

                public void modifyText(ModifyEvent modifyevent)
                {
                }

                final MavenImportWizardPage this$0;

            
            {
                this$0 = MavenImportWizardPage.this;
                super();
            }
            }
);
            rootDirectoryCombo.addFocusListener(new FocusAdapter() {

                public void focusLost(FocusEvent e)
                {
                    if(rootDirectoryChanged())
                        scanProjects();
                }

                final MavenImportWizardPage this$0;

            
            {
                this$0 = MavenImportWizardPage.this;
                super();
            }
            }
);
            rootDirectoryCombo.addSelectionListener(new SelectionAdapter() {

                public void widgetDefaultSelected(SelectionEvent e)
                {
                    if(rootDirectoryChanged())
                        scanProjects();
                }

                public void widgetSelected(SelectionEvent e)
                {
                    if(rootDirectoryChanged())
                        Display.getDefault().asyncExec(new Runnable() {

                            public void run()
                            {
                                scanProjects();
                            }

                            final _cls4 this$1;

                    
                    {
                        this$1 = _cls4.this;
                        super();
                    }
                        }
);
                }

                final MavenImportWizardPage this$0;


            
            {
                this$0 = MavenImportWizardPage.this;
                super();
            }
            }
);
        }
        Label projectsLabel = new Label(composite, 0);
        projectsLabel.setLayoutData(new GridData(16384, 0x1000000, false, false, 3, 1));
        projectsLabel.setText(Messages.wizardImportPageProjects);
        projectTreeViewer = new CheckboxTreeViewer(composite, 2048);
        projectTreeViewer.addCheckStateListener(new ICheckStateListener() {

            public void checkStateChanged(CheckStateChangedEvent event)
            {
                projectTreeViewer.setSubtreeChecked(event.getElement(), event.getChecked());
                updateCheckedState();
                getMappingConfiguration().setSelectedProjects(getProjects());
                setPageComplete();
            }

            final MavenImportWizardPage this$0;

            
            {
                this$0 = MavenImportWizardPage.this;
                super();
            }
        }
);
        projectTreeViewer.addSelectionChangedListener(new ISelectionChangedListener() {

            public void selectionChanged(SelectionChangedEvent event)
            {
                IStructuredSelection selection = (IStructuredSelection)event.getSelection();
                if(selection.getFirstElement() != null)
                {
                    String errorMsg = validateProjectInfo((MavenProjectInfo)selection.getFirstElement());
                    if(errorMsg != null)
                        setMessage(errorMsg, 2);
                    else
                        setMessage(loadingErrorMessage, 2);
                } else
                {
                    setMessage(loadingErrorMessage, 2);
                }
            }

            final MavenImportWizardPage this$0;

            
            {
                this$0 = MavenImportWizardPage.this;
                super();
            }
        }
);
        projectTreeViewer.setContentProvider(new ITreeContentProvider() {

            public Object[] getElements(Object element)
            {
                if(element instanceof List)
                {
                    List projects = (List)element;
                    return projects.toArray(new MavenProjectInfo[projects.size()]);
                } else
                {
                    return MavenImportWizardPage.EMPTY;
                }
            }

            public Object[] getChildren(Object parentElement)
            {
                if(parentElement instanceof List)
                {
                    List projects = (List)parentElement;
                    return projects.toArray(new MavenProjectInfo[projects.size()]);
                }
                if(parentElement instanceof MavenProjectInfo)
                {
                    MavenProjectInfo mavenProjectInfo = (MavenProjectInfo)parentElement;
                    Collection projects = mavenProjectInfo.getProjects();
                    return projects.toArray(new MavenProjectInfo[projects.size()]);
                } else
                {
                    return MavenImportWizardPage.EMPTY;
                }
            }

            public Object getParent(Object element)
            {
                return null;
            }

            public boolean hasChildren(Object parentElement)
            {
                if(parentElement instanceof List)
                {
                    List projects = (List)parentElement;
                    return !projects.isEmpty();
                }
                if(parentElement instanceof MavenProjectInfo)
                {
                    MavenProjectInfo mavenProjectInfo = (MavenProjectInfo)parentElement;
                    return !mavenProjectInfo.getProjects().isEmpty();
                } else
                {
                    return false;
                }
            }

            public void dispose()
            {
            }

            public void inputChanged(Viewer viewer1, Object obj, Object obj1)
            {
            }

            final MavenImportWizardPage this$0;

            
            {
                this$0 = MavenImportWizardPage.this;
                super();
            }
        }
);
        projectTreeViewer.setLabelProvider(new DelegatingStyledCellLabelProvider(new ProjectLabelProvider()));
        Tree projectTree = projectTreeViewer.getTree();
        GridData projectTreeData = new GridData(4, 4, true, true, 2, 3);
        projectTreeData.heightHint = 250;
        projectTreeData.widthHint = 500;
        projectTree.setLayoutData(projectTreeData);
        Button selectAllButton = new Button(composite, 0);
        selectAllButton.setLayoutData(new GridData(4, 128, false, false));
        selectAllButton.setText(Messages.wizardImportPageSelectAll);
        selectAllButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                projectTreeViewer.expandAll();
                setAllChecked(true);
                validate();
            }

            final MavenImportWizardPage this$0;

            
            {
                this$0 = MavenImportWizardPage.this;
                super();
            }
        }
);
        Button deselectAllButton = new Button(composite, 0);
        deselectAllButton.setLayoutData(new GridData(4, 128, false, false));
        deselectAllButton.setText(Messages.wizardImportPageDeselectAll);
        deselectAllButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                setAllChecked(false);
                setPageComplete(false);
            }

            final MavenImportWizardPage this$0;

            
            {
                this$0 = MavenImportWizardPage.this;
                super();
            }
        }
);
        Button refreshButton = new Button(composite, 0);
        refreshButton.setLayoutData(new GridData(4, 128, false, true));
        refreshButton.setText(Messages.wizardImportPageRefresh);
        refreshButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                scanProjects();
            }

            final MavenImportWizardPage this$0;

            
            {
                this$0 = MavenImportWizardPage.this;
                super();
            }
        }
);
        workingSetGroup = new WorkingSetGroup(composite, workingSets, getShell());
        createAdvancedSettings(composite, new GridData(4, 128, false, false, 3, 1));
        resolverConfigurationComponent.template.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent arg0)
            {
                Display.getDefault().asyncExec(new Runnable() {

                    public void run()
                    {
                        validate();
                    }

                    final _cls11 this$1;

                    
                    {
                        this$1 = _cls11.this;
                        super();
                    }
                }
);
            }

            final MavenImportWizardPage this$0;


            
            {
                this$0 = MavenImportWizardPage.this;
                super();
            }
        }
);
        if(locations != null && !locations.isEmpty())
            scanProjects();
    }

    protected boolean rootDirectoryChanged()
    {
        String _rootDirectory = rootDirectory;
        rootDirectory = rootDirectoryCombo.getText().trim();
        return _rootDirectory == null || !_rootDirectory.equals(rootDirectory);
    }

    public void dispose()
    {
        super.dispose();
        workingSetGroup.dispose();
    }

    protected void scanProjects()
    {
        final AbstractProjectScanner projectScanner = getProjectScanner();
        try
        {
            getWizard().getContainer().run(true, true, new IRunnableWithProgress() {

                public void run(IProgressMonitor monitor)
                    throws InvocationTargetException, InterruptedException
                {
                    projectScanner.run(monitor);
                    ((MavenImportWizard)getWizard()).scanProjects(getProjects(projectScanner.getProjects()), monitor);
                }

                List getProjects(Collection input)
                {
                    List toRet = new ArrayList();
                    MavenProjectInfo info;
                    for(Iterator iterator1 = input.iterator(); iterator1.hasNext(); toRet.addAll(getProjects(info.getProjects())))
                    {
                        info = (MavenProjectInfo)iterator1.next();
                        toRet.add(info);
                    }

                    return toRet;
                }

                final MavenImportWizardPage this$0;
                private final AbstractProjectScanner val$projectScanner;

            
            {
                this$0 = MavenImportWizardPage.this;
                projectScanner = abstractprojectscanner;
                super();
            }
            }
);
            projectTreeViewer.setInput(projectScanner.getProjects());
            projectTreeViewer.expandAll();
            setAllChecked(true);
            setPageComplete();
            setErrorMessage(null);
            setMessage(null);
            loadingErrorMessage = null;
            LifecycleMappingConfiguration config = ((MavenImportWizard)getWizard()).getMappingConfiguration();
            List errors = new ArrayList(projectScanner.getErrors());
            if(config != null)
                errors.addAll(config.getErrors().values());
            if(!errors.isEmpty())
            {
                StringBuffer sb = new StringBuffer(NLS.bind(Messages.wizardImportPageScanningErrors, Integer.valueOf(errors.size())));
                int n = 1;
                for(Iterator iterator = errors.iterator(); iterator.hasNext();)
                {
                    Throwable ex = (Throwable)iterator.next();
                    if(ex instanceof CoreException)
                    {
                        String msg = ((CoreException)ex).getStatus().getMessage();
                        sb.append("\n  ").append(n).append(" ").append(msg.trim());
                    } else
                    {
                        String msg = ex.getMessage() != null ? ex.getMessage() : ex.toString();
                        sb.append("\n  ").append(n).append(" ").append(msg.trim());
                    }
                    n++;
                }

                loadingErrorMessage = sb.toString();
                setMessage(sb.toString(), 2);
            }
        }
        catch(InterruptedException _ex) { }
        catch(InvocationTargetException ex)
        {
            Throwable e = ((Throwable) (ex.getCause() != null ? ex.getCause() : ((Throwable) (ex))));
            String msg;
            if(e instanceof CoreException)
            {
                msg = e.getMessage();
                log.error(msg, e);
            } else
            {
                msg = (new StringBuilder("Scanning error ")).append(projectScanner.getDescription()).append("; ").append(e.toString()).toString();
                log.error(msg, e);
            }
            projectTreeViewer.setInput(null);
            setPageComplete(false);
            setErrorMessage(msg);
        }
    }

    void setAllChecked(boolean state)
    {
        List input = (List)projectTreeViewer.getInput();
        if(input != null)
        {
            MavenProjectInfo mavenProjectInfo;
            for(Iterator iterator = input.iterator(); iterator.hasNext(); projectTreeViewer.setSubtreeChecked(mavenProjectInfo, state))
                mavenProjectInfo = (MavenProjectInfo)iterator.next();

            updateCheckedState();
        }
    }

    void updateCheckedState()
    {
        Object elements[] = projectTreeViewer.getCheckedElements();
        for(int i = 0; i < elements.length; i++)
        {
            Object element = elements[i];
            if(element instanceof MavenProjectInfo)
            {
                MavenProjectInfo info = (MavenProjectInfo)element;
                if(isWorkspaceFolder(info) || isAlreadyExists(info))
                    projectTreeViewer.setChecked(info, false);
            }
        }

    }

    boolean isWorkspaceFolder(MavenProjectInfo info)
    {
        if(info != null)
        {
            File pomFile = info.getPomFile();
            if(pomFile != null)
            {
                File parentFile = pomFile.getParentFile();
                if(parentFile.getAbsolutePath().equals(workspaceRoot.getLocation().toFile().getAbsolutePath()))
                    return true;
            }
        }
        return false;
    }

    boolean isAlreadyExists(MavenProjectInfo info)
    {
        if(info != null)
        {
            IWorkspace workspace = ResourcesPlugin.getWorkspace();
            String name = getImportConfiguration().getProjectName(info.getModel());
            if(name != null && name.length() > 0)
            {
                IProject project = workspace.getRoot().getProject(name);
                return project.exists();
            }
        }
        return false;
    }

    boolean isAlreadyImported(MavenProjectInfo info)
    {
        if(info != null)
        {
            IWorkspace workspace = ResourcesPlugin.getWorkspace();
            IProject aiproject[];
            int j = (aiproject = workspace.getRoot().getProjects()).length;
            for(int i = 0; i < j; i++)
            {
                IProject project = aiproject[i];
                URI mavenuri = info.getPomFile().getParentFile().toURI();
                if(mavenuri.toString().endsWith("/"))
                    try
                    {
                        mavenuri = new URI(mavenuri.toString().substring(0, mavenuri.toString().length() - 1));
                    }
                    catch(URISyntaxException ex)
                    {
                        log.error(ex.getMessage(), ex);
                    }
                boolean ok = project.exists() && project.getLocationURI().equals(mavenuri);
                if(ok)
                    return true;
            }

        }
        return false;
    }

    protected AbstractProjectScanner getProjectScanner()
    {
        File root = workspaceRoot.getLocation().toFile();
        org.eclipse.m2e.core.embedder.MavenModelManager modelManager = MavenPlugin.getMavenModelManager();
        if(showLocation)
        {
            String location = rootDirectoryCombo.getText().trim();
            if(location.length() > 0)
                return new LocalProjectScanner(root, location, false, modelManager);
        } else
        if(locations != null && !locations.isEmpty())
            return new LocalProjectScanner(root, locations, true, modelManager);
        return new AbstractProjectScanner() {

            public String getDescription()
            {
                return "";
            }

            public void run(IProgressMonitor iprogressmonitor)
                throws InterruptedException
            {
            }

            final MavenImportWizardPage this$0;

            
            {
                this$0 = MavenImportWizardPage.this;
                super();
            }
        }
;
    }

    public Collection getProjects()
    {
        Collection checkedProjects = new ArrayList();
        Object aobj[];
        int j = (aobj = projectTreeViewer.getCheckedElements()).length;
        for(int i = 0; i < j; i++)
        {
            Object o = aobj[i];
            checkedProjects.add((MavenProjectInfo)o);
        }

        return checkedProjects;
    }

    protected String validateProjectInfo(MavenProjectInfo info)
    {
        if(info != null)
        {
            if(isWorkspaceFolder(info))
            {
                String projectName = getImportConfiguration().getProjectName(info.getModel());
                return NLS.bind(Messages.wizardImportValidatorWorkspaceFolder, projectName);
            }
            if(isAlreadyImported(info))
            {
                String projectName = getImportConfiguration().getProjectName(info.getModel());
                return NLS.bind(Messages.wizardImportValidatorProjectImported, projectName);
            }
            if(isAlreadyExists(info))
            {
                String projectName = getImportConfiguration().getProjectName(info.getModel());
                return NLS.bind(Messages.wizardImportValidatorProjectExists, projectName);
            }
        }
        return null;
    }

    protected void validate()
    {
        Object elements[] = projectTreeViewer.getCheckedElements();
        for(int i = 0; i < elements.length; i++)
        {
            Object element = elements[i];
            if(element instanceof MavenProjectInfo)
            {
                String errorMsg = validateProjectInfo((MavenProjectInfo)element);
                if(errorMsg != null)
                {
                    setPageComplete(false);
                    return;
                }
            }
        }

        setMessage(null);
        setPageComplete();
        projectTreeViewer.refresh();
    }

    public IWizardPage getNextPage()
    {
        IWizardPage next = super.getNextPage();
        LifecycleMappingConfiguration config = getMappingConfiguration();
        if(config == null || config.isMappingComplete(true) && config.getAllProposals().isEmpty())
            next = null;
        return next;
    }

    void setPageComplete()
    {
        Object checkedElements[] = projectTreeViewer.getCheckedElements();
        setPageComplete(checkedElements != null && checkedElements.length > 0);
    }

    LifecycleMappingConfiguration getMappingConfiguration()
    {
        return ((MavenImportWizard)getWizard()).getMappingConfiguration();
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/wizards/MavenImportWizardPage);
    static final Object EMPTY[] = new Object[0];
    protected Combo rootDirectoryCombo;
    protected CheckboxTreeViewer projectTreeViewer;
    private List locations;
    private IWorkspaceRoot workspaceRoot;
    private WorkingSetGroup workingSetGroup;
    private boolean showLocation;
    private final List workingSets;
    private String rootDirectory;
    private String loadingErrorMessage;


}
