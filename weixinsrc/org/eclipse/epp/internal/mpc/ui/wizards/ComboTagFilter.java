// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ComboTagFilter.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.util.*;
import org.eclipse.equinox.internal.p2.discovery.model.Tag;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            AbstractTagFilter

public class ComboTagFilter extends AbstractTagFilter
{

    public ComboTagFilter()
    {
    }

    public void createControl(Composite parent)
    {
        if(getChoices() == null)
        {
            throw new IllegalStateException();
        } else
        {
            combo = new Combo(parent, 12);
            listener = new SelectionListener() {

                public void widgetSelected(SelectionEvent e)
                {
                    int selectionIndex = combo.getSelectionIndex();
                    getSelected().clear();
                    if(selectionIndex > 0)
                    {
                        Tag tag = (Tag)getChoices().get(selectionIndex - 1);
                        getSelected().add(tag);
                    }
                    selectionUpdated();
                }

                public void widgetDefaultSelected(SelectionEvent e)
                {
                    widgetSelected(e);
                }

                final ComboTagFilter this$0;

            
            {
                this$0 = ComboTagFilter.this;
                super();
            }
            }
;
            combo.addSelectionListener(listener);
            rebuildChoicesUi();
            return;
        }
    }

    protected void rebuildChoicesUi()
    {
        if(combo != null)
        {
            combo.removeSelectionListener(listener);
            combo.removeAll();
            combo.add(noSelectionLabel != null ? noSelectionLabel : "");
            if(getChoices() != null)
            {
                Tag tag;
                for(Iterator iterator = getChoices().iterator(); iterator.hasNext(); combo.add(tag.getLabel()))
                    tag = (Tag)iterator.next();

            }
            combo.select(0);
            combo.addSelectionListener(listener);
        }
    }

    protected void choicesChanged(List choices, List previousChoices)
    {
        rebuildChoicesUi();
        super.choicesChanged(choices, previousChoices);
    }

    public String getNoSelectionLabel()
    {
        return noSelectionLabel;
    }

    public void setNoSelectionLabel(String noSelectionLabel)
    {
        this.noSelectionLabel = noSelectionLabel;
    }

    private Combo combo;
    private String noSelectionLabel;
    private SelectionListener listener;

}
