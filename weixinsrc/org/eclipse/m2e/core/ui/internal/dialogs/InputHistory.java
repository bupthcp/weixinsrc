// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   InputHistory.java

package org.eclipse.m2e.core.ui.internal.dialogs;

import java.beans.Beans;
import java.util.*;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.custom.CCombo;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Control;

public class InputHistory
{
    private class CComboWrapper extends ControlWrapper
    {

        protected String getText()
        {
            return combo.getText();
        }

        protected String[] getItems()
        {
            try
            {
                return combo.getItems();
            }
            catch(SWTException _ex)
            {
                return new String[0];
            }
        }

        protected void setItems(String items[])
        {
            String value = combo.getText();
            combo.setItems(items);
            if(value.length() > 0)
                combo.setText(value);
        }

        private CCombo combo;
        final InputHistory this$0;

        protected CComboWrapper(CCombo combo)
        {
            this$0 = InputHistory.this;
            super(combo);
            this.combo = combo;
        }
    }

    private class ComboWrapper extends ControlWrapper
    {

        protected String getText()
        {
            return combo.getText();
        }

        protected String[] getItems()
        {
            return combo.getItems();
        }

        protected void setItems(String items[])
        {
            String value = combo.getText();
            combo.setItems(items);
            if(value.length() > 0)
                combo.setText(value);
            else
            if(items.length > 0)
                combo.setText(items[0]);
        }

        private Combo combo;
        final InputHistory this$0;

        protected ComboWrapper(Combo combo)
        {
            this$0 = InputHistory.this;
            super(combo);
            this.combo = combo;
        }
    }

    private abstract class ControlWrapper
    {

        protected void collect()
        {
            if(!collected && !isDisposed())
            {
                text = getText();
                items = getItems();
            }
            collected = true;
        }

        protected boolean isDisposed()
        {
            return control.isDisposed();
        }

        protected abstract String getText();

        protected abstract String[] getItems();

        protected abstract void setItems(String as[]);

        protected Control control;
        protected String text;
        protected String items[];
        private boolean collected;
        final InputHistory this$0;

        protected ControlWrapper(Control control)
        {
            this$0 = InputHistory.this;
            super();
            this.control = control;
            control.addDisposeListener(new DisposeListener() {

                public void widgetDisposed(DisposeEvent e)
                {
                    collect();
                }

                final ControlWrapper this$1;

                
                {
                    this$1 = ControlWrapper.this;
                    super();
                }
            }
);
        }
    }


    public InputHistory(String sectionName)
    {
        this(sectionName, new String[0]);
    }

    public InputHistory(String sectionName, String privileged[])
    {
        comboMap = new HashMap();
        M2EUIPluginActivator plugin = M2EUIPluginActivator.getDefault();
        if(plugin != null)
        {
            IDialogSettings pluginSettings = plugin.getDialogSettings();
            dialogSettings = pluginSettings.getSection(sectionName);
            if(dialogSettings == null)
            {
                dialogSettings = pluginSettings.addNewSection(sectionName);
                pluginSettings.addSection(dialogSettings);
            }
        }
        if(!$assertionsDisabled && privileged == null)
        {
            throw new AssertionError();
        } else
        {
            this.privileged = Arrays.asList(privileged);
            return;
        }
    }

    public void load()
    {
        if(Beans.isDesignTime())
            return;
        for(Iterator iterator = comboMap.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry e = (java.util.Map.Entry)iterator.next();
            String id = (String)e.getKey();
            Set items = new LinkedHashSet();
            String itemsArr[] = dialogSettings.getArray(id);
            items.addAll(privileged);
            if(itemsArr != null)
                items.addAll(Arrays.asList(itemsArr));
            for(Iterator iterator1 = ((List)e.getValue()).iterator(); iterator1.hasNext();)
            {
                ControlWrapper wrapper = (ControlWrapper)iterator1.next();
                if(!wrapper.isDisposed())
                    wrapper.setItems((String[])items.toArray(new String[0]));
            }

        }

    }

    public void save()
    {
        if(Beans.isDesignTime())
            return;
        String id;
        Set history;
        for(Iterator iterator = comboMap.entrySet().iterator(); iterator.hasNext(); dialogSettings.put(id, (String[])history.toArray(new String[history.size()])))
        {
            java.util.Map.Entry e = (java.util.Map.Entry)iterator.next();
            id = (String)e.getKey();
            history = new LinkedHashSet(10);
            ControlWrapper wrapper;
            for(Iterator iterator1 = ((List)e.getValue()).iterator(); iterator1.hasNext();)
            {
                wrapper = (ControlWrapper)iterator1.next();
                wrapper.collect();
                String lastValue = wrapper.text;
                if(lastValue != null && lastValue.trim().length() > 0)
                    history.add(lastValue);
            }

            wrapper = (ControlWrapper)((List)e.getValue()).iterator().next();
            String items[] = wrapper.items;
            if(items != null)
            {
                for(int j = 0; j < items.length && history.size() < 10; j++)
                    if(!privileged.contains(items[j]))
                        history.add(items[j]);

            }
        }

    }

    public void add(Control combo)
    {
        add(null, combo);
    }

    public void add(String id, Control combo)
    {
        if(combo != null)
        {
            if(id == null)
                id = String.valueOf(combo.getData("name"));
            List combos = (List)comboMap.get(id);
            if(combos == null)
            {
                combos = new ArrayList();
                comboMap.put(id, combos);
            }
            if(combo instanceof Combo)
                combos.add(new ComboWrapper((Combo)combo));
            else
            if(combo instanceof CCombo)
                combos.add(new CComboWrapper((CCombo)combo));
        }
    }

    protected static final int MAX_HISTORY = 10;
    protected IDialogSettings dialogSettings;
    private Map comboMap;
    private List privileged;
    static final boolean $assertionsDisabled = !org/eclipse/m2e/core/ui/internal/dialogs/InputHistory.desiredAssertionStatus();

}
