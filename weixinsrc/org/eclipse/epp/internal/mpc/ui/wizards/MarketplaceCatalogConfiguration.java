// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceCatalogConfiguration.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.util.*;
import org.eclipse.epp.mpc.ui.CatalogDescriptor;
import org.eclipse.equinox.internal.p2.ui.discovery.wizards.CatalogConfiguration;

public class MarketplaceCatalogConfiguration extends CatalogConfiguration
{

    public MarketplaceCatalogConfiguration()
    {
        catalogDescriptors = new ArrayList();
        setShowTagFilter(false);
        setShowInstalled(true);
        setShowInstalledFilter(false);
        setVerifyUpdateSiteAvailability(true);
        setShowCategories(false);
    }

    public List getCatalogDescriptors()
    {
        return catalogDescriptors;
    }

    public void setCatalogDescriptors(List catalogDescriptors)
    {
        this.catalogDescriptors = catalogDescriptors;
    }

    public CatalogDescriptor getCatalogDescriptor()
    {
        return catalogDescriptor;
    }

    public void setCatalogDescriptor(CatalogDescriptor catalogDescriptor)
    {
        this.catalogDescriptor = catalogDescriptor;
    }

    public void setInitialState(String initialState)
    {
        this.initialState = initialState;
    }

    public String getInitialState()
    {
        return initialState;
    }

    public Map getInitialOperationByNodeId()
    {
        return initialOperationByNodeId;
    }

    public void setInitialOperationByNodeId(Map initialOperationByNodeId)
    {
        this.initialOperationByNodeId = initialOperationByNodeId;
    }

    private List catalogDescriptors;
    private CatalogDescriptor catalogDescriptor;
    private String initialState;
    private Map initialOperationByNodeId;
}
