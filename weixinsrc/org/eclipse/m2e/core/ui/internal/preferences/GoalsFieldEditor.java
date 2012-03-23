// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   GoalsFieldEditor.java

package org.eclipse.m2e.core.ui.internal.preferences;

import org.eclipse.jface.preference.FieldEditor;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.*;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.preferences:
//            MavenGoalSelectionAdapter

public class GoalsFieldEditor extends FieldEditor
{

    public GoalsFieldEditor(String name, String labelText, String buttonText, Composite parent)
    {
        init(name, labelText);
        this.buttonText = buttonText;
        createControl(parent);
    }

    protected void adjustForNumColumns(int numColumns)
    {
        if(numColumns > 1)
        {
            Control control = getLabelControl();
            ((GridData)control.getLayoutData()).horizontalSpan = numColumns;
            ((GridData)goalsText.getLayoutData()).horizontalSpan = numColumns - 1;
        } else
        {
            Control control = getLabelControl();
            ((GridData)control.getLayoutData()).horizontalSpan = 2;
            ((GridData)goalsText.getLayoutData()).horizontalSpan = 1;
        }
    }

    protected void doFillIntoGrid(Composite parent, int numColumns)
    {
        Control labelControl = getLabelControl(parent);
        GridData gd = new GridData();
        gd.horizontalSpan = numColumns;
        gd.horizontalAlignment = 4;
        gd.grabExcessHorizontalSpace = true;
        labelControl.setLayoutData(gd);
        Text goalsText = getTextControl(parent);
        gd = new GridData();
        gd.horizontalSpan = numColumns - 1;
        gd.horizontalAlignment = 4;
        gd.grabExcessHorizontalSpace = true;
        goalsText.setLayoutData(gd);
        goalsText.setFont(parent.getFont());
        goialsSelectButton = new Button(parent, 0);
        goialsSelectButton.setText(buttonText);
        goialsSelectButton.addSelectionListener(new MavenGoalSelectionAdapter(goalsText, parent.getShell()));
        gd = new GridData();
        gd.horizontalSpan = 1;
        gd.horizontalAlignment = 4;
        gd.grabExcessHorizontalSpace = true;
        goalsText.setLayoutData(gd);
    }

    protected void doLoad()
    {
        updateComboForValue(getPreferenceStore().getString(getPreferenceName()));
    }

    protected void doLoadDefault()
    {
        updateComboForValue(getPreferenceStore().getDefaultString(getPreferenceName()));
    }

    protected void doStore()
    {
        if(value == null)
            getPreferenceStore().setToDefault(getPreferenceName());
        else
            getPreferenceStore().setValue(getPreferenceName(), value);
    }

    public int getNumberOfControls()
    {
        return 2;
    }

    private Text getTextControl(Composite parent)
    {
        if(goalsText == null)
        {
            goalsText = new Text(parent, 2048);
            goalsText.setFont(parent.getFont());
            goalsText.addModifyListener(new ModifyListener() {

                public void modifyText(ModifyEvent modifyevent)
                {
                    String oldValue = value;
                    value = goalsText.getText();
                    setPresentsDefaultValue(false);
                    fireValueChanged("field_editor_value", oldValue, value);
                }

                final GoalsFieldEditor this$0;

            
            {
                this$0 = GoalsFieldEditor.this;
                super();
            }
            }
);
        }
        return goalsText;
    }

    protected void setPresentsDefaultValue(boolean booleanValue)
    {
        super.setPresentsDefaultValue(booleanValue);
    }

    protected void fireValueChanged(String property, Object oldValue, Object newValue)
    {
        super.fireValueChanged(property, oldValue, newValue);
    }

    private void updateComboForValue(String value)
    {
        this.value = value;
        goalsText.setText(value);
    }

    Text goalsText;
    String value;
    private Button goialsSelectButton;
    private final String buttonText;
}
