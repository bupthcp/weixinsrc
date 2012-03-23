// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceInfo.java

package org.eclipse.epp.internal.mpc.ui.catalog;

import java.beans.XMLDecoder;
import java.beans.XMLEncoder;
import java.io.*;
import java.net.*;
import java.util.*;
import org.eclipse.core.runtime.Platform;
import org.eclipse.epp.internal.mpc.core.service.Ius;
import org.eclipse.epp.internal.mpc.core.service.Node;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUi;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;

public class MarketplaceInfo
{

    public MarketplaceInfo()
    {
        nodeKeyToIU = new HashMap();
        iuToNodeKey = new HashMap();
    }

    public Map getNodeKeyToIU()
    {
        return nodeKeyToIU;
    }

    public void setNodeKeyToIU(Map nodeKeyToIU)
    {
        this.nodeKeyToIU = nodeKeyToIU;
    }

    public Map getIuToNodeKey()
    {
        return iuToNodeKey;
    }

    public void setIuToNodeKey(Map iuToNodeKey)
    {
        this.iuToNodeKey = iuToNodeKey;
    }

    public synchronized Set computeInstalledNodes(URL repositoryUrl, Set installedIus)
    {
        Set nodes = new HashSet();
        String keyPrefix = (new StringBuilder(String.valueOf(computeUrlKey(repositoryUrl)))).append('#').toString();
        for(Iterator iterator = nodeKeyToIU.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if(((String)entry.getKey()).startsWith(keyPrefix))
            {
                List ius = (List)nodeKeyToIU.get(entry.getKey());
                if(computeInstalled(installedIus, ius))
                {
                    String nodeId = ((String)entry.getKey()).substring(keyPrefix.length());
                    Node node = new Node();
                    node.setId(nodeId);
                    nodes.add(node);
                }
            }
        }

        return nodes;
    }

    public boolean computeInstalled(Set installedFeatures, Set knownRepositories, Node node)
    {
        String updateurl;
        updateurl = node.getUpdateurl();
        if(updateurl == null)
            return false;
        URI uri = (new URL(updateurl)).toURI();
        if(!knownRepositories.contains(uri))
            return false;
        break MISSING_BLOCK_LABEL_46;
        JVM INSTR pop ;
        return false;
        JVM INSTR pop ;
        return false;
        if(node.getIus() != null && !node.getIus().getIu().isEmpty())
        {
            List ius = new ArrayList(new HashSet(node.getIus().getIu()));
            return computeInstalled(installedFeatures, ius);
        } else
        {
            return false;
        }
    }

    private boolean computeInstalled(Set installedIus, List ius)
    {
        int installCount = 0;
        for(Iterator iterator = ius.iterator(); iterator.hasNext();)
        {
            String iu = (String)iterator.next();
            if(installedIus.contains(iu) || installedIus.contains((new StringBuilder(String.valueOf(iu))).append(".feature.group").toString()))
                installCount++;
        }

        return installCount > 0;
    }

    public synchronized void map(URL marketUrl, Node node)
    {
        String itemKey = computeItemKey(marketUrl, node);
        if(node.getIus() != null && !node.getIus().getIu().isEmpty())
        {
            List ius = new ArrayList(new HashSet(node.getIus().getIu()));
            nodeKeyToIU.put(itemKey, ius);
            for(Iterator iterator = ius.iterator(); iterator.hasNext();)
            {
                String iu = (String)iterator.next();
                List catalogNodes = (List)iuToNodeKey.get(iu);
                if(catalogNodes != null)
                {
                    if(!catalogNodes.contains(itemKey))
                        catalogNodes.add(itemKey);
                } else
                {
                    catalogNodes = new ArrayList(1);
                    catalogNodes.add(itemKey);
                    iuToNodeKey.put(iu, catalogNodes);
                }
            }

        } else
        {
            List ius = (List)nodeKeyToIU.remove(itemKey);
            if(ius != null)
            {
                for(Iterator iterator1 = ius.iterator(); iterator1.hasNext();)
                {
                    String iu = (String)iterator1.next();
                    List catalogNodes = (List)iuToNodeKey.get(iu);
                    if(catalogNodes != null)
                    {
                        catalogNodes.remove(itemKey);
                        if(catalogNodes.isEmpty())
                            iuToNodeKey.remove(iu);
                    }
                }

            }
        }
    }

    private String computeItemKey(URL marketUrl, Node item)
    {
        return (new StringBuilder(String.valueOf(computeUrlKey(marketUrl)))).append('#').append(item.getId()).toString();
    }

    private String computeUrlKey(URL url)
    {
        try
        {
            return url.toURI().toString();
        }
        catch(URISyntaxException e)
        {
            throw new IllegalStateException(e);
        }
    }

    public static MarketplaceInfo getInstance()
    {
        File registryFile = computeRegistryFile();
        if(registryFile == null || !registryFile.exists()) goto _L2; else goto _L1
_L1:
        /*<invalid signature>*/java.lang.Object local = org/eclipse/epp/internal/mpc/ui/catalog/MarketplaceInfo;
        JVM INSTR monitorenter ;
        InputStream in = new BufferedInputStream(new FileInputStream(registryFile));
        MarketplaceInfo marketplaceinfo;
        XMLDecoder decoder = new XMLDecoder(in);
        Object object = decoder.readObject();
        decoder.close();
        if(!(object instanceof MarketplaceInfo))
            break MISSING_BLOCK_LABEL_88;
        marketplaceinfo = (MarketplaceInfo)object;
        in.close();
        return marketplaceinfo;
        Exception exception;
        exception;
        in.close();
        throw exception;
        in.close();
        break MISSING_BLOCK_LABEL_100;
        Throwable t;
        t;
        MarketplaceClientUi.error(t);
        local;
        JVM INSTR monitorexit ;
          goto _L2
        local;
        JVM INSTR monitorexit ;
        throw ;
_L2:
        return new MarketplaceInfo();
    }

    public void save()
    {
        File registryFile = computeRegistryFile();
        if(registryFile == null) goto _L2; else goto _L1
_L1:
        /*<invalid signature>*/java.lang.Object local = org/eclipse/epp/internal/mpc/ui/catalog/MarketplaceInfo;
        JVM INSTR monitorenter ;
        OutputStream outputStream = new BufferedOutputStream(new FileOutputStream(registryFile));
        XMLEncoder encoder = new XMLEncoder(outputStream);
        encoder.writeObject(this);
        encoder.close();
        break MISSING_BLOCK_LABEL_62;
        Exception exception;
        exception;
        outputStream.close();
        throw exception;
        outputStream.close();
        break MISSING_BLOCK_LABEL_70;
        JVM INSTR pop ;
          goto _L2
        local;
        JVM INSTR monitorexit ;
        throw ;
_L2:
    }

    private static final File computeRegistryFile()
    {
        File dataFile = Platform.getBundle("org.eclipse.epp.mpc.ui").getBundleContext().getDataFile(PERSISTENT_FILE);
        if(dataFile != null)
            return dataFile;
        String userHome = System.getProperty("user.home");
        File userHomeFile = new File(userHome);
        if(userHomeFile.exists())
        {
            File mpcConfigLocation = new File(userHomeFile, ".eclipse_mpc");
            if(!mpcConfigLocation.exists() && !mpcConfigLocation.mkdir())
                return null;
            else
                return computeConfigFile(mpcConfigLocation);
        } else
        {
            return null;
        }
    }

    private static File computeConfigFile(File mpcConfigLocation)
    {
        return new File(mpcConfigLocation, PERSISTENT_FILE);
    }

    private static final String P2_FEATURE_GROUP_SUFFIX = ".feature.group";
    private static final String PERSISTENT_FILE = (new StringBuilder(String.valueOf(org/eclipse/epp/internal/mpc/ui/catalog/MarketplaceInfo.getSimpleName()))).append(".xml").toString();
    private Map nodeKeyToIU;
    private Map iuToNodeKey;

}
