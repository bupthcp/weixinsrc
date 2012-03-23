// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceDropAdapter.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import org.eclipse.core.runtime.*;
import org.eclipse.swt.dnd.*;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.*;
import org.eclipse.ui.progress.UIJob;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            MarketplaceUrlHandler, Messages

public class MarketplaceDropAdapter
    implements IStartup
{

    public MarketplaceDropAdapter()
    {
    }

    public void earlyStartup()
    {
        UIJob registerJob = new UIJob(Display.getDefault(), Messages.MarketplaceDropAdapter_0) {

            public IStatus runInUIThread(IProgressMonitor monitor)
            {
                IWorkbenchWindow workbenchWindows[] = PlatformUI.getWorkbench().getWorkbenchWindows();
                IWorkbenchWindow aiworkbenchwindow[];
                int j = (aiworkbenchwindow = workbenchWindows).length;
                for(int i = 0; i < j; i++)
                {
                    IWorkbenchWindow window = aiworkbenchwindow[i];
                    Shell shell = window.getShell();
                    installDropTarget(shell);
                }

                return Status.OK_STATUS;
            }

            final MarketplaceDropAdapter this$0;

            
            {
                this$0 = MarketplaceDropAdapter.this;
                super($anonymous0, $anonymous1);
                setPriority(50);
            }
        }
;
        registerJob.schedule();
    }

    public void installDropTarget(Shell shell)
    {
        int operations = 7;
        DropTarget target = new DropTarget(shell, operations);
        target.setTransfer(new Transfer[] {
            URLTransfer.getInstance()
        });
        target.addDropListener(new DropTargetAdapter() {

            public void dragEnter(DropTargetEvent e)
            {
                if(e.detail == 0)
                    e.detail = 4;
            }

            public void dragOperationChanged(DropTargetEvent e)
            {
                if(e.detail == 0)
                    e.detail = 4;
            }

            public void drop(DropTargetEvent event)
            {
                if(event.data == null)
                {
                    event.detail = 0;
                    return;
                }
                String url = getUrlFromEvent(event);
                if(MarketplaceUrlHandler.isPotentialSolution(url))
                    proceedInstallation(url);
            }

            private String getUrlFromEvent(DropTargetEvent event)
            {
                String eventData = (String)event.data;
                String dataLines[] = eventData.split(System.getProperty("line.separator"));
                String url = dataLines[0];
                return url;
            }

            final MarketplaceDropAdapter this$0;

            
            {
                this$0 = MarketplaceDropAdapter.this;
                super();
            }
        }
);
    }

    protected void proceedInstallation(String url)
    {
        MarketplaceUrlHandler.SolutionInstallationInfo info = MarketplaceUrlHandler.createSolutionInstallInfo(url);
        if(info != null)
            MarketplaceUrlHandler.triggerInstall(info);
    }
}
