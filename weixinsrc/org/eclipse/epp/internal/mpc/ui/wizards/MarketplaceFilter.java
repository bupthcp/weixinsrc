// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceFilter.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.eclipse.equinox.internal.p2.discovery.Catalog;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;
import org.eclipse.equinox.internal.p2.ui.discovery.wizards.CatalogFilter;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.widgets.Composite;

public abstract class MarketplaceFilter extends CatalogFilter
{

    public MarketplaceFilter()
    {
    }

    public Catalog getCatalog()
    {
        return catalog;
    }

    public void setCatalog(Catalog catalog)
    {
        this.catalog = catalog;
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener)
    {
        listeners.add(listener);
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener)
    {
        listeners.remove(listener);
    }

    protected void firePropertyChange(String property, Object oldValue, Object newValue)
    {
        if(!listeners.isEmpty())
        {
            PropertyChangeEvent event = new PropertyChangeEvent(this, property, oldValue, newValue);
            IPropertyChangeListener listener;
            for(Iterator iterator = listeners.iterator(); iterator.hasNext(); listener.propertyChange(event))
                listener = (IPropertyChangeListener)iterator.next();

        }
    }

    public abstract void createControl(Composite composite);

    public abstract boolean select(CatalogItem catalogitem);

    public abstract void catalogUpdated(boolean flag);

    private Catalog catalog;
    private final List listeners = new CopyOnWriteArrayList();
}
