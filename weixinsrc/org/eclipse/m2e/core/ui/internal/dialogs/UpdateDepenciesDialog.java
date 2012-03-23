// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   UpdateDepenciesDialog.java

package org.eclipse.m2e.core.ui.internal.dialogs;

import java.io.File;
import java.util.*;
import org.eclipse.core.resources.*;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.action.*;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.TitleAreaDialog;
import org.eclipse.jface.viewers.*;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.IMavenConfiguration;
import org.eclipse.m2e.core.ui.internal.MavenImages;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UpdateDepenciesDialog extends TitleAreaDialog
    implements IMenuListener
{

    public UpdateDepenciesDialog(Shell parentShell, IProject initialSelection[])
    {
        super(parentShell);
        selectTree = new Action(Messages.UpdateDepenciesDialog_selectTree) {

            public void run()
            {
                codebaseViewer.setSubtreeChecked(getSelection(), true);
            }

            final UpdateDepenciesDialog this$0;

            
            {
                this$0 = UpdateDepenciesDialog.this;
                super($anonymous0);
            }
        }
;
        deselectTree = new Action(Messages.UpdateDepenciesDialog_deselectTree) {

            public void run()
            {
                codebaseViewer.setSubtreeChecked(getSelection(), false);
            }

            final UpdateDepenciesDialog this$0;

            
            {
                this$0 = UpdateDepenciesDialog.this;
                super($anonymous0);
            }
        }
;
        this.initialSelection = initialSelection;
        offlineMode = MavenPlugin.getMavenConfiguration().isOffline();
        forceUpdate = false;
    }

    protected void configureShell(Shell shell)
    {
        super.configureShell(shell);
        shell.setText(Messages.UpdateDepenciesDialog_title);
    }

    protected Control createDialogArea(Composite parent)
    {
        Composite area = (Composite)super.createDialogArea(parent);
        Composite container = new Composite(area, 0);
        GridLayout layout = new GridLayout(2, false);
        layout.marginLeft = 12;
        container.setLayout(layout);
        container.setLayoutData(new GridData(1808));
        Label lblAvailable = new Label(container, 0);
        lblAvailable.setText(Messages.UpdateDepenciesDialog_availableCodebasesLabel);
        lblAvailable.setLayoutData(new GridData(16384, 0x1000000, true, false, 2, 1));
        codebaseViewer = new CheckboxTreeViewer(container, 2048);
        codebaseViewer.setContentProvider(new ITreeContentProvider() {

            public void dispose()
            {
            }

            public void inputChanged(Viewer viewer1, Object obj, Object obj1)
            {
            }

            public Object[] getElements(Object element)
            {
                if(element instanceof Collection)
                    return ((Collection)element).toArray();
                else
                    return null;
            }

            public Object[] getChildren(Object parentElement)
            {
                if(parentElement instanceof IProject)
                {
                    String elePath = (new StringBuilder(String.valueOf((new File(((IProject)parentElement).getLocationURI())).toString()))).append(UpdateDepenciesDialog.SEPARATOR).toString();
                    String prevPath = null;
                    List children = new ArrayList();
                    for(Iterator iterator = projectPaths.iterator(); iterator.hasNext();)
                    {
                        String path = (String)iterator.next();
                        if(path.length() != elePath.length() && path.startsWith(elePath) && (prevPath == null || !path.startsWith(prevPath)))
                        {
                            prevPath = path;
                            children.add(getProject(path));
                        }
                    }

                    return children.toArray();
                }
                if(parentElement instanceof Collection)
                    return ((Collection)parentElement).toArray();
                else
                    return null;
            }

            public Object getParent(Object element)
            {
                String elePath = (new StringBuilder(String.valueOf((new File(((IProject)element).getLocationURI())).toString()))).append(UpdateDepenciesDialog.SEPARATOR).toString();
                String prevPath = null;
                for(Iterator iterator = projectPaths.iterator(); iterator.hasNext();)
                {
                    String path = (String)iterator.next();
                    if(elePath.length() != path.length() && elePath.startsWith(path) && (prevPath == null || prevPath.length() < path.length()))
                        prevPath = path;
                }

                return prevPath != null ? getProject(prevPath) : projects;
            }

            public boolean hasChildren(Object element)
            {
                if(element instanceof IProject)
                {
                    String elePath = (new StringBuilder(String.valueOf((new File(((IProject)element).getLocationURI())).toString()))).append(UpdateDepenciesDialog.SEPARATOR).toString();
                    for(Iterator iterator = projectPaths.iterator(); iterator.hasNext();)
                    {
                        String path = (String)iterator.next();
                        if(elePath.length() != path.length() && path.startsWith(elePath))
                            return true;
                    }

                } else
                if(element instanceof Collection)
                    return !((Collection)element).isEmpty();
                return false;
            }

            final UpdateDepenciesDialog this$0;

            
            {
                this$0 = UpdateDepenciesDialog.this;
                super();
            }
        }
);
        codebaseViewer.setLabelProvider(new LabelProvider() {

            public Image getImage(Object element)
            {
                return MavenImages.createOverlayImage("project-mlabel.gif", PlatformUI.getWorkbench().getSharedImages().getImage("IMG_OBJ_PROJECT"), MavenImages.MAVEN_OVERLAY, 0);
            }

            public String getText(Object element)
            {
                return (element instanceof IProject) ? ((IProject)element).getName() : "";
            }

            final UpdateDepenciesDialog this$0;

            
            {
                this$0 = UpdateDepenciesDialog.this;
                super();
            }
        }
);
        projects = getMavenCodebases();
        codebaseViewer.setInput(projects);
        codebaseViewer.expandAll();
        IProject aiproject[];
        int j = (aiproject = initialSelection).length;
        for(int i = 0; i < j; i++)
        {
            IProject project = aiproject[i];
            codebaseViewer.setSubtreeChecked(project, true);
        }

        if(initialSelection.length > 0)
            codebaseViewer.reveal(initialSelection[0]);
        Tree tree = codebaseViewer.getTree();
        GridData gd = new GridData(4, 4, true, true, 1, 4);
        gd.heightHint = 300;
        gd.widthHint = 300;
        tree.setLayoutData(gd);
        Button selectAllBtn = new Button(container, 0);
        selectAllBtn.setLayoutData(new GridData(4, 0x1000000, false, false, 1, 1));
        selectAllBtn.setText(Messages.UpdateDepenciesDialog_selectAll);
        selectAllBtn.addSelectionListener(new SelectionListener() {

            public void widgetSelected(SelectionEvent e)
            {
                IProject project;
                for(Iterator iterator = projects.iterator(); iterator.hasNext(); codebaseViewer.setSubtreeChecked(project, true))
                    project = (IProject)iterator.next();

            }

            public void widgetDefaultSelected(SelectionEvent selectionevent)
            {
            }

            final UpdateDepenciesDialog this$0;

            
            {
                this$0 = UpdateDepenciesDialog.this;
                super();
            }
        }
);
        Button deselectAllBtn = new Button(container, 0);
        deselectAllBtn.setLayoutData(new GridData(4, 128, false, false, 1, 1));
        deselectAllBtn.setText(Messages.UpdateDepenciesDialog_deselectAll);
        deselectAllBtn.addSelectionListener(new SelectionListener() {

            public void widgetSelected(SelectionEvent e)
            {
                IProject project;
                for(Iterator iterator = projects.iterator(); iterator.hasNext(); codebaseViewer.setSubtreeChecked(project, false))
                    project = (IProject)iterator.next();

            }

            public void widgetDefaultSelected(SelectionEvent selectionevent)
            {
            }

            final UpdateDepenciesDialog this$0;

            
            {
                this$0 = UpdateDepenciesDialog.this;
                super();
            }
        }
);
        Button expandAllBtn = new Button(container, 0);
        expandAllBtn.setLayoutData(new GridData(4, 1024, false, true, 1, 1));
        expandAllBtn.setText(Messages.UpdateDepenciesDialog_expandAll);
        expandAllBtn.addSelectionListener(new SelectionListener() {

            public void widgetSelected(SelectionEvent e)
            {
                codebaseViewer.expandAll();
            }

            public void widgetDefaultSelected(SelectionEvent selectionevent)
            {
            }

            final UpdateDepenciesDialog this$0;

            
            {
                this$0 = UpdateDepenciesDialog.this;
                super();
            }
        }
);
        Button collapseAllBtn = new Button(container, 0);
        collapseAllBtn.setLayoutData(new GridData(4, 1024, false, false, 1, 1));
        collapseAllBtn.setText(Messages.UpdateDepenciesDialog_collapseAll);
        collapseAllBtn.addSelectionListener(new SelectionListener() {

            public void widgetSelected(SelectionEvent e)
            {
                codebaseViewer.collapseAll();
            }

            public void widgetDefaultSelected(SelectionEvent selectionevent)
            {
            }

            final UpdateDepenciesDialog this$0;

            
            {
                this$0 = UpdateDepenciesDialog.this;
                super();
            }
        }
);
        offlineModeBtn = new Button(container, 32);
        offlineModeBtn.setText(Messages.UpdateDepenciesDialog_offline);
        offlineModeBtn.setLayoutData(new GridData(16384, 0x1000000, true, false, 2, 1));
        offlineModeBtn.setSelection(offlineMode);
        forceUpdateBtn = new Button(container, 32);
        forceUpdateBtn.setText(Messages.UpdateDepenciesDialog_forceUpdate);
        forceUpdateBtn.setLayoutData(new GridData(16384, 0x1000000, true, false, 2, 1));
        forceUpdateBtn.setSelection(forceUpdate);
        setTitle(Messages.UpdateDepenciesDialog_title);
        setMessage(Messages.UpdateDepenciesDialog_dialogMessage);
        createMenu();
        return area;
    }

    protected void createButtonsForButtonBar(Composite parent)
    {
        createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
    }

    protected void okPressed()
    {
        Object obj[] = codebaseViewer.getCheckedElements();
        IProject projects[] = new IProject[obj.length];
        for(int i = 0; i < obj.length; i++)
            projects[i] = (IProject)obj[i];

        selectedProjects = projects;
        offlineMode = offlineModeBtn.getSelection();
        forceUpdate = forceUpdateBtn.getSelection();
        super.okPressed();
    }

    private Collection getMavenCodebases()
    {
        projectPaths = new LinkedList();
        IProject aiproject[];
        int j = (aiproject = ResourcesPlugin.getWorkspace().getRoot().getProjects()).length;
        for(int i = 0; i < j; i++)
        {
            IProject project = aiproject[i];
            try
            {
                if(project.isAccessible() && project.hasNature("org.eclipse.m2e.core.maven2Nature"))
                {
                    java.net.URI locationURI = project.getLocationURI();
                    if(locationURI != null)
                        projectPaths.add((new StringBuilder(String.valueOf((new File(locationURI)).toString()))).append(SEPARATOR).toString());
                }
            }
            catch(CoreException ex)
            {
                log.error(ex.getMessage(), ex);
            }
        }

        Collections.sort(projectPaths);
        if(projectPaths.isEmpty())
            return Collections.emptyList();
        projects = new ArrayList();
        String previous = (String)projectPaths.get(0);
        addProject(projects, previous);
        for(Iterator iterator = projectPaths.iterator(); iterator.hasNext();)
        {
            String path = (String)iterator.next();
            if(!path.startsWith(previous))
            {
                previous = path;
                projects.add(getProject(path));
            }
        }

        return projects;
    }

    private static void addProject(Collection projects, String location)
    {
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        org.eclipse.core.resources.IContainer aicontainer[];
        int j = (aicontainer = root.findContainersForLocationURI((new File(location)).toURI())).length;
        for(int i = 0; i < j; i++)
        {
            org.eclipse.core.resources.IContainer container = aicontainer[i];
            if(!(container instanceof IProject))
                continue;
            projects.add((IProject)container);
            break;
        }

    }

    public IProject[] getSelectedProjects()
    {
        return selectedProjects;
    }

    public boolean isOffline()
    {
        return offlineMode;
    }

    public boolean isForceUpdate()
    {
        return forceUpdate;
    }

    private IProject getProject(String path)
    {
        org.eclipse.core.resources.IContainer containers[] = ResourcesPlugin.getWorkspace().getRoot().findContainersForLocationURI((new File(path)).toURI());
        org.eclipse.core.resources.IContainer aicontainer[];
        int j = (aicontainer = containers).length;
        for(int i = 0; i < j; i++)
        {
            org.eclipse.core.resources.IContainer container = aicontainer[i];
            if(container instanceof IProject)
                return (IProject)container;
        }

        return null;
    }

    private void createMenu()
    {
        MenuManager menuMgr = new MenuManager();
        org.eclipse.swt.widgets.Menu contextMenu = menuMgr.createContextMenu(codebaseViewer.getControl());
        menuMgr.addMenuListener(this);
        codebaseViewer.getControl().setMenu(contextMenu);
        menuMgr.setRemoveAllWhenShown(true);
    }

    private IProject getSelection()
    {
        ISelection selection = codebaseViewer.getSelection();
        if(selection instanceof IStructuredSelection)
            return (IProject)((IStructuredSelection)selection).getFirstElement();
        else
            return null;
    }

    public void menuAboutToShow(IMenuManager manager)
    {
        if(codebaseViewer.getSelection().isEmpty())
            return;
        if(codebaseViewer.getSelection() instanceof IStructuredSelection)
        {
            manager.add(selectTree);
            manager.add(deselectTree);
        }
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/dialogs/UpdateDepenciesDialog);
    private static final String SEPARATOR = System.getProperty("file.separator");
    private CheckboxTreeViewer codebaseViewer;
    private Collection projects;
    private Button offlineModeBtn;
    private Button forceUpdateBtn;
    private List projectPaths;
    private final IProject initialSelection[];
    private IProject selectedProjects[];
    private boolean offlineMode;
    private boolean forceUpdate;
    private final Action selectTree;
    private final Action deselectTree;







}
