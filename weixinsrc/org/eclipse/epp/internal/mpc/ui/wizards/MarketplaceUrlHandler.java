// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceUrlHandler.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.net.*;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.epp.internal.mpc.ui.CatalogRegistry;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUi;
import org.eclipse.epp.internal.mpc.ui.commands.MarketplaceWizardCommand;
import org.eclipse.epp.mpc.ui.CatalogDescriptor;
import org.eclipse.ui.statushandlers.StatusManager;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            Messages, Operation

public class MarketplaceUrlHandler
{
    public static class SolutionInstallationInfo
    {

        public String getInstallId()
        {
            return installId;
        }

        public String getState()
        {
            return state;
        }

        public CatalogDescriptor getCatalogDescriptor()
        {
            return catalogDescriptor;
        }

        private String installId;
        private String state;
        private CatalogDescriptor catalogDescriptor;




        public SolutionInstallationInfo()
        {
        }
    }


    public static SolutionInstallationInfo createSolutionInstallInfo(String url)
    {
        String query;
        try
        {
            query = (new URL(url)).getQuery();
        }
        catch(MalformedURLException _ex)
        {
            return null;
        }
        if(query == null)
            return null;
        String params[] = query.split("&");
        String installId = null;
        String state = null;
        String as[];
        int j = (as = params).length;
        for(int i = 0; i < j; i++)
        {
            String param = as[i];
            String keyValue[] = param.split("=");
            if(keyValue.length == 2)
            {
                String key = keyValue[0];
                String value = keyValue[1];
                if(key.equals("mpc_install"))
                    installId = value;
                else
                if(key.equals("mpc_state"))
                    state = value;
            }
        }

        if(installId != null)
        {
            CatalogDescriptor descriptor = CatalogRegistry.getInstance().findCatalogDescriptor(url);
            SolutionInstallationInfo info = new SolutionInstallationInfo();
            info.installId = installId;
            info.state = state;
            if(descriptor != null)
                info.catalogDescriptor = descriptor;
            else
                try
                {
                    info.catalogDescriptor = new CatalogDescriptor(new URL(url), "org.eclipse.epp.mpc.descriptorHint");
                }
                catch(MalformedURLException _ex)
                {
                    return null;
                }
            return info;
        } else
        {
            return null;
        }
    }

    public static boolean isPotentialSolution(String url)
    {
        return url != null && url.contains("mpc_install");
    }

    public static void triggerInstall(SolutionInstallationInfo info)
    {
        String installId = info.getInstallId();
        String mpcState = info.getState();
        CatalogDescriptor catalogDescriptor = info.getCatalogDescriptor();
        MarketplaceWizardCommand command = new MarketplaceWizardCommand();
        command.setSelectedCatalogDescriptor(catalogDescriptor);
        try
        {
            if(mpcState != null)
                command.setWizardState(URLDecoder.decode(mpcState, "UTF-8"));
            Map nodeIdToOperation = new HashMap();
            nodeIdToOperation.put(URLDecoder.decode(installId, "UTF-8"), Operation.INSTALL);
            command.setOperationByNodeId(nodeIdToOperation);
        }
        catch(UnsupportedEncodingException e1)
        {
            throw new IllegalStateException(e1);
        }
        try
        {
            command.execute(new ExecutionEvent());
        }
        catch(ExecutionException e)
        {
            org.eclipse.core.runtime.IStatus status = MarketplaceClientUi.computeStatus(new InvocationTargetException(e), Messages.MarketplaceBrowserIntegration_cannotOpenMarketplaceWizard);
            StatusManager.getManager().handle(status, 7);
        }
    }

    private MarketplaceUrlHandler()
    {
    }

    public static final String DESCRIPTOR_HINT = "org.eclipse.epp.mpc.descriptorHint";
    private static final String UTF_8 = "UTF-8";
    private static final String PARAM_SPLIT_REGEX = "&";
    private static final String EQUALS_REGEX = "=";
    private static final String MPC_STATE = "mpc_state";
    private static final String MPC_INSTALL = "mpc_install";
}
