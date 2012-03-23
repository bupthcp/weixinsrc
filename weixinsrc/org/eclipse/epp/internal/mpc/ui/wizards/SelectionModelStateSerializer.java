// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SelectionModelStateSerializer.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.epp.internal.mpc.core.service.Node;
import org.eclipse.epp.internal.mpc.ui.catalog.MarketplaceCatalog;
import org.eclipse.epp.internal.mpc.ui.catalog.MarketplaceNodeCatalogItem;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            Operation, SelectionModel

public class SelectionModelStateSerializer
{

    public SelectionModelStateSerializer(MarketplaceCatalog catalog, SelectionModel selectionModel)
    {
        this.catalog = catalog;
        this.selectionModel = selectionModel;
    }

    public String serialize()
    {
        StringBuilder state = new StringBuilder(1024);
        for(Iterator iterator = selectionModel.getItemToOperation().entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if(entry.getValue() != Operation.NONE)
            {
                if(state.length() > 0)
                    state.append(' ');
                Node data = (Node)((CatalogItem)entry.getKey()).getData();
                state.append(data.getId());
                state.append('=');
                state.append(((Operation)entry.getValue()).name());
            }
        }

        return state.toString();
    }

    public void deserialize(IProgressMonitor monitor, String state, Map operationByNodeIdExtras)
    {
        Map operationByNodeId = new HashMap();
        if(state != null && state.length() > 0)
        {
            Pattern pattern = Pattern.compile("([^\\s=]+)=(\\S+)");
            String nodeId;
            Operation operation;
            for(Matcher matcher = pattern.matcher(state); matcher.find(); operationByNodeId.put(nodeId, operation))
            {
                nodeId = matcher.group(1);
                String operationName = matcher.group(2);
                operation = Operation.valueOf(operationName);
            }

        }
        if(operationByNodeIdExtras != null)
            operationByNodeId.putAll(operationByNodeIdExtras);
        if(!operationByNodeId.isEmpty())
        {
            catalog.performQuery(monitor, operationByNodeId.keySet());
            for(Iterator iterator = catalog.getItems().iterator(); iterator.hasNext();)
            {
                CatalogItem item = (CatalogItem)iterator.next();
                if(item instanceof MarketplaceNodeCatalogItem)
                {
                    MarketplaceNodeCatalogItem nodeItem = (MarketplaceNodeCatalogItem)item;
                    Operation operation = (Operation)operationByNodeId.get(nodeItem.getData().getId());
                    if(operation != null && operation != Operation.NONE)
                    {
                        if(nodeItem.isInstalled() && operation == Operation.INSTALL)
                            operation = Operation.CHECK_FOR_UPDATES;
                        selectionModel.select(nodeItem, operation);
                    }
                }
            }

        }
    }

    public void deserialize(IProgressMonitor monitor, String state)
    {
        deserialize(monitor, state, null);
    }

    private final SelectionModel selectionModel;
    private final MarketplaceCatalog catalog;
}
