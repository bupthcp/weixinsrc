// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   OpenMavenConsoleAction.java

package org.eclipse.m2e.core.ui.internal.actions;

import org.eclipse.jface.action.Action;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.m2e.core.ui.internal.console.MavenConsoleImpl;

public class OpenMavenConsoleAction extends Action
{

    public OpenMavenConsoleAction()
    {
    }

    public void run()
    {
        M2EUIPluginActivator.getDefault().getMavenConsole().showConsole();
    }
}
