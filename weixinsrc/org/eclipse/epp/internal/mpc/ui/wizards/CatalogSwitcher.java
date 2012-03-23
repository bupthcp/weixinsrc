// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CatalogSwitcher.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.net.URL;
import java.util.*;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUiPlugin;
import org.eclipse.epp.mpc.ui.CatalogDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.jface.viewers.*;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.events.*;
import org.eclipse.swt.graphics.*;
import org.eclipse.swt.layout.*;
import org.eclipse.swt.widgets.*;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            CatalogToolTip, MarketplaceCatalogConfiguration, Messages

public class CatalogSwitcher extends Composite
    implements ISelectionProvider
{

    public CatalogSwitcher(Composite parent, int style, MarketplaceCatalogConfiguration configuration)
    {
        super(parent, style);
        this.configuration = configuration;
        setLayout(new FillLayout());
        createContents(this);
    }

    private void createContents(final Composite parent)
    {
        final ScrolledComposite scrollArea = new ScrolledComposite(parent, 512);
        scrollArea.setLayout(new FillLayout());
        marketplaceArea = new Composite(scrollArea, 0);
        RowLayout layout = new RowLayout(256);
        marketplaceArea.setLayout(layout);
        org.eclipse.swt.graphics.Color listBackground = getDisplay().getSystemColor(25);
        setBackground(listBackground);
        marketplaceArea.setBackground(listBackground);
        scrollArea.setBackground(listBackground);
        List catalogDescriptors = configuration.getCatalogDescriptors();
        CatalogDescriptor catalogDescriptor;
        for(Iterator iterator = catalogDescriptors.iterator(); iterator.hasNext(); createMarketplace(marketplaceArea, catalogDescriptor))
            catalogDescriptor = (CatalogDescriptor)iterator.next();

        scrollArea.setContent(marketplaceArea);
        scrollArea.setExpandVertical(true);
        scrollArea.setExpandHorizontal(true);
        scrollArea.setMinHeight(42);
        scrollArea.addControlListener(new ControlAdapter() {

            public void controlResized(ControlEvent e)
            {
                Rectangle r = parent.getClientArea();
                int scrollBarWidth = scrollArea.getVerticalBar().getSize().x;
                scrollArea.setMinSize(marketplaceArea.computeSize(r.width - scrollBarWidth, -1));
            }

            final CatalogSwitcher this$0;
            private final Composite val$parent;
            private final ScrolledComposite val$scrollArea;

            
            {
                this$0 = CatalogSwitcher.this;
                parent = composite;
                scrollArea = scrolledcomposite;
                super();
            }
        }
);
    }

    private void createMarketplace(Composite composite, final CatalogDescriptor catalogDescriptor)
    {
        Composite container = new Composite(composite, 0);
        org.eclipse.swt.graphics.Color listBackground = getDisplay().getSystemColor(25);
        container.setBackground(listBackground);
        container.setData(catalogDescriptor);
        GridLayout layout = new GridLayout(1, false);
        layout.marginHeight = 5;
        layout.marginWidth = 5;
        container.setLayout(layout);
        Label label = new Label(container, 0);
        label.setBackground(listBackground);
        retrieveCatalogImage(catalogDescriptor, label);
        label.setImage(getDefaultCatalogImage());
        label.addMouseListener(new MouseAdapter() {

            public void mouseUp(MouseEvent e)
            {
                selection = catalogDescriptor;
                refreshSelection();
                fireSelectionChanged();
            }

            final CatalogSwitcher this$0;
            private final CatalogDescriptor val$catalogDescriptor;

            
            {
                this$0 = CatalogSwitcher.this;
                catalogDescriptor = catalogdescriptor;
                super();
            }
        }
);
        CatalogToolTip.attachCatalogToolTip(label, catalogDescriptor);
    }

    private void retrieveCatalogImage(CatalogDescriptor catalogDescriptor, Label label)
    {
        Job job = new Job(label) {

            protected IStatus run(IProgressMonitor monitor)
            {
                monitor.beginTask(NLS.bind(Messages.CatalogSwitcher_downloadCatalogImage, catalogDescriptor.getLabel()), 1);
                final Image image = getCatalogIcon(catalogDescriptor);
                monitor.worked(1);
                label.getDisplay().asyncExec(new Runnable() {

                    public void run()
                    {
                        label.setImage(image);
                    }

                    final _cls3 this$1;
                    private final Label val$label;
                    private final Image val$image;

                    
                    {
                        this$1 = _cls3.this;
                        label = label1;
                        image = image1;
                        super();
                    }
                }
);
                monitor.done();
                return Status.OK_STATUS;
            }

            final CatalogSwitcher this$0;
            private final CatalogDescriptor val$catalogDescriptor;
            private final Label val$label;

            
            {
                this$0 = CatalogSwitcher.this;
                catalogDescriptor = catalogdescriptor;
                label = label1;
                super($anonymous0);
            }
        }
;
        job.setSystem(true);
        job.setPriority(50);
        job.schedule();
    }

    private void fireSelectionChanged()
    {
        ISelectionChangedListener listener;
        SelectionChangedEvent event;
        for(Iterator iterator = listeners.iterator(); iterator.hasNext(); listener.selectionChanged(event))
        {
            listener = (ISelectionChangedListener)iterator.next();
            event = new SelectionChangedEvent(this, new StructuredSelection(selection));
        }

    }

    private Image getCatalogIcon(CatalogDescriptor catalogDescriptor)
    {
        String key = catalogDescriptor.getUrl().toExternalForm();
        Image image = imageRegistry.get(key);
        if(image == null)
        {
            org.eclipse.jface.resource.ImageDescriptor catalogIcon = catalogDescriptor.getIcon();
            if(catalogIcon == null)
                return getDefaultCatalogImage();
            imageRegistry.put(key, catalogIcon);
            image = imageRegistry.get(key);
        }
        return image;
    }

    private Image getDefaultCatalogImage()
    {
        return MarketplaceClientUiPlugin.getInstance().getImageRegistry().get("NO_ICON_PROVIDED_CATALOG");
    }

    public void dispose()
    {
        imageRegistry.dispose();
        super.dispose();
    }

    public void addSelectionChangedListener(ISelectionChangedListener listener)
    {
        listeners.add(listener);
    }

    public void removeSelectionChangedListener(ISelectionChangedListener listener)
    {
        listeners.remove(listener);
    }

    public ISelection getSelection()
    {
        return new StructuredSelection(selection);
    }

    public void setSelection(ISelection newSelection)
    {
        if(newSelection instanceof IStructuredSelection)
        {
            IStructuredSelection structuredSelection = (IStructuredSelection)newSelection;
            selection = (CatalogDescriptor)structuredSelection.getFirstElement();
            refreshSelection();
        }
    }

    private void refreshSelection()
    {
        Control children[] = marketplaceArea.getChildren();
        Control acontrol[];
        int j = (acontrol = children).length;
        for(int i = 0; i < j; i++)
        {
            Control control = acontrol[i];
            int color;
            if(selection == control.getData())
                color = 26;
            else
                color = 1;
            control.setBackground(getDisplay().getSystemColor(color));
            ((Composite)control).getChildren()[0].setBackground(getDisplay().getSystemColor(color));
        }

    }

    public int getPreferredHeight()
    {
        return 42 + 2 * getBorderWidth() + 6;
    }

    private static final int ITEM_MARGIN = 5;
    private static final int MIN_SCROLL_HEIGHT = 42;
    private final MarketplaceCatalogConfiguration configuration;
    private final ImageRegistry imageRegistry = new ImageRegistry();
    private final List listeners = new LinkedList();
    private CatalogDescriptor selection;
    private Composite marketplaceArea;





}
