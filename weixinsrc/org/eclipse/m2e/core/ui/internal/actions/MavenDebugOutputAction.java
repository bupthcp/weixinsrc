// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenDebugOutputAction.java

package org.eclipse.m2e.core.ui.internal.actions;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.m2e.core.ui.internal.*;

public class MavenDebugOutputAction extends Action
{

    public MavenDebugOutputAction()
    {
        listener = new IPropertyChangeListener() {

            public void propertyChange(PropertyChangeEvent event)
            {
                if("eclipse.m2.debugOutput".equals(event.getProperty()))
                    setChecked(isDebug());
            }

            final MavenDebugOutputAction this$0;

            
            {
                this$0 = MavenDebugOutputAction.this;
                super();
            }
        }
;
        setToolTipText(Messages.MavenDebugOutputAction_0);
        setImageDescriptor(MavenImages.DEBUG);
        getPreferenceStore().addPropertyChangeListener(listener);
        setChecked(isDebug());
    }

    public void run()
    {
        getPreferenceStore().setValue("eclipse.m2.debugOutput", isChecked());
    }

    public void dispose()
    {
        getPreferenceStore().removePropertyChangeListener(listener);
    }

    IPreferenceStore getPreferenceStore()
    {
        return M2EUIPluginActivator.getDefault().getPreferenceStore();
    }

    boolean isDebug()
    {
        return getPreferenceStore().getBoolean("eclipse.m2.debugOutput");
    }

    private IPropertyChangeListener listener;
}
