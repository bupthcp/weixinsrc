// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenConsoleImpl.java

package org.eclipse.m2e.core.ui.internal.console;

import com.ibm.icu.text.DateFormat;
import com.ibm.icu.util.ULocale;
import java.io.IOException;
import java.util.*;
import java.util.concurrent.CopyOnWriteArrayList;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.*;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.console.*;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.console:
//            ConsoleDocument, IMavenConsoleListener, MavenConsole

public class MavenConsoleImpl extends IOConsole
    implements MavenConsole, IPropertyChangeListener
{
    public class MavenConsoleLifecycle
        implements IConsoleListener
    {

        public void consolesAdded(IConsole consoles[])
        {
            for(int i = 0; i < consoles.length; i++)
            {
                IConsole console = consoles[i];
                if(console == MavenConsoleImpl.this)
                    init();
            }

        }

        public void consolesRemoved(IConsole consoles[])
        {
            for(int i = 0; i < consoles.length; i++)
            {
                IConsole console = consoles[i];
                if(console == MavenConsoleImpl.this)
                {
                    ConsolePlugin.getDefault().getConsoleManager().removeConsoleListener(this);
                    dispose();
                }
            }

        }

        final MavenConsoleImpl this$0;

        public MavenConsoleLifecycle()
        {
            this$0 = MavenConsoleImpl.this;
            super();
        }
    }


    public MavenConsoleImpl(ImageDescriptor imageDescriptor)
    {
        super(TITLE, imageDescriptor);
        initialized = false;
        visible = false;
        listeners = new CopyOnWriteArrayList();
        setConsoleDocument(new ConsoleDocument());
    }

    protected void init()
    {
        super.init();
        Display.getDefault().asyncExec(new Runnable() {

            public void run()
            {
                JFaceResources.getFontRegistry().addListener(MavenConsoleImpl.this);
                initializeConsoleStreams(Display.getDefault());
                dumpConsole();
            }

            final MavenConsoleImpl this$0;

            
            {
                this$0 = MavenConsoleImpl.this;
                super();
            }
        }
);
    }

    protected void initializeConsoleStreams(Display display)
    {
        if(!initialized)
        {
            setCommandStream(newOutputStream());
            setErrorStream(newOutputStream());
            setMessageStream(newOutputStream());
            commandColor = new Color(display, new RGB(0, 0, 0));
            messageColor = new Color(display, new RGB(0, 0, 255));
            errorColor = new Color(display, new RGB(255, 0, 0));
            getCommandStream().setColor(commandColor);
            getMessageStream().setColor(messageColor);
            getErrorStream().setColor(errorColor);
            setFont(JFaceResources.getFontRegistry().get("pref_console_font"));
            initialized = true;
        }
    }

    protected void dumpConsole()
    {
        setVisible(true);
        ConsoleDocument.ConsoleLine lines[] = getConsoleDocument().getLines();
        for(int i = 0; i < lines.length; i++)
        {
            ConsoleDocument.ConsoleLine line = lines[i];
            appendLine(line.type, line.line);
        }

        getConsoleDocument().clear();
    }

    private void appendLine(final int type, final String line)
    {
        show(false);
        Display.getDefault().asyncExec(new Runnable() {

            public void run()
            {
                if(isVisible())
                    try
                    {
                        switch(type)
                        {
                        case 0: // '\0'
                            getCommandStream().write(line);
                            getCommandStream().write(10);
                            break;

                        case 1: // '\001'
                            getMessageStream().write(line);
                            getMessageStream().write(10);
                            break;

                        case 2: // '\002'
                            getErrorStream().write(line);
                            getErrorStream().write(10);
                            break;
                        }
                    }
                    catch(IOException ex)
                    {
                        ex.printStackTrace();
                    }
                else
                    getConsoleDocument().appendConsoleLine(type, line);
            }

            final MavenConsoleImpl this$0;
            private final int val$type;
            private final String val$line;

            
            {
                this$0 = MavenConsoleImpl.this;
                type = i;
                line = s;
                super();
            }
        }
);
    }

    public void show(boolean showNoMatterWhat)
    {
        if(showNoMatterWhat)
            if(!isVisible())
                showConsole();
            else
                ConsolePlugin.getDefault().getConsoleManager().showConsoleView(this);
    }

    public void showConsole()
    {
        boolean exists = false;
        IConsoleManager manager = ConsolePlugin.getDefault().getConsoleManager();
        IConsole aiconsole[];
        int j = (aiconsole = manager.getConsoles()).length;
        for(int i = 0; i < j; i++)
        {
            IConsole element = aiconsole[i];
            if(this == element)
                exists = true;
        }

        if(!exists)
            manager.addConsoles(new IConsole[] {
                this
            });
        manager.showConsoleView(this);
    }

    public void closeConsole()
    {
        IConsoleManager manager = ConsolePlugin.getDefault().getConsoleManager();
        manager.removeConsoles(new IConsole[] {
            this
        });
        ConsolePlugin.getDefault().getConsoleManager().addConsoleListener(newLifecycle());
    }

    public void propertyChange(PropertyChangeEvent event)
    {
        setFont(JFaceResources.getFontRegistry().get("pref_console_font"));
    }

    private void bringConsoleToFront()
    {
        if(PlatformUI.isWorkbenchRunning())
        {
            IConsoleManager manager = ConsolePlugin.getDefault().getConsoleManager();
            if(!isVisible())
                manager.addConsoles(new IConsole[] {
                    this
                });
            manager.showConsoleView(this);
        }
    }

    protected void dispose()
    {
        Display.getDefault().asyncExec(new Runnable() {

            public void run()
            {
                setVisible(false);
                JFaceResources.getFontRegistry().removeListener(MavenConsoleImpl.this);
            }

            final MavenConsoleImpl this$0;

            
            {
                this$0 = MavenConsoleImpl.this;
                super();
            }
        }
);
    }

    public void shutdown()
    {
        super.dispose();
        if(commandColor != null)
            commandColor.dispose();
        if(messageColor != null)
            messageColor.dispose();
        if(errorColor != null)
            errorColor.dispose();
    }

    private DateFormat getDateFormat()
    {
        return DateFormat.getDateTimeInstance(3, 1, ULocale.getDefault());
    }

    public void debug(String message)
    {
        if(!M2EUIPluginActivator.getDefault().getPreferenceStore().getBoolean("eclipse.m2.debugOutput"))
            return;
        if(showConsoleOnOutput())
            bringConsoleToFront();
        appendLine(1, (new StringBuilder(String.valueOf(getDateFormat().format(new Date())))).append(": ").append(message).toString());
        for(Iterator iterator = listeners.iterator(); iterator.hasNext();)
        {
            IMavenConsoleListener listener = (IMavenConsoleListener)iterator.next();
            try
            {
                listener.loggingMessage(message);
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }

    }

    public void info(String message)
    {
        if(showConsoleOnOutput())
            bringConsoleToFront();
        appendLine(1, (new StringBuilder(String.valueOf(getDateFormat().format(new Date())))).append(": ").append(message).toString());
        for(Iterator iterator = listeners.iterator(); iterator.hasNext();)
        {
            IMavenConsoleListener listener = (IMavenConsoleListener)iterator.next();
            try
            {
                listener.loggingMessage(message);
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }

    }

    public void error(String message)
    {
        if(showConsoleOnError())
            bringConsoleToFront();
        appendLine(2, (new StringBuilder(String.valueOf(getDateFormat().format(new Date())))).append(": ").append(message).toString());
        for(Iterator iterator = listeners.iterator(); iterator.hasNext();)
        {
            IMavenConsoleListener listener = (IMavenConsoleListener)iterator.next();
            try
            {
                listener.loggingError(message);
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }

    }

    public boolean showConsoleOnError()
    {
        return M2EUIPluginActivator.getDefault().getPreferenceStore().getBoolean("eclipse.m2.showConsoleOnErr");
    }

    public boolean showConsoleOnOutput()
    {
        return M2EUIPluginActivator.getDefault().getPreferenceStore().getBoolean("eclipse.m2.showConsoleOnOutput");
    }

    public IConsoleListener newLifecycle()
    {
        return new MavenConsoleLifecycle();
    }

    protected void setCommandStream(IOConsoleOutputStream commandStream)
    {
        this.commandStream = commandStream;
    }

    protected IOConsoleOutputStream getCommandStream()
    {
        return commandStream;
    }

    protected void setMessageStream(IOConsoleOutputStream messageStream)
    {
        this.messageStream = messageStream;
    }

    protected IOConsoleOutputStream getMessageStream()
    {
        return messageStream;
    }

    protected void setErrorStream(IOConsoleOutputStream errorStream)
    {
        this.errorStream = errorStream;
    }

    protected IOConsoleOutputStream getErrorStream()
    {
        return errorStream;
    }

    protected void setVisible(boolean visible)
    {
        this.visible = visible;
    }

    protected boolean isVisible()
    {
        return visible;
    }

    private void setConsoleDocument(ConsoleDocument consoleDocument)
    {
        this.consoleDocument = consoleDocument;
    }

    protected ConsoleDocument getConsoleDocument()
    {
        return consoleDocument;
    }

    public void addMavenConsoleListener(IMavenConsoleListener listener)
    {
        listeners.remove(listener);
        listeners.add(listener);
    }

    public void removeMavenConsoleListener(IMavenConsoleListener listener)
    {
        listeners.remove(listener);
    }

    private boolean initialized;
    private boolean visible;
    private ConsoleDocument consoleDocument;
    private Color commandColor;
    private Color messageColor;
    private Color errorColor;
    private IOConsoleOutputStream commandStream;
    private IOConsoleOutputStream messageStream;
    private IOConsoleOutputStream errorStream;
    private static final String TITLE;
    private List listeners;

    static 
    {
        TITLE = Messages.MavenConsoleImpl_title;
    }
}
