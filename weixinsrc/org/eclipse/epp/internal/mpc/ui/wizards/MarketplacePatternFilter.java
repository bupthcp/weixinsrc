// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplacePatternFilter.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.util.List;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogCategory;
import org.eclipse.equinox.internal.p2.ui.discovery.util.PatternFilter;
import org.eclipse.jface.viewers.Viewer;

class MarketplacePatternFilter extends PatternFilter
{

    public MarketplacePatternFilter()
    {
        setIncludeLeadingWildcard(true);
    }

    protected Object[] getChildren(Object element)
    {
        if(element instanceof CatalogCategory)
            return ((CatalogCategory)element).getItems().toArray();
        else
            return super.getChildren(element);
    }

    protected boolean isLeafMatch(Viewer filteredViewer, Object element)
    {
        return true;
    }
}
