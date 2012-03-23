// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   UserInterfacePreferencePage.java

package org.eclipse.m2e.core.ui.internal.preferences;

import org.eclipse.jface.preference.BooleanFieldEditor;
import org.eclipse.jface.preference.FieldEditorPreferencePage;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;

public class UserInterfacePreferencePage extends FieldEditorPreferencePage
    implements IWorkbenchPreferencePage
{

    public UserInterfacePreferencePage()
    {
        super(1);
        setPreferenceStore(M2EUIPluginActivator.getDefault().getPreferenceStore());
    }

    public void init(IWorkbench iworkbench)
    {
    }

    public void createFieldEditors()
    {
        parent = getFieldEditorParent();
        addField(new BooleanFieldEditor("eclipse.m2.defaultPomEditorPage", Messages.pomEditorDefaultPage, parent));
        addField(new BooleanFieldEditor("eclipse.m2.warn_incomplete_mapping", Messages.MavenPreferencePage_warnIncompleteMapping, getFieldEditorParent()));
    }

    private Composite parent;
}
