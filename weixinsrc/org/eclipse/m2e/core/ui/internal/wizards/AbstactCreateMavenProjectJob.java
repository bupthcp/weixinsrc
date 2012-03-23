// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AbstactCreateMavenProjectJob.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.*;
import org.eclipse.m2e.core.ui.internal.actions.OpenMavenConsoleAction;
import org.eclipse.ui.progress.IProgressConstants;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            AbstractCreateMavenProjectsOperation

public abstract class AbstactCreateMavenProjectJob extends WorkspaceJob
{

    public AbstactCreateMavenProjectJob(String name, List workingSets)
    {
        super(name);
        this.workingSets = workingSets;
    }

    public final IStatus runInWorkspace(IProgressMonitor monitor)
        throws CoreException
    {
        setProperty(IProgressConstants.ACTION_PROPERTY, new OpenMavenConsoleAction());
        AbstractCreateMavenProjectsOperation op = new AbstractCreateMavenProjectsOperation(workingSets) {

            protected List doCreateMavenProjects(IProgressMonitor monitor)
                throws CoreException
            {
                return AbstactCreateMavenProjectJob.this.doCreateMavenProjects(monitor);
            }

            final AbstactCreateMavenProjectJob this$0;

            
            {
                this$0 = AbstactCreateMavenProjectJob.this;
                super($anonymous0);
            }
        }
;
        try
        {
            op.run(monitor);
        }
        catch(InvocationTargetException e)
        {
            return AbstractCreateMavenProjectsOperation.toStatus(e);
        }
        catch(InterruptedException _ex)
        {
            return Status.CANCEL_STATUS;
        }
        return Status.OK_STATUS;
    }

    protected abstract List doCreateMavenProjects(IProgressMonitor iprogressmonitor)
        throws CoreException;

    protected static ArrayList toProjects(List results)
    {
        return AbstractCreateMavenProjectsOperation.toProjects(results);
    }

    private final List workingSets;
}
