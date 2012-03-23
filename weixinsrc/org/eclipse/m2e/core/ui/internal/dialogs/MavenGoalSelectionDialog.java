// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenGoalSelectionDialog.java

package org.eclipse.m2e.core.ui.internal.dialogs;

import java.util.*;
import org.eclipse.core.runtime.*;
import org.eclipse.jface.viewers.*;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.internal.index.*;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.events.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.dialogs.ElementTreeSelectionDialog;
import org.eclipse.ui.dialogs.ISelectionStatusValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class MavenGoalSelectionDialog extends ElementTreeSelectionDialog
{
    public static class Entry
    {

        public String getName()
        {
            return prefix != null ? (new StringBuilder(String.valueOf(prefix))).append(":").append(name).toString() : name;
        }

        public String getQualifiedName()
        {
            return prefix != null ? (new StringBuilder(String.valueOf(f.group))).append(":").append(f.artifact).append(":").append(f.version).append(":").append(name).toString() : name;
        }

        public final String prefix;
        public final String name;
        private final IndexedArtifactFile f;

        public Entry(String name, String prefix, IndexedArtifactFile f)
        {
            this.prefix = prefix;
            this.name = name;
            this.f = f;
        }
    }

    static class GoalsContentProvider
        implements ITreeContentProvider
    {

        private List getLifecyclePhases(List phases)
        {
            List entries = new ArrayList();
            for(int i = 0; i < phases.size(); i++)
                entries.add(new Entry((String)phases.get(i), null, null));

            return entries;
        }

        public Object[] getElements(Object inputElement)
        {
            return groups.toArray();
        }

        public Object[] getChildren(Object parent)
        {
            if(parent instanceof Group)
                return ((Group)parent).entries.toArray();
            else
                return EMPTY;
        }

        public boolean hasChildren(Object element)
        {
            return element instanceof Group;
        }

        public Object getParent(Object element)
        {
            return null;
        }

        public void inputChanged(Viewer viewer1, Object obj, Object obj1)
        {
        }

        public void dispose()
        {
        }

        private static Object EMPTY[] = new Object[0];
        private final List groups = new ArrayList();


        public GoalsContentProvider()
        {
            IndexManager indexManager = MavenPlugin.getIndexManager();
            try
            {
                Map result = indexManager.getAllIndexes().search(null, "plugin");
                TreeMap map = new TreeMap();
                for(Iterator iterator = result.values().iterator(); iterator.hasNext();)
                {
                    IndexedArtifact a = (IndexedArtifact)iterator.next();
                    IndexedArtifactFile f = (IndexedArtifactFile)a.getFiles().iterator().next();
                    if(f.prefix != null && f.prefix.length() > 0 && f.goals != null)
                    {
                        List goals = new ArrayList();
                        for(Iterator iterator1 = f.goals.iterator(); iterator1.hasNext();)
                        {
                            String goal = (String)iterator1.next();
                            if(goal.length() > 0)
                                goals.add(new Entry(goal, f.prefix, f));
                        }

                        if(goals.size() > 0)
                            map.put((new StringBuilder(String.valueOf(f.prefix))).append(":").append(f.group).toString(), new Group(f.prefix, f.group, f.artifact, goals));
                    }
                }

                groups.addAll(map.values());
            }
            catch(CoreException e)
            {
                MavenGoalSelectionDialog.log.error(e.getMessage(), e);
            }
        }
    }

    static class GoalsFilter extends ViewerFilter
    {

        public boolean select(Viewer viewer, Object parentElement, Object element)
        {
            if(filter == null || filter.trim().length() == 0)
                return true;
            if(element instanceof Group)
            {
                Group g = (Group)element;
                if(g.name.indexOf(filter) > -1)
                    return true;
                for(Iterator it = g.entries.iterator(); it.hasNext();)
                {
                    Entry e = (Entry)it.next();
                    if(e.name.indexOf(filter) > -1)
                        return true;
                }

            } else
            if(element instanceof Entry)
            {
                Entry e = (Entry)element;
                return e.name.indexOf(filter) > -1 || e.prefix != null && e.prefix.indexOf(filter) > -1;
            }
            return false;
        }

        public void setFilter(String filter)
        {
            this.filter = filter;
        }

        private String filter;

        GoalsFilter()
        {
        }
    }

    static class GoalsLabelProvider extends LabelProvider
    {

        public String getText(Object element)
        {
            if(element instanceof Group)
            {
                Group g = (Group)element;
                if(g.groupId == null)
                    return g.name;
                else
                    return (new StringBuilder(String.valueOf(g.name))).append(" - ").append(g.groupId).append(":").append(g.artifactId).toString();
            }
            if(element instanceof Entry)
                return ((Entry)element).name;
            else
                return super.getText(element);
        }

        GoalsLabelProvider()
        {
        }
    }

    static class GoalsSelectionValidator
        implements ISelectionStatusValidator
    {

        public IStatus validate(Object selection[])
        {
            if(selection.length == 0)
                return new Status(4, "org.eclipse.m2e.core", -1, Messages.MavenGoalSelectionDialog_error, null);
            for(int j = 0; j < selection.length; j++)
                if(!(selection[j] instanceof Entry))
                    return new Status(4, "org.eclipse.m2e.core", -1, "", null);

            return Status.OK_STATUS;
        }

        GoalsSelectionValidator()
        {
        }
    }

    static class Group
    {

        public final String name;
        public final String groupId;
        public final String artifactId;
        public final List entries;

        public Group(String name, String groupId, String artifactId, List entries)
        {
            this.name = name;
            this.groupId = groupId;
            this.artifactId = artifactId;
            this.entries = entries;
        }
    }


    public MavenGoalSelectionDialog(Shell parent)
    {
        super(parent, new GoalsLabelProvider(), new GoalsContentProvider());
        isQualifiedName = true;
        setTitle(Messages.launchGoalsDialogTitle);
        setMessage(Messages.MavenGoalSelectionDialog_message);
        setValidator(new GoalsSelectionValidator());
        setInput(new Object());
    }

    protected Control createDialogArea(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = convertVerticalDLUsToPixels(7);
        layout.marginWidth = convertHorizontalDLUsToPixels(7);
        layout.verticalSpacing = convertVerticalDLUsToPixels(4);
        layout.horizontalSpacing = convertHorizontalDLUsToPixels(4);
        composite.setLayout(layout);
        composite.setLayoutData(new GridData(1808));
        Label selectGoalLabel = new Label(composite, 0);
        selectGoalLabel.setText(Messages.MavenGoalSelectionDialog_lblSelect);
        final GoalsFilter filter = new GoalsFilter();
        final Text filterText = new Text(composite, 2048);
        GridData gd_filterText = new GridData(4, 0x1000000, true, false);
        gd_filterText.widthHint = 200;
        filterText.setLayoutData(gd_filterText);
        filterText.setFocus();
        final TreeViewer treeViewer = createTreeViewer(composite);
        treeViewer.addFilter(filter);
        GridData data = new GridData(1808);
        data.widthHint = 500;
        data.heightHint = 400;
        final Tree tree = treeViewer.getTree();
        tree.setLayoutData(data);
        tree.setFont(parent.getFont());
        filterText.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                String text = filterText.getText();
                filter.setFilter(text);
                treeViewer.refresh();
                if(text.trim().length() == 0)
                    treeViewer.collapseAll();
                else
                    treeViewer.expandAll();
            }

            final MavenGoalSelectionDialog this$0;
            private final Text val$filterText;
            private final GoalsFilter val$filter;
            private final TreeViewer val$treeViewer;

            
            {
                this$0 = MavenGoalSelectionDialog.this;
                filterText = text;
                filter = goalsfilter;
                treeViewer = treeviewer;
                super();
            }
        }
);
        filterText.addKeyListener(new KeyAdapter() {

            public void keyPressed(KeyEvent e)
            {
                if(e.keyCode == 0x1000002)
                {
                    tree.setFocus();
                    tree.setSelection(tree.getTopItem().getItem(0));
                    Object elements[] = ((ITreeContentProvider)treeViewer.getContentProvider()).getElements(null);
                    treeViewer.setSelection(new StructuredSelection(elements[0]));
                }
            }

            final MavenGoalSelectionDialog this$0;
            private final Tree val$tree;
            private final TreeViewer val$treeViewer;

            
            {
                this$0 = MavenGoalSelectionDialog.this;
                tree = tree1;
                treeViewer = treeviewer;
                super();
            }
        }
);
        isQualifiedNameButton = new Button(composite, 32);
        isQualifiedNameButton.setText(Messages.MavenGoalSelectionDialog_btnQualified);
        isQualifiedNameButton.setSelection(true);
        isQualifiedNameButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                isQualifiedName = isQualifiedNameButton.getSelection();
            }

            final MavenGoalSelectionDialog this$0;

            
            {
                this$0 = MavenGoalSelectionDialog.this;
                super();
            }
        }
);
        return composite;
    }

    public boolean isQualifiedName()
    {
        return isQualifiedName;
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/dialogs/MavenGoalSelectionDialog);
    Button isQualifiedNameButton;
    boolean isQualifiedName;


}
