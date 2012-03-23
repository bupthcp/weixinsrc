// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenRepositoryView.java

package org.eclipse.m2e.core.ui.internal.views;

import java.util.*;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.action.*;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.viewers.*;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.IMaven;
import org.eclipse.m2e.core.internal.index.*;
import org.eclipse.m2e.core.internal.index.nexus.IndexedArtifactGroup;
import org.eclipse.m2e.core.internal.index.nexus.NexusIndex;
import org.eclipse.m2e.core.repository.IRepository;
import org.eclipse.m2e.core.ui.internal.MavenImages;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.actions.OpenPomAction;
import org.eclipse.m2e.core.ui.internal.util.M2EUIUtils;
import org.eclipse.m2e.core.ui.internal.views.nodes.AbstractIndexedRepositoryNode;
import org.eclipse.m2e.core.ui.internal.views.nodes.IArtifactNode;
import org.eclipse.m2e.core.ui.internal.views.nodes.IndexedArtifactFileNode;
import org.eclipse.m2e.core.ui.internal.views.nodes.LocalRepositoryNode;
import org.eclipse.m2e.core.ui.internal.views.nodes.RepositoryNode;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.dnd.*;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.*;
import org.eclipse.ui.actions.BaseSelectionListenerAction;
import org.eclipse.ui.part.DrillDownAdapter;
import org.eclipse.ui.part.ViewPart;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.views:
//            RepositoryViewContentProvider, RepositoryViewLabelProvider

public class MavenRepositoryView extends ViewPart
{
    abstract class AbstractIndexAction extends Action
        implements ISelectionChangedListener
    {

        protected abstract String getDetailsValue();

        protected abstract String getActionText();

        public void run()
        {
            IStructuredSelection sel = (IStructuredSelection)viewer.getSelection();
            setIndexDetails(getSelectedRepositoryNode(sel), getDetailsValue());
        }

        public void selectionChanged(SelectionChangedEvent event)
        {
            IStructuredSelection sel = (IStructuredSelection)event.getSelection();
            updateSelection(sel);
        }

        protected void updateSelection(IStructuredSelection selection)
        {
            AbstractIndexedRepositoryNode node = getSelectedRepositoryNode(selection);
            updateIndexDetails(node);
            setText(getActionText());
            boolean enabled = node != null && (node instanceof RepositoryNode);
            setEnabled(enabled);
        }

        protected void updateIndexDetails(AbstractIndexedRepositoryNode node)
        {
            if(node == null || node.getIndex() == null)
            {
                return;
            } else
            {
                NexusIndex index = node.getIndex();
                setChecked(getDetailsValue().equals(index.getIndexDetails()));
                return;
            }
        }

        final MavenRepositoryView this$0;

        public AbstractIndexAction(String text, int style)
        {
            this$0 = MavenRepositoryView.this;
            super(text, style);
        }
    }

    class DisableIndexAction extends AbstractIndexAction
    {

        protected String getDetailsValue()
        {
            return "off";
        }

        protected String getActionText()
        {
            return isChecked() ? MavenRepositoryView.DISABLED_DETAILS : MavenRepositoryView.DISABLE_DETAILS;
        }

        final MavenRepositoryView this$0;

        public DisableIndexAction()
        {
            this$0 = MavenRepositoryView.this;
            super(MavenRepositoryView.DISABLE_DETAILS, 2);
        }
    }

    class EnableFullIndexAction extends AbstractIndexAction
    {

        protected String getDetailsValue()
        {
            return "full";
        }

        protected String getActionText()
        {
            return isChecked() ? MavenRepositoryView.ENABLED_FULL : MavenRepositoryView.ENABLE_FULL;
        }

        final MavenRepositoryView this$0;

        public EnableFullIndexAction()
        {
            this$0 = MavenRepositoryView.this;
            super(MavenRepositoryView.ENABLE_FULL, 2);
        }
    }

    class EnableMinIndexAction extends AbstractIndexAction
    {

        protected String getDetailsValue()
        {
            return "min";
        }

        protected String getActionText()
        {
            return isChecked() ? MavenRepositoryView.ENABLED_MIN : MavenRepositoryView.ENABLE_MIN;
        }

        final MavenRepositoryView this$0;

        public EnableMinIndexAction()
        {
            this$0 = MavenRepositoryView.this;
            super(MavenRepositoryView.ENABLE_MIN, 2);
        }
    }


    public MavenRepositoryView()
    {
        indexManager = MavenPlugin.getIndexManager();
    }

    public void setFocus()
    {
        viewer.getControl().setFocus();
    }

    public void createPartControl(Composite parent)
    {
        viewer = new TreeViewer(parent, 770);
        contentProvider = new RepositoryViewContentProvider();
        viewer.setContentProvider(contentProvider);
        RepositoryViewLabelProvider labelProvider = new RepositoryViewLabelProvider(viewer.getTree().getFont());
        viewer.setLabelProvider(new DecoratingStyledCellLabelProvider(labelProvider, PlatformUI.getWorkbench().getDecoratorManager().getLabelDecorator(), null));
        viewer.addDoubleClickListener(new IDoubleClickListener() {

            public void doubleClick(DoubleClickEvent doubleclickevent)
            {
            }

            final MavenRepositoryView this$0;

            
            {
                this$0 = MavenRepositoryView.this;
                super();
            }
        }
);
        viewer.setInput(getViewSite());
        drillDownAdapter = new DrillDownAdapter(viewer);
        makeActions();
        hookContextMenu();
        viewer.addDoubleClickListener(new IDoubleClickListener() {

            public void doubleClick(DoubleClickEvent event)
            {
                openPomAction.run();
            }

            final MavenRepositoryView this$0;

            
            {
                this$0 = MavenRepositoryView.this;
                super();
            }
        }
);
        contributeToActionBars();
        indexListener = new IndexListener() {

            public void indexAdded(IRepository repository)
            {
                refreshView();
            }

            public void indexChanged(IRepository repository)
            {
                refreshView();
            }

            public void indexRemoved(IRepository repository)
            {
                refreshView();
            }

            public void indexUpdating(IRepository repository)
            {
                Display.getDefault().asyncExec(new Runnable() {

                    public void run()
                    {
                        viewer.refresh(true);
                    }

                    final _cls3 this$1;

                    
                    {
                        this$1 = _cls3.this;
                        super();
                    }
                }
);
            }

            final MavenRepositoryView this$0;


            
            {
                this$0 = MavenRepositoryView.this;
                super();
            }
        }
;
        indexManager.addIndexListener(indexListener);
    }

    private void hookContextMenu()
    {
        MenuManager menuMgr = new MenuManager("#PopupMenu-.repositoryViewMenu");
        menuMgr.setRemoveAllWhenShown(true);
        menuMgr.addMenuListener(new IMenuListener() {

            public void menuAboutToShow(IMenuManager manager)
            {
                fillContextMenu(manager);
                manager.update();
            }

            final MavenRepositoryView this$0;

            
            {
                this$0 = MavenRepositoryView.this;
                super();
            }
        }
);
        org.eclipse.swt.widgets.Menu menu = menuMgr.createContextMenu(viewer.getControl());
        viewer.getControl().setMenu(menu);
        getSite().registerContextMenu("org.eclipse.m2e.core.ui.repositoryViewMenu", menuMgr, viewer);
    }

    private void contributeToActionBars()
    {
        IActionBars bars = getViewSite().getActionBars();
        fillLocalPullDown(bars.getMenuManager());
        fillLocalToolBar(bars.getToolBarManager());
    }

    private void fillLocalPullDown(IMenuManager manager)
    {
        manager.add(new Separator());
        manager.add(collapseAllAction);
        manager.add(reloadSettings);
    }

    protected List getSelectedRepositoryNodes(List elements)
    {
        ArrayList list = new ArrayList();
        if(elements != null)
        {
            for(int i = 0; i < elements.size(); i++)
            {
                Object elem = elements.get(i);
                if(elem instanceof AbstractIndexedRepositoryNode)
                    list.add((AbstractIndexedRepositoryNode)elem);
            }

        }
        return list;
    }

    protected List getArtifactNodes(List elements)
    {
        if(elements == null || elements.size() == 0)
            return null;
        ArrayList list = new ArrayList();
        for(int i = 0; i < elements.size(); i++)
        {
            Object elem = elements.get(i);
            if(elem instanceof IArtifactNode)
            {
                IArtifactNode node = (IArtifactNode)elem;
                list.add(node);
            }
        }

        return list;
    }

    void fillContextMenu(IMenuManager manager)
    {
        manager.add(new Separator("open"));
        manager.add(new Separator("update"));
        manager.add(new Separator("import"));
        manager.prependToGroup("open", copyUrlAction);
        manager.prependToGroup("open", openPomAction);
        manager.prependToGroup("update", updateAction);
        manager.prependToGroup("update", rebuildAction);
        manager.add(disableAction);
        manager.add(enableMinAction);
        manager.add(enableFullAction);
        manager.add(new Separator());
        manager.add(collapseAllAction);
        manager.add(new Separator());
        drillDownAdapter.addNavigationActions(manager);
        manager.add(new Separator("additions"));
    }

    private void fillLocalToolBar(IToolBarManager manager)
    {
        manager.add(new Separator());
        manager.add(collapseAllAction);
        manager.add(reloadSettings);
        manager.add(new Separator());
        drillDownAdapter.addNavigationActions(manager);
    }

    private void makeActions()
    {
        collapseAllAction = new Action(Messages.MavenRepositoryView_btnCollapse) {

            public void run()
            {
                viewer.collapseAll();
            }

            final MavenRepositoryView this$0;

            
            {
                this$0 = MavenRepositoryView.this;
                super($anonymous0);
            }
        }
;
        collapseAllAction.setToolTipText(Messages.MavenRepositoryView_btnCollapse_tooltip);
        collapseAllAction.setImageDescriptor(PlatformUI.getWorkbench().getSharedImages().getImageDescriptor("IMG_ELCL_COLLAPSEALL"));
        reloadSettings = new Action(Messages.MavenRepositoryView_action_reload) {

            public void run()
            {
                String msg = Messages.MavenRepositoryView_reload_msg;
                boolean res = MessageDialog.openConfirm(getViewSite().getShell(), Messages.MavenRepositoryView_reload_title, msg);
                if(res)
                {
                    Job job = new WorkspaceJob(Messages.MavenRepositoryView_job_reloading) {

                        public IStatus runInWorkspace(IProgressMonitor monitor)
                        {
                            try
                            {
                                MavenPlugin.getMaven().reloadSettings();
                            }
                            catch(CoreException ex)
                            {
                                return ex.getStatus();
                            }
                            return Status.OK_STATUS;
                        }

                        final _cls6 this$1;

                    
                    {
                        this$1 = _cls6.this;
                        super($anonymous0);
                    }
                    }
;
                    job.schedule();
                }
            }

            final MavenRepositoryView this$0;

            
            {
                this$0 = MavenRepositoryView.this;
                super($anonymous0);
            }
        }
;
        reloadSettings.setImageDescriptor(MavenImages.REFRESH);
        updateAction = new BaseSelectionListenerAction(Messages.MavenRepositoryView_action_update) {

            public void run()
            {
                List nodes = getSelectedRepositoryNodes(getStructuredSelection().toList());
                for(Iterator iterator = nodes.iterator(); iterator.hasNext();)
                {
                    AbstractIndexedRepositoryNode node = (AbstractIndexedRepositoryNode)iterator.next();
                    if(node instanceof RepositoryNode)
                        ((RepositoryNode)node).getIndex().scheduleIndexUpdate(false);
                }

            }

            protected boolean updateSelection(IStructuredSelection selection)
            {
                int indexCount = 0;
                for(Iterator iterator = getSelectedRepositoryNodes(selection.toList()).iterator(); iterator.hasNext();)
                {
                    AbstractIndexedRepositoryNode node = (AbstractIndexedRepositoryNode)iterator.next();
                    if((node instanceof RepositoryNode) && node.isEnabledIndex())
                        indexCount++;
                }

                if(indexCount > 1)
                    setText(Messages.MavenRepositoryView_update_more);
                else
                    setText(Messages.MavenRepositoryView_update_one);
                return indexCount > 0;
            }

            final MavenRepositoryView this$0;

            
            {
                this$0 = MavenRepositoryView.this;
                super($anonymous0);
            }
        }
;
        updateAction.setToolTipText(Messages.MavenRepositoryView_btnUpdate_tooltip);
        updateAction.setImageDescriptor(MavenImages.UPD_INDEX);
        rebuildAction = new BaseSelectionListenerAction(Messages.MavenRepositoryView_action_rebuild) {

            public void run()
            {
                (new Job(Messages.MavenRepositoryView_rebuild_indexes) {

                    protected IStatus run(IProgressMonitor monitor)
                    {
                        indexManager.removeIndexListener(indexListener);
                        List nodes;
                        SubMonitor mon;
                        nodes = getSelectedRepositoryNodes(getStructuredSelection().toList());
                        if(nodes.size() <= 0)
                            break MISSING_BLOCK_LABEL_264;
                        final String title = nodes.size() != 1 ? Messages.MavenRepositoryView_rebuild_title : Messages.MavenRepositoryView_rebuild_title;
                        final String msg = nodes.size() != 1 ? Messages.MavenRepositoryView_rebuild_msg2 : NLS.bind(Messages.MavenRepositoryView_rebuild_msg, ((AbstractIndexedRepositoryNode)nodes.get(0)).getIndex().getRepositoryUrl());
                        final boolean result[] = new boolean[1];
                        Display.getDefault().syncExec(new Runnable() {

                            public void run()
                            {
                                result[0] = MessageDialog.openConfirm(getViewSite().getShell(), title, msg);
                            }

                            final _cls1 this$2;
                            private final boolean val$result[];
                            private final String val$title;
                            private final String val$msg;

                        
                        {
                            this$2 = _cls1.this;
                            result = aflag;
                            title = s;
                            msg = s1;
                            super();
                        }
                        }
);
                        if(!result[0])
                            break MISSING_BLOCK_LABEL_264;
                        mon = SubMonitor.convert(monitor, nodes.size());
                        for(Iterator iterator = nodes.iterator(); iterator.hasNext();)
                        {
                            AbstractIndexedRepositoryNode node = (AbstractIndexedRepositoryNode)iterator.next();
                            NexusIndex index = node.getIndex();
                            if(index != null)
                                try
                                {
                                    index.updateIndex(true, mon.newChild(1));
                                }
                                catch(CoreException ex)
                                {
                                    MavenRepositoryView.log.error(ex.getMessage(), ex);
                                }
                            else
                                mon.worked(1);
                        }

                        break MISSING_BLOCK_LABEL_259;
                        Exception exception;
                        exception;
                        mon.done();
                        throw exception;
                        mon.done();
                        IStatus istatus = Status.OK_STATUS;
                        indexManager.addIndexListener(indexListener);
                        refreshView();
                        return istatus;
                        Exception exception1;
                        exception1;
                        indexManager.addIndexListener(indexListener);
                        refreshView();
                        throw exception1;
                    }

                    final _cls8 this$1;


                    
                    {
                        this$1 = _cls8.this;
                        super($anonymous0);
                    }
                }
).schedule();
            }

            protected boolean updateSelection(IStructuredSelection selection)
            {
                int indexCount = 0;
                for(Iterator iterator = getSelectedRepositoryNodes(selection.toList()).iterator(); iterator.hasNext();)
                {
                    AbstractIndexedRepositoryNode node = (AbstractIndexedRepositoryNode)iterator.next();
                    if((node instanceof LocalRepositoryNode) || node.isEnabledIndex())
                        indexCount++;
                }

                if(indexCount > 1)
                    setText(Messages.MavenRepositoryView_rebuild_many);
                else
                    setText(Messages.MavenRepositoryView_rebuild_one);
                return indexCount > 0;
            }

            final MavenRepositoryView this$0;


            
            {
                this$0 = MavenRepositoryView.this;
                super($anonymous0);
            }
        }
;
        rebuildAction.setToolTipText(Messages.MavenRepositoryView_action_rebuild_tooltip);
        rebuildAction.setImageDescriptor(MavenImages.REBUILD_INDEX);
        disableAction = new DisableIndexAction();
        disableAction.setToolTipText(Messages.MavenRepositoryView_action_disable_tooltip);
        disableAction.setImageDescriptor(MavenImages.REBUILD_INDEX);
        enableMinAction = new EnableMinIndexAction();
        enableMinAction.setToolTipText(Messages.MavenRepositoryView_action_enable_tooltip);
        enableMinAction.setImageDescriptor(MavenImages.REBUILD_INDEX);
        enableFullAction = new EnableFullIndexAction();
        enableFullAction.setToolTipText(Messages.MavenRepositoryView_action_enableFull_tooltip);
        enableFullAction.setImageDescriptor(MavenImages.REBUILD_INDEX);
        openPomAction = new BaseSelectionListenerAction(Messages.MavenRepositoryView_action_open) {

            public void run()
            {
                org.eclipse.jface.viewers.ISelection selection = viewer.getSelection();
                Object element = ((IStructuredSelection)selection).getFirstElement();
                if(element instanceof IndexedArtifactFileNode)
                {
                    IndexedArtifactFile f = ((IndexedArtifactFileNode)element).getIndexedArtifactFile();
                    OpenPomAction.openEditor(f.group, f.artifact, f.version, null);
                }
            }

            protected boolean updateSelection(IStructuredSelection selection)
            {
                return selection.getFirstElement() instanceof IndexedArtifactFile;
            }

            final MavenRepositoryView this$0;

            
            {
                this$0 = MavenRepositoryView.this;
                super($anonymous0);
            }
        }
;
        openPomAction.setToolTipText(Messages.MavenRepositoryView_action_open_tooltip);
        openPomAction.setImageDescriptor(MavenImages.POM);
        copyUrlAction = new BaseSelectionListenerAction(Messages.MavenRepositoryView_action_copy) {

            public void run()
            {
                Object element = getStructuredSelection().getFirstElement();
                String url = null;
                if(element instanceof RepositoryNode)
                    url = ((RepositoryNode)element).getRepositoryUrl();
                else
                if(element instanceof IndexedArtifactGroup)
                {
                    IndexedArtifactGroup group = (IndexedArtifactGroup)element;
                    String repositoryUrl = group.getRepository().getUrl();
                    if(!repositoryUrl.endsWith("/"))
                        repositoryUrl = (new StringBuilder(String.valueOf(repositoryUrl))).append("/").toString();
                    url = (new StringBuilder(String.valueOf(repositoryUrl))).append(group.getPrefix().replace('.', '/')).toString();
                } else
                if(!(element instanceof IndexedArtifact))
                {
                    boolean _tmp = element instanceof IndexedArtifactFile;
                }
                if(url != null)
                {
                    Clipboard clipboard = new Clipboard(Display.getCurrent());
                    clipboard.setContents(new String[] {
                        url
                    }, new Transfer[] {
                        TextTransfer.getInstance()
                    });
                    clipboard.dispose();
                }
            }

            protected boolean updateSelection(IStructuredSelection selection)
            {
                Object element = selection.getFirstElement();
                return element instanceof RepositoryNode;
            }

            final MavenRepositoryView this$0;

            
            {
                this$0 = MavenRepositoryView.this;
                super($anonymous0);
            }
        }
;
        copyUrlAction.setToolTipText(Messages.MavenRepositoryView_action_copy_tooltip);
        copyUrlAction.setImageDescriptor(PlatformUI.getWorkbench().getSharedImages().getImageDescriptor("IMG_TOOL_COPY"));
        viewer.addSelectionChangedListener(openPomAction);
        viewer.addSelectionChangedListener(updateAction);
        viewer.addSelectionChangedListener(disableAction);
        viewer.addSelectionChangedListener(enableMinAction);
        viewer.addSelectionChangedListener(enableFullAction);
        viewer.addSelectionChangedListener(rebuildAction);
        viewer.addSelectionChangedListener(copyUrlAction);
    }

    protected void setIndexDetails(AbstractIndexedRepositoryNode node, String details)
    {
        if(node != null && node.getIndex() != null)
            try
            {
                node.getIndex().setIndexDetails(details);
            }
            catch(CoreException ex)
            {
                M2EUIUtils.showErrorDialog(getViewSite().getShell(), Messages.MavenRepositoryView_error_title, Messages.MavenRepositoryView_error_message, ex);
            }
    }

    protected AbstractIndexedRepositoryNode getSelectedRepositoryNode(IStructuredSelection selection)
    {
        List elements = selection.toList();
        if(elements.size() != 1)
        {
            return null;
        } else
        {
            Object element = elements.get(0);
            return (element instanceof AbstractIndexedRepositoryNode) ? (AbstractIndexedRepositoryNode)element : null;
        }
    }

    public void dispose()
    {
        viewer.removeSelectionChangedListener(copyUrlAction);
        viewer.removeSelectionChangedListener(rebuildAction);
        viewer.removeSelectionChangedListener(disableAction);
        viewer.removeSelectionChangedListener(enableMinAction);
        viewer.removeSelectionChangedListener(enableFullAction);
        viewer.removeSelectionChangedListener(updateAction);
        viewer.removeSelectionChangedListener(openPomAction);
        indexManager.removeIndexListener(indexListener);
        super.dispose();
    }

    void refreshView()
    {
        Display.getDefault().asyncExec(new Runnable() {

            public void run()
            {
                Object expandedElems[] = viewer.getExpandedElements();
                if(!viewer.getControl().isDisposed())
                {
                    viewer.setInput(getViewSite());
                    if(expandedElems != null && expandedElems.length > 0)
                        viewer.setExpandedElements(expandedElems);
                }
            }

            final MavenRepositoryView this$0;

            
            {
                this$0 = MavenRepositoryView.this;
                super();
            }
        }
);
    }

    private static final String MENU_OPEN_GRP = "open";
    private static final String MENU_UPDATE_GRP = "update";
    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/views/MavenRepositoryView);
    private static final String ENABLE_FULL;
    private static final String ENABLED_FULL;
    private static final String DISABLE_DETAILS;
    private static final String DISABLED_DETAILS;
    private static final String ENABLE_MIN;
    private static final String ENABLED_MIN;
    private static final String MENU_ID = ".repositoryViewMenu";
    private IndexManager indexManager;
    private IAction collapseAllAction;
    private IAction reloadSettings;
    BaseSelectionListenerAction openPomAction;
    private BaseSelectionListenerAction updateAction;
    private BaseSelectionListenerAction rebuildAction;
    private DisableIndexAction disableAction;
    private EnableMinIndexAction enableMinAction;
    private EnableFullIndexAction enableFullAction;
    private BaseSelectionListenerAction copyUrlAction;
    TreeViewer viewer;
    private RepositoryViewContentProvider contentProvider;
    private DrillDownAdapter drillDownAdapter;
    private IndexListener indexListener;

    static 
    {
        ENABLE_FULL = Messages.MavenRepositoryView_enable_full;
        ENABLED_FULL = Messages.MavenRepositoryView_enabled_full;
        DISABLE_DETAILS = Messages.MavenRepositoryView_disable_details;
        DISABLED_DETAILS = Messages.MavenRepositoryView_details_disabled;
        ENABLE_MIN = Messages.MavenRepositoryView_enable_minimum;
        ENABLED_MIN = Messages.MavenRepositoryView_minimum_enabled;
    }









}
