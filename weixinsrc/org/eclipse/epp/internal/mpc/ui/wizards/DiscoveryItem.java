// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   DiscoveryItem.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.Iterator;
import java.util.List;
import org.eclipse.epp.internal.mpc.core.service.*;
import org.eclipse.epp.internal.mpc.core.util.TextUtil;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUiPlugin;
import org.eclipse.epp.internal.mpc.ui.util.Util;
import org.eclipse.equinox.internal.p2.discovery.AbstractCatalogSource;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;
import org.eclipse.equinox.internal.p2.discovery.model.Overview;
import org.eclipse.equinox.internal.p2.ui.discovery.util.WorkbenchUtil;
import org.eclipse.equinox.internal.p2.ui.discovery.wizards.AbstractDiscoveryItem;
import org.eclipse.equinox.internal.p2.ui.discovery.wizards.DiscoveryResources;
import org.eclipse.jface.layout.GridDataFactory;
import org.eclipse.jface.layout.GridLayoutFactory;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.events.*;
import org.eclipse.swt.graphics.*;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            ItemButtonController, MarketplaceViewer, Messages, OverviewToolTip, 
//            SelectionModel, ShareSolutionLink, IMarketplaceWebBrowser, Operation

public class DiscoveryItem extends AbstractDiscoveryItem
    implements PropertyChangeListener
{

    public DiscoveryItem(Composite parent, int style, DiscoveryResources resources, IShellProvider shellProvider, IMarketplaceWebBrowser browser, final CatalogItem connector, MarketplaceViewer viewer)
    {
        super(parent, style, resources, connector);
        this.shellProvider = shellProvider;
        this.browser = browser;
        this.connector = connector;
        this.viewer = viewer;
        connector.addPropertyChangeListener(this);
        addDisposeListener(new DisposeListener() {

            public void widgetDisposed(DisposeEvent e)
            {
                connector.removePropertyChangeListener(DiscoveryItem.this);
            }

            final DiscoveryItem this$0;
            private final CatalogItem val$connector;

            
            {
                this$0 = DiscoveryItem.this;
                connector = catalogitem;
                super();
            }
        }
);
        createContent();
    }

    private void createContent()
    {
        GridLayout layout = new GridLayout(3, false);
        layout.marginLeft = 7;
        layout.marginTop = 2;
        layout.marginBottom = 2;
        setLayout(layout);
        checkboxContainer = new Composite(this, 0);
        GridDataFactory.swtDefaults().align(0x1000000, 1).span(1, 2).applyTo(checkboxContainer);
        GridLayoutFactory.fillDefaults().applyTo(checkboxContainer);
        iconLabel = new Label(checkboxContainer, 0);
        GridDataFactory.swtDefaults().align(0x1000000, 0x1000000).hint(55, 40).minSize(55, 40).applyTo(iconLabel);
        if(connector.getIcon() != null)
            try
            {
                Image image = resources.getIconImage(connector.getSource(), connector.getIcon(), 32, false);
                Rectangle bounds = image.getBounds();
                if(bounds.width > 55 || bounds.height > 40)
                {
                    final Image scaledImage = Util.scaleImage(image, 55, 40);
                    image = scaledImage;
                    iconLabel.addDisposeListener(new DisposeListener() {

                        public void widgetDisposed(DisposeEvent e)
                        {
                            scaledImage.dispose();
                        }

                        final DiscoveryItem this$0;
                        private final Image val$scaledImage;

            
            {
                this$0 = DiscoveryItem.this;
                scaledImage = image;
                super();
            }
                    }
);
                }
                iconLabel.setImage(image);
            }
            catch(SWTException _ex) { }
        if(iconLabel.getImage() == null)
            iconLabel.setImage(MarketplaceClientUiPlugin.getInstance().getImageRegistry().get("NO_ICON_PROVIDED"));
        Composite nameComposite = new Composite(this, 0);
        GridDataFactory.fillDefaults().grab(true, false).align(4, 0x1000000).applyTo(nameComposite);
        nameComposite.setLayout(new GridLayout(2, false));
        nameLabel = new Label(nameComposite, 0);
        GridDataFactory.fillDefaults().grab(true, false).align(1, 0x1000000).applyTo(nameLabel);
        nameLabel.setFont(resources.getSmallHeaderFont());
        nameLabel.setText(TextUtil.escapeText(connector.getName()));
        ShareSolutionLink shareSolutionLink = new ShareSolutionLink(nameComposite, connector);
        GridDataFactory.fillDefaults().grab(true, false).align(0x1000008, 0x1000000).applyTo(shareSolutionLink);
        boolean internalBrowserAvailable = computeBrowserAvailable(this);
        if(internalBrowserAvailable && (hasTooltip(connector) || connector.isInstalled()))
        {
            ToolBar toolBar = new ToolBar(this, 0x800000);
            GridDataFactory.fillDefaults().align(0x1000008, 0x1000000).applyTo(toolBar);
            if(hasTooltip(connector))
            {
                infoButton = new ToolItem(toolBar, 8);
                infoButton.setImage(resources.getInfoImage());
                infoButton.setToolTipText(Messages.DiscoveryItem_showOverview);
                hookTooltip(toolBar, infoButton, this, nameLabel, connector.getSource(), connector.getOverview(), null);
            }
        } else
        if(!internalBrowserAvailable && hasOverviewUrl(connector))
        {
            ToolBar toolBar = new ToolBar(this, 0x800000);
            GridDataFactory.fillDefaults().align(0x1000008, 0x1000000).applyTo(toolBar);
            infoButton = new ToolItem(toolBar, 8);
            infoButton.setImage(resources.getInfoImage());
            infoButton.setToolTipText(Messages.DiscoveryItem_showOverview);
            infoButton.addSelectionListener(new SelectionAdapter() {

                public void widgetSelected(SelectionEvent e)
                {
                    WorkbenchUtil.openUrl(connector.getOverview().getUrl().trim(), 128);
                }

                final DiscoveryItem this$0;

            
            {
                this$0 = DiscoveryItem.this;
                super();
            }
            }
);
        } else
        {
            Label label = new Label(this, 0);
            label.setText(" ");
        }
        description = new Label(this, 64);
        GridDataFactory.fillDefaults().grab(true, false).span(2, 1).hint(100, -1).applyTo(description);
        String descriptionText = connector.getDescription();
        int maxDescriptionLength = 162;
        if(descriptionText == null)
            descriptionText = "";
        else
            descriptionText = TextUtil.stripHtmlMarkup(descriptionText).trim();
        if(descriptionText.length() > maxDescriptionLength)
        {
            int truncationIndex = maxDescriptionLength;
            for(int x = truncationIndex; x > 0; x--)
            {
                if(!Character.isWhitespace(descriptionText.charAt(x)))
                    continue;
                truncationIndex = x;
                break;
            }

            descriptionText = (new StringBuilder(String.valueOf(descriptionText.substring(0, truncationIndex)))).append(Messages.DiscoveryItem_truncatedTextSuffix).toString();
        }
        descriptionText = descriptionText.replaceAll("(\\r\\n)|\\n|\\r|\\s{2,}", " ");
        description.setText(TextUtil.escapeText(descriptionText));
        (new Label(this, 0)).setText(" ");
        Composite composite = new Composite(this, 0);
        GridDataFactory.fillDefaults().span(2, 1).grab(true, false).applyTo(composite);
        createProviderLabel(composite);
        if(hasInstallMetadata())
        {
            Button button = new Button(composite, 0);
            Button secondaryButton = null;
            if(connector.isInstalled())
                secondaryButton = new Button(composite, 0);
            buttonController = new ItemButtonController(viewer, this, button, secondaryButton);
            GridDataFactory.swtDefaults().align(0x1000008, 128).applyTo(button);
            if(secondaryButton != null)
                GridDataFactory.swtDefaults().align(0x1000008, 128).applyTo(secondaryButton);
        } else
        {
            installInfoLink = new Link(composite, 0);
            installInfoLink.setText(Messages.DiscoveryItem_installInstructions);
            installInfoLink.setToolTipText(Messages.DiscoveryItem_installInstructionsTooltip);
            installInfoLink.setBackground(null);
            installInfoLink.addListener(13, new Listener() {

                public void handleEvent(Event event)
                {
                    browser.openUrl(((Node)connector.getData()).getUrl());
                }

                final DiscoveryItem this$0;

            
            {
                this$0 = DiscoveryItem.this;
                super();
            }
            }
);
            GridDataFactory.swtDefaults().align(0x1000008, 0x1000000).applyTo(installInfoLink);
        }
        createTagsLabel(composite);
        GridLayoutFactory.fillDefaults().numColumns(2).margins(0, 0).spacing(5, 0).applyTo(composite);
    }

    private boolean hasOverviewUrl(CatalogItem connector)
    {
        return connector.getOverview() != null && connector.getOverview().getUrl() != null && connector.getOverview().getUrl().trim().length() > 0;
    }

    private synchronized boolean computeBrowserAvailable(Composite composite)
    {
        if(browserAvailable == null)
            try
            {
                Browser browser = new Browser(composite, 0);
                browser.dispose();
                browserAvailable = Boolean.valueOf(true);
            }
            catch(SWTError _ex)
            {
                browserAvailable = Boolean.valueOf(false);
            }
        return browserAvailable.booleanValue();
    }

    private boolean hasInstallMetadata()
    {
        return !connector.getInstallableUnits().isEmpty() && connector.getSiteUrl() != null;
    }

    protected void createProviderLabel(Composite parent)
    {
        providerLabel = new Link(parent, 0x20000);
        GridDataFactory.fillDefaults().span(1, 1).align(1, 0x1000000).grab(true, false).applyTo(providerLabel);
        providerLabel.setForeground(resources.getColorDisabled());
        providerLabel.setText(NLS.bind(Messages.DiscoveryItem_byProviderLicense, connector.getProvider(), connector.getLicense()));
    }

    protected void createTagsLabel(Composite parent)
    {
        tagsLink = new Link(parent, 0);
        GridDataFactory.fillDefaults().span(1, 1).align(1, 0x1000000).grab(true, false).applyTo(tagsLink);
        StringBuffer tagsText = new StringBuffer();
        Tags tags = ((Node)connector.getData()).getTags();
        if(tags == null)
            return;
        for(Iterator iterator = tags.getTags().iterator(); iterator.hasNext(); tagsText.append(" "))
        {
            Tag tag = (Tag)iterator.next();
            String tagName = tag.getName();
            tagsText.append("<a href=\"");
            tagsText.append(tagName);
            tagsText.append("\">");
            tagsText.append(tagName.replace("&", "&&"));
            tagsText.append("</a>");
        }

        tagsLink.setText(tagsText.toString());
        tagsLink.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent event)
            {
                viewer.doQueryForTag(event.text);
            }

            final DiscoveryItem this$0;

            
            {
                this$0 = DiscoveryItem.this;
                super();
            }
        }
);
    }

    protected boolean hasTooltip(CatalogItem connector)
    {
        return connector.getOverview() != null && connector.getOverview().getSummary() != null && connector.getOverview().getSummary().length() > 0;
    }

    protected boolean maybeModifySelection(Operation operation)
    {
        viewer.modifySelection(connector, operation);
        return true;
    }

    public boolean isSelected()
    {
        return ((CatalogItem)getData()).isSelected();
    }

    public Operation getOperation()
    {
        return viewer.getSelectionModel().getOperation((CatalogItem)getData());
    }

    public void propertyChange(PropertyChangeEvent evt)
    {
        if(!isDisposed())
            getDisplay().asyncExec(new Runnable() {

                public void run()
                {
                    if(!isDisposed())
                        refresh();
                }

                final DiscoveryItem this$0;

            
            {
                this$0 = DiscoveryItem.this;
                super();
            }
            }
);
    }

    protected void refresh()
    {
        org.eclipse.swt.graphics.Color foreground = getForeground();
        nameLabel.setForeground(foreground);
        description.setForeground(foreground);
        if(installInfoLink != null)
            installInfoLink.setForeground(foreground);
        if(buttonController != null)
            buttonController.refresh();
    }

    private void hookRecursively(Control control, Listener listener)
    {
        control.addListener(12, listener);
        control.addListener(32, listener);
        control.addListener(5, listener);
        control.addListener(7, listener);
        control.addListener(3, listener);
        control.addListener(37, listener);
        if(control instanceof Composite)
        {
            Control acontrol[];
            int j = (acontrol = ((Composite)control).getChildren()).length;
            for(int i = 0; i < j; i++)
            {
                Control child = acontrol[i];
                hookRecursively(child, listener);
            }

        }
    }

    protected void hookTooltip(Control parent, Widget tipActivator, final Control exitControl, final Control titleControl, AbstractCatalogSource source, Overview overview, Image image)
    {
        final OverviewToolTip toolTip = new OverviewToolTip(parent, browser, source, overview, image);
        Listener listener = new Listener() {

            public void handleEvent(Event event)
            {
                switch(event.type)
                {
                case 32: // ' '
                    toolTip.show(titleControl);
                    break;

                case 12: // '\f'
                case 37: // '%'
                    toolTip.hide();
                    break;
                }
            }

            final DiscoveryItem this$0;
            private final OverviewToolTip val$toolTip;
            private final Control val$titleControl;

            
            {
                this$0 = DiscoveryItem.this;
                toolTip = overviewtooltip;
                titleControl = control;
                super();
            }
        }
;
        tipActivator.addListener(12, listener);
        tipActivator.addListener(37, listener);
        if(image != null)
            tipActivator.addListener(32, listener);
        Listener selectionListener = new Listener() {

            public void handleEvent(Event event)
            {
                toolTip.show(titleControl);
            }

            final DiscoveryItem this$0;
            private final OverviewToolTip val$toolTip;
            private final Control val$titleControl;

            
            {
                this$0 = DiscoveryItem.this;
                toolTip = overviewtooltip;
                titleControl = control;
                super();
            }
        }
;
        tipActivator.addListener(13, selectionListener);
        Listener exitListener = new Listener() {

            public void handleEvent(Event event)
            {
                switch(event.type)
                {
                default:
                    break;

                case 37: // '%'
                    toolTip.hide();
                    break;

                case 7: // '\007'
                    Rectangle containerBounds = exitControl.getBounds();
                    Point displayLocation = exitControl.getParent().toDisplay(containerBounds.x, containerBounds.y);
                    containerBounds.x = displayLocation.x;
                    containerBounds.y = displayLocation.y;
                    if(!containerBounds.contains(Display.getCurrent().getCursorLocation()))
                        toolTip.hide();
                    break;
                }
            }

            final DiscoveryItem this$0;
            private final OverviewToolTip val$toolTip;
            private final Control val$exitControl;

            
            {
                this$0 = DiscoveryItem.this;
                toolTip = overviewtooltip;
                exitControl = control;
                super();
            }
        }
;
        hookRecursively(exitControl, exitListener);
    }

    private static final int MAX_IMAGE_HEIGHT = 40;
    private static final int MAX_IMAGE_WIDTH = 55;
    private Composite checkboxContainer;
    private final CatalogItem connector;
    private Label description;
    private Label iconLabel;
    private ToolItem infoButton;
    private Label nameLabel;
    private Link providerLabel;
    private final IShellProvider shellProvider;
    private ToolItem updateButton;
    private final MarketplaceViewer viewer;
    private ItemButtonController buttonController;
    private Link installInfoLink;
    private final IMarketplaceWebBrowser browser;
    private Link tagsLink;
    private static Boolean browserAvailable;



}
