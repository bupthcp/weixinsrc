// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   UploadPreview.java

package org.eclipse.epp.usagedata.internal.ui.preview;

import com.ibm.icu.text.DateFormat;
import java.io.File;
import java.io.IOException;
import java.util.*;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.epp.usagedata.internal.gathering.events.UsageDataEvent;
import org.eclipse.epp.usagedata.internal.recording.filtering.*;
import org.eclipse.epp.usagedata.internal.recording.uploading.UploadParameters;
import org.eclipse.epp.usagedata.internal.recording.uploading.UsageDataFileReader;
import org.eclipse.epp.usagedata.internal.ui.Activator;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.*;
import org.eclipse.swt.events.*;
import org.eclipse.swt.graphics.*;
import org.eclipse.swt.layout.*;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.forms.widgets.FormText;

// Referenced classes of package org.eclipse.epp.usagedata.internal.ui.preview:
//            Messages, UsageDataEventWrapper, AddFilterDialog, RemoveFilterDialog

public class UploadPreview
{
    abstract class UsageDataColumnProvider extends ColumnLabelProvider
    {

        public int getMaximumWidth(GC gc, Object events[])
        {
            int width = 0;
            Object aobj[];
            int j = (aobj = events).length;
            for(int i = 0; i < j; i++)
            {
                Object event = aobj[i];
                Point extent = gc.textExtent(getText(event));
                int x = extent.x;
                Image image = getImage(event);
                if(image != null)
                    x += image.getBounds().width;
                if(x > width)
                    width = x;
            }

            return width;
        }

        public Color getForeground(Object element)
        {
            if(((UsageDataEventWrapper)element).isIncludedByFilter())
                return colorBlack;
            else
                return colorGray;
        }

        public String getText(Object element)
        {
            return getText((UsageDataEventWrapper)element);
        }

        public Image getImage(Object element)
        {
            return getImage((UsageDataEventWrapper)element);
        }

        public String getText(UsageDataEventWrapper element)
        {
            return "";
        }

        public Image getImage(UsageDataEventWrapper element)
        {
            return null;
        }

        final UploadPreview this$0;

        UsageDataColumnProvider()
        {
            this$0 = UploadPreview.this;
            super();
        }
    }

    class UsageDataTableViewerColumn
    {

        public void setSortColumn()
        {
            getTable().setSortColumn(getColumn());
            getTable().setSortDirection(1024);
            viewer.setSorter(sorter);
        }

        private void initialize()
        {
            getColumn().addSelectionListener(selectionListener);
            getColumn().setWidth(25);
        }

        TableColumn getColumn()
        {
            return column.getColumn();
        }

        Table getTable()
        {
            return viewer.getTable();
        }

        public void setSorter(Comparator comparator)
        {
            this.comparator = comparator;
        }

        public void resize(GC gc, Object objects[])
        {
            int width = usageDataColumnProvider.getMaximumWidth(gc, objects) + 20;
            width = Math.max(getColumn().getWidth(), width);
            getColumn().setWidth(width);
        }

        public void setLabelProvider(UsageDataColumnProvider usageDataColumnProvider)
        {
            this.usageDataColumnProvider = usageDataColumnProvider;
            column.setLabelProvider(usageDataColumnProvider);
        }

        public void setWidth(int width)
        {
            getColumn().setWidth(width);
        }

        public void setText(String text)
        {
            getColumn().setText(text);
        }

        private TableViewerColumn column;
        private UsageDataColumnProvider usageDataColumnProvider;
        private Comparator comparator;
        private ViewerSorter sorter;
        private SelectionListener selectionListener;
        final UploadPreview this$0;



        public UsageDataTableViewerColumn(int style)
        {
            this$0 = UploadPreview.this;
            super();
            comparator = new Comparator() {

                public int compare(UsageDataEventWrapper event1, UsageDataEventWrapper event2)
                {
                    if(usageDataColumnProvider == null)
                        return 0;
                    String text1 = usageDataColumnProvider.getText(event1);
                    String text2 = usageDataColumnProvider.getText(event2);
                    if(text1 == null && text2 == null)
                        return 0;
                    if(text1 == null)
                        return -1;
                    if(text2 == null)
                        return 1;
                    else
                        return text1.compareTo(text2);
                }

                public volatile int compare(Object obj, Object obj1)
                {
                    return compare((UsageDataEventWrapper)obj, (UsageDataEventWrapper)obj1);
                }

                final UsageDataTableViewerColumn this$1;

                
                {
                    this$1 = UsageDataTableViewerColumn.this;
                    super();
                }
            }
;
            sorter = new ViewerSorter() {

                public int compare(Viewer viewer, Object object1, Object object2)
                {
                    return comparator.compare((UsageDataEventWrapper)object1, (UsageDataEventWrapper)object2);
                }

                final UsageDataTableViewerColumn this$1;

                
                {
                    this$1 = UsageDataTableViewerColumn.this;
                    super();
                }
            }
;
            selectionListener = new SelectionAdapter() {

                public void widgetSelected(SelectionEvent e)
                {
                    setSortColumn();
                }

                final UsageDataTableViewerColumn this$1;

                
                {
                    this$1 = UsageDataTableViewerColumn.this;
                    super();
                }
            }
;
            column = new TableViewerColumn(viewer, style);
            initialize();
        }
    }


    public UploadPreview(UploadParameters parameters)
    {
        events = Collections.synchronizedList(new ArrayList());
        this.parameters = parameters;
    }

    public Control createControl(Composite parent)
    {
        allocateResources(parent);
        Composite composite = new Composite(parent, 0);
        composite.setLayout(new GridLayout());
        createDescriptionText(composite);
        createEventsTable(composite);
        createEclipseOnlyButton(composite);
        createButtons(composite);
        PaintListener paintListener = new PaintListener() {

            public void paintControl(PaintEvent e)
            {
                if(called)
                {
                    return;
                } else
                {
                    called = true;
                    startContentJob();
                    return;
                }
            }

            boolean called;
            final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
                called = false;
            }
        }
;
        composite.addPaintListener(paintListener);
        return composite;
    }

    private void allocateResources(Composite parent)
    {
        colorGray = parent.getDisplay().getSystemColor(15);
        colorBlack = parent.getDisplay().getSystemColor(2);
        busyCursor = parent.getDisplay().getSystemCursor(1);
        xImage = Activator.getDefault().getImageDescriptor("/icons/x.png").createImage(parent.getDisplay());
        parent.addDisposeListener(new DisposeListener() {

            public void widgetDisposed(DisposeEvent e)
            {
                xImage.dispose();
            }

            final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
            }
        }
);
    }

    private void createDescriptionText(Composite parent)
    {
        FormText text = new FormText(parent, 0);
        text.setImage("x", xImage);
        text.setText(Messages.UploadPreview_2, true, false);
        GridData layoutData = new GridData(4, 4, true, false);
        layoutData.widthHint = 500;
        text.setLayoutData(layoutData);
    }

    private void createEventsTable(Composite parent)
    {
        viewer = new TableViewer(parent, 0x10b02);
        viewer.getTable().setHeaderVisible(true);
        viewer.getTable().setLinesVisible(false);
        GridData layoutData = new GridData(4, 4, true, true);
        layoutData.widthHint = 500;
        viewer.getTable().setLayoutData(layoutData);
        createIncludeColumn();
        createWhatColumn();
        createKindColumn();
        createDescriptionColumn();
        createBundleIdColumn();
        createBundleVersionColumn();
        createTimestampColumn();
        timestampColumn.setSortColumn();
        viewer.setContentProvider(new IStructuredContentProvider() {

            public void dispose()
            {
            }

            public void inputChanged(Viewer viewer1, Object obj, Object obj1)
            {
            }

            public Object[] getElements(Object input)
            {
                if(input instanceof List)
                    return ((List)input).toArray(new Object[((List)input).size()]);
                else
                    return new Object[0];
            }

            final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
            }
        }
);
        final FilterChangeListener filterChangeListener = new FilterChangeListener() {

            public void filterChanged()
            {
                UsageDataEventWrapper event;
                for(Iterator iterator = events.iterator(); iterator.hasNext(); event.resetCaches())
                    event = (UsageDataEventWrapper)iterator.next();

                viewer.refresh();
            }

            final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
            }
        }
;
        parameters.getFilter().addFilterChangeListener(filterChangeListener);
        viewer.getTable().addDisposeListener(new DisposeListener() {

            public void widgetDisposed(DisposeEvent e)
            {
                parameters.getFilter().removeFilterChangeListener(filterChangeListener);
            }

            final UploadPreview this$0;
            private final FilterChangeListener val$filterChangeListener;

            
            {
                this$0 = UploadPreview.this;
                filterChangeListener = filterchangelistener;
                super();
            }
        }
);
        viewer.setInput(events);
    }

    private void createIncludeColumn()
    {
        includeColumn = new UsageDataTableViewerColumn(0x1000000);
        includeColumn.setLabelProvider(new UsageDataColumnProvider() {

            public Image getImage(UsageDataEventWrapper event)
            {
                if(!event.isIncludedByFilter())
                    return xImage;
                else
                    return null;
            }

            final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
            }
        }
);
    }

    private void createWhatColumn()
    {
        whatColumn = new UsageDataTableViewerColumn(16384);
        whatColumn.setText(Messages.UploadPreview_3);
        whatColumn.setLabelProvider(new UsageDataColumnProvider() {

            public String getText(UsageDataEventWrapper event)
            {
                return event.getWhat();
            }

            final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
            }
        }
);
    }

    private void createKindColumn()
    {
        kindColumn = new UsageDataTableViewerColumn(16384);
        kindColumn.setText(Messages.UploadPreview_4);
        kindColumn.setLabelProvider(new UsageDataColumnProvider() {

            public String getText(UsageDataEventWrapper event)
            {
                return event.getKind();
            }

            final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
            }
        }
);
    }

    private void createDescriptionColumn()
    {
        descriptionColumn = new UsageDataTableViewerColumn(16384);
        descriptionColumn.setText(Messages.UploadPreview_5);
        descriptionColumn.setLabelProvider(new UsageDataColumnProvider() {

            public String getText(UsageDataEventWrapper event)
            {
                return event.getDescription();
            }

            final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
            }
        }
);
    }

    private void createBundleIdColumn()
    {
        bundleIdColumn = new UsageDataTableViewerColumn(16384);
        bundleIdColumn.setText(Messages.UploadPreview_6);
        bundleIdColumn.setLabelProvider(new UsageDataColumnProvider() {

            public String getText(UsageDataEventWrapper event)
            {
                return event.getBundleId();
            }

            final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
            }
        }
);
    }

    private void createBundleVersionColumn()
    {
        bundleVersionColumn = new UsageDataTableViewerColumn(16384);
        bundleVersionColumn.setText(Messages.UploadPreview_7);
        bundleVersionColumn.setLabelProvider(new UsageDataColumnProvider() {

            public String getText(UsageDataEventWrapper event)
            {
                return event.getBundleVersion();
            }

            final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
            }
        }
);
    }

    private void createTimestampColumn()
    {
        timestampColumn = new UsageDataTableViewerColumn(16384);
        timestampColumn.setText(Messages.UploadPreview_8);
        timestampColumn.setLabelProvider(new UsageDataColumnProvider() {

            public String getText(UsageDataEventWrapper event)
            {
                return UploadPreview.dateFormat.format(new Date(event.getWhen()));
            }

            final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
            }
        }
);
        timestampColumn.setSorter(new Comparator() {

            public int compare(UsageDataEventWrapper event1, UsageDataEventWrapper event2)
            {
                if(event1.getWhen() == event2.getWhen())
                    return 0;
                else
                    return event1.getWhen() <= event2.getWhen() ? -1 : 1;
            }

            public volatile int compare(Object obj, Object obj1)
            {
                return compare((UsageDataEventWrapper)obj, (UsageDataEventWrapper)obj1);
            }

            final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
            }
        }
);
    }

    private void createButtons(Composite parent)
    {
        Composite buttons = new Composite(parent, 0);
        GridData layoutData = new GridData(4, 4, true, false);
        buttons.setLayoutData(layoutData);
        buttons.setLayout(new RowLayout());
        createAddFilterButton(buttons);
        createRemoveFilterButton(buttons);
        final FilterChangeListener filterChangeListener = new FilterChangeListener() {

            public void filterChanged()
            {
                updateButtons();
            }

            final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
            }
        }
;
        parameters.getFilter().addFilterChangeListener(filterChangeListener);
        parent.addDisposeListener(new DisposeListener() {

            public void widgetDisposed(DisposeEvent e)
            {
                parameters.getFilter().removeFilterChangeListener(filterChangeListener);
            }

            final UploadPreview this$0;
            private final FilterChangeListener val$filterChangeListener;

            
            {
                this$0 = UploadPreview.this;
                filterChangeListener = filterchangelistener;
                super();
            }
        }
);
        updateButtons();
    }

    private void createEclipseOnlyButton(Composite buttons)
    {
        eclipseOnlyButton = new Button(buttons, 32);
        eclipseOnlyButton.setText(Messages.UploadPreview_9);
        eclipseOnlyButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                ((PreferencesBasedFilter)parameters.getFilter()).setEclipseOnly(eclipseOnlyButton.getSelection());
            }

            final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
            }
        }
);
    }

    private void updateButtons()
    {
        if(parameters.getFilter() instanceof PreferencesBasedFilter)
        {
            PreferencesBasedFilter filter = (PreferencesBasedFilter)parameters.getFilter();
            if(filter.isEclipseOnly())
            {
                eclipseOnlyButton.setSelection(true);
                addFilterButton.setEnabled(false);
                removeFilterButton.setEnabled(false);
            } else
            {
                eclipseOnlyButton.setSelection(false);
                addFilterButton.setEnabled(true);
                removeFilterButton.setEnabled(filter.getFilterPatterns().length > 0);
            }
        }
    }

    private void createAddFilterButton(Composite parent)
    {
        if(parameters.getFilter() instanceof PreferencesBasedFilter)
        {
            addFilterButton = new Button(parent, 8);
            addFilterButton.setText(Messages.UploadPreview_10);
            addFilterButton.addSelectionListener(new SelectionAdapter() {

                public void widgetSelected(SelectionEvent e)
                {
                    (new AddFilterDialog((PreferencesBasedFilter)parameters.getFilter())).prompt(viewer.getTable().getShell(), getFilterSuggestion());
                }

                final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
            }
            }
);
        }
    }

    private void createRemoveFilterButton(Composite parent)
    {
        if(parameters.getFilter() instanceof PreferencesBasedFilter)
        {
            removeFilterButton = new Button(parent, 8);
            removeFilterButton.setText(Messages.UploadPreview_11);
            removeFilterButton.addSelectionListener(new SelectionAdapter() {

                public void widgetSelected(SelectionEvent e)
                {
                    (new RemoveFilterDialog((PreferencesBasedFilter)parameters.getFilter())).prompt(viewer.getTable().getShell());
                }

                final UploadPreview this$0;

            
            {
                this$0 = UploadPreview.this;
                super();
            }
            }
);
        }
    }

    String getFilterSuggestion()
    {
        IStructuredSelection selection = (IStructuredSelection)viewer.getSelection();
        if(selection != null)
        {
            if(selection.size() == 1)
                return getFilterSuggestionBasedOnSingleSelection(selection);
            if(selection.size() > 1)
                return getFilterSuggestionBasedOnMultipleSelection(selection);
        }
        return FilterUtils.getDefaultFilterSuggestion();
    }

    String getFilterSuggestionBasedOnSingleSelection(IStructuredSelection selection)
    {
        return ((UsageDataEventWrapper)selection.getFirstElement()).getBundleId();
    }

    String getFilterSuggestionBasedOnMultipleSelection(IStructuredSelection selection)
    {
        String names[] = new String[selection.size()];
        int index = 0;
        Object aobj[];
        int j = (aobj = selection.toArray()).length;
        for(int i = 0; i < j; i++)
        {
            Object event = aobj[i];
            names[index++] = ((UsageDataEventWrapper)event).getBundleId();
        }

        return FilterUtils.getFilterSuggestionBasedOnBundleIds(names);
    }

    synchronized void startContentJob()
    {
        if(contentJob != null)
        {
            return;
        } else
        {
            contentJob = new Job("Generate Usage Data Upload Preview") {

                protected IStatus run(IProgressMonitor monitor)
                {
                    setTableCursor(busyCursor);
                    processFiles(monitor);
                    setTableCursor(null);
                    if(monitor.isCanceled())
                        return Status.CANCEL_STATUS;
                    else
                        return Status.OK_STATUS;
                }

                private void setTableCursor(final Cursor cursor)
                {
                    if(isDisposed())
                    {
                        return;
                    } else
                    {
                        getDisplay().syncExec(new Runnable() {

                            public void run()
                            {
                                if(isDisposed())
                                {
                                    return;
                                } else
                                {
                                    viewer.getTable().setCursor(cursor);
                                    return;
                                }
                            }

                            final _cls19 this$1;
                            private final Cursor val$cursor;

                    
                    {
                        this$1 = _cls19.this;
                        cursor = cursor1;
                        super();
                    }
                        }
);
                        return;
                    }
                }

                final UploadPreview this$0;


            
            {
                this$0 = UploadPreview.this;
                super($anonymous0);
            }
            }
;
            contentJob.setPriority(30);
            contentJob.schedule();
            return;
        }
    }

    void processFiles(IProgressMonitor monitor)
    {
        File files[] = parameters.getFiles();
        monitor.beginTask("Process Files", files.length);
        File afile[];
        int j = (afile = files).length;
        for(int i = 0; i < j; i++)
        {
            File file = afile[i];
            if(isDisposed() || monitor.isCanceled())
                break;
            processFile(file, monitor);
            monitor.worked(1);
        }

        monitor.done();
    }

    void processFile(File file, IProgressMonitor monitor)
    {
        final List events;
        UsageDataFileReader reader;
        events = new ArrayList();
        reader = null;
        try
        {
            reader = new UsageDataFileReader(file);
            reader.iterate(monitor, new org.eclipse.epp.usagedata.internal.recording.uploading.UsageDataFileReader.Iterator() {

                public void header(String s)
                {
                }

                public void event(String line, UsageDataEvent event)
                {
                    events.add(new UsageDataEventWrapper(parameters, event));
                    if(events.size() > 25)
                    {
                        addEvents(events);
                        events.clear();
                    }
                }

                final UploadPreview this$0;
                private final List val$events;

            
            {
                this$0 = UploadPreview.this;
                events = list;
                super();
            }
            }
);
            addEvents(events);
            break MISSING_BLOCK_LABEL_95;
        }
        catch(Exception e)
        {
            Activator.getDefault().log(2, e, "An error occurred while trying to read %1$s", new Object[] {
                file.getAbsolutePath()
            });
        }
        try
        {
            reader.close();
        }
        catch(IOException _ex) { }
        break MISSING_BLOCK_LABEL_104;
        Exception exception;
        exception;
        try
        {
            reader.close();
        }
        catch(IOException _ex) { }
        throw exception;
        try
        {
            reader.close();
        }
        catch(IOException _ex) { }
    }

    boolean isDisposed()
    {
        if(viewer == null)
            return true;
        if(viewer.getTable() == null)
            return true;
        else
            return viewer.getTable().isDisposed();
    }

    void addEvents(List newEvents)
    {
        if(isDisposed())
        {
            return;
        } else
        {
            events.addAll(newEvents);
            final Object array[] = newEvents.toArray(new Object[newEvents.size()]);
            getDisplay().syncExec(new Runnable() {

                public void run()
                {
                    if(isDisposed())
                    {
                        return;
                    } else
                    {
                        viewer.add(array);
                        resizeColumns(array);
                        return;
                    }
                }

                final UploadPreview this$0;
                private final Object val$array[];

            
            {
                this$0 = UploadPreview.this;
                array = aobj;
                super();
            }
            }
);
            return;
        }
    }

    private Display getDisplay()
    {
        return viewer.getTable().getDisplay();
    }

    void resizeColumns(Object events[])
    {
        if(isDisposed())
        {
            return;
        } else
        {
            GC gc = new GC(getDisplay());
            gc.setFont(viewer.getTable().getFont());
            resizeColumn(gc, includeColumn, events);
            resizeColumn(gc, whatColumn, events);
            resizeColumn(gc, kindColumn, events);
            resizeColumn(gc, bundleIdColumn, events);
            resizeColumn(gc, bundleVersionColumn, events);
            resizeColumn(gc, descriptionColumn, events);
            resizeColumn(gc, timestampColumn, events);
            gc.dispose();
            return;
        }
    }

    void resizeColumn(GC gc, UsageDataTableViewerColumn column, Object events[])
    {
        column.resize(gc, events);
    }

    private final UploadParameters parameters;
    TableViewer viewer;
    Job contentJob;
    List events;
    private static final DateFormat dateFormat = DateFormat.getDateTimeInstance(3, 3);
    private UsageDataTableViewerColumn includeColumn;
    private UsageDataTableViewerColumn whatColumn;
    private UsageDataTableViewerColumn kindColumn;
    private UsageDataTableViewerColumn descriptionColumn;
    private UsageDataTableViewerColumn bundleIdColumn;
    private UsageDataTableViewerColumn bundleVersionColumn;
    private UsageDataTableViewerColumn timestampColumn;
    private Color colorGray;
    private Color colorBlack;
    private Image xImage;
    private Cursor busyCursor;
    Button removeFilterButton;
    private Button eclipseOnlyButton;
    private Button addFilterButton;










}
