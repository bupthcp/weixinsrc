// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ModuleProjectWizardAction.java

package org.eclipse.m2e.core.ui.internal.actions;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.m2e.core.ui.internal.wizards.MavenModuleWizard;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.*;

public class ModuleProjectWizardAction
    implements IObjectActionDelegate
{

    public ModuleProjectWizardAction()
    {
    }

    public void run(IAction action)
    {
        MavenModuleWizard wizard = new MavenModuleWizard();
        wizard.init(PlatformUI.getWorkbench(), selection);
        WizardDialog dialog = new WizardDialog(parent, wizard);
        dialog.open();
    }

    public void setActivePart(IAction action, IWorkbenchPart part)
    {
        parent = part.getSite().getShell();
    }

    public void selectionChanged(IAction action, ISelection selection)
    {
        if(selection instanceof IStructuredSelection)
            this.selection = (IStructuredSelection)selection;
    }

    public static final String ID = "org.eclipse.m2e.actions.moduleProjectWizardAction";
    private IStructuredSelection selection;
    private Shell parent;
}
