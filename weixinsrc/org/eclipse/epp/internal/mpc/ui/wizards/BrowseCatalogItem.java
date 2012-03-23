// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   BrowseCatalogItem.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.io.UnsupportedEncodingException;
import java.net.*;
import org.eclipse.core.runtime.Status;
import org.eclipse.epp.internal.mpc.core.service.Category;
import org.eclipse.epp.internal.mpc.core.service.Market;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUi;
import org.eclipse.epp.internal.mpc.ui.catalog.MarketplaceCategory;
import org.eclipse.epp.mpc.ui.CatalogDescriptor;
import org.eclipse.equinox.internal.p2.ui.discovery.wizards.AbstractDiscoveryItem;
import org.eclipse.equinox.internal.p2.ui.discovery.wizards.DiscoveryResources;
import org.eclipse.jface.layout.GridDataFactory;
import org.eclipse.jface.layout.GridLayoutFactory;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.statushandlers.StatusManager;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            IMarketplaceWebBrowser, MarketplaceViewer, Messages

public class BrowseCatalogItem extends AbstractDiscoveryItem
{

    public BrowseCatalogItem(Composite parent, DiscoveryResources resources, IShellProvider shellProvider, IMarketplaceWebBrowser browser, MarketplaceCategory category, CatalogDescriptor element, MarketplaceViewer viewer)
    {
        super(parent, 0, resources, element);
        this.resources = resources;
        this.shellProvider = shellProvider;
        this.browser = browser;
        this.category = category;
        this.viewer = viewer;
        createContent();
    }

    private void createContent()
    {
        Composite parent = this;
        GridLayoutFactory.swtDefaults().applyTo(parent);
        Link link = new Link(parent, 0);
        if(viewer.getQueryContentType() == MarketplaceViewer.ContentType.SEARCH)
            link.setText(NLS.bind(Messages.BrowseCatalogItem_browseMoreLink, Integer.valueOf(category.getMatchCount())));
        else
            link.setText(Messages.BrowseCatalogItem_browseMoreLinkNoCount);
        link.setToolTipText(NLS.bind(Messages.BrowseCatalogItem_openUrlBrowser, ((CatalogDescriptor)getData()).getUrl()));
        link.setBackground(null);
        link.addListener(13, new Listener() {

            public void handleEvent(Event event)
            {
                openMarketplace();
            }

            final BrowseCatalogItem this$0;

            
            {
                this$0 = BrowseCatalogItem.this;
                super();
            }
        }
);
        GridDataFactory.swtDefaults().grab(true, false).align(0x1000000, 0x1000000).applyTo(link);
    }

    protected void openMarketplace()
    {
        CatalogDescriptor catalogDescriptor = (CatalogDescriptor)getData();
        try
        {
            URL url = catalogDescriptor.getUrl();
            try
            {
                MarketplaceViewer.ContentType contentType = viewer.getQueryContentType();
                if(contentType == MarketplaceViewer.ContentType.SEARCH)
                {
                    String path = null;
                    String queryText = viewer.getQueryText();
                    if(queryText != null && queryText.trim().length() > 0)
                    {
                        path = (new StringBuilder("search/apachesolr_search/")).append(URLEncoder.encode(queryText.trim(), "UTF-8")).toString();
                        String filter = "";
                        if(viewer.getQueryMarket() != null)
                        {
                            filter = (new StringBuilder(String.valueOf(filter))).append("tid:").toString();
                            filter = (new StringBuilder(String.valueOf(filter))).append(URLEncoder.encode(viewer.getQueryMarket().getId(), "UTF-8")).toString();
                        }
                        if(viewer.getQueryCategory() != null)
                        {
                            if(filter.length() > 0)
                                filter = (new StringBuilder(String.valueOf(filter))).append(' ').toString();
                            filter = (new StringBuilder(String.valueOf(filter))).append("tid:").toString();
                            filter = (new StringBuilder(String.valueOf(filter))).append(URLEncoder.encode(viewer.getQueryCategory().getId(), "UTF-8")).toString();
                        }
                        if(filter.length() > 0)
                            path = (new StringBuilder(String.valueOf(path))).append("?filters=").append(URLEncoder.encode(filter, "UTF-8")).toString();
                    } else
                    if(viewer.getQueryCategory() != null)
                        path = (new StringBuilder("taxonomy/term/")).append(URLEncoder.encode(viewer.getQueryCategory().getId(), "UTF-8")).toString();
                    else
                    if(viewer.getQueryMarket() != null)
                        path = (new StringBuilder("taxonomy/term/")).append(URLEncoder.encode(viewer.getQueryMarket().getId(), "UTF-8")).toString();
                    if(path != null)
                        url = new URL(url, path);
                }
            }
            catch(UnsupportedEncodingException e)
            {
                MarketplaceClientUi.error(e);
            }
            catch(MalformedURLException e)
            {
                MarketplaceClientUi.error(e);
            }
            browser.openUrl(url.toURI().toString());
        }
        catch(URISyntaxException e)
        {
            String message = String.format(Messages.BrowseCatalogItem_cannotOpenBrowser, new Object[0]);
            org.eclipse.core.runtime.IStatus status = new Status(4, "org.eclipse.epp.mpc.ui", 4, message, e);
            StatusManager.getManager().handle(status, 7);
        }
    }

    protected void refresh()
    {
    }

    private static final String TID = "tid:";
    private static final String UTF_8 = "UTF-8";
    private final MarketplaceViewer viewer;
    private final DiscoveryResources resources;
    private final IShellProvider shellProvider;
    private final MarketplaceCategory category;
    private final IMarketplaceWebBrowser browser;
}
