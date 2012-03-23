// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   UpdateDependenciesAction.java

package org.eclipse.m2e.core.ui.internal.actions;

import org.eclipse.jface.action.IAction;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.project.IMavenProjectRegistry;
import org.eclipse.m2e.core.project.MavenUpdateRequest;
import org.eclipse.m2e.core.ui.internal.dialogs.UpdateDepenciesDialog;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.actions:
//            MavenProjectActionSupport

public class UpdateDependenciesAction extends MavenProjectActionSupport
{

    public UpdateDependenciesAction()
    {
    }

    public void run(IAction action)
    {
        UpdateDepenciesDialog dialog = new UpdateDepenciesDialog(getShell(), getProjects());
        if(dialog.open() == 0)
        {
            IMavenProjectRegistry projectManager = MavenPlugin.getMavenProjectRegistry();
            projectManager.refresh(new MavenUpdateRequest(dialog.getSelectedProjects(), dialog.isOffline(), dialog.isForceUpdate()));
        }
    }

    public static final String ID = "org.eclipse.m2e.refreshMavenModelsAction";
}
