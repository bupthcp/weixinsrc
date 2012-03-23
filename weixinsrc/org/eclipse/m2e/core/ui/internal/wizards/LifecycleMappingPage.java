// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   LifecycleMappingPage.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.lang.reflect.InvocationTargetException;
import java.util.*;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.*;
import org.eclipse.jface.wizard.*;
import org.eclipse.m2e.core.internal.lifecyclemapping.LifecycleMappingFactory;
import org.eclipse.m2e.core.internal.lifecyclemapping.discovery.*;
import org.eclipse.m2e.core.project.ProjectImportConfiguration;
import org.eclipse.m2e.core.project.configurator.MojoExecutionKey;
import org.eclipse.m2e.core.ui.internal.MavenImages;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.lifecyclemapping.*;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.custom.CCombo;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.graphics.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.help.IWorkbenchHelpSystem;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            MavenImportWizard

public class LifecycleMappingPage extends WizardPage
{

    public LifecycleMappingPage()
    {
        super("LifecycleMappingPage");
        ignore = new HashSet();
        ignoreAtDefinition = new HashSet();
        setTitle(Messages.LifecycleMappingPage_title);
        setDescription(Messages.LifecycleMappingPage_description);
        setPageComplete(true);
    }

    public void createControl(Composite parent)
    {
        Composite container = new Composite(parent, 0);
        setControl(container);
        container.setLayout(new GridLayout(1, false));
        treeViewer = new TreeViewer(container, 0x10800);
        Tree tree = treeViewer.getTree();
        tree.setLinesVisible(true);
        tree.setHeaderVisible(true);
        tree.setLayoutData(new GridData(4, 4, true, true, 1, 1));
        TreeViewerColumn treeViewerColumn = new TreeViewerColumn(treeViewer, 0);
        TreeColumn trclmnNewColumn = treeViewerColumn.getColumn();
        trclmnNewColumn.setText(Messages.LifecycleMappingPage_mavenBuildColumnTitle);
        TreeViewerColumn columnViewerAction = new TreeViewerColumn(treeViewer, 0);
        TreeColumn columnAction = columnViewerAction.getColumn();
        columnAction.setText(Messages.LifecycleMappingPage_actionColumnTitle);
        columnViewerAction.setEditingSupport(new EditingSupport(treeViewer) {

            protected void setValue(Object element, Object value)
            {
                if(element instanceof ILifecycleMappingLabelProvider)
                {
                    ILifecycleMappingLabelProvider prov = (ILifecycleMappingLabelProvider)element;
                    int intVal = ((Integer)value).intValue();
                    List all = mappingConfiguration.getProposals(prov.getKey());
                    if(ignore.contains(element))
                        ignore.remove(element);
                    else
                    if(ignoreAtDefinition.contains(element))
                        ignoreAtDefinition.remove(element);
                    else
                    if(intVal == all.size() + 0 || shouldDeslectProposal(prov))
                    {
                        IMavenDiscoveryProposal prop = mappingConfiguration.getSelectedProposal(prov.getKey());
                        mappingConfiguration.removeSelectedProposal(prop);
                    }
                    if(intVal < all.size())
                    {
                        IMavenDiscoveryProposal sel = (IMavenDiscoveryProposal)all.get(intVal);
                        if(sel != null)
                            mappingConfiguration.addSelectedProposal(sel);
                    } else
                    {
                        switch(intVal - all.size())
                        {
                        case 1: // '\001'
                            ignore.add(prov);
                            break;

                        case 2: // '\002'
                            ignoreAtDefinition.add(prov);
                            break;
                        }
                    }
                    getViewer().refresh(true);
                    updateErrorCount();
                }
            }

            protected Object getValue(Object element)
            {
                if(element instanceof ILifecycleMappingLabelProvider)
                {
                    ILifecycleMappingLabelProvider prov = (ILifecycleMappingLabelProvider)element;
                    IMavenDiscoveryProposal prop = mappingConfiguration.getSelectedProposal(prov.getKey());
                    List all = mappingConfiguration.getProposals(prov.getKey());
                    if(ignore.contains(element))
                        return Integer.valueOf(all.size() + 1);
                    if(ignoreAtDefinition.contains(element))
                    {
                        return Integer.valueOf(all.size() + 2);
                    } else
                    {
                        int index = all.indexOf(prop);
                        return index < 0 ? Integer.valueOf(all.size() + 0) : Integer.valueOf(index);
                    }
                } else
                {
                    return Integer.valueOf(0);
                }
            }

            protected CellEditor getCellEditor(Object element)
            {
                if(element instanceof ILifecycleMappingLabelProvider)
                {
                    ILifecycleMappingLabelProvider prov = (ILifecycleMappingLabelProvider)element;
                    List all = mappingConfiguration.getProposals(prov.getKey());
                    List values = new ArrayList();
                    IMavenDiscoveryProposal prop;
                    for(Iterator iterator = all.iterator(); iterator.hasNext(); values.add(NLS.bind(Messages.LifecycleMappingPage_installDescription, prop.toString())))
                        prop = (IMavenDiscoveryProposal)iterator.next();

                    values.add(Messages.LifecycleMappingPage_resolveLaterDescription);
                    addIgnoreProposals(values, prov);
                    ComboBoxCellEditor edit = new ComboBoxCellEditor(treeViewer.getTree(), (String[])values.toArray(new String[values.size()]));
                    org.eclipse.swt.widgets.Control cont = edit.getControl();
                    if(cont instanceof CCombo)
                    {
                        CCombo combo = (CCombo)cont;
                        combo.setEditable(false);
                    }
                    return edit;
                } else
                {
                    throw new IllegalStateException();
                }
            }

            protected boolean canEdit(Object element)
            {
                if(element instanceof AggregateMappingLabelProvider)
                {
                    ILifecycleMappingLabelProvider prov = (ILifecycleMappingLabelProvider)element;
                    List all = mappingConfiguration.getProposals(prov.getKey());
                    return all != null && !all.isEmpty() || (prov.getKey() instanceof org.eclipse.m2e.core.internal.lifecyclemapping.discovery.MojoExecutionMappingConfiguration.MojoExecutionMappingRequirement);
                } else
                {
                    return false;
                }
            }

            final LifecycleMappingPage this$0;

            
            {
                this$0 = LifecycleMappingPage.this;
                super($anonymous0);
            }
        }
);
        treeViewer.setContentProvider(new ITreeContentProvider() {

            public void dispose()
            {
            }

            public void inputChanged(Viewer viewer1, Object obj, Object obj1)
            {
            }

            public Object[] getElements(Object inputElement)
            {
                if(inputElement instanceof LifecycleMappingConfiguration)
                {
                    Map packagings = new HashMap();
                    Map mojos = new HashMap();
                    Collection projects = ((LifecycleMappingConfiguration)inputElement).getProjects();
                    for(Iterator iterator = projects.iterator(); iterator.hasNext();)
                    {
                        ProjectLifecycleMappingConfiguration prjconf = (ProjectLifecycleMappingConfiguration)iterator.next();
                        PackagingTypeMappingConfiguration pack = prjconf.getPackagingTypeMappingConfiguration();
                        if(pack != null)
                        {
                            ILifecycleMappingRequirement packReq = pack.getLifecycleMappingRequirement();
                            if(packReq != null && !mappingConfiguration.getProposals(packReq).isEmpty())
                            {
                                List val = (List)packagings.get(packReq);
                                if(val == null)
                                {
                                    val = new ArrayList();
                                    packagings.put(packReq, val);
                                }
                                val.add(new PackagingTypeMappingLabelProvider(prjconf, pack));
                            }
                        }
                        List mojoExecs = prjconf.getMojoExecutionConfigurations();
                        if(mojoExecs != null)
                        {
                            for(Iterator iterator3 = mojoExecs.iterator(); iterator3.hasNext();)
                            {
                                MojoExecutionMappingConfiguration mojoMap = (MojoExecutionMappingConfiguration)iterator3.next();
                                ILifecycleMappingRequirement mojoReq = mojoMap.getLifecycleMappingRequirement();
                                if(mojoReq != null && !mappingConfiguration.getProposals(mojoReq).isEmpty() || LifecycleMappingFactory.isInterestingPhase(mojoMap.getExecution().getLifecyclePhase()) && !mappingConfiguration.isRequirementSatisfied(mojoReq, true))
                                {
                                    List val = (List)mojos.get(mojoReq);
                                    if(val == null)
                                    {
                                        val = new ArrayList();
                                        mojos.put(mojoReq, val);
                                    }
                                    val.add(new MojoExecutionMappingLabelProvider(prjconf, mojoMap));
                                }
                            }

                        }
                    }

                    List toRet = new ArrayList();
                    java.util.Map.Entry ent;
                    for(Iterator iterator1 = packagings.entrySet().iterator(); iterator1.hasNext(); toRet.add(new AggregateMappingLabelProvider((ILifecycleMappingRequirement)ent.getKey(), (List)ent.getValue())))
                        ent = (java.util.Map.Entry)iterator1.next();

                    java.util.Map.Entry ent;
                    for(Iterator iterator2 = mojos.entrySet().iterator(); iterator2.hasNext(); toRet.add(new AggregateMappingLabelProvider((ILifecycleMappingRequirement)ent.getKey(), (List)ent.getValue())))
                        ent = (java.util.Map.Entry)iterator2.next();

                    return toRet.toArray();
                } else
                {
                    return null;
                }
            }

            public Object[] getChildren(Object parentElement)
            {
                if(parentElement instanceof AggregateMappingLabelProvider)
                    return ((AggregateMappingLabelProvider)parentElement).getChildren();
                else
                    return new Object[0];
            }

            public Object getParent(Object element)
            {
                return null;
            }

            public boolean hasChildren(Object element)
            {
                Object children[] = getChildren(element);
                return children != null && children.length > 0;
            }

            final LifecycleMappingPage this$0;

            
            {
                this$0 = LifecycleMappingPage.this;
                super();
            }
        }
);
        treeViewer.setLabelProvider(new ITableLabelProvider() {

            public void removeListener(ILabelProviderListener ilabelproviderlistener)
            {
            }

            public boolean isLabelProperty(Object element, String property)
            {
                return false;
            }

            public void dispose()
            {
            }

            public void addListener(ILabelProviderListener ilabelproviderlistener)
            {
            }

            public String getColumnText(Object element, int columnIndex)
            {
                if(element instanceof ILifecycleMappingLabelProvider)
                {
                    ILifecycleMappingLabelProvider prov = (ILifecycleMappingLabelProvider)element;
                    if(columnIndex == 0)
                    {
                        String text = prov.getMavenText();
                        if((prov instanceof AggregateMappingLabelProvider) && !isHandled(prov))
                            text = NLS.bind(Messages.LifecycleMappingPage_errorMavenBuild, new String[] {
                                text, String.valueOf(((AggregateMappingLabelProvider)prov).getChildren().length)
                            });
                        return text;
                    }
                    if(columnIndex == 1 && (element instanceof AggregateMappingLabelProvider))
                    {
                        IMavenDiscoveryProposal proposal = mappingConfiguration.getSelectedProposal(prov.getKey());
                        if(ignore.contains(element))
                            return Messages.LifecycleMappingPage_doNotExecutePom;
                        if(ignoreAtDefinition.contains(element))
                            return Messages.LifecycleMappingPage_doNotExecuteParent;
                        if(proposal != null)
                            return NLS.bind(Messages.LifecycleMappingPage_installDescription, proposal.toString());
                        if(loading)
                            return "";
                        else
                            return Messages.LifecycleMappingPage_resolveLaterDescription;
                    }
                }
                return null;
            }

            public Image getColumnImage(Object element, int columnIndex)
            {
                if(columnIndex != 0)
                    return null;
                if(element instanceof AggregateMappingLabelProvider)
                {
                    ILifecycleMappingLabelProvider prov = (ILifecycleMappingLabelProvider)element;
                    if(prov.isError(mappingConfiguration) && !isHandled(prov))
                        return MavenImages.IMG_ERROR;
                    else
                        return MavenImages.IMG_PASSED;
                } else
                {
                    return MavenImages.IMG_POM;
                }
            }

            final LifecycleMappingPage this$0;

            
            {
                this$0 = LifecycleMappingPage.this;
                super();
            }
        }
);
        treeViewer.addSelectionChangedListener(new ISelectionChangedListener() {

            public void selectionChanged(SelectionChangedEvent event)
            {
                if((event.getSelection() instanceof IStructuredSelection) && ((IStructuredSelection)event.getSelection()).size() == 1)
                {
                    ILifecycleMappingLabelProvider prov = (ILifecycleMappingLabelProvider)((IStructuredSelection)event.getSelection()).getFirstElement();
                    if(ignore.contains(prov))
                    {
                        details.setText(Messages.LifecycleMappingPage_doNotExecutePomDescription);
                        license.setText("");
                    } else
                    if(ignoreAtDefinition.contains(prov))
                    {
                        details.setText(Messages.LifecycleMappingPage_doNotExecuteParentDescription);
                        license.setText("");
                    } else
                    {
                        IMavenDiscoveryProposal proposal = mappingConfiguration.getSelectedProposal(prov.getKey());
                        details.setText(proposal == null ? mappingConfiguration.getProposals(prov.getKey()).isEmpty() ? NLS.bind(Messages.LifecycleMappingPage_noMarketplaceEntryDescription, prov.getMavenText()) : "" : proposal.getDescription());
                        license.setText(proposal != null ? proposal.getLicense() : "");
                    }
                } else
                {
                    details.setText("");
                    license.setText("");
                }
            }

            final LifecycleMappingPage this$0;

            
            {
                this$0 = LifecycleMappingPage.this;
                super();
            }
        }
);
        treeViewer.setComparator(new ViewerComparator() {

            public int compare(Viewer viewer, Object e1, Object e2)
            {
                if(!(e1 instanceof ILifecycleMappingLabelProvider) || !(e2 instanceof ILifecycleMappingLabelProvider))
                    return super.compare(viewer, e1, e2);
                int cat1 = category(e1);
                int cat2 = category(e2);
                if(cat1 != cat2)
                    return cat1 - cat2;
                else
                    return ((ILifecycleMappingLabelProvider)e1).getMavenText().compareTo(((ILifecycleMappingLabelProvider)e2).getMavenText());
            }

            final LifecycleMappingPage this$0;

            
            {
                this$0 = LifecycleMappingPage.this;
                super();
            }
        }
);
        Composite composite = new Composite(container, 0);
        composite.setLayoutData(new GridData(4, 0x1000000, true, false, 1, 1));
        composite.setLayout(new GridLayout(3, false));
        errorCountLabel = new Label(composite, 0);
        errorCountLabel.setLayoutData(new GridData(4, 0x1000000, true, false, 1, 1));
        Button btnNewButton_1 = new Button(composite, 0);
        btnNewButton_1.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                mappingConfiguration.clearSelectedProposals();
                ignore.clear();
                ignoreAtDefinition.clear();
                treeViewer.refresh();
                getWizard().getContainer().updateButtons();
                updateErrorCount();
            }

            final LifecycleMappingPage this$0;

            
            {
                this$0 = LifecycleMappingPage.this;
                super();
            }
        }
);
        btnNewButton_1.setText(Messages.LifecycleMappingPage_deselectAllButton);
        autoSelectButton = new Button(composite, 0);
        autoSelectButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                ignore.clear();
                ignoreAtDefinition.clear();
                discoverProposals();
            }

            final LifecycleMappingPage this$0;

            
            {
                this$0 = LifecycleMappingPage.this;
                super();
            }
        }
);
        autoSelectButton.setText(Messages.LifecycleMappingPage_autoSelectButton);
        GC gc = new GC(container);
        gc.setFont(JFaceResources.getDialogFont());
        org.eclipse.swt.graphics.FontMetrics fontMetrics = gc.getFontMetrics();
        gc.dispose();
        Group grpDetails = new Group(container, 0);
        grpDetails.setLayout(new GridLayout(1, false));
        grpDetails.setLayoutData(new GridData(4, 4, true, false, 1, 1));
        grpDetails.setText(Messages.LifecycleMappingPage_descriptionLabel);
        details = new Text(grpDetails, 584);
        GridData gd = new GridData(4, 4, true, true);
        gd.heightHint = Dialog.convertHeightInCharsToPixels(fontMetrics, 3);
        gd.minimumHeight = Dialog.convertHeightInCharsToPixels(fontMetrics, 1);
        details.setLayoutData(gd);
        Group grpLicense = new Group(container, 0);
        grpLicense.setLayout(new GridLayout(1, false));
        grpLicense.setLayoutData(new GridData(4, 4, true, false, 1, 1));
        grpLicense.setText(Messages.LifecycleMappingPage_licenseLabel);
        license = new Text(grpLicense, 8);
        gd = new GridData(4, 4, true, true);
        gd.heightHint = Dialog.convertHeightInCharsToPixels(fontMetrics, 1);
        gd.minimumHeight = Dialog.convertHeightInCharsToPixels(fontMetrics, 1);
        license.setLayoutData(gd);
    }

    protected boolean shouldDeslectProposal(ILifecycleMappingLabelProvider prov)
    {
        IMavenDiscoveryProposal proposal = mappingConfiguration.getSelectedProposal(prov.getKey());
        if(proposal != null)
        {
            TreeItem items[] = treeViewer.getTree().getItems();
            TreeItem atreeitem[];
            int j = (atreeitem = items).length;
            for(int i = 0; i < j; i++)
            {
                TreeItem item = atreeitem[i];
                if((item.getData() instanceof ILifecycleMappingLabelProvider) && item.getData() != prov && proposal.equals(mappingConfiguration.getSelectedProposal(((ILifecycleMappingLabelProvider)item.getData()).getKey())))
                    return false;
            }

        }
        return true;
    }

    protected void discoverProposals()
    {
        loading = true;
        treeViewer.refresh();
        try
        {
            getContainer().run(true, true, new IRunnableWithProgress() {

                public void run(IProgressMonitor monitor)
                    throws InvocationTargetException, InterruptedException
                {
                    mappingConfiguration.clearSelectedProposals();
                    ((MavenImportWizard)getWizard()).discoverProposals(mappingConfiguration, monitor);
                    mappingConfiguration.autoCompleteMapping();
                }

                final LifecycleMappingPage this$0;

            
            {
                this$0 = LifecycleMappingPage.this;
                super();
            }
            }
);
        }
        catch(InvocationTargetException e)
        {
            setErrorMessage(e.getMessage());
        }
        catch(InterruptedException e)
        {
            setErrorMessage(e.getMessage());
        }
        loading = false;
        treeViewer.refresh();
        getWizard().getContainer().updateButtons();
        updateErrorCount();
    }

    public void setVisible(boolean visible)
    {
        super.setVisible(visible);
        if(visible)
        {
            PlatformUI.getWorkbench().getHelpSystem().setHelp(getWizard().getContainer().getShell(), "org.eclipse.m2e.core.ui.LifecycleMappingPage");
            mappingConfiguration = ((MavenImportWizard)getWizard()).getMappingConfiguration();
            if(!mappingConfiguration.isMappingComplete())
                mappingConfiguration.autoCompleteMapping();
            treeViewer.setInput(mappingConfiguration);
            updateErrorCount();
            TreeColumn columns[] = treeViewer.getTree().getColumns();
            for(int i = 0; i < columns.length; i++)
            {
                int ratio = i != 0 ? 4 : 6;
                columns[i].setWidth((treeViewer.getTree().getClientArea().width / 10) * ratio);
            }

        }
    }

    public boolean canFlipToNextPage()
    {
        return getNextPage() != null;
    }

    protected Collection getProjects()
    {
        return ((MavenImportWizard)getWizard()).getProjects();
    }

    protected ProjectImportConfiguration getProjectImportConfiguration()
    {
        return ((MavenImportWizard)getWizard()).getProjectImportConfiguration();
    }

    public List getSelectedDiscoveryProposals()
    {
        if(mappingConfiguration == null)
            return Collections.emptyList();
        else
            return mappingConfiguration.getSelectedProposals();
    }

    public boolean isMappingComplete()
    {
        TreeItem atreeitem[];
        int j = (atreeitem = treeViewer.getTree().getItems()).length;
        for(int i = 0; i < j; i++)
        {
            TreeItem item = atreeitem[i];
            if(!isHandled((ILifecycleMappingLabelProvider)item.getData()))
                return false;
        }

        return true;
    }

    private void addIgnoreProposals(List values, ILifecycleMappingLabelProvider provider)
    {
        if(provider.getKey() instanceof org.eclipse.m2e.core.internal.lifecyclemapping.discovery.MojoExecutionMappingConfiguration.MojoExecutionMappingRequirement)
        {
            values.add(Messages.LifecycleMappingPage_doNotExecutePom);
            values.add(Messages.LifecycleMappingPage_doNotExecuteParent);
        }
    }

    public Collection getIgnore()
    {
        return ignore;
    }

    public Collection getIgnoreParent()
    {
        return ignoreAtDefinition;
    }

    private void updateErrorCount()
    {
        int count = 0;
        TreeItem atreeitem[];
        int j = (atreeitem = treeViewer.getTree().getItems()).length;
        for(int i = 0; i < j; i++)
        {
            TreeItem item = atreeitem[i];
            ILifecycleMappingLabelProvider prov = (ILifecycleMappingLabelProvider)item.getData();
            if(!isHandled(prov))
                if(prov instanceof AggregateMappingLabelProvider)
                    count += ((AggregateMappingLabelProvider)prov).getChildren().length;
                else
                    count++;
        }

        errorCountLabel.setText(NLS.bind(Messages.LifecycleMappingPage_numErrors, String.valueOf(count)));
    }

    private boolean isHandled(ILifecycleMappingLabelProvider prov)
    {
        return ignore.contains(prov) || ignoreAtDefinition.contains(prov) || mappingConfiguration.getSelectedProposal(prov.getKey()) != null || !prov.isError(mappingConfiguration);
    }

    private static final String EMPTY_STRING = "";
    private static final int MAVEN_INFO_IDX = 0;
    private static final int ACTION_INFO_IDX = 1;
    private static final int NO_ACTION_IDX = 0;
    private static final int IGNORE_IDX = 1;
    private static final int IGNORE_PARENT_IDX = 2;
    private LifecycleMappingConfiguration mappingConfiguration;
    private TreeViewer treeViewer;
    private Button autoSelectButton;
    private boolean loading;
    private Text details;
    private Text license;
    private Set ignore;
    private Set ignoreAtDefinition;
    private Label errorCountLabel;










}
