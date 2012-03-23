// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenConsoleFactory.java

package org.eclipse.m2e.core.ui.internal.console;

import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.ui.console.IConsoleFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.console:
//            MavenConsoleImpl

public class MavenConsoleFactory
    implements IConsoleFactory
{

    public MavenConsoleFactory()
    {
    }

    public void openConsole()
    {
        M2EUIPluginActivator.getDefault().getMavenConsole().showConsole();
    }
}
