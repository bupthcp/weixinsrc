// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenConsoleRemoveAction.java

package org.eclipse.m2e.core.ui.internal.actions;

import org.eclipse.jface.action.Action;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.console.MavenConsoleImpl;
import org.eclipse.ui.*;

public class MavenConsoleRemoveAction extends Action
{

    public MavenConsoleRemoveAction()
    {
        setToolTipText(Messages.MavenConsoleRemoveAction_tooltip);
        setImageDescriptor(PlatformUI.getWorkbench().getSharedImages().getImageDescriptor("IMG_ELCL_REMOVE"));
    }

    public void run()
    {
        M2EUIPluginActivator.getDefault().getMavenConsole().closeConsole();
    }
}
