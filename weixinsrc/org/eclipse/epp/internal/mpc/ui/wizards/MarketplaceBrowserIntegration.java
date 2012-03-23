// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceBrowserIntegration.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import org.eclipse.swt.browser.*;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            MarketplaceUrlHandler

public class MarketplaceBrowserIntegration
    implements LocationListener, OpenWindowListener
{

    public MarketplaceBrowserIntegration()
    {
    }

    public void open(WindowEvent windowevent)
    {
    }

    public void changing(LocationEvent event)
    {
        if(!event.doit)
            return;
        if(isPotenialLocation(event))
        {
            MarketplaceUrlHandler.SolutionInstallationInfo info = MarketplaceUrlHandler.createSolutionInstallInfo(event.location);
            if(info != null)
            {
                event.doit = false;
                MarketplaceUrlHandler.triggerInstall(info);
            }
        }
    }

    private boolean isPotenialLocation(LocationEvent event)
    {
        String url = event.location;
        return url.contains("/mpc/install?") && MarketplaceUrlHandler.isPotentialSolution(url);
    }

    public void changed(LocationEvent locationevent)
    {
    }

    private static final String MPC_INSTALL_URI = "/mpc/install?";
}
