// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   WorkingSetGroup.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.util.*;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.resource.*;
import org.eclipse.jface.viewers.*;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.*;
import org.eclipse.ui.dialogs.IWorkingSetSelectionDialog;

public class WorkingSetGroup
{

    public WorkingSetGroup(Composite container, List workingSets, Shell shell)
    {
        this.workingSets = workingSets;
        this.shell = shell;
        createControl(container);
    }

    private void createControl(Composite container)
    {
        addToWorkingSetButton = new Button(container, 32);
        GridData gd_addToWorkingSetButton = new GridData(16384, 0x1000000, false, false, 3, 1);
        gd_addToWorkingSetButton.verticalIndent = 12;
        addToWorkingSetButton.setLayoutData(gd_addToWorkingSetButton);
        addToWorkingSetButton.setSelection(true);
        addToWorkingSetButton.setData("name", "addToWorkingSetButton");
        addToWorkingSetButton.setText(Messages.WorkingSetGroup_btnAddSet);
        addToWorkingSetButton.setSelection(false);
        final Label workingsetLabel = new Label(container, 0);
        GridData gd_workingsetLabel = new GridData();
        gd_workingsetLabel.horizontalIndent = 10;
        workingsetLabel.setLayoutData(gd_workingsetLabel);
        workingsetLabel.setEnabled(false);
        workingsetLabel.setData("name", "workingsetLabel");
        workingsetLabel.setText(Messages.WorkingSetGroup_lblSet);
        Combo workingsetCombo = new Combo(container, 8);
        workingsetCombo.setEnabled(false);
        workingsetCombo.setData("name", "workingsetCombo");
        workingsetCombo.setLayoutData(new GridData(4, 0x1000000, true, false));
        workingsetComboViewer = new ComboViewer(workingsetCombo);
        workingsetComboViewer.setContentProvider(new IStructuredContentProvider() {

            public Object[] getElements(Object input)
            {
                if(input instanceof IWorkingSet[])
                    return (IWorkingSet[])input;
                if(input instanceof List)
                    return (new Object[] {
                        input
                    });
                if(input instanceof Set)
                    return ((Set)input).toArray();
                else
                    return new IWorkingSet[0];
            }

            public void inputChanged(Viewer viewer1, Object obj, Object obj1)
            {
            }

            public void dispose()
            {
            }

            final WorkingSetGroup this$0;

            
            {
                this$0 = WorkingSetGroup.this;
                super();
            }
        }
);
        workingsetComboViewer.setLabelProvider(new LabelProvider() {

            public Image getImage(Object element)
            {
                if(element instanceof IWorkingSet)
                {
                    org.eclipse.jface.resource.ImageDescriptor imageDescriptor = ((IWorkingSet)element).getImage();
                    if(imageDescriptor != null)
                        try
                        {
                            return (Image)images.create(imageDescriptor);
                        }
                        catch(DeviceResourceException _ex)
                        {
                            return null;
                        }
                }
                return super.getImage(element);
            }

            public String getText(Object element)
            {
                if(element instanceof IWorkingSet)
                    return ((IWorkingSet)element).getLabel();
                if(element instanceof List)
                {
                    StringBuffer sb = new StringBuffer();
                    for(Iterator iterator = ((List)element).iterator(); iterator.hasNext();)
                    {
                        Object o = iterator.next();
                        if(o instanceof IWorkingSet)
                        {
                            if(sb.length() > 0)
                                sb.append(", ");
                            sb.append(((IWorkingSet)o).getLabel());
                        }
                    }

                    return sb.toString();
                } else
                {
                    return super.getText(element);
                }
            }

            public void dispose()
            {
                images.dispose();
                super.dispose();
            }

            private ResourceManager images;
            final WorkingSetGroup this$0;

            
            {
                this$0 = WorkingSetGroup.this;
                super();
                images = new LocalResourceManager(JFaceResources.getResources());
            }
        }
);
        workingsetComboViewer.setComparator(new ViewerComparator());
        final Button newWorkingSetButton = new Button(container, 0);
        newWorkingSetButton.setLayoutData(new GridData(4, 0x1000000, false, false));
        newWorkingSetButton.setData("name", "configureButton");
        newWorkingSetButton.setText(Messages.WorkingSetGroup_btnMore);
        newWorkingSetButton.setEnabled(false);
        newWorkingSetButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                IWorkingSetManager workingSetManager = PlatformUI.getWorkbench().getWorkingSetManager();
                IWorkingSetSelectionDialog dialog = workingSetManager.createWorkingSetSelectionDialog(shell, true, (String[])WorkingSetGroup.WORKING_SET_IDS.toArray(new String[0]));
                if(dialog.open() == 0)
                {
                    IWorkingSet workingSets[] = dialog.getSelection();
                    selectWorkingSets(Arrays.asList(workingSets));
                }
            }

            final WorkingSetGroup this$0;

            
            {
                this$0 = WorkingSetGroup.this;
                super();
            }
        }
);
        if(selectWorkingSets(workingSets))
        {
            addToWorkingSetButton.setSelection(true);
            workingsetLabel.setEnabled(true);
            workingsetComboViewer.getCombo().setEnabled(true);
            newWorkingSetButton.setEnabled(true);
        }
        addToWorkingSetButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                boolean addToWorkingingSet = addToWorkingSetButton.getSelection();
                workingsetLabel.setEnabled(addToWorkingingSet);
                workingsetComboViewer.getCombo().setEnabled(addToWorkingingSet);
                newWorkingSetButton.setEnabled(addToWorkingingSet);
                if(addToWorkingingSet)
                    updateConfiguration();
                else
                    workingSets.clear();
            }

            final WorkingSetGroup this$0;
            private final Label val$workingsetLabel;
            private final Button val$newWorkingSetButton;

            
            {
                this$0 = WorkingSetGroup.this;
                workingsetLabel = label;
                newWorkingSetButton = button;
                super();
            }
        }
);
        workingsetComboViewer.addSelectionChangedListener(new ISelectionChangedListener() {

            public void selectionChanged(SelectionChangedEvent event)
            {
                updateConfiguration();
            }

            final WorkingSetGroup this$0;

            
            {
                this$0 = WorkingSetGroup.this;
                super();
            }
        }
);
    }

    protected void updateConfiguration()
    {
        if(addToWorkingSetButton.getSelection())
        {
            IStructuredSelection selection = (IStructuredSelection)workingsetComboViewer.getSelection();
            Object o = selection.getFirstElement();
            if(o != null)
            {
                workingSets.clear();
                if(o instanceof IWorkingSet)
                    workingSets.add((IWorkingSet)o);
                else
                if(o instanceof List)
                {
                    List l = (List)o;
                    workingSets.addAll(l);
                }
            }
        }
    }

    Set getWorkingSets()
    {
        Set workingSets = new HashSet();
        IWorkingSetManager workingSetManager = PlatformUI.getWorkbench().getWorkingSetManager();
        IWorkingSet aiworkingset[];
        int j = (aiworkingset = workingSetManager.getWorkingSets()).length;
        for(int i = 0; i < j; i++)
        {
            IWorkingSet workingSet = aiworkingset[i];
            if(!workingSet.isEmpty())
            {
                IAdaptable elements[] = workingSet.getElements();
                IResource resource = (IResource)elements[0].getAdapter(org/eclipse/core/resources/IResource);
                if(resource != null)
                    workingSets.add(workingSet);
            } else
            if(WORKING_SET_IDS.contains(workingSet.getId()))
                workingSets.add(workingSet);
        }

        return workingSets;
    }

    public void dispose()
    {
        workingsetComboViewer.getLabelProvider().dispose();
    }

    protected boolean selectWorkingSets(List workingSets)
    {
        Set defaultSets = getWorkingSets();
        workingsetComboViewer.setInput(defaultSets);
        if(workingSets != null && workingSets.size() > 0)
        {
            if(workingSets.size() == 1)
            {
                IWorkingSet workingSet = (IWorkingSet)workingSets.get(0);
                if(defaultSets.contains(workingSet))
                    workingsetComboViewer.setSelection(new StructuredSelection(workingSet));
            } else
            {
                workingsetComboViewer.add(workingSets);
                workingsetComboViewer.setSelection(new StructuredSelection(workingSets));
            }
            return true;
        } else
        {
            return false;
        }
    }

    static final List WORKING_SET_IDS = Arrays.asList(new String[] {
        "org.eclipse.ui.resourceWorkingSetPage", "org.eclipse.jdt.ui.JavaWorkingSetPage"
    });
    ComboViewer workingsetComboViewer;
    Button addToWorkingSetButton;
    final List workingSets;
    final Shell shell;

}
