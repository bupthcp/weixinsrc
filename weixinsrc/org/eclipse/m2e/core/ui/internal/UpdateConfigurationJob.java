// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   UpdateConfigurationJob.java

package org.eclipse.m2e.core.ui.internal;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.*;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.embedder.IMavenConfiguration;
import org.eclipse.m2e.core.project.*;
import org.eclipse.m2e.core.ui.internal.actions.OpenMavenConsoleAction;
import org.eclipse.m2e.core.ui.internal.util.M2EUIUtils;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.progress.IProgressConstants;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal:
//            Messages

public class UpdateConfigurationJob extends WorkspaceJob
{

    public UpdateConfigurationJob(IProject projects[])
    {
        this(projects, MavenPlugin.getMavenConfiguration().isOffline(), false);
    }

    public UpdateConfigurationJob(IProject projects[], boolean offline, boolean forceUpdate)
    {
        super(Messages.UpdateSourcesAction_job_update_conf);
        this.projects = projects;
        this.offline = offline;
        this.forceUpdate = forceUpdate;
        setRule(MavenPlugin.getProjectConfigurationManager().getRule());
    }

    public IStatus runInWorkspace(IProgressMonitor monitor)
    {
        IProjectConfigurationManager configurationManager = MavenPlugin.getProjectConfigurationManager();
        setProperty(IProgressConstants.ACTION_PROPERTY, new OpenMavenConsoleAction());
        monitor.beginTask(getName(), projects.length);
        long l1 = System.currentTimeMillis();
        log.info("Update started");
        MultiStatus status = null;
        Map updateErrors = new HashMap();
        IProject aiproject[];
        int j = (aiproject = projects).length;
        for(int i = 0; i < j; i++)
        {
            IProject project = aiproject[i];
            if(monitor.isCanceled())
                throw new OperationCanceledException();
            monitor.subTask(project.getName());
            org.eclipse.m2e.core.project.IMavenProjectFacade projectFacade = MavenPlugin.getMavenProjectRegistry().create(project, monitor);
            if(projectFacade != null)
                try
                {
                    MavenUpdateRequest request = new MavenUpdateRequest(project, offline, forceUpdate);
                    configurationManager.updateProjectConfiguration(request, new SubProgressMonitor(monitor, 1));
                }
                catch(CoreException ex)
                {
                    if(status == null)
                        status = new MultiStatus("org.eclipse.m2e.core", 4, Messages.UpdateSourcesAction_error_cannot_update, null);
                    status.add(ex.getStatus());
                    updateErrors.put(project.getName(), ex);
                }
                catch(IllegalArgumentException e)
                {
                    status = new MultiStatus("org.eclipse.m2e.core", 4, Messages.UpdateSourcesAction_error_cannot_update, null);
                    updateErrors.put(project.getName(), e);
                }
        }

        if(updateErrors.size() > 0)
            handleErrors(updateErrors);
        long l2 = System.currentTimeMillis();
        log.info(NLS.bind("Update completed: {0} sec", Long.valueOf((l2 - l1) / 1000L)));
        return ((IStatus) (status == null ? Status.OK_STATUS : status));
    }

    private void handleErrors(final Map updateErrors)
    {
        final Display display = Display.getDefault();
        if(display != null)
            display.asyncExec(new Runnable() {

                public void run()
                {
                    M2EUIUtils.showErrorsForProjectsDialog(display.getActiveShell(), Messages.UpdateSourcesAction_error_title, Messages.UpdateSourcesAction_error_message, updateErrors);
                }

                final UpdateConfigurationJob this$0;
                private final Display val$display;
                private final Map val$updateErrors;

            
            {
                this$0 = UpdateConfigurationJob.this;
                display = display1;
                updateErrors = map;
                super();
            }
            }
);
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/UpdateConfigurationJob);
    private final IProject projects[];
    private final boolean offline;
    private final boolean forceUpdate;

}
