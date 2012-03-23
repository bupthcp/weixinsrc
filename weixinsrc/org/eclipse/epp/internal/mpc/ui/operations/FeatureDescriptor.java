// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   FeatureDescriptor.java

package org.eclipse.epp.internal.mpc.ui.operations;

import org.eclipse.equinox.internal.p2.metadata.TranslationSupport;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;

public class FeatureDescriptor
{

    public FeatureDescriptor(IInstallableUnit iu)
    {
        id = iu.getId();
        simpleId = id.endsWith(".feature.group") ? id.substring(0, id.length() - ".feature.group".length()) : id;
        name = getProperty(iu, "org.eclipse.equinox.p2.name");
        description = getProperty(iu, "org.eclipse.equinox.p2.description");
        provider = getProperty(iu, "org.eclipse.equinox.p2.provider");
    }

    public FeatureDescriptor(String featureId)
    {
        id = featureId.endsWith(".feature.group") ? featureId : (new StringBuilder(String.valueOf(featureId))).append(".feature.group").toString();
        simpleId = id.substring(0, id.length() - ".feature.group".length());
        name = simpleId;
        description = null;
        provider = null;
    }

    private static String getProperty(IInstallableUnit candidate, String key)
    {
        String value = TranslationSupport.getInstance().getIUProperty(candidate, key, null);
        return value == null ? "" : value;
    }

    public String getId()
    {
        return id;
    }

    public String getSimpleId()
    {
        return simpleId;
    }

    public String getName()
    {
        return name;
    }

    public String getDescription()
    {
        return description;
    }

    public String getProvider()
    {
        return provider;
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
        FeatureDescriptor other = (FeatureDescriptor)obj;
        if(id == null)
        {
            if(other.id != null)
                return false;
        } else
        if(!id.equals(other.id))
            return false;
        return true;
    }

    public String toString()
    {
        return (new StringBuilder("FeatureDescriptor [id=")).append(id).append("]").toString();
    }

    private final String id;
    private final String simpleId;
    private final String name;
    private final String description;
    private final String provider;
}
