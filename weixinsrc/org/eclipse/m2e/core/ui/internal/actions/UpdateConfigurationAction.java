// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   UpdateConfigurationAction.java

package org.eclipse.m2e.core.ui.internal.actions;

import org.eclipse.jface.action.IAction;
import org.eclipse.m2e.core.ui.internal.UpdateConfigurationJob;
import org.eclipse.m2e.core.ui.internal.dialogs.UpdateDepenciesDialog;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.actions:
//            MavenProjectActionSupport

public class UpdateConfigurationAction extends MavenProjectActionSupport
{

    public UpdateConfigurationAction()
    {
    }

    public void run(IAction action)
    {
        UpdateDepenciesDialog dialog = new UpdateDepenciesDialog(getShell(), getProjects());
        if(dialog.open() == 0)
            (new UpdateConfigurationJob(dialog.getSelectedProjects(), dialog.isOffline(), dialog.isForceUpdate())).schedule();
    }

    public static final String ID = "org.eclipse.m2e.updateConfigurationAction";
}
