// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CatalogDescriptor.java

package org.eclipse.epp.mpc.ui;

import java.net.*;
import org.eclipse.jface.resource.ImageDescriptor;

public final class CatalogDescriptor
{

    public CatalogDescriptor()
    {
    }

    public CatalogDescriptor(URL url, String label)
    {
        this.url = url;
        this.label = label;
    }

    public CatalogDescriptor(CatalogDescriptor catalogDescriptor)
    {
        if(catalogDescriptor == null)
        {
            throw new IllegalArgumentException();
        } else
        {
            url = catalogDescriptor.url;
            label = catalogDescriptor.label;
            description = catalogDescriptor.description;
            icon = catalogDescriptor.icon;
            dependenciesRepository = catalogDescriptor.dependenciesRepository;
            installFromAllRepositories = catalogDescriptor.installFromAllRepositories;
            return;
        }
    }

    public URL getUrl()
    {
        return url;
    }

    public void setUrl(URL url)
    {
        this.url = url;
    }

    public String getDescription()
    {
        return description;
    }

    public void setDescription(String description)
    {
        this.description = description;
    }

    public ImageDescriptor getIcon()
    {
        return icon;
    }

    public void setIcon(ImageDescriptor icon)
    {
        this.icon = icon;
    }

    public String getLabel()
    {
        return label;
    }

    public void setLabel(String label)
    {
        this.label = label;
    }

    public boolean isInstallFromAllRepositories()
    {
        return installFromAllRepositories;
    }

    public void setInstallFromAllRepositories(boolean installFromAllRepositories)
    {
        this.installFromAllRepositories = installFromAllRepositories;
    }

    public URL getDependenciesRepository()
    {
        return dependenciesRepository;
    }

    public void setDependenciesRepository(URL dependenciesRepository)
    {
        this.dependenciesRepository = dependenciesRepository;
    }

    public int hashCode()
    {
        int result = 1;
        result = 31 * result + (url != null ? url.toString().hashCode() : 0);
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
        CatalogDescriptor other = (CatalogDescriptor)obj;
        return urlEquals(url, other.url);
    }

    private static boolean urlEquals(URL url1, URL url2)
    {
        if(url1 == url2)
            return true;
        if(url1 == null)
            return false;
        if(url2 == null)
            return false;
        try
        {
            return url1.toURI().equals(url2.toURI());
        }
        catch(URISyntaxException _ex)
        {
            return false;
        }
    }

    public String toString()
    {
        return (new StringBuilder("CatalogDescriptor [url=")).append(url).append("]").toString();
    }

    private URL url;
    private String label;
    private String description;
    private ImageDescriptor icon;
    private boolean installFromAllRepositories;
    private URL dependenciesRepository;
}
