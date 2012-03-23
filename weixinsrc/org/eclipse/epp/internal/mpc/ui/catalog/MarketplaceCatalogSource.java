// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceCatalogSource.java

package org.eclipse.epp.internal.mpc.ui.catalog;

import java.io.IOException;
import java.net.URL;
import org.eclipse.epp.internal.mpc.core.service.MarketplaceService;
import org.eclipse.equinox.internal.p2.discovery.AbstractCatalogSource;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.catalog:
//            ResourceProvider

public class MarketplaceCatalogSource extends AbstractCatalogSource
{

    public MarketplaceCatalogSource(MarketplaceService marketplaceService)
    {
        this.marketplaceService = marketplaceService;
        try
        {
            resourceProvider = new ResourceProvider();
        }
        catch(IOException e)
        {
            throw new IllegalStateException(e);
        }
    }

    public Object getId()
    {
        return marketplaceService;
    }

    public URL getResource(String resourceName)
    {
        return resourceProvider.getResource(resourceName);
    }

    public ResourceProvider getResourceProvider()
    {
        return resourceProvider;
    }

    public MarketplaceService getMarketplaceService()
    {
        return marketplaceService;
    }

    public void dispose()
    {
        if(resourceProvider != null)
        {
            resourceProvider.dispose();
            resourceProvider = null;
        }
    }

    private final MarketplaceService marketplaceService;
    private ResourceProvider resourceProvider;
}
