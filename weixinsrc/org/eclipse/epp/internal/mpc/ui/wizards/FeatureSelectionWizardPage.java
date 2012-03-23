// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   FeatureSelectionWizardPage.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.lang.reflect.InvocationTargetException;
import java.util.*;
import org.eclipse.core.runtime.*;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUi;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUiPlugin;
import org.eclipse.epp.internal.mpc.ui.operations.FeatureDescriptor;
import org.eclipse.epp.internal.mpc.ui.operations.ResolveFeatureNamesOperation;
import org.eclipse.epp.internal.mpc.ui.util.Util;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.operations.ProfileChangeOperation;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.layout.*;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.jface.viewers.*;
import org.eclipse.jface.wizard.*;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.statushandlers.StatusManager;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            MarketplaceWizard, Messages, SelectionModel, Operation

public class FeatureSelectionWizardPage extends WizardPage
{
    private static class ContentProvider
        implements ITreeContentProvider
    {

        public void inputChanged(Viewer viewer, Object oldInput, Object newInput)
        {
            input = newInput;
        }

        public void dispose()
        {
        }

        public Object[] getElements(Object inputElement)
        {
            if(inputElement == input && input != null)
                return ((SelectionModel)input).getCatalogItemEntries().toArray();
            if(inputElement instanceof SelectionModel.CatalogItemEntry)
                return ((SelectionModel.CatalogItemEntry)inputElement).getChildren().toArray();
            else
                return new Object[0];
        }

        public boolean hasChildren(Object element)
        {
            return element == input || (element instanceof SelectionModel.CatalogItemEntry);
        }

        public Object getParent(Object element)
        {
            if(element instanceof SelectionModel.FeatureEntry)
                return ((SelectionModel.FeatureEntry)element).getParent();
            else
                return input;
        }

        public Object[] getChildren(Object parentElement)
        {
            return getElements(parentElement);
        }

        private Object input;

        private ContentProvider()
        {
        }

        ContentProvider(ContentProvider contentprovider)
        {
            this();
        }
    }

    private static class LabelProvider extends ColumnLabelProvider
        implements org.eclipse.jface.viewers.DelegatingStyledCellLabelProvider.IStyledLabelProvider
    {

        public StyledString getStyledText(Object element)
        {
            StyledString styledString = new StyledString();
            styledString.append(getText(element));
            if(element instanceof SelectionModel.CatalogItemEntry)
            {
                SelectionModel.CatalogItemEntry entry = (SelectionModel.CatalogItemEntry)element;
                styledString.append((new StringBuilder("  ")).append(entry.getItem().getSiteUrl()).toString(), StyledString.QUALIFIER_STYLER);
            }
            return styledString;
        }

        public Image getImage(Object element)
        {
            if(element instanceof SelectionModel.FeatureEntry)
            {
                SelectionModel.FeatureEntry entry = (SelectionModel.FeatureEntry)element;
                switch($SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$Operation()[entry.getParent().getOperation().ordinal()])
                {
                case 3: // '\003'
                    if(entry.isInstalled())
                        return MarketplaceClientUiPlugin.getInstance().getImageRegistry().get("IU_ICON_UPDATE");
                    // fall through

                case 1: // '\001'
                    return MarketplaceClientUiPlugin.getInstance().getImageRegistry().get("IU_ICON");
                }
            } else
            if(element instanceof SelectionModel.CatalogItemEntry)
                return MarketplaceClientUiPlugin.getInstance().getImageRegistry().get("IU_ICON");
            return null;
        }

        public String getText(Object element)
        {
            if(element instanceof SelectionModel.CatalogItemEntry)
            {
                SelectionModel.CatalogItemEntry entry = (SelectionModel.CatalogItemEntry)element;
                return entry.getItem().getName();
            }
            if(element instanceof SelectionModel.FeatureEntry)
            {
                SelectionModel.FeatureEntry entry = (SelectionModel.FeatureEntry)element;
                return entry.getFeatureDescriptor().getName();
            } else
            {
                return element.toString();
            }
        }

        static int[] $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$Operation()
        {
            $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$Operation;
            if($SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$Operation == null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            JVM INSTR pop ;
            int ai[] = new int[Operation.values().length];
            try
            {
                ai[Operation.CHECK_FOR_UPDATES.ordinal()] = 3;
            }
            catch(NoSuchFieldError _ex) { }
            try
            {
                ai[Operation.INSTALL.ordinal()] = 1;
            }
            catch(NoSuchFieldError _ex) { }
            try
            {
                ai[Operation.NONE.ordinal()] = 4;
            }
            catch(NoSuchFieldError _ex) { }
            try
            {
                ai[Operation.UNINSTALL.ordinal()] = 2;
            }
            catch(NoSuchFieldError _ex) { }
            return $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$Operation = ai;
        }

        private static int $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$Operation[];

        private LabelProvider()
        {
        }

        LabelProvider(LabelProvider labelprovider)
        {
            this();
        }
    }


    protected FeatureSelectionWizardPage()
    {
        super(org/eclipse/epp/internal/mpc/ui/wizards/FeatureSelectionWizardPage.getName());
        setTitle(Messages.FeatureSelectionWizardPage_confirmSelectedFeatures);
        setDescription(Messages.FeatureSelectionWizardPage_confirmSelectedFeatures_description);
        setPageComplete(false);
    }

    public MarketplaceWizard getWizard()
    {
        return (MarketplaceWizard)super.getWizard();
    }

    public void createControl(Composite parent)
    {
        Composite container = new Composite(parent, 0);
        GridLayoutFactory.fillDefaults().numColumns(1).applyTo(container);
        Composite treeContainer = new Composite(container, 0);
        GridDataFactory.fillDefaults().grab(true, true).align(4, 4).applyTo(treeContainer);
        TreeColumnLayout columnLayout = new TreeColumnLayout();
        treeContainer.setLayout(columnLayout);
        viewer = new CheckboxTreeViewer(treeContainer, 0x10b02);
        viewer.setUseHashlookup(true);
        viewer.setComparator(new ViewerComparator() {

            public int compare(Viewer viewer, Object e1, Object e2)
            {
                if(e1 == e2)
                    return 0;
                String s1;
                String s2;
                if(e1 instanceof SelectionModel.CatalogItemEntry)
                {
                    s1 = ((SelectionModel.CatalogItemEntry)e1).getItem().getName();
                    s2 = ((SelectionModel.CatalogItemEntry)e2).getItem().getName();
                } else
                {
                    s1 = ((SelectionModel.FeatureEntry)e1).getFeatureDescriptor().getName();
                    s2 = ((SelectionModel.FeatureEntry)e2).getFeatureDescriptor().getName();
                }
                int i = s1.compareToIgnoreCase(s2);
                if(i == 0)
                {
                    i = s1.compareTo(s2);
                    if(i == 0)
                        i = (new Integer(System.identityHashCode(e1))).compareTo(Integer.valueOf(System.identityHashCode(e2)));
                }
                return i;
            }

            final FeatureSelectionWizardPage this$0;

            
            {
                this$0 = FeatureSelectionWizardPage.this;
                super();
            }
        }
);
        viewer.setContentProvider(new ContentProvider(null));
        viewer.setInput(getWizard().getSelectionModel());
        viewer.addCheckStateListener(new ICheckStateListener() {

            public void checkStateChanged(CheckStateChangedEvent event)
            {
                if(event.getElement() instanceof SelectionModel.CatalogItemEntry)
                {
                    SelectionModel.CatalogItemEntry entry = (SelectionModel.CatalogItemEntry)event.getElement();
                    SelectionModel.FeatureEntry child;
                    for(Iterator iterator = entry.getChildren().iterator(); iterator.hasNext(); child.setChecked(event.getChecked()))
                        child = (SelectionModel.FeatureEntry)iterator.next();

                } else
                if(event.getElement() instanceof SelectionModel.FeatureEntry)
                    ((SelectionModel.FeatureEntry)event.getElement()).setChecked(event.getChecked());
                computeCheckedViewerState();
                updateMessage();
                setPageComplete(computePageComplete());
            }

            final FeatureSelectionWizardPage this$0;

            
            {
                this$0 = FeatureSelectionWizardPage.this;
                super();
            }
        }
);
        column = new TreeViewerColumn(viewer, 0);
        column.setLabelProvider(new DelegatingStyledCellLabelProvider(new LabelProvider(null)));
        columnLayout.setColumnData(column.getColumn(), new ColumnWeightData(100, 100, true));
        detailsControl = new Group(container, 4);
        detailsControl.setText(Messages.FeatureSelectionWizardPage_details);
        GridDataFactory.fillDefaults().grab(true, false).hint(-1, 300).exclude(true).applyTo(detailsControl);
        GridLayoutFactory.fillDefaults().applyTo(detailsControl);
        detailStatusText = new Text(detailsControl, 586);
        GridDataFactory.fillDefaults().grab(true, true).applyTo(detailStatusText);
        setControl(container);
        Dialog.applyDialogFont(container);
        MarketplaceClientUi.setDefaultHelp(getControl());
    }

    public void setVisible(boolean visible)
    {
        super.setVisible(visible);
        if(visible)
            Display.getCurrent().asyncExec(new Runnable() {

                public void run()
                {
                    if(getControl() == null || getControl().isDisposed() || getWizard().getContainer().getCurrentPage() != FeatureSelectionWizardPage.this)
                        return;
                    if(getWizard().wantInitializeInitialSelection())
                        try
                        {
                            getWizard().initializeInitialSelection();
                        }
                        catch(CoreException e)
                        {
                            boolean wasCancelled = e.getStatus().getSeverity() == 8;
                            if(!wasCancelled)
                                StatusManager.getManager().handle(e.getStatus(), 7);
                        }
                    updateFeatures();
                }

                final FeatureSelectionWizardPage this$0;

            
            {
                this$0 = FeatureSelectionWizardPage.this;
                super();
            }
            }
);
    }

    private void updateFeatures()
    {
        setPageComplete(false);
        viewer.setInput(getWizard().getSelectionModel());
        ResolveFeatureNamesOperation operation = new ResolveFeatureNamesOperation(new ArrayList(getWizard().getSelectionModel().getItemToOperation().keySet())) {

            public void run(IProgressMonitor progressMonitor)
                throws InvocationTargetException, InterruptedException
            {
                super.run(progressMonitor);
                display.asyncExec(new Runnable() {

                    public void run()
                    {
                        if(!getControl().isDisposed())
                            updateFeatureDescriptors(getFeatureDescriptors(), getUnresolvedFeatureDescriptors());
                    }

                    final _cls4 this$1;

                    
                    {
                        this$1 = _cls4.this;
                        super();
                    }
                }
);
            }

            Display display;
            final FeatureSelectionWizardPage this$0;


            
            {
                this$0 = FeatureSelectionWizardPage.this;
                super($anonymous0);
                display = getControl().getDisplay();
            }
        }
;
        try
        {
            getContainer().run(true, true, operation);
        }
        catch(InvocationTargetException e)
        {
            refresh();
            int statusFlags = 1;
            IStatus status;
            if(e.getCause() instanceof ProvisionException)
            {
                status = ((ProvisionException)e.getCause()).getStatus();
            } else
            {
                status = MarketplaceClientUi.computeStatus(e, Messages.FeatureSelectionWizardPage_unexpectedException_verifyingFeatures);
                statusFlags |= 6;
            }
            StatusManager.getManager().handle(status, statusFlags);
        }
        catch(InterruptedException _ex)
        {
            refresh();
        }
        maybeUpdateProfileChangeOperation();
    }

    private void maybeUpdateProfileChangeOperation()
    {
        if(getWizard().getProfileChangeOperation() == null)
            getWizard().updateProfileChangeOperation();
        updateMessage();
        setPageComplete(computePageComplete());
    }

    public boolean canFlipToNextPage()
    {
        return isPageComplete() && getNextPage(false) != null;
    }

    public IWizardPage getNextPage(boolean computeChanges)
    {
        if(getWizard() == null)
            return null;
        else
            return getWizard().getNextPage(this, computeChanges);
    }

    public IWizardPage getNextPage()
    {
        return getNextPage(true);
    }

    void updateMessage()
    {
        ProfileChangeOperation profileChangeOperation = getWizard().getProfileChangeOperation();
        if(profileChangeOperation != null)
        {
            IStatus resolutionResult = profileChangeOperation.getResolutionResult();
            if(!resolutionResult.isOK())
            {
                String message = resolutionResult.getMessage();
                if(resolutionResult.getSeverity() == 4)
                    message = Messages.FeatureSelectionWizardPage_provisioningErrorAdvisory;
                else
                if(resolutionResult.getSeverity() == 2)
                    message = Messages.FeatureSelectionWizardPage_provisioningWarningAdvisory;
                setMessage(message, Util.computeMessageType(resolutionResult));
                String originalText = detailStatusText.getText();
                String newText;
                try
                {
                    newText = profileChangeOperation.getResolutionDetails();
                }
                catch(Exception e)
                {
                    MarketplaceClientUi.error(e);
                    newText = Messages.FeatureSelectionWizardPage_detailsUnavailable;
                }
                if(newText != originalText || newText != null && !newText.equals(originalText))
                    detailStatusText.setText(newText);
                ((GridData)detailsControl.getLayoutData()).exclude = false;
            } else
            {
                setMessage(null, 0);
                ((GridData)detailsControl.getLayoutData()).exclude = true;
            }
        } else
        {
            setMessage(null, 0);
            ((GridData)detailsControl.getLayoutData()).exclude = true;
        }
        ((Composite)getControl()).layout(true);
    }

    private void updateFeatureDescriptors(Set featureDescriptors, Set unresolvedFeatureDescriptors)
    {
        if(featureDescriptors != null)
        {
            updateSelectionModel(featureDescriptors);
            refresh();
        }
        boolean pageComplete = computePageComplete();
        if(pageComplete != isPageComplete())
            setPageComplete(pageComplete);
    }

    private void refresh()
    {
        viewer.refresh();
        computeCheckedViewerState();
        viewer.expandAll();
    }

    private boolean computePageComplete()
    {
        return getWizard().getSelectionModel().computeProvisioningOperationViable();
    }

    private void updateSelectionModel(Set featureDescriptors)
    {
        Map descriptorById = new HashMap();
        FeatureDescriptor fd;
        for(Iterator iterator = featureDescriptors.iterator(); iterator.hasNext(); descriptorById.put(fd.getId(), fd))
            fd = (FeatureDescriptor)iterator.next();

        SelectionModel selectionModel = getWizard().getSelectionModel();
        for(Iterator iterator1 = selectionModel.getCatalogItemEntries().iterator(); iterator1.hasNext();)
        {
            SelectionModel.CatalogItemEntry entry = (SelectionModel.CatalogItemEntry)iterator1.next();
            for(Iterator iterator2 = entry.getChildren().iterator(); iterator2.hasNext();)
            {
                SelectionModel.FeatureEntry child = (SelectionModel.FeatureEntry)iterator2.next();
                FeatureDescriptor descriptor = (FeatureDescriptor)descriptorById.get(child.getFeatureDescriptor().getId());
                if(descriptor != null)
                    child.setFeatureDescriptor(descriptor);
            }

        }

    }

    public void computeCheckedViewerState()
    {
        List checkedElements = new ArrayList();
        List grayCheckedElements = new ArrayList();
        for(Iterator iterator = getWizard().getSelectionModel().getCatalogItemEntries().iterator(); iterator.hasNext();)
        {
            SelectionModel.CatalogItemEntry entry = (SelectionModel.CatalogItemEntry)iterator.next();
            int childCheckCount = 0;
            for(Iterator iterator1 = entry.getChildren().iterator(); iterator1.hasNext();)
            {
                SelectionModel.FeatureEntry child = (SelectionModel.FeatureEntry)iterator1.next();
                if(child.isChecked())
                {
                    checkedElements.add(child);
                    childCheckCount++;
                }
            }

            if(childCheckCount == entry.getChildren().size())
                checkedElements.add(entry);
            else
            if(childCheckCount > 0)
            {
                grayCheckedElements.add(entry);
                checkedElements.add(entry);
            }
        }

        viewer.setCheckedElements(checkedElements.toArray());
        viewer.setGrayedElements(grayCheckedElements.toArray());
    }

    public void performHelp()
    {
        getControl().notifyListeners(28, new Event());
    }

    public volatile IWizard getWizard()
    {
        return getWizard();
    }

    private CheckboxTreeViewer viewer;
    private Text detailStatusText;
    private Group detailsControl;
    private TreeViewerColumn column;



}
