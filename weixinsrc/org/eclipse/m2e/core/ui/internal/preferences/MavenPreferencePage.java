// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenPreferencePage.java

package org.eclipse.m2e.core.ui.internal.preferences;

import org.eclipse.jface.preference.BooleanFieldEditor;
import org.eclipse.jface.preference.FieldEditorPreferencePage;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;

public class MavenPreferencePage extends FieldEditorPreferencePage
    implements IWorkbenchPreferencePage
{

    public MavenPreferencePage()
    {
        super(1);
        setPreferenceStore(M2EUIPluginActivator.getDefault().getPreferenceStore());
    }

    public void init(IWorkbench iworkbench)
    {
    }

    public void createFieldEditors()
    {
        addField(new BooleanFieldEditor("eclipse.m2.offline", Messages.preferencesOffline, getFieldEditorParent()));
        addField(new BooleanFieldEditor("eclipse.m2.globalUpdatePolicy", Messages.preferencesGlobalUpdateNever, getFieldEditorParent()));
        addField(new BooleanFieldEditor("eclipse.m2.debugOutput", Messages.preferencesDebugOutput, getFieldEditorParent()));
        addField(new BooleanFieldEditor("eclipse.m2.downloadSources", Messages.preferencesDownloadSources, getFieldEditorParent()));
        addField(new BooleanFieldEditor("eclipse.m2.downloadJavadoc", Messages.preferencesDownloadJavadoc, getFieldEditorParent()));
        addField(new BooleanFieldEditor("eclipse.m2.updateIndexes", Messages.MavenPreferencePage_download, getFieldEditorParent()));
        addField(new BooleanFieldEditor("eclipse.m2.updateProjects", Messages.MavenPreferencePage_update, getFieldEditorParent()));
        addField(new BooleanFieldEditor("eclipse.m2.hideFoldersOfNestedProjects", Messages.MavenPreferencePage_hide, getFieldEditorParent()));
        GridData comboCompositeGridData = new GridData();
        comboCompositeGridData.verticalIndent = 25;
        comboCompositeGridData.horizontalSpan = 3;
        comboCompositeGridData.grabExcessHorizontalSpace = true;
        comboCompositeGridData.horizontalAlignment = 4;
        Composite comboComposite = new Composite(getFieldEditorParent(), 0);
        comboComposite.setLayoutData(comboCompositeGridData);
        comboComposite.setLayout(new GridLayout(2, false));
    }

    private void addSeparator()
    {
        Label separator = new Label(getFieldEditorParent(), 258);
        GridData separatorGridData = new GridData();
        separatorGridData.horizontalSpan = 4;
        separatorGridData.grabExcessHorizontalSpace = true;
        separatorGridData.horizontalAlignment = 4;
        separatorGridData.verticalIndent = 10;
        separator.setLayoutData(separatorGridData);
    }
}
