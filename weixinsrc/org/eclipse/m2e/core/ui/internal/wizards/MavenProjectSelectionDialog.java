// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenProjectSelectionDialog.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.resources.*;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.Path;
import org.eclipse.jface.viewers.*;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.dialogs.AbstractMavenDialog;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.dialogs.FilteredTree;
import org.eclipse.ui.dialogs.PatternFilter;
import org.eclipse.ui.model.WorkbenchLabelProvider;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class MavenProjectSelectionDialog extends AbstractMavenDialog
{
    protected static class MavenContainerContentProvider
        implements ITreeContentProvider
    {

        public Object[] getChildren(Object parent)
        {
            if(parent instanceof IWorkspace)
            {
                IProject projects[] = ((IWorkspace)parent).getRoot().getProjects();
                List children = new ArrayList();
                IProject aiproject[];
                int k = (aiproject = projects).length;
                for(int j = 0; j < k; j++)
                {
                    IProject project = aiproject[j];
                    try
                    {
                        if(project.isOpen() && project.hasNature("org.eclipse.m2e.core.maven2Nature"))
                            children.add(project);
                    }
                    catch(CoreException e)
                    {
                        MavenProjectSelectionDialog.log.error((new StringBuilder("Error checking project: ")).append(e.getMessage()).toString(), e);
                    }
                }

                return children.toArray();
            }
            if(parent instanceof IContainer)
            {
                IContainer container = (IContainer)parent;
                if(container.isAccessible())
                    try
                    {
                        List children = new ArrayList();
                        IResource members[] = container.members();
                        for(int i = 0; i < members.length; i++)
                            if((members[i] instanceof IContainer) && ((IContainer)members[i]).exists(new Path("pom.xml")))
                                children.add(members[i]);

                        return children.toArray();
                    }
                    catch(CoreException e)
                    {
                        MavenProjectSelectionDialog.log.error((new StringBuilder("Error checking container: ")).append(e.getMessage()).toString(), e);
                    }
            }
            return new Object[0];
        }

        public Object getParent(Object element)
        {
            if(element instanceof IResource)
                return ((IResource)element).getParent();
            else
                return null;
        }

        public boolean hasChildren(Object element)
        {
            return getChildren(element).length > 0;
        }

        public void dispose()
        {
        }

        public void inputChanged(Viewer viewer1, Object obj, Object obj1)
        {
        }

        public Object[] getElements(Object element)
        {
            return getChildren(element);
        }

        protected MavenContainerContentProvider()
        {
        }
    }


    public MavenProjectSelectionDialog(Shell parent, boolean useCheckboxTree)
    {
        this(parent);
        this.useCheckboxTree = useCheckboxTree;
    }

    public MavenProjectSelectionDialog(Shell parent)
    {
        super(parent, DIALOG_SETTINGS);
        setShellStyle(getShellStyle() | 0x10);
        setTitle(Messages.projectSelectionDialogTitle);
    }

    protected void computeResult()
    {
        if(useCheckboxTree)
        {
            List result = new ArrayList();
            collectCheckedItems(getViewer().getTree().getItems(), result);
            setResult(result);
        } else
        {
            setResult(((IStructuredSelection)getViewer().getSelection()).toList());
        }
    }

    private void collectCheckedItems(TreeItem items[], List list)
    {
        TreeItem atreeitem[];
        int j = (atreeitem = items).length;
        for(int i = 0; i < j; i++)
        {
            TreeItem item = atreeitem[i];
            if(item.getChecked())
            {
                Object data = item.getData();
                if(data != null)
                    list.add(data);
            }
            collectCheckedItems(item.getItems(), list);
        }

    }

    protected Control createDialogArea(Composite parent)
    {
        readSettings();
        Composite composite = (Composite)super.createDialogArea(parent);
        filteredTree = new FilteredTree(composite, 0x800 | (useCheckboxTree ? 0x20 : 0), new PatternFilter(), true);
        filteredTree.setLayoutData(new GridData(4, 4, true, true));
        getViewer().setContentProvider(new MavenContainerContentProvider());
        getViewer().setLabelProvider(WorkbenchLabelProvider.getDecoratingWorkbenchLabelProvider());
        getViewer().setInput(ResourcesPlugin.getWorkspace());
        getViewer().addDoubleClickListener(new IDoubleClickListener() {

            public void doubleClick(DoubleClickEvent event)
            {
                okPressed();
            }

            final MavenProjectSelectionDialog this$0;

            
            {
                this$0 = MavenProjectSelectionDialog.this;
                super();
            }
        }
);
        return composite;
    }

    protected void okPressed()
    {
        super.okPressed();
    }

    protected TreeViewer getViewer()
    {
        return filteredTree.getViewer();
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/wizards/MavenProjectSelectionDialog);
    protected static final String DIALOG_SETTINGS = org/eclipse/m2e/core/ui/internal/wizards/MavenProjectSelectionDialog.getName();
    protected static final long SEARCH_DELAY = 500L;
    private FilteredTree filteredTree;
    private boolean useCheckboxTree;


}
