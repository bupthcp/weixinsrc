// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenArchetypesPreferencePage.java

package org.eclipse.m2e.core.ui.internal.preferences;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.*;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.viewers.*;
import org.eclipse.m2e.core.internal.MavenPluginActivator;
import org.eclipse.m2e.core.internal.archetype.ArchetypeCatalogFactory;
import org.eclipse.m2e.core.internal.archetype.ArchetypeManager;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.*;
import org.eclipse.ui.browser.IWebBrowser;
import org.eclipse.ui.browser.IWorkbenchBrowserSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.preferences:
//            LocalArchetypeCatalogDialog, RemoteArchetypeCatalogDialog

public class MavenArchetypesPreferencePage extends PreferencePage
    implements IWorkbenchPreferencePage
{
    static class CatalogsLabelProvider
        implements ITableLabelProvider, IColorProvider
    {

        public String getColumnText(Object element, int columnIndex)
        {
            ArchetypeCatalogFactory factory = (ArchetypeCatalogFactory)element;
            if(factory instanceof org.eclipse.m2e.core.internal.archetype.ArchetypeCatalogFactory.LocalCatalogFactory)
                return NLS.bind(Messages.MavenArchetypesPreferencePage_local, factory.getDescription());
            if(factory instanceof org.eclipse.m2e.core.internal.archetype.ArchetypeCatalogFactory.RemoteCatalogFactory)
            {
                if(factory.isEditable())
                    return NLS.bind(Messages.MavenArchetypesPreferencePage_remote, factory.getDescription());
                else
                    return NLS.bind(Messages.MavenArchetypesPreferencePage_packaged, factory.getDescription());
            } else
            {
                return factory.getDescription();
            }
        }

        public Image getColumnImage(Object element, int columnIndex)
        {
            return null;
        }

        public Color getBackground(Object element)
        {
            return null;
        }

        public Color getForeground(Object element)
        {
            ArchetypeCatalogFactory factory = (ArchetypeCatalogFactory)element;
            return factory.isEditable() ? null : disabledColor;
        }

        public void dispose()
        {
        }

        public boolean isLabelProperty(Object element, String property)
        {
            return false;
        }

        public void addListener(ILabelProviderListener ilabelproviderlistener)
        {
        }

        public void removeListener(ILabelProviderListener ilabelproviderlistener)
        {
        }

        private Color disabledColor;

        CatalogsLabelProvider()
        {
            disabledColor = Display.getCurrent().getSystemColor(16);
        }
    }


    public MavenArchetypesPreferencePage()
    {
        setTitle(Messages.MavenArchetypesPreferencePage_title);
        archetypeManager = MavenPluginActivator.getDefault().getArchetypeManager();
    }

    protected void performDefaults()
    {
        for(Iterator it = archetypeCatalogs.iterator(); it.hasNext();)
        {
            ArchetypeCatalogFactory factory = (ArchetypeCatalogFactory)it.next();
            if(factory.isEditable())
                it.remove();
        }

        archetypesViewer.setInput(archetypeCatalogs);
        archetypesViewer.setSelection(null, true);
        super.performDefaults();
    }

    public boolean performOk()
    {
        Collection catalogs = archetypeManager.getArchetypeCatalogs();
        for(Iterator iterator = catalogs.iterator(); iterator.hasNext();)
        {
            ArchetypeCatalogFactory factory = (ArchetypeCatalogFactory)iterator.next();
            if(factory.isEditable())
                archetypeManager.removeArchetypeCatalogFactory(factory.getId());
        }

        for(Iterator iterator1 = archetypeCatalogs.iterator(); iterator1.hasNext();)
        {
            ArchetypeCatalogFactory factory = (ArchetypeCatalogFactory)iterator1.next();
            if(factory.isEditable())
                archetypeManager.addArchetypeCatalogFactory(factory);
        }

        try
        {
            archetypeManager.saveCatalogs();
        }
        catch(IOException ex)
        {
            setErrorMessage(NLS.bind(Messages.MavenArchetypesPreferencePage_error, ex.getMessage()));
            return false;
        }
        return super.performOk();
    }

    public void init(IWorkbench iworkbench)
    {
    }

    protected Control createContents(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        GridLayout gridLayout = new GridLayout(2, false);
        gridLayout.marginWidth = 0;
        gridLayout.marginHeight = 0;
        composite.setLayout(gridLayout);
        Link addRemoveOrLink = new Link(composite, 0);
        GridData gd_addRemoveOrLink = new GridData(4, 0x1000000, false, false, 2, 1);
        addRemoveOrLink.setLayoutData(gd_addRemoveOrLink);
        addRemoveOrLink.setText(Messages.MavenArchetypesPreferencePage_link);
        addRemoveOrLink.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                try
                {
                    URL url = new URL("http://maven.apache.org/plugins/maven-archetype-plugin/specification/archetype-catalog.html");
                    IWebBrowser browser = PlatformUI.getWorkbench().getBrowserSupport().getExternalBrowser();
                    browser.openURL(url);
                }
                catch(MalformedURLException ex)
                {
                    MavenArchetypesPreferencePage.log.error("Malformed URL", ex);
                }
                catch(PartInitException ex)
                {
                    MavenArchetypesPreferencePage.log.error(ex.getMessage(), ex);
                }
            }

            final MavenArchetypesPreferencePage this$0;

            
            {
                this$0 = MavenArchetypesPreferencePage.this;
                super();
            }
        }
);
        archetypesViewer = new TableViewer(composite, 0x10800);
        archetypesViewer.setLabelProvider(new CatalogsLabelProvider());
        archetypesViewer.setContentProvider(new IStructuredContentProvider() {

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

            final MavenArchetypesPreferencePage this$0;

            
            {
                this$0 = MavenArchetypesPreferencePage.this;
                super();
            }
        }
);
        Table table = archetypesViewer.getTable();
        table.setLinesVisible(false);
        table.setHeaderVisible(false);
        table.setLayoutData(new GridData(4, 4, true, false, 1, 4));
        TableColumn typeColumn = new TableColumn(table, 0);
        typeColumn.setWidth(250);
        typeColumn.setText("");
        Button addLocalButton = new Button(composite, 0);
        addLocalButton.setLayoutData(new GridData(4, 128, false, false));
        addLocalButton.setText(Messages.MavenArchetypesPreferencePage_btnAddLocal);
        addLocalButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                LocalArchetypeCatalogDialog dialog = new LocalArchetypeCatalogDialog(getShell(), null);
                if(dialog.open() == 0)
                {
                    ArchetypeCatalogFactory factory = dialog.getArchetypeCatalogFactory();
                    archetypeCatalogs.add(factory);
                    archetypesViewer.setInput(archetypeCatalogs);
                    archetypesViewer.setSelection(new StructuredSelection(factory), true);
                }
            }

            final MavenArchetypesPreferencePage this$0;

            
            {
                this$0 = MavenArchetypesPreferencePage.this;
                super();
            }
        }
);
        Button addRemoteButton = new Button(composite, 0);
        addRemoteButton.setLayoutData(new GridData(4, 128, false, false));
        addRemoteButton.setText(Messages.MavenArchetypesPreferencePage_btnAddRemote);
        addRemoteButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                RemoteArchetypeCatalogDialog dialog = new RemoteArchetypeCatalogDialog(getShell(), null);
                if(dialog.open() == 0)
                {
                    ArchetypeCatalogFactory factory = dialog.getArchetypeCatalogFactory();
                    archetypeCatalogs.add(factory);
                    archetypesViewer.setInput(archetypeCatalogs);
                    archetypesViewer.setSelection(new StructuredSelection(factory), true);
                }
            }

            final MavenArchetypesPreferencePage this$0;

            
            {
                this$0 = MavenArchetypesPreferencePage.this;
                super();
            }
        }
);
        final Button editButton = new Button(composite, 0);
        editButton.setLayoutData(new GridData(4, 128, false, false));
        editButton.setEnabled(false);
        editButton.setText(Messages.MavenArchetypesPreferencePage_btnEdit);
        editButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                ArchetypeCatalogFactory factory = getSelectedArchetypeCatalogFactory();
                ArchetypeCatalogFactory newFactory = null;
                if(factory instanceof org.eclipse.m2e.core.internal.archetype.ArchetypeCatalogFactory.LocalCatalogFactory)
                {
                    LocalArchetypeCatalogDialog dialog = new LocalArchetypeCatalogDialog(getShell(), factory);
                    if(dialog.open() == 0)
                        newFactory = dialog.getArchetypeCatalogFactory();
                } else
                if(factory instanceof org.eclipse.m2e.core.internal.archetype.ArchetypeCatalogFactory.RemoteCatalogFactory)
                {
                    RemoteArchetypeCatalogDialog dialog = new RemoteArchetypeCatalogDialog(getShell(), factory);
                    if(dialog.open() == 0)
                        newFactory = dialog.getArchetypeCatalogFactory();
                }
                if(newFactory != null)
                {
                    int n = archetypeCatalogs.indexOf(factory);
                    if(n > -1)
                    {
                        archetypeCatalogs.set(n, newFactory);
                        archetypesViewer.setInput(archetypeCatalogs);
                        archetypesViewer.setSelection(new StructuredSelection(newFactory), true);
                    }
                }
            }

            final MavenArchetypesPreferencePage this$0;

            
            {
                this$0 = MavenArchetypesPreferencePage.this;
                super();
            }
        }
);
        final Button removeButton = new Button(composite, 0);
        removeButton.setEnabled(false);
        removeButton.setLayoutData(new GridData(4, 128, false, true));
        removeButton.setText(Messages.MavenArchetypesPreferencePage_btnRemove);
        removeButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                ArchetypeCatalogFactory factory = getSelectedArchetypeCatalogFactory();
                archetypeCatalogs.remove(factory);
                archetypesViewer.setInput(archetypeCatalogs);
                archetypesViewer.setSelection(null, true);
            }

            final MavenArchetypesPreferencePage this$0;

            
            {
                this$0 = MavenArchetypesPreferencePage.this;
                super();
            }
        }
);
        archetypesViewer.addSelectionChangedListener(new ISelectionChangedListener() {

            public void selectionChanged(SelectionChangedEvent event)
            {
                if(archetypesViewer.getSelection() instanceof IStructuredSelection)
                {
                    ArchetypeCatalogFactory factory = getSelectedArchetypeCatalogFactory();
                    boolean isEnabled = factory != null && factory.isEditable();
                    removeButton.setEnabled(isEnabled);
                    editButton.setEnabled(isEnabled);
                }
            }

            final MavenArchetypesPreferencePage this$0;
            private final Button val$removeButton;
            private final Button val$editButton;

            
            {
                this$0 = MavenArchetypesPreferencePage.this;
                removeButton = button;
                editButton = button1;
                super();
            }
        }
);
        archetypeCatalogs = new ArrayList(archetypeManager.getArchetypeCatalogs());
        archetypesViewer.setInput(archetypeCatalogs);
        archetypesViewer.refresh();
        return composite;
    }

    protected ArchetypeCatalogFactory getSelectedArchetypeCatalogFactory()
    {
        IStructuredSelection selection = (IStructuredSelection)archetypesViewer.getSelection();
        return (ArchetypeCatalogFactory)selection.getFirstElement();
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/preferences/MavenArchetypesPreferencePage);
    ArchetypeManager archetypeManager;
    TableViewer archetypesViewer;
    List archetypeCatalogs;


}
