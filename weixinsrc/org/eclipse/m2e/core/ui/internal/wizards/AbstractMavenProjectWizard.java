// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AbstractMavenProjectWizard.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.Wizard;
import org.eclipse.m2e.core.internal.lifecyclemapping.discovery.IMavenDiscovery;
import org.eclipse.m2e.core.project.ProjectImportConfiguration;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.m2e.core.ui.internal.actions.SelectionUtil;
import org.eclipse.ui.IWorkbench;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            IMavenDiscoveryUI

public abstract class AbstractMavenProjectWizard extends Wizard
{

    public AbstractMavenProjectWizard()
    {
        importConfiguration = new ProjectImportConfiguration();
        workingSets = new ArrayList();
    }

    public void init(IWorkbench workbench, IStructuredSelection selection)
    {
        this.selection = selection;
        importConfiguration = new ProjectImportConfiguration();
        discovery = M2EUIPluginActivator.getDefault().getMavenDiscovery();
        pageFactory = M2EUIPluginActivator.getDefault().getImportWizardPageFactory();
        org.eclipse.ui.IWorkingSet workingSet = SelectionUtil.getSelectedWorkingSet(selection);
        if(workingSet != null)
            workingSets.add(workingSet);
    }

    public void dispose()
    {
        M2EUIPluginActivator.getDefault().ungetMavenDiscovery(discovery);
        super.dispose();
    }

    public ProjectImportConfiguration getProjectImportConfiguration()
    {
        return importConfiguration;
    }

    public IMavenDiscovery getDiscovery()
    {
        return discovery;
    }

    public IMavenDiscoveryUI getPageFactory()
    {
        return pageFactory;
    }

    protected IStructuredSelection selection;
    protected ProjectImportConfiguration importConfiguration;
    protected List workingSets;
    private IMavenDiscovery discovery;
    private IMavenDiscoveryUI pageFactory;
}
