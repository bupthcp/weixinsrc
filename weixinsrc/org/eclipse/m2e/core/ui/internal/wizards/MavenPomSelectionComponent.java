// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenPomSelectionComponent.java

package org.eclipse.m2e.core.ui.internal.wizards;

import com.ibm.icu.text.DateFormat;
import java.util.*;
import org.apache.lucene.search.BooleanQuery;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.viewers.*;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.ArtifactKey;
import org.eclipse.m2e.core.internal.MavenPluginActivator;
import org.eclipse.m2e.core.internal.index.*;
import org.eclipse.m2e.core.internal.index.filter.ArtifactFilterManager;
import org.eclipse.m2e.core.ui.internal.MavenImages;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.*;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.*;

public class MavenPomSelectionComponent extends Composite
{
    private class SearchJob extends Job
    {

        public void setQuery(String query)
        {
            this.query = query;
        }

        public boolean shouldRun()
        {
            stop = false;
            return super.shouldRun();
        }

        public int getClassifier()
        {
            return 9;
        }

        protected IStatus run(IProgressMonitor monitor)
        {
            int classifier = showClassifiers() ? getClassifier() : 15;
            if(searchResultViewer == null || searchResultViewer.getControl() == null || searchResultViewer.getControl().isDisposed())
                return Status.CANCEL_STATUS;
            if(query != null)
            {
                String activeQuery = query;
                try
                {
                    setResult(0, NLS.bind(Messages.MavenPomSelectionComponent_searching, activeQuery.toLowerCase()), null);
                    Map res = indexManager.getAllIndexes().search(new UserInputSearchExpression(activeQuery), field, classifier);
                    LinkedHashMap managed = new LinkedHashMap();
                    LinkedHashMap nonManaged = new LinkedHashMap();
                    for(Iterator iterator = res.entrySet().iterator(); iterator.hasNext();)
                    {
                        java.util.Map.Entry art = (java.util.Map.Entry)iterator.next();
                        String key = (new StringBuilder(String.valueOf(((IndexedArtifact)art.getValue()).getGroupId()))).append(":").append(((IndexedArtifact)art.getValue()).getArtifactId()).toString();
                        if(managedKeys.contains(key))
                            managed.put((String)art.getKey(), (IndexedArtifact)art.getValue());
                        else
                            nonManaged.put((String)art.getKey(), (IndexedArtifact)art.getValue());
                    }

                    managed.putAll(nonManaged);
                    setResult(0, NLS.bind(Messages.MavenPomSelectionComponent_results, activeQuery, Integer.valueOf(res.size())), managed);
                }
                catch(org.apache.lucene.search.BooleanQuery.TooManyClauses _ex)
                {
                    setResult(4, Messages.MavenPomSelectionComponent_toomany, Collections.emptyMap());
                }
                catch(RuntimeException ex)
                {
                    setResult(4, NLS.bind(Messages.MavenPomSelectionComponent_error, ex.toString()), Collections.emptyMap());
                }
                catch(Exception ex)
                {
                    setResult(4, NLS.bind(Messages.MavenPomSelectionComponent_error, ex.getMessage()), Collections.emptyMap());
                }
            }
            return Status.OK_STATUS;
        }

        protected void canceling()
        {
            stop = true;
        }

        private void setResult(final int severity, final String message, final Map result)
        {
            if(stop)
            {
                return;
            } else
            {
                Display.getDefault().syncExec(new Runnable() {

                    public void run()
                    {
                        setStatus(severity, message);
                        if(result != null && !searchResultViewer.getControl().isDisposed())
                            searchResultViewer.setInput(result);
                    }

                    final SearchJob this$1;
                    private final int val$severity;
                    private final String val$message;
                    private final Map val$result;

                
                {
                    this$1 = SearchJob.this;
                    severity = i;
                    message = s;
                    result = map;
                    super();
                }
                }
);
                return;
            }
        }

        private IndexManager indexManager;
        private String query;
        private String field;
        private volatile boolean stop;
        final MavenPomSelectionComponent this$0;


        public SearchJob(String field, IndexManager indexManager)
        {
            this$0 = MavenPomSelectionComponent.this;
            super(Messages.MavenPomSelectionComponent_searchJob);
            stop = false;
            this.field = field;
            this.indexManager = indexManager;
        }
    }

    public static class SearchResultContentProvider
        implements ITreeContentProvider
    {

        public void inputChanged(Viewer viewer1, Object obj, Object obj1)
        {
        }

        public Object[] getElements(Object inputElement)
        {
            if(inputElement instanceof Map)
                return ((Map)inputElement).values().toArray();
            else
                return EMPTY;
        }

        public Object[] getChildren(Object parentElement)
        {
            if(parentElement instanceof IndexedArtifact)
            {
                IndexedArtifact a = (IndexedArtifact)parentElement;
                return a.getFiles().toArray();
            } else
            {
                return EMPTY;
            }
        }

        public boolean hasChildren(Object element)
        {
            return element instanceof IndexedArtifact;
        }

        public Object getParent(Object element)
        {
            return null;
        }

        public void dispose()
        {
        }

        private static Object EMPTY[] = new Object[0];


        public SearchResultContentProvider()
        {
        }
    }

    public static class SearchResultLabelProvider extends LabelProvider
        implements IColorProvider, org.eclipse.jface.viewers.DelegatingStyledCellLabelProvider.IStyledLabelProvider
    {

        public String getText(Object element)
        {
            return super.getText(element);
        }

        protected String getRepoDisplayName(String repo)
        {
            return repo;
        }

        public Color getForeground(Object element)
        {
            if(element instanceof IndexedArtifactFile)
            {
                IndexedArtifactFile f = (IndexedArtifactFile)element;
                if(artifactKeys.contains(MavenPomSelectionComponent.getKey(f)))
                    return Display.getDefault().getSystemColor(16);
            } else
            if(element instanceof IndexedArtifact)
            {
                IndexedArtifact i = (IndexedArtifact)element;
                if(artifactKeys.contains(MavenPomSelectionComponent.getKey(i)))
                    return Display.getDefault().getSystemColor(16);
            }
            return null;
        }

        public Color getBackground(Object element)
        {
            return null;
        }

        public Image getImage(Object element)
        {
            if(element instanceof IndexedArtifactFile)
            {
                IndexedArtifactFile f = (IndexedArtifactFile)element;
                if(managedKeys.contains(MavenPomSelectionComponent.getKey(f)))
                    return MavenImages.getOverlayImage(f.sourcesExists != 1 ? "jar_version.gif" : "jar_src_version.gif", "lock_ovr.gif", 2);
                if(f.sourcesExists == 1)
                    return MavenImages.IMG_VERSION_SRC;
                else
                    return MavenImages.IMG_VERSION;
            }
            if(element instanceof IndexedArtifact)
            {
                IndexedArtifact i = (IndexedArtifact)element;
                if(managedKeys.contains(MavenPomSelectionComponent.getKey(i)))
                    return MavenImages.getOverlayImage("jar_obj.gif", "lock_ovr.gif", 2);
                else
                    return MavenImages.IMG_JAR;
            } else
            {
                return null;
            }
        }

        public StyledString getStyledText(Object element)
        {
            if(element instanceof IndexedArtifact)
            {
                IndexedArtifact a = (IndexedArtifact)element;
                String name = (new StringBuilder(String.valueOf(a.getClassname() != null ? ((Object) ((new StringBuilder(String.valueOf(a.getClassname()))).append("   ").append(a.getPackageName()).append("   ").toString())) : ""))).append(a.getGroupId()).append("   ").append(a.getArtifactId()).toString();
                StyledString ss = new StyledString();
                ss.append(name);
                if(managedKeys.contains(MavenPomSelectionComponent.getKey(a)))
                    ss.append(Messages.MavenPomSelectionComponent_managed_decoration, StyledString.DECORATIONS_STYLER);
                return ss;
            }
            if(element instanceof IndexedArtifactFile)
            {
                IndexedArtifactFile f = (IndexedArtifactFile)element;
                StyledString ss = new StyledString();
                String name = (new StringBuilder(String.valueOf(f.version))).append(" [").append(f.type != null ? f.type : "jar").append(f.classifier == null ? "" : (new StringBuilder(", ")).append(f.classifier).toString()).append("]").toString();
                ss.append(name);
                if(managedKeys.contains(MavenPomSelectionComponent.getKey(f)))
                    ss.append(Messages.MavenPomSelectionComponent_managed_decoration, StyledString.DECORATIONS_STYLER);
                return ss;
            } else
            {
                return new StyledString();
            }
        }

        private final Set artifactKeys;
        private final Set managedKeys;

        public SearchResultLabelProvider(Set artifactKeys, Set managedKeys)
        {
            this.artifactKeys = artifactKeys;
            this.managedKeys = managedKeys;
        }
    }


    public void dispose()
    {
        if(searchJob != null)
            searchJob.cancel();
        super.dispose();
    }

    public MavenPomSelectionComponent(Composite parent, int style)
    {
        super(parent, style);
        searchText = null;
        searchResultViewer = null;
        createSearchComposite();
    }

    private void createSearchComposite()
    {
        GridLayout gridLayout = new GridLayout(2, false);
        gridLayout.marginWidth = 0;
        gridLayout.marginHeight = 0;
        setLayout(gridLayout);
        Label searchTextlabel = new Label(this, 0);
        searchTextlabel.setText(Messages.MavenPomSelectionComponent_search_title);
        searchTextlabel.setLayoutData(new GridData(4, 4, true, false, 2, 1));
        searchText = new Text(this, 2176);
        searchText.setLayoutData(new GridData(4, 128, true, false, 2, 1));
        searchText.addKeyListener(new KeyAdapter() {

            public void keyPressed(KeyEvent e)
            {
                if(e.keyCode == 0x1000002)
                {
                    searchResultViewer.getTree().setFocus();
                    selectFirstElementInTheArtifactTreeIfNoSelectionHasBeenMade();
                }
            }

            final MavenPomSelectionComponent this$0;

            
            {
                this$0 = MavenPomSelectionComponent.this;
                super();
            }
        }
);
        searchText.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                scheduleSearch(searchText.getText(), true);
            }

            final MavenPomSelectionComponent this$0;

            
            {
                this$0 = MavenPomSelectionComponent.this;
                super();
            }
        }
);
        Label searchResultsLabel = new Label(this, 0);
        searchResultsLabel.setLayoutData(new GridData(4, 128, true, false, 2, 1));
        searchResultsLabel.setText(Messages.MavenPomSelectionComponent_lblResults);
        Tree tree = new Tree(this, 2052);
        tree.setLayoutData(new GridData(4, 4, true, true, 2, 1));
        tree.setData("name", "searchResultTree");
        tree.addFocusListener(new FocusListener() {

            public void focusGained(FocusEvent e)
            {
                selectFirstElementInTheArtifactTreeIfNoSelectionHasBeenMade();
            }

            public void focusLost(FocusEvent focusevent)
            {
            }

            final MavenPomSelectionComponent this$0;

            
            {
                this$0 = MavenPomSelectionComponent.this;
                super();
            }
        }
);
        searchResultViewer = new TreeViewer(tree);
    }

    public boolean setFocus()
    {
        return searchText.setFocus();
    }

    void selectFirstElementInTheArtifactTreeIfNoSelectionHasBeenMade()
    {
        if(searchResultViewer.getTree().getItemCount() > 0 && searchResultViewer.getSelection().isEmpty())
        {
            Object artifact = searchResultViewer.getTree().getTopItem().getData();
            searchResultViewer.setSelection(new StructuredSelection(artifact), true);
        }
    }

    protected boolean showClassifiers()
    {
        return queryType != null && "artifact".equals(queryType);
    }

    public void init(String queryText, String queryType, IProject project, Set artifacts, Set managed)
    {
        this.queryType = queryType;
        this.project = project;
        if(queryText != null)
            searchText.setText(queryText);
        if(artifacts != null)
        {
            ArtifactKey a;
            for(Iterator iterator = artifacts.iterator(); iterator.hasNext(); artifactKeys.add((new StringBuilder(String.valueOf(a.getGroupId()))).append(":").append(a.getArtifactId()).append(":").append(a.getVersion()).toString()))
            {
                a = (ArtifactKey)iterator.next();
                artifactKeys.add((new StringBuilder(String.valueOf(a.getGroupId()))).append(":").append(a.getArtifactId()).toString());
            }

        }
        if(managed != null)
        {
            ArtifactKey a;
            for(Iterator iterator1 = managed.iterator(); iterator1.hasNext(); managedKeys.add((new StringBuilder(String.valueOf(a.getGroupId()))).append(":").append(a.getArtifactId()).append(":").append(a.getVersion()).toString()))
            {
                a = (ArtifactKey)iterator1.next();
                managedKeys.add((new StringBuilder(String.valueOf(a.getGroupId()))).append(":").append(a.getArtifactId()).toString());
            }

        }
        searchResultViewer.setContentProvider(new SearchResultContentProvider());
        SearchResultLabelProvider labelProvider = new SearchResultLabelProvider(artifactKeys, managedKeys);
        DecoratingStyledCellLabelProvider decoratingLabelProvider = new DecoratingStyledCellLabelProvider(labelProvider, PlatformUI.getWorkbench().getDecoratorManager().getLabelDecorator(), null);
        DecorationContext decorationContext = new DecorationContext();
        if(project != null)
            decorationContext.putProperty("org.eclipse.m2e.core.ui.decorationContextProject", project);
        decoratingLabelProvider.setDecorationContext(decorationContext);
        searchResultViewer.setLabelProvider(decoratingLabelProvider);
        searchResultViewer.addSelectionChangedListener(new ISelectionChangedListener() {

            public void selectionChanged(SelectionChangedEvent event)
            {
                IStructuredSelection selection = (IStructuredSelection)event.getSelection();
                if(!selection.isEmpty())
                {
                    List files = getSelectedIndexedArtifactFiles(selection);
                    ArtifactFilterManager filterManager = MavenPluginActivator.getDefault().getArifactFilterManager();
                    for(Iterator iterator2 = files.iterator(); iterator2.hasNext();)
                    {
                        IndexedArtifactFile file = (IndexedArtifactFile)iterator2.next();
                        ArtifactKey key = (ArtifactKey)file.getAdapter(org/eclipse/m2e/core/embedder/ArtifactKey);
                        IStatus status = filterManager.filter(project, key);
                        if(!status.isOK())
                        {
                            setStatus(4, status.getMessage());
                            return;
                        }
                    }

                    if(files.size() == 1)
                    {
                        IndexedArtifactFile f = (IndexedArtifactFile)files.get(0);
                        int severity = 0;
                        String date = DateFormat.getDateTimeInstance(2, 3).format(f.date);
                        setStatus(severity, NLS.bind(Messages.MavenPomSelectionComponent_detail1, f.fname, f.size == -1L ? ((Object) (date)) : ((Object) (NLS.bind(Messages.MavenPomSelectionComponent_details2, date, Long.valueOf(f.size))))));
                    } else
                    {
                        setStatus(0, NLS.bind(Messages.MavenPomSelectionComponent_selected, Integer.valueOf(selection.size())));
                    }
                } else
                {
                    setStatus(4, Messages.MavenPomSelectionComponent_nosel);
                }
            }

            final MavenPomSelectionComponent this$0;

            
            {
                this$0 = MavenPomSelectionComponent.this;
                super();
            }
        }
);
        setupClassifiers();
        setStatus(4, "");
        scheduleSearch(queryText, false);
    }

    protected void setupClassifiers()
    {
    }

    public IStatus getStatus()
    {
        return status;
    }

    public void addDoubleClickListener(IDoubleClickListener listener)
    {
        searchResultViewer.addDoubleClickListener(listener);
    }

    public void addSelectionChangedListener(ISelectionChangedListener listener)
    {
        selectionListener = listener;
    }

    void setStatus(int severity, String message)
    {
        status = new Status(severity, "org.eclipse.m2e.core", 0, message, null);
        if(selectionListener != null)
            selectionListener.selectionChanged(new SelectionChangedEvent(searchResultViewer, searchResultViewer.getSelection()));
    }

    public IndexedArtifact getIndexedArtifact()
    {
        IStructuredSelection selection = (IStructuredSelection)searchResultViewer.getSelection();
        Object element = selection.getFirstElement();
        if(element instanceof IndexedArtifact)
            return (IndexedArtifact)element;
        TreeItem treeItems[] = searchResultViewer.getTree().getSelection();
        if(treeItems.length == 0)
            return null;
        else
            return (IndexedArtifact)treeItems[0].getParentItem().getData();
    }

    public IndexedArtifactFile getIndexedArtifactFile()
    {
        List files = getSelectedIndexedArtifactFiles((IStructuredSelection)searchResultViewer.getSelection());
        return files.isEmpty() ? null : (IndexedArtifactFile)files.get(0);
    }

    List getSelectedIndexedArtifactFiles(IStructuredSelection selection)
    {
        ArrayList result = new ArrayList();
        for(Iterator iterator = selection.toList().iterator(); iterator.hasNext();)
        {
            Object element = iterator.next();
            if(element instanceof IndexedArtifact)
            {
                IndexedArtifact ia = (IndexedArtifact)element;
                if(managedKeys.contains(getKey(ia)))
                {
                    for(Iterator iterator1 = ia.getFiles().iterator(); iterator1.hasNext();)
                    {
                        IndexedArtifactFile file = (IndexedArtifactFile)iterator1.next();
                        if(managedKeys.contains(getKey(file)))
                            result.add(file);
                    }

                } else
                {
                    result.add((IndexedArtifactFile)ia.getFiles().iterator().next());
                }
            } else
            if(element instanceof IndexedArtifactFile)
                result.add((IndexedArtifactFile)element);
        }

        return result;
    }

    void scheduleSearch(String query, boolean delay)
    {
        if(query != null && query.length() > 2)
        {
            if(searchJob == null)
            {
                IndexManager indexManager = MavenPlugin.getIndexManager();
                searchJob = new SearchJob(queryType, indexManager);
            } else
            if(!searchJob.cancel())
            {
                IndexManager indexManager = MavenPlugin.getIndexManager();
                searchJob = new SearchJob(queryType, indexManager);
            }
            searchJob.setQuery(query.toLowerCase());
            searchJob.schedule(delay ? 500L : 150L);
        } else
        if(searchJob != null)
            searchJob.cancel();
    }

    public static String getKey(IndexedArtifactFile file)
    {
        return (new StringBuilder(String.valueOf(file.group))).append(":").append(file.artifact).append(":").append(file.version).toString();
    }

    public static String getKey(IndexedArtifact art)
    {
        return (new StringBuilder(String.valueOf(art.getGroupId()))).append(":").append(art.getArtifactId()).toString();
    }

    public static final String PROP_DECORATION_CONTEXT_PROJECT = "org.eclipse.m2e.core.ui.decorationContextProject";
    Text searchText;
    TreeViewer searchResultViewer;
    String queryType;
    SearchJob searchJob;
    private IStatus status;
    private ISelectionChangedListener selectionListener;
    /**
     * @deprecated Field P_SEARCH_INCLUDE_JAVADOC is deprecated
     */
    public static final String P_SEARCH_INCLUDE_JAVADOC = "searchIncludesJavadoc";
    /**
     * @deprecated Field P_SEARCH_INCLUDE_SOURCES is deprecated
     */
    public static final String P_SEARCH_INCLUDE_SOURCES = "searchIncludesSources";
    /**
     * @deprecated Field P_SEARCH_INCLUDE_TESTS is deprecated
     */
    public static final String P_SEARCH_INCLUDE_TESTS = "searchIncludesTests";
    private static final long SHORT_DELAY = 150L;
    private static final long LONG_DELAY = 500L;
    final HashSet artifactKeys = new HashSet();
    final HashSet managedKeys = new HashSet();
    private IProject project;

}
