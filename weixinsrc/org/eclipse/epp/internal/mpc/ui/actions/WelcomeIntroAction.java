// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   WelcomeIntroAction.java

package org.eclipse.epp.internal.mpc.ui.actions;

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.runtime.Status;
import org.eclipse.epp.mpc.ui.MarketplaceClient;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.ui.IViewActionDelegate;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.statushandlers.StatusManager;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.actions:
//            Messages

public class WelcomeIntroAction
    implements IViewActionDelegate
{

    public WelcomeIntroAction()
    {
    }

    public void run(IAction action)
    {
        try
        {
            MarketplaceClient.openMarketplaceWizard(null);
        }
        catch(ExecutionException e)
        {
            String message = String.format(Messages.WelcomeIntroAction_cannotOpenWizard, new Object[0]);
            org.eclipse.core.runtime.IStatus status = new Status(4, "org.eclipse.epp.mpc.ui", 4, message, e);
            StatusManager.getManager().handle(status, 7);
        }
    }

    public void selectionChanged(IAction iaction, ISelection iselection)
    {
    }

    public void init(IViewPart iviewpart)
    {
    }
}
