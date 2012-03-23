// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenShowConsoleAction.java

package org.eclipse.m2e.core.ui.internal.console;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;

public abstract class MavenShowConsoleAction extends Action
    implements IPropertyChangeListener
{

    public MavenShowConsoleAction(String name)
    {
        super(name, 2);
        setToolTipText(name);
        getPreferenceStore().addPropertyChangeListener(this);
        update();
    }

    public void propertyChange(PropertyChangeEvent event)
    {
        String property = event.getProperty();
        if(property.equals(getKey()))
            update();
    }

    protected abstract String getKey();

    private void update()
    {
        IPreferenceStore store = getPreferenceStore();
        if(store.getBoolean(getKey()))
            setChecked(true);
        else
            setChecked(false);
    }

    private IPreferenceStore getPreferenceStore()
    {
        return M2EUIPluginActivator.getDefault().getPreferenceStore();
    }

    public void run()
    {
        IPreferenceStore store = getPreferenceStore();
        boolean show = isChecked();
        store.removePropertyChangeListener(this);
        store.setValue(getKey(), show);
        store.addPropertyChangeListener(this);
    }

    public void dispose()
    {
        getPreferenceStore().removePropertyChangeListener(this);
    }
}
