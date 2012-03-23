// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CatalogRegistry.java

package org.eclipse.epp.internal.mpc.ui;

import java.net.URL;
import java.util.*;
import java.util.concurrent.CopyOnWriteArrayList;
import org.eclipse.epp.internal.mpc.core.service.CatalogBranding;
import org.eclipse.epp.mpc.ui.CatalogDescriptor;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui:
//            CatalogExtensionPointReader

public class CatalogRegistry
{

    public static synchronized CatalogRegistry getInstance()
    {
        if(instance == null)
            instance = new CatalogRegistry();
        return instance;
    }

    public CatalogRegistry()
    {
        catalogDescriptors.addAll((new CatalogExtensionPointReader()).getCatalogDescriptors());
    }

    public void register(CatalogDescriptor catalogDescriptor)
    {
        catalogDescriptors.add(new CatalogDescriptor(catalogDescriptor));
    }

    public void unregister(CatalogDescriptor catalogDescriptor)
    {
        catalogDescriptors.remove(catalogDescriptor);
    }

    public List getCatalogDescriptors()
    {
        return Collections.unmodifiableList(catalogDescriptors);
    }

    public void addCatalogBranding(CatalogDescriptor descriptor, CatalogBranding branding)
    {
        catalogBrandings.put(descriptor, branding);
    }

    public CatalogBranding getCatalogBranding(CatalogDescriptor descriptor)
    {
        return (CatalogBranding)catalogBrandings.get(descriptor);
    }

    public CatalogDescriptor findCatalogDescriptor(String url)
    {
        if(url == null || url.length() == 0)
            return null;
        for(Iterator iterator = catalogDescriptors.iterator(); iterator.hasNext();)
        {
            CatalogDescriptor catalogDescriptor = (CatalogDescriptor)iterator.next();
            if(url.startsWith(catalogDescriptor.getUrl().toExternalForm()))
                return catalogDescriptor;
        }

        return null;
    }

    private static CatalogRegistry instance;
    private final List catalogDescriptors = new CopyOnWriteArrayList();
    private final Map catalogBrandings = new HashMap();
}
