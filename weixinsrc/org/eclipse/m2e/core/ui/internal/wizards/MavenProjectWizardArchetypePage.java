// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenProjectWizardArchetypePage.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import org.apache.maven.archetype.catalog.Archetype;
import org.apache.maven.archetype.catalog.ArchetypeCatalog;
import org.apache.maven.artifact.Artifact;
import org.apache.maven.artifact.repository.DefaultArtifactRepository;
import org.apache.maven.artifact.repository.layout.DefaultRepositoryLayout;
import org.apache.maven.artifact.versioning.DefaultArtifactVersion;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.preference.PreferenceDialog;
import org.eclipse.jface.viewers.ComboViewer;
import org.eclipse.jface.viewers.IOpenListener;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.OpenEvent;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.ArtifactKey;
import org.eclipse.m2e.core.embedder.IMaven;
import org.eclipse.m2e.core.internal.MavenPluginActivator;
import org.eclipse.m2e.core.internal.archetype.ArchetypeCatalogFactory;
import org.eclipse.m2e.core.internal.archetype.ArchetypeManager;
import org.eclipse.m2e.core.internal.index.IMutableIndex;
import org.eclipse.m2e.core.internal.index.IndexListener;
import org.eclipse.m2e.core.internal.index.IndexManager;
import org.eclipse.m2e.core.project.ProjectImportConfiguration;
import org.eclipse.m2e.core.repository.IRepository;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.util.M2EUIUtils;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.custom.SashForm;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.ISharedImages;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dialogs.PreferencesUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            AbstractMavenWizardPage, CustomArchetypeDialog

public class MavenProjectWizardArchetypePage extends AbstractMavenWizardPage
    implements IndexListener
{
    protected static class ArchetypeLabelProvider extends LabelProvider
        implements ITableLabelProvider
    {

        public String getColumnText(Object element, int columnIndex)
        {
            if(element instanceof Archetype)
            {
                Archetype archetype = (Archetype)element;
                switch(columnIndex)
                {
                case 0: // '\0'
                    return archetype.getGroupId();

                case 1: // '\001'
                    return archetype.getArtifactId();

                case 2: // '\002'
                    return archetype.getVersion();
                }
            }
            return super.getText(element);
        }

        public Image getColumnImage(Object element, int columnIndex)
        {
            return null;
        }

        protected ArchetypeLabelProvider()
        {
        }
    }

    /**
     * @deprecated Class IncludeSnapshotsFilter is deprecated
     */

    protected class IncludeSnapshotsFilter extends ViewerFilter
        implements SelectionListener
    {

        public boolean select(Viewer viewer, Object parentElement, Object element)
        {
            return true;
        }

        public void widgetSelected(SelectionEvent selectionevent)
        {
        }

        public void widgetDefaultSelected(SelectionEvent selectionevent)
        {
        }

        final MavenProjectWizardArchetypePage this$0;

        protected IncludeSnapshotsFilter()
        {
            this$0 = MavenProjectWizardArchetypePage.this;
            super();
        }
    }

    /**
     * @deprecated Class LastVersionFilter is deprecated
     */

    protected class LastVersionFilter extends ViewerFilter
        implements SelectionListener
    {

        public boolean select(Viewer viewer, Object parentElement, Object element)
        {
            return true;
        }

        public void widgetSelected(SelectionEvent selectionevent)
        {
        }

        public void widgetDefaultSelected(SelectionEvent selectionevent)
        {
        }

        final MavenProjectWizardArchetypePage this$0;

        protected LastVersionFilter()
        {
            this$0 = MavenProjectWizardArchetypePage.this;
            super();
        }
    }

    protected class QuickViewerFilter extends ViewerFilter
        implements ModifyListener
    {

        public boolean select(Viewer viewer, Object parentElement, Object element)
        {
            if(currentFilter == null || currentFilter.length() == 0)
                return true;
            Archetype archetype = (Archetype)element;
            return archetype.getGroupId().toLowerCase().indexOf(currentFilter) > -1 || archetype.getArtifactId().toLowerCase().indexOf(currentFilter) > -1;
        }

        public void modifyText(ModifyEvent e)
        {
            currentFilter = filterText.getText().trim().toLowerCase();
            viewer.refresh();
        }

        private String currentFilter;
        final MavenProjectWizardArchetypePage this$0;

        protected QuickViewerFilter()
        {
            this$0 = MavenProjectWizardArchetypePage.this;
            super();
        }
    }

    protected class VersionsFilter extends ViewerFilter
        implements SelectionListener
    {

        public boolean select(Viewer viewer, Object parentElement, Object element)
        {
            if(!(element instanceof Archetype))
                return false;
            Archetype archetype = (Archetype)element;
            String version = archetype.getVersion();
            if(!includeSnapshots && isSnapshotVersion(version))
                return false;
            if(!showLastVersion)
                return true;
            List versions = (List)archetypeVersions.get(MavenProjectWizardArchetypePage.getArchetypeKey(archetype));
            if(versions == null || versions.isEmpty())
                return false;
            for(Iterator iterator = versions.iterator(); iterator.hasNext();)
            {
                String otherVersion = (String)iterator.next();
                if(includeSnapshots || !isSnapshotVersion(otherVersion))
                {
                    if(otherVersion.equals(version))
                        return true;
                    break;
                }
            }

            return false;
        }

        boolean isSnapshotVersion(String version)
        {
            return !M2EUIUtils.nullOrEmpty(version) && version.endsWith("SNAPSHOT");
        }

        public void widgetSelected(SelectionEvent e)
        {
            showLastVersion = showLastVersionButton.getSelection();
            includeSnapshots = includeShapshotsButton.getSelection();
            viewer.refresh();
            Archetype archetype = getArchetype();
            if(archetype != null)
                viewer.reveal(archetype);
            viewer.getTable().setSelection(viewer.getTable().getSelectionIndex());
            viewer.getTable().setFocus();
        }

        public void widgetDefaultSelected(SelectionEvent selectionevent)
        {
        }

        private boolean showLastVersion;
        private boolean includeSnapshots;
        final MavenProjectWizardArchetypePage this$0;

        public VersionsFilter(boolean showLastVersion, boolean includeSnapshots)
        {
            this$0 = MavenProjectWizardArchetypePage.this;
            super();
            this.showLastVersion = showLastVersion;
            this.includeSnapshots = includeSnapshots;
        }
    }


    public MavenProjectWizardArchetypePage(ProjectImportConfiguration projectImportConfiguration)
    {
        super("MavenProjectWizardArchetypePage", projectImportConfiguration);
        isUsed = true;
        catalogFactory = null;
        setTitle(Messages.wizardProjectPageArchetypeTitle);
        setDescription(Messages.wizardProjectPageArchetypeDescription);
        setPageComplete(false);
    }

    public void createControl(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        composite.setLayout(new GridLayout(3, false));
        createViewer(composite);
        createAdvancedSettings(composite, new GridData(4, 128, true, false, 3, 1));
        MavenPlugin.getIndexManager().addIndexListener(this);
        setControl(composite);
    }

    private void createViewer(Composite parent)
    {
        Label catalogsLabel = new Label(parent, 0);
        catalogsLabel.setText(Messages.MavenProjectWizardArchetypePage_lblCatalog);
        Composite catalogsComposite = new Composite(parent, 0);
        GridLayout catalogsCompositeLayout = new GridLayout();
        catalogsCompositeLayout.marginWidth = 0;
        catalogsCompositeLayout.marginHeight = 0;
        catalogsCompositeLayout.numColumns = 2;
        catalogsComposite.setLayout(catalogsCompositeLayout);
        catalogsComposite.setLayoutData(new GridData(4, 4, false, false, 2, 1));
        catalogsComboViewer = new ComboViewer(catalogsComposite);
        catalogsComboViewer.getControl().setData("name", "catalogsCombo");
        catalogsComboViewer.getCombo().setLayoutData(new GridData(4, 0x1000000, true, false));
        catalogsComboViewer.setContentProvider(new IStructuredContentProvider() {

            public Object[] getElements(Object input)
            {
                if(input instanceof Collection)
                    return ((Collection)input).toArray();
                else
                    return new Object[0];
            }

            public void inputChanged(Viewer viewer1, Object obj, Object obj1)
            {
            }

            public void dispose()
            {
            }

            final MavenProjectWizardArchetypePage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                super();
            }
        }
);
        catalogsComboViewer.setLabelProvider(new LabelProvider() {

            public String getText(Object element)
            {
                if(element instanceof ArchetypeCatalogFactory)
                    return ((ArchetypeCatalogFactory)element).getDescription();
                if(element instanceof String)
                    return element.toString();
                else
                    return super.getText(element);
            }

            final MavenProjectWizardArchetypePage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                super();
            }
        }
);
        catalogsComboViewer.addSelectionChangedListener(new ISelectionChangedListener() {

            public void selectionChanged(SelectionChangedEvent event)
            {
                org.eclipse.jface.viewers.ISelection selection = event.getSelection();
                if(selection instanceof IStructuredSelection)
                {
                    Object factory = ((IStructuredSelection)selection).getFirstElement();
                    if(factory instanceof ArchetypeCatalogFactory)
                        catalogFactory = (ArchetypeCatalogFactory)factory;
                    else
                    if(factory instanceof String)
                        catalogFactory = null;
                    reloadViewer();
                } else
                {
                    catalogFactory = null;
                    loadArchetypes(null, null, null);
                }
                if(dialogSettings != null && catalogFactory != null)
                    dialogSettings.put("catalog", catalogFactory.getId());
            }

            final MavenProjectWizardArchetypePage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                super();
            }
        }
);
        final ArchetypeManager archetypeManager = MavenPluginActivator.getDefault().getArchetypeManager();
        ArrayList allCatalogs = new ArrayList(archetypeManager.getArchetypeCatalogs());
        allCatalogs.add(0, ALL_CATALOGS);
        catalogsComboViewer.setInput(allCatalogs);
        Button configureButton = new Button(catalogsComposite, 0);
        configureButton.setLayoutData(new GridData(4, 0x1000000, false, false));
        configureButton.setText(Messages.MavenProjectWizardArchetypePage_btnConfigure);
        configureButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                PreferencesUtil.createPreferenceDialogOn(getShell(), "org.eclipse.m2e.core.preferences.MavenArchetypesPreferencePage", null, null).open();
                if(catalogFactory == null || archetypeManager.getArchetypeCatalogFactory(catalogFactory.getId()) == null)
                    catalogFactory = archetypeManager.getArchetypeCatalogFactory("nexusIndexer");
                catalogsComboViewer.setInput(archetypeManager.getArchetypeCatalogs());
                catalogsComboViewer.setSelection(new StructuredSelection(catalogFactory));
            }

            final MavenProjectWizardArchetypePage this$0;
            private final ArchetypeManager val$archetypeManager;

            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                archetypeManager = archetypemanager;
                super();
            }
        }
);
        Label filterLabel = new Label(parent, 0);
        filterLabel.setLayoutData(new GridData());
        filterLabel.setText(Messages.MavenProjectWizardArchetypePage_lblFilter);
        QuickViewerFilter quickViewerFilter = new QuickViewerFilter();
        VersionsFilter versionFilter = new VersionsFilter(true, false);
        filterText = new Text(parent, 2176);
        filterText.setLayoutData(new GridData(4, 0x1000000, true, false));
        filterText.addModifyListener(quickViewerFilter);
        filterText.addKeyListener(new KeyAdapter() {

            public void keyPressed(KeyEvent e)
            {
                if(e.keyCode == 0x1000002)
                {
                    viewer.getTable().setFocus();
                    viewer.getTable().setSelection(0);
                    viewer.setSelection(new StructuredSelection(viewer.getElementAt(0)), true);
                }
            }

            final MavenProjectWizardArchetypePage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                super();
            }
        }
);
        ToolBar toolBar = new ToolBar(parent, 0x800000);
        toolBar.setLayoutData(new GridData(0x20000, 0x1000000, false, false));
        final ToolItem clearToolItem = new ToolItem(toolBar, 8);
        clearToolItem.setEnabled(false);
        clearToolItem.setImage(PlatformUI.getWorkbench().getSharedImages().getImage("IMG_ELCL_REMOVE"));
        clearToolItem.setDisabledImage(PlatformUI.getWorkbench().getSharedImages().getImage("IMG_ELCL_REMOVE_DISABLED"));
        clearToolItem.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                filterText.setText("");
            }

            final MavenProjectWizardArchetypePage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                super();
            }
        }
);
        filterText.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                clearToolItem.setEnabled(filterText.getText().length() > 0);
            }

            final MavenProjectWizardArchetypePage this$0;
            private final ToolItem val$clearToolItem;

            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                clearToolItem = toolitem;
                super();
            }
        }
);
        SashForm sashForm = new SashForm(parent, 512);
        GridData gd_sashForm = new GridData(4, 4, false, true, 3, 1);
        gd_sashForm.heightHint = 200;
        sashForm.setLayoutData(gd_sashForm);
        sashForm.setLayout(new GridLayout());
        Composite composite1 = new Composite(sashForm, 0);
        GridLayout gridLayout1 = new GridLayout();
        gridLayout1.horizontalSpacing = 0;
        gridLayout1.marginWidth = 0;
        gridLayout1.marginHeight = 0;
        composite1.setLayout(gridLayout1);
        viewer = new TableViewer(composite1, 0x10b04);
        Table table = viewer.getTable();
        table.setData("name", "archetypesTable");
        table.setHeaderVisible(true);
        TableColumn column1 = new TableColumn(table, 16384);
        column1.setWidth(150);
        column1.setText(Messages.wizardProjectPageArchetypeColumnGroupId);
        TableColumn column0 = new TableColumn(table, 16384);
        column0.setWidth(150);
        column0.setText(Messages.wizardProjectPageArchetypeColumnArtifactId);
        TableColumn column2 = new TableColumn(table, 16384);
        column2.setWidth(100);
        column2.setText(Messages.wizardProjectPageArchetypeColumnVersion);
        GridData tableData = new GridData(4, 4, true, true);
        tableData.widthHint = 400;
        tableData.heightHint = 200;
        table.setLayoutData(tableData);
        viewer.setLabelProvider(new ArchetypeLabelProvider());
        viewer.setComparator(new ViewerComparator() {

            public int compare(Viewer viewer, Object e1, Object e2)
            {
                return MavenProjectWizardArchetypePage.ARCHETYPE_COMPARATOR.compare((Archetype)e1, (Archetype)e2);
            }

            final MavenProjectWizardArchetypePage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                super();
            }
        }
);
        viewer.setFilters(new ViewerFilter[] {
            versionFilter, quickViewerFilter
        });
        viewer.setContentProvider(new IStructuredContentProvider() {

            public Object[] getElements(Object inputElement)
            {
                if(inputElement instanceof Collection)
                    return ((Collection)inputElement).toArray();
                else
                    return new Object[0];
            }

            public void dispose()
            {
            }

            public void inputChanged(Viewer viewer1, Object obj, Object obj1)
            {
            }

            final MavenProjectWizardArchetypePage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                super();
            }
        }
);
        viewer.addSelectionChangedListener(new ISelectionChangedListener() {

            public void selectionChanged(SelectionChangedEvent event)
            {
                Archetype archetype = getArchetype();
                if(archetype != null)
                {
                    String repositoryUrl = archetype.getRepository();
                    String description = archetype.getDescription();
                    String text = description != null ? description : "";
                    text = text.replaceAll("\n", "").replaceAll("\\s{2,}", " ");
                    if(repositoryUrl != null)
                        text = (new StringBuilder(String.valueOf(text))).append(text.length() <= 0 ? repositoryUrl : (new StringBuilder("\n")).append(repositoryUrl).toString()).toString();
                    descriptionText.setText(text);
                    setPageComplete(true);
                } else
                {
                    descriptionText.setText("");
                    setPageComplete(false);
                }
            }

            final MavenProjectWizardArchetypePage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                super();
            }
        }
);
        viewer.addOpenListener(new IOpenListener() {

            public void open(OpenEvent openevent)
            {
                if(canFlipToNextPage())
                    getContainer().showPage(getNextPage());
            }

            final MavenProjectWizardArchetypePage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                super();
            }
        }
);
        Composite composite2 = new Composite(sashForm, 0);
        GridLayout gridLayout2 = new GridLayout();
        gridLayout2.marginHeight = 0;
        gridLayout2.marginWidth = 0;
        gridLayout2.horizontalSpacing = 0;
        composite2.setLayout(gridLayout2);
        descriptionText = new Text(composite2, 2634);
        GridData descriptionTextData = new GridData(4, 4, true, true);
        descriptionTextData.heightHint = 40;
        descriptionText.setLayoutData(descriptionTextData);
        descriptionTextData.widthHint = 250;
        sashForm.setWeights(new int[] {
            80, 20
        });
        Composite buttonComposite = new Composite(parent, 0);
        GridData gd_buttonComposite = new GridData(4, 0x1000000, false, false, 3, 1);
        buttonComposite.setLayoutData(gd_buttonComposite);
        GridLayout gridLayout = new GridLayout();
        gridLayout.marginHeight = 0;
        gridLayout.marginWidth = 0;
        gridLayout.numColumns = 3;
        buttonComposite.setLayout(gridLayout);
        showLastVersionButton = new Button(buttonComposite, 32);
        showLastVersionButton.setLayoutData(new GridData(16384, 0x1000000, true, false));
        showLastVersionButton.setText(Messages.MavenProjectWizardArchetypePage_btnLast);
        showLastVersionButton.setSelection(true);
        showLastVersionButton.addSelectionListener(versionFilter);
        includeShapshotsButton = new Button(buttonComposite, 32);
        GridData buttonData = new GridData(16384, 0x1000000, true, false);
        buttonData.horizontalIndent = 25;
        includeShapshotsButton.setLayoutData(buttonData);
        includeShapshotsButton.setText(Messages.MavenProjectWizardArchetypePage_btnSnapshots);
        includeShapshotsButton.setSelection(false);
        includeShapshotsButton.addSelectionListener(versionFilter);
        addArchetypeButton = new Button(buttonComposite, 0);
        addArchetypeButton.setText(Messages.MavenProjectWizardArchetypePage_btnAdd);
        addArchetypeButton.setData("name", "addArchetypeButton");
        buttonData = new GridData(0x20000, 0x1000000, true, false);
        buttonData.horizontalIndent = 35;
        addArchetypeButton.setLayoutData(buttonData);
        addArchetypeButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                CustomArchetypeDialog dialog = new CustomArchetypeDialog(getShell(), Messages.MavenProjectWizardArchetypePage_add_title);
                if(dialog.open() == 0)
                {
                    String archetypeGroupId = dialog.getArchetypeGroupId();
                    String archetypeArtifactId = dialog.getArchetypeArtifactId();
                    String archetypeVersion = dialog.getArchetypeVersion();
                    String repositoryUrl = dialog.getRepositoryUrl();
                    downloadArchetype(archetypeGroupId, archetypeArtifactId, archetypeVersion, repositoryUrl);
                }
            }

            final MavenProjectWizardArchetypePage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                super();
            }
        }
);
    }

    protected IWizardContainer getContainer()
    {
        return super.getContainer();
    }

    public void addArchetypeSelectionListener(ISelectionChangedListener listener)
    {
        viewer.addSelectionChangedListener(listener);
    }

    public void dispose()
    {
        MavenPlugin.getIndexManager().removeIndexListener(this);
        super.dispose();
    }

    public List getArchetypesForCatalog()
    {
        if(catalogFactory == null)
            return getAllArchetypes();
        try
        {
            return catalogFactory.getArchetypeCatalog().getArchetypes();
        }
        catch(CoreException _ex)
        {
            setErrorMessage(Messages.MavenProjectWizardArchetypePage_error_read);
        }
        return null;
    }

    private List getAllArchetypes()
    {
        ArrayList list;
        Iterator iterator;
        ArchetypeManager manager = MavenPluginActivator.getDefault().getArchetypeManager();
        Collection archetypeCatalogs = manager.getArchetypeCatalogs();
        list = new ArrayList();
        iterator = archetypeCatalogs.iterator();
          goto _L1
_L3:
        ArchetypeCatalogFactory catalog = (ArchetypeCatalogFactory)iterator.next();
        if(!catalog.getDescription().startsWith("Test"))
            try
            {
                List arcs = catalog.getArchetypeCatalog().getArchetypes();
                if(arcs != null)
                    list.addAll(arcs);
            }
            catch(Exception ce)
            {
                log.error((new StringBuilder("Unable to read archetype catalog: ")).append(catalog.getId()).toString(), ce);
            }
_L1:
        if(iterator.hasNext()) goto _L3; else goto _L2
_L2:
        return list;
    }

    void loadArchetypes(String groupId, String artifactId, String version)
    {
        Job job = new Job(version) {

            protected IStatus run(IProgressMonitor monitor)
            {
                List catalogArchetypes;
                TreeSet archs;
                try
                {
                    catalogArchetypes = getArchetypesForCatalog();
                    if(catalogArchetypes == null || catalogArchetypes.size() == 0)
                        Display.getDefault().asyncExec(new Runnable() {

                            public void run()
                            {
                                if(catalogFactory != null && "Nexus Indexer".equals(catalogFactory.getDescription()))
                                    setErrorMessage(Messages.MavenProjectWizardArchetypePage_error_no);
                            }

                            final _cls14 this$1;

                    
                    {
                        this$1 = _cls14.this;
                        super();
                    }
                        }
);
                    else
                        Display.getDefault().asyncExec(new Runnable() {

                            public void run()
                            {
                                setErrorMessage(null);
                            }

                            final _cls14 this$1;

                    
                    {
                        this$1 = _cls14.this;
                        super();
                    }
                        }
);
                    if(catalogArchetypes == null)
                        return Status.CANCEL_STATUS;
                }
                catch(Exception _ex)
                {
                    monitor.done();
                    return Status.CANCEL_STATUS;
                }
                archs = new TreeSet(MavenProjectWizardArchetypePage.ARCHETYPE_COMPARATOR);
                archs.addAll(catalogArchetypes);
                archetypes = archs;
                Display.getDefault().asyncExec(new Runnable() {

                    public void run()
                    {
                        updateViewer(groupId, artifactId, version);
                    }

                    final _cls14 this$1;
                    private final String val$groupId;
                    private final String val$artifactId;
                    private final String val$version;

                    
                    {
                        this$1 = _cls14.this;
                        groupId = s;
                        artifactId = s1;
                        version = s2;
                        super();
                    }
                }
);
                return Status.OK_STATUS;
            }

            final MavenProjectWizardArchetypePage this$0;
            private final String val$groupId;
            private final String val$artifactId;
            private final String val$version;


            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                groupId = s;
                artifactId = s1;
                version = s2;
                super($anonymous0);
            }
        }
;
        job.schedule();
    }

    /**
     * @deprecated Method filterVersions is deprecated
     */

    public Set filterVersions(Collection archetypes)
    {
        HashMap filteredArchetypes = new HashMap();
        for(Iterator iterator = archetypes.iterator(); iterator.hasNext();)
        {
            Archetype currentArchetype = (Archetype)iterator.next();
            String key = getArchetypeKey(currentArchetype);
            Archetype archetype = (Archetype)filteredArchetypes.get(key);
            if(archetype == null)
            {
                filteredArchetypes.put(key, currentArchetype);
            } else
            {
                DefaultArtifactVersion currentVersion = new DefaultArtifactVersion(currentArchetype.getVersion());
                DefaultArtifactVersion version = new DefaultArtifactVersion(archetype.getVersion());
                if(currentVersion.compareTo(version) > 0)
                    filteredArchetypes.put(key, currentArchetype);
            }
        }

        TreeSet result = new TreeSet(new Comparator() {

            public int compare(Archetype a1, Archetype a2)
            {
                String k1 = (new StringBuilder(String.valueOf(a1.getGroupId()))).append(":").append(a1.getArtifactId()).append(":").append(a1.getVersion()).toString();
                String k2 = (new StringBuilder(String.valueOf(a2.getGroupId()))).append(":").append(a2.getArtifactId()).append(":").append(a2.getVersion()).toString();
                return k1.compareTo(k2);
            }

            public volatile int compare(Object obj, Object obj1)
            {
                return compare((Archetype)obj, (Archetype)obj1);
            }

            final MavenProjectWizardArchetypePage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                super();
            }
        }
);
        result.addAll(filteredArchetypes.values());
        return result;
    }

    private static String getArchetypeKey(Archetype archetype)
    {
        return (new StringBuilder(String.valueOf(archetype.getGroupId()))).append(":").append(archetype.getArtifactId()).toString();
    }

    ArchetypeCatalog getArchetypeCatalog()
        throws CoreException
    {
        return catalogFactory != null ? catalogFactory.getArchetypeCatalog() : null;
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
            ArchetypeManager archetypeManager = MavenPluginActivator.getDefault().getArchetypeManager();
            String catalogId = dialogSettings.get("catalog");
            catalogFactory = null;
            if(catalogId != null)
                catalogFactory = archetypeManager.getArchetypeCatalogFactory(catalogId);
            catalogsComboViewer.setSelection(new StructuredSelection(catalogFactory != null ? ((Object) (catalogFactory)) : ((Object) (ALL_CATALOGS))));
            viewer.getTable().setFocus();
            Archetype selected = getArchetype();
            if(selected != null)
                viewer.reveal(selected);
        }
    }

    public Archetype getArchetype()
    {
        return (Archetype)((IStructuredSelection)viewer.getSelection()).getFirstElement();
    }

    void updateViewer(String groupId, String artifactId, String version)
    {
        archetypeVersions = getArchetypeVersions(archetypes);
        viewer.setInput(archetypes);
        selectArchetype(groupId, artifactId, version);
        Table table = viewer.getTable();
        int columnCount = table.getColumnCount();
        int width = 0;
        for(int i = 0; i < columnCount; i++)
        {
            TableColumn column = table.getColumn(i);
            column.pack();
            width += column.getWidth();
        }

        GridData tableData = (GridData)table.getLayoutData();
        int oldHint = tableData.widthHint;
        if(width > oldHint)
            tableData.widthHint = width;
        getShell().pack(true);
        tableData.widthHint = oldHint;
    }

    private static Map getArchetypeVersions(Collection archetypes)
    {
        HashMap archetypeVersions = new HashMap();
        for(Iterator iterator = archetypes.iterator(); iterator.hasNext();)
        {
            Archetype currentArchetype = (Archetype)iterator.next();
            String version = currentArchetype.getVersion();
            if(!M2EUIUtils.nullOrEmpty(version))
            {
                String key = getArchetypeKey(currentArchetype);
                List versions = (List)archetypeVersions.get(key);
                if(versions == null)
                {
                    versions = new ArrayList();
                    archetypeVersions.put(key, versions);
                }
                versions.add(version);
            }
        }

        Comparator comparator = new Comparator() {

            public int compare(String s1, String s2)
            {
                DefaultArtifactVersion v1 = new DefaultArtifactVersion(s1);
                DefaultArtifactVersion v2 = new DefaultArtifactVersion(s2);
                return v2.compareTo(v1);
            }

            public volatile int compare(Object obj, Object obj1)
            {
                return compare((String)obj, (String)obj1);
            }

        }
;
        List versions;
        for(Iterator iterator1 = archetypeVersions.values().iterator(); iterator1.hasNext(); Collections.sort(versions, comparator))
            versions = (List)iterator1.next();

        return archetypeVersions;
    }

    protected void selectArchetype(String groupId, String artifactId, String version)
    {
        Archetype archetype = findArchetype(groupId, artifactId, version);
        Table table = viewer.getTable();
        if(archetype != null)
        {
            viewer.setSelection(new StructuredSelection(archetype), true);
            int n = table.getSelectionIndex();
            table.setSelection(n);
        }
    }

    protected Archetype findArchetype(String groupId, String artifactId, String version)
    {
        for(Iterator iterator = archetypes.iterator(); iterator.hasNext();)
        {
            Archetype archetype = (Archetype)iterator.next();
            if(archetype.getGroupId().equals(groupId) && archetype.getArtifactId().equals(artifactId) && (version == null || version.equals(archetype.getVersion())))
                return archetype;
        }

        return version != null ? findArchetype(groupId, artifactId, null) : null;
    }

    protected void downloadArchetype(final String archetypeGroupId, final String archetypeArtifactId, final String archetypeVersion, final String repositoryUrl)
    {
        final String archetypeName = (new StringBuilder(String.valueOf(archetypeGroupId))).append(":").append(archetypeArtifactId).append(":").append(archetypeVersion).toString();
        try
        {
            getContainer().run(true, true, new IRunnableWithProgress() {

                public void run(IProgressMonitor monitor)
                    throws InterruptedException
                {
                    monitor.beginTask((new StringBuilder(String.valueOf(Messages.MavenProjectWizardArchetypePage_task_downloading))).append(archetypeName).toString(), -1);
                    try
                    {
                        IMaven maven = MavenPlugin.getMaven();
                        List remoteRepositories;
                        if(repositoryUrl.length() == 0)
                        {
                            remoteRepositories = maven.getArtifactRepositories();
                        } else
                        {
                            org.apache.maven.artifact.repository.ArtifactRepository repository = new DefaultArtifactRepository("archetype", repositoryUrl, new DefaultRepositoryLayout(), null, null);
                            remoteRepositories = Collections.singletonList(repository);
                        }
                        monitor.subTask(Messages.MavenProjectWizardArchetypePage_task_resolving);
                        Artifact pomArtifact = maven.resolve(archetypeGroupId, archetypeArtifactId, archetypeVersion, "pom", null, remoteRepositories, monitor);
                        monitor.worked(1);
                        if(monitor.isCanceled())
                            throw new InterruptedException();
                        File pomFile = pomArtifact.getFile();
                        if(pomFile.exists())
                        {
                            monitor.subTask(Messages.MavenProjectWizardArchetypePage_task_resolving2);
                            Artifact jarArtifact = maven.resolve(archetypeGroupId, archetypeArtifactId, archetypeVersion, "jar", null, remoteRepositories, monitor);
                            monitor.worked(1);
                            if(monitor.isCanceled())
                                throw new InterruptedException();
                            File jarFile = jarArtifact.getFile();
                            monitor.subTask(Messages.MavenProjectWizardArchetypePage_task_reading);
                            monitor.worked(1);
                            if(monitor.isCanceled())
                                throw new InterruptedException();
                            monitor.subTask(Messages.MavenProjectWizardArchetypePage_task_indexing);
                            IndexManager indexManager = MavenPlugin.getIndexManager();
                            IMutableIndex localIndex = indexManager.getLocalIndex();
                            localIndex.addArtifact(jarFile, new ArtifactKey(pomArtifact));
                            Archetype archetype = new Archetype();
                            archetype.setGroupId(archetypeGroupId);
                            archetype.setArtifactId(archetypeArtifactId);
                            archetype.setVersion(archetypeVersion);
                            archetype.setRepository(repositoryUrl);
                            org.apache.maven.archetype.Archetype archetyper = MavenPluginActivator.getDefault().getArchetype();
                            archetyper.updateLocalCatalog(archetype);
                            loadArchetypes(archetypeGroupId, archetypeArtifactId, archetypeVersion);
                        } else
                        {
                            final Artifact pom = pomArtifact;
                            getShell().getDisplay().asyncExec(new Runnable() {

                                public void run()
                                {
                                    setErrorMessage(NLS.bind(Messages.MavenProjectWizardArchetypePage_error_resolve, pom.toString()));
                                }

                                final _cls17 this$1;
                                private final Artifact val$pom;

                    
                    {
                        this$1 = _cls17.this;
                        pom = artifact;
                        super();
                    }
                            }
);
                        }
                        break MISSING_BLOCK_LABEL_482;
                    }
                    catch(InterruptedException ex)
                    {
                        throw ex;
                    }
                    catch(final Exception ex)
                    {
                        final String msg = NLS.bind(Messages.MavenProjectWizardArchetypePage_error_resolve2, archetypeName);
                        MavenProjectWizardArchetypePage.log.error(msg, ex);
                        getShell().getDisplay().asyncExec(new Runnable() {

                            public void run()
                            {
                                setErrorMessage((new StringBuilder(String.valueOf(msg))).append("\n").append(ex.toString()).toString());
                            }

                            final _cls17 this$1;
                            private final String val$msg;
                            private final Exception val$ex;

                    
                    {
                        this$1 = _cls17.this;
                        msg = s;
                        ex = exception;
                        super();
                    }
                        }
);
                    }
                    monitor.done();
                    break MISSING_BLOCK_LABEL_488;
                    Exception exception;
                    exception;
                    monitor.done();
                    throw exception;
                    monitor.done();
                }

                final MavenProjectWizardArchetypePage this$0;
                private final String val$archetypeName;
                private final String val$repositoryUrl;
                private final String val$archetypeGroupId;
                private final String val$archetypeArtifactId;
                private final String val$archetypeVersion;


            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                archetypeName = s;
                repositoryUrl = s1;
                archetypeGroupId = s2;
                archetypeArtifactId = s3;
                archetypeVersion = s4;
                super();
            }
            }
);
        }
        catch(InterruptedException _ex) { }
        catch(InvocationTargetException ex)
        {
            String msg = NLS.bind(Messages.MavenProjectWizardArchetypePage_error_resolve2, archetypeName);
            log.error(msg, ex);
            setErrorMessage((new StringBuilder(String.valueOf(msg))).append("\n").append(ex.toString()).toString());
        }
    }

    public void indexAdded(IRepository irepository)
    {
    }

    protected void reloadViewer()
    {
        Display.getDefault().asyncExec(new Runnable() {

            public void run()
            {
                if(isCurrentPage())
                {
                    StructuredSelection sel = (StructuredSelection)viewer.getSelection();
                    Archetype selArchetype = null;
                    if(sel != null && sel.getFirstElement() != null)
                        selArchetype = (Archetype)sel.getFirstElement();
                    if(selArchetype != null)
                        loadArchetypes(selArchetype.getGroupId(), selArchetype.getArtifactId(), selArchetype.getVersion());
                    else
                        loadArchetypes("org.apache.maven.archetypes", "maven-archetype-quickstart", "1.0");
                }
            }

            final MavenProjectWizardArchetypePage this$0;

            
            {
                this$0 = MavenProjectWizardArchetypePage.this;
                super();
            }
        }
);
    }

    public void indexChanged(IRepository repository)
    {
        reloadViewer();
    }

    public void indexRemoved(IRepository irepository)
    {
    }

    public void indexUpdating(IRepository irepository)
    {
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/wizards/MavenProjectWizardArchetypePage);
    private static final String KEY_CATALOG = "catalog";
    private static final String ALL_CATALOGS;
    public static final Comparator ARCHETYPE_COMPARATOR = new Comparator() {

        public int compare(Archetype a1, Archetype a2)
        {
            String g1 = a1.getGroupId();
            String g2 = a2.getGroupId();
            int res = g1.compareTo(g2);
            if(res != 0)
                return res;
            String i1 = a1.getArtifactId();
            String i2 = a2.getArtifactId();
            res = i1.compareTo(i2);
            if(res != 0)
                return res;
            String v1 = a1.getVersion();
            String v2 = a2.getVersion();
            if(v1 == null)
                return v2 != null ? -1 : 0;
            else
                return v1.compareTo(v2);
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((Archetype)obj, (Archetype)obj1);
        }

    }
;
    private static final boolean DEFAULT_SHOW_LAST_VERSION = true;
    private static final boolean DEFAULT_INCLUDE_SNAPSHOTS = false;
    ComboViewer catalogsComboViewer;
    Text filterText;
    TableViewer viewer;
    Text descriptionText;
    Button showLastVersionButton;
    Button includeShapshotsButton;
    Button addArchetypeButton;
    volatile Collection archetypes;
    Map archetypeVersions;
    private boolean isUsed;
    ArchetypeCatalogFactory catalogFactory;

    static 
    {
        ALL_CATALOGS = Messages.MavenProjectWizardArchetypePage_all;
    }



}
