// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AbstractMavenWizardPage.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.util.*;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.dialogs.DialogSettings;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.wizard.WizardPage;
import org.eclipse.m2e.core.internal.MavenPluginActivator;
import org.eclipse.m2e.core.project.ProjectImportConfiguration;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            ResolverConfigurationComponent

public abstract class AbstractMavenWizardPage extends WizardPage
{

    protected AbstractMavenWizardPage(String pageName)
    {
        this(pageName, null);
    }

    protected AbstractMavenWizardPage(String pageName, ProjectImportConfiguration importConfiguration)
    {
        super(pageName);
        isHistoryLoaded = false;
        this.importConfiguration = importConfiguration;
        fieldsWithHistory = new HashMap();
        initDialogSettings();
    }

    public ProjectImportConfiguration getImportConfiguration()
    {
        return importConfiguration;
    }

    protected void createAdvancedSettings(Composite composite, GridData gridData)
    {
        if(importConfiguration != null)
        {
            gridData.verticalIndent = 7;
            resolverConfigurationComponent = new ResolverConfigurationComponent(composite, importConfiguration, true);
            resolverConfigurationComponent.setLayoutData(gridData);
            addFieldWithHistory("projectNameTemplate", resolverConfigurationComponent.template);
        }
    }

    public void setVisible(boolean visible)
    {
        if(visible)
        {
            if(!isHistoryLoaded)
            {
                if(resolverConfigurationComponent != null)
                    resolverConfigurationComponent.loadData();
                loadInputHistory();
                isHistoryLoaded = true;
            } else
            {
                saveInputHistory();
            }
            if(resolverConfigurationComponent != null)
                resolverConfigurationComponent.loadData();
        }
        super.setVisible(visible);
    }

    public void dispose()
    {
        saveInputHistory();
        super.dispose();
    }

    private void initDialogSettings()
    {
        IDialogSettings pluginSettings;
        if(MavenPluginActivator.getDefault() == null)
            pluginSettings = new DialogSettings("Workbench");
        else
            pluginSettings = M2EUIPluginActivator.getDefault().getDialogSettings();
        dialogSettings = pluginSettings.getSection(getName());
        if(dialogSettings == null)
        {
            dialogSettings = pluginSettings.addNewSection(getName());
            pluginSettings.addSection(dialogSettings);
        }
    }

    private void loadInputHistory()
    {
        for(Iterator iterator = fieldsWithHistory.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry e = (java.util.Map.Entry)iterator.next();
            String id = (String)e.getKey();
            String items[] = dialogSettings.getArray(id);
            if(items != null)
            {
                for(Iterator iterator1 = ((List)e.getValue()).iterator(); iterator1.hasNext();)
                {
                    Combo combo = (Combo)iterator1.next();
                    String text = combo.getText();
                    combo.setItems(items);
                    if(text.length() > 0)
                        combo.setText(text);
                }

            }
        }

    }

    private void saveInputHistory()
    {
        String id;
        Set history;
        for(Iterator iterator = fieldsWithHistory.entrySet().iterator(); iterator.hasNext(); dialogSettings.put(id, (String[])history.toArray(new String[history.size()])))
        {
            java.util.Map.Entry e = (java.util.Map.Entry)iterator.next();
            id = (String)e.getKey();
            history = new LinkedHashSet(15);
            Combo combo;
            for(Iterator iterator1 = ((List)e.getValue()).iterator(); iterator1.hasNext();)
            {
                combo = (Combo)iterator1.next();
                String lastValue = combo.getText();
                if(lastValue != null && lastValue.trim().length() > 0)
                    history.add(lastValue);
            }

            combo = (Combo)((List)e.getValue()).iterator().next();
            String items[] = combo.getItems();
            for(int j = 0; j < items.length && history.size() < 15; j++)
                history.add(items[j]);

        }

    }

    protected void addFieldWithHistory(String id, Combo combo)
    {
        if(combo != null)
        {
            List combos = (List)fieldsWithHistory.get(id);
            if(combos == null)
            {
                combos = new ArrayList();
                fieldsWithHistory.put(id, combos);
            }
            combos.add(combo);
        }
    }

    protected String validateArtifactIdInput(String text)
    {
        return validateIdInput(text, true);
    }

    protected String validateGroupIdInput(String text)
    {
        return validateIdInput(text, false);
    }

    private String validateIdInput(String text, boolean artifact)
    {
        if(text == null || text.length() == 0)
            return artifact ? Messages.wizardProjectPageMaven2ValidatorArtifactID : Messages.wizardProjectPageMaven2ValidatorGroupID;
        if(text.contains(" "))
            return artifact ? Messages.wizardProjectPageMaven2ValidatorArtifactIDnospaces : Messages.wizardProjectPageMaven2ValidatorGroupIDnospaces;
        IStatus nameStatus = ResourcesPlugin.getWorkspace().validateName(text, 4);
        if(!nameStatus.isOK())
            return NLS.bind(artifact ? Messages.wizardProjectPageMaven2ValidatorArtifactIDinvalid : Messages.wizardProjectPageMaven2ValidatorGroupIDinvalid, nameStatus.getMessage());
        if(!text.matches("[A-Za-z0-9_\\-.]+"))
            return NLS.bind(artifact ? Messages.wizardProjectPageMaven2ValidatorArtifactIDinvalid : Messages.wizardProjectPageMaven2ValidatorGroupIDinvalid, text);
        else
            return null;
    }

    protected static final int MAX_HISTORY = 15;
    private ProjectImportConfiguration importConfiguration;
    protected ResolverConfigurationComponent resolverConfigurationComponent;
    protected IDialogSettings dialogSettings;
    private Map fieldsWithHistory;
    private boolean isHistoryLoaded;
}
