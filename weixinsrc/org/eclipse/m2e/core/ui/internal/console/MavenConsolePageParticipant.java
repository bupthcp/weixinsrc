// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenConsolePageParticipant.java

package org.eclipse.m2e.core.ui.internal.console;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.m2e.core.ui.internal.MavenImages;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.actions.MavenConsoleRemoveAction;
import org.eclipse.m2e.core.ui.internal.actions.MavenDebugOutputAction;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.console.IConsolePageParticipant;
import org.eclipse.ui.part.IPageBookViewPage;
import org.eclipse.ui.part.IPageSite;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.console:
//            MavenShowConsoleAction

public class MavenConsolePageParticipant
    implements IConsolePageParticipant
{
    class ShowOnErrorAction extends MavenShowConsoleAction
    {

        protected String getKey()
        {
            return "eclipse.m2.showConsoleOnErr";
        }

        final MavenConsolePageParticipant this$0;

        public ShowOnErrorAction(IConsole console, String name)
        {
            this$0 = MavenConsolePageParticipant.this;
            super(name);
            setImageDescriptor(MavenImages.SHOW_CONSOLE_ERR);
        }
    }

    class ShowOnOutputAction extends MavenShowConsoleAction
    {

        protected String getKey()
        {
            return "eclipse.m2.showConsoleOnOutput";
        }

        final MavenConsolePageParticipant this$0;

        public ShowOnOutputAction(IConsole console, String name)
        {
            this$0 = MavenConsolePageParticipant.this;
            super(name);
            setImageDescriptor(MavenImages.SHOW_CONSOLE_OUT);
        }
    }


    public MavenConsolePageParticipant()
    {
    }

    public void init(IPageBookViewPage page, IConsole console)
    {
        consoleRemoveAction = new MavenConsoleRemoveAction();
        debugAction = new MavenDebugOutputAction();
        showOnOutputAction = new ShowOnOutputAction(console, SHOW_ON_OUTPUT_LBL);
        showOnErrorAction = new ShowOnErrorAction(console, SHOW_ON_ERR_LBL);
        IActionBars actionBars = page.getSite().getActionBars();
        configureToolBar(actionBars.getToolBarManager());
    }

    private void configureToolBar(IToolBarManager mgr)
    {
        mgr.appendToGroup("launchGroup", consoleRemoveAction);
        mgr.prependToGroup("outputGroup", debugAction);
        mgr.appendToGroup("outputGroup", showOnOutputAction);
        mgr.appendToGroup("outputGroup", showOnErrorAction);
    }

    public void dispose()
    {
        consoleRemoveAction = null;
        debugAction = null;
    }

    public void activated()
    {
    }

    public void deactivated()
    {
    }

    public Object getAdapter(Class adapter)
    {
        return null;
    }

    private IAction consoleRemoveAction;
    private IAction debugAction;
    private IAction showOnErrorAction;
    private IAction showOnOutputAction;
    private static final String SHOW_ON_OUTPUT_LBL;
    private static final String SHOW_ON_ERR_LBL;

    static 
    {
        SHOW_ON_OUTPUT_LBL = Messages.MavenConsolePageParticipant_any;
        SHOW_ON_ERR_LBL = Messages.MavenConsolePageParticipant_error;
    }
}
