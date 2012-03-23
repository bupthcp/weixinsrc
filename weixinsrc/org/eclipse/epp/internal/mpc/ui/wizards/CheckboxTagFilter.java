// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CheckboxTagFilter.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.util.*;
import org.eclipse.equinox.internal.p2.discovery.model.Tag;
import org.eclipse.jface.layout.GridLayoutFactory;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.*;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            AbstractTagFilter

public class CheckboxTagFilter extends AbstractTagFilter
{

    public CheckboxTagFilter()
    {
    }

    public void createControl(Composite parent)
    {
        if(getChoices() == null)
        {
            throw new IllegalStateException();
        } else
        {
            buttonContainer = new Composite(parent, 0);
            rebuildChoicesUi();
            return;
        }
    }

    protected void rebuildChoicesUi()
    {
        if(buttonContainer != null)
        {
            Control acontrol[];
            int j = (acontrol = buttonContainer.getChildren()).length;
            for(int i = 0; i < j; i++)
            {
                Control control = acontrol[i];
                control.dispose();
            }

            final Tag choice;
            final Button checkbox;
            for(Iterator iterator = getChoices().iterator(); iterator.hasNext(); checkbox.addSelectionListener(new SelectionListener() {

        public void widgetDefaultSelected(SelectionEvent e)
        {
            widgetSelected(e);
        }

        public void widgetSelected(SelectionEvent e)
        {
            boolean selection = checkbox.getSelection();
            if(selection)
                getSelected().add(choice);
            else
                getSelected().remove(choice);
            selectionUpdated();
        }

        final CheckboxTagFilter this$0;
        private final Button val$checkbox;
        private final Tag val$choice;

            
            {
                this$0 = CheckboxTagFilter.this;
                checkbox = button;
                choice = tag;
                super();
            }
    }
))
            {
                choice = (Tag)iterator.next();
                checkbox = new Button(buttonContainer, 32);
                checkbox.setSelection(getSelected().contains(choice));
                checkbox.setText(choice.getLabel());
            }

            GridLayoutFactory.fillDefaults().numColumns(buttonContainer.getChildren().length).applyTo(buttonContainer);
        }
    }

    protected void choicesChanged(List choices, List previousChoices)
    {
        rebuildChoicesUi();
        super.choicesChanged(choices, previousChoices);
    }

    private Composite buttonContainer;
}
