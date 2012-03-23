// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceClient.java

package org.eclipse.epp.mpc.ui;

import java.util.Iterator;
import java.util.List;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.epp.internal.mpc.ui.CatalogRegistry;
import org.eclipse.epp.internal.mpc.ui.commands.MarketplaceWizardCommand;

// Referenced classes of package org.eclipse.epp.mpc.ui:
//            CatalogDescriptor

public class MarketplaceClient
{

    public MarketplaceClient()
    {
    }

    public static void addCatalogDescriptor(CatalogDescriptor catalogDescriptor)
    {
        if(catalogDescriptor == null)
        {
            throw new IllegalArgumentException();
        } else
        {
            CatalogRegistry.getInstance().register(catalogDescriptor);
            return;
        }
    }

    public static void removeCatalogDescriptor(CatalogDescriptor catalogDescriptor)
    {
        if(catalogDescriptor == null)
        {
            throw new IllegalArgumentException();
        } else
        {
            CatalogRegistry.getInstance().unregister(catalogDescriptor);
            return;
        }
    }

    public static void openMarketplaceWizard(List catalogDescriptors)
        throws IllegalArgumentException, ExecutionException
    {
        if(catalogDescriptors != null)
        {
            if(catalogDescriptors.isEmpty())
                throw new IllegalArgumentException();
            for(Iterator iterator = catalogDescriptors.iterator(); iterator.hasNext();)
            {
                CatalogDescriptor descriptor = (CatalogDescriptor)iterator.next();
                if(descriptor.getUrl() == null)
                    throw new IllegalArgumentException();
                if(descriptor.getLabel() == null)
                    throw new IllegalArgumentException();
            }

        }
        MarketplaceWizardCommand command = new MarketplaceWizardCommand();
        command.setCatalogDescriptors(catalogDescriptors);
        command.execute(new ExecutionEvent());
    }
}
