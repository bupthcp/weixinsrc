// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CatalogExtensionPointReader.java

package org.eclipse.epp.internal.mpc.ui;

import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.*;
import org.eclipse.epp.mpc.ui.CatalogDescriptor;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui:
//            MarketplaceClientUi, Messages

class CatalogExtensionPointReader
{

    CatalogExtensionPointReader()
    {
    }

    public List getCatalogDescriptors()
    {
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.epp.mpc.ui", "catalog");
        if(extensionPoint == null)
            throw new IllegalStateException();
        List descriptors = new ArrayList();
        IConfigurationElement aiconfigurationelement[];
        int j = (aiconfigurationelement = extensionPoint.getConfigurationElements()).length;
        for(int i = 0; i < j; i++)
        {
            IConfigurationElement element = aiconfigurationelement[i];
            if(element.getName().equals("catalog"))
                try
                {
                    String urlText = element.getAttribute("url");
                    if(urlText == null || urlText.trim().length() == 0)
                        throw new Exception(Messages.CatalogExtensionPointReader_urlRequired);
                    URL url = new URL(urlText);
                    String label = element.getAttribute("label");
                    if(label == null || label.trim().length() == 0)
                        throw new Exception(Messages.CatalogExtensionPointReader_labelRequired);
                    CatalogDescriptor descriptor = new CatalogDescriptor(url, label);
                    descriptor.setDescription(element.getAttribute("description"));
                    String icon = element.getAttribute("icon");
                    if(icon != null)
                    {
                        URL iconResource = Platform.getBundle(element.getContributor().getName()).getResource(icon);
                        if(iconResource == null)
                            throw new Exception(NLS.bind(Messages.CatalogExtensionPointReader_cannotFindResource, icon));
                        descriptor.setIcon(ImageDescriptor.createFromURL(iconResource));
                    }
                    String selfContained = element.getAttribute("selfContained");
                    if(selfContained == null || selfContained.trim().length() == 0)
                        selfContained = "true";
                    else
                        selfContained = selfContained.trim();
                    descriptor.setInstallFromAllRepositories(!Boolean.valueOf(selfContained).booleanValue());
                    String dependenciesRepository = element.getAttribute("dependenciesRepository");
                    if(dependenciesRepository != null && dependenciesRepository.trim().length() > 0)
                    {
                        URL repository = new URL(dependenciesRepository);
                        repository.toURI();
                        descriptor.setDependenciesRepository(repository);
                    }
                    if(!descriptors.contains(descriptor))
                        descriptors.add(descriptor);
                }
                catch(Exception e)
                {
                    MarketplaceClientUi.error(NLS.bind(Messages.CatalogExtensionPointReader_cannotRegisterCatalog_bundle_reason, element.getContributor().getName(), e.getMessage()), e);
                }
        }

        return descriptors;
    }
}
