// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceNodeCatalogItem.java

package org.eclipse.epp.internal.mpc.ui.catalog;

import java.net.URL;
import org.eclipse.epp.internal.mpc.core.service.Node;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;

public class MarketplaceNodeCatalogItem extends CatalogItem
{

    public MarketplaceNodeCatalogItem()
    {
    }

    public Node getData()
    {
        return (Node)super.getData();
    }

    public URL getMarketplaceUrl()
    {
        return marketplaceUrl;
    }

    public void setMarketplaceUrl(URL marketplaceUrl)
    {
        this.marketplaceUrl = marketplaceUrl;
    }

    public Boolean getUpdateAvailable()
    {
        return updateAvailable;
    }

    public void setUpdateAvailable(Boolean updateAvailable)
    {
        this.updateAvailable = updateAvailable;
    }

    public int hashCode()
    {
        int result = 1;
        result = 31 * result + (id != null ? id.hashCode() : 0);
        return result;
    }

    public boolean equals(Object obj)
    {
        if(this == obj)
            return true;
        if(obj == null)
            return false;
        if(getClass() != obj.getClass())
            return false;
        MarketplaceNodeCatalogItem other = (MarketplaceNodeCatalogItem)obj;
        if(id == null)
        {
            if(other.id != null)
                return false;
        } else
        if(!id.equals(other.id))
            return false;
        return true;
    }

    public volatile Object getData()
    {
        return getData();
    }

    private URL marketplaceUrl;
    private Boolean updateAvailable;
}
