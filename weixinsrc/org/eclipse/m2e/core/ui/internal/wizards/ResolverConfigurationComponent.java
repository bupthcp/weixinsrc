// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ResolverConfigurationComponent.java

package org.eclipse.m2e.core.ui.internal.wizards;

import org.eclipse.m2e.core.project.ProjectImportConfiguration;
import org.eclipse.m2e.core.project.ResolverConfiguration;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.events.*;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.forms.events.ExpansionAdapter;
import org.eclipse.ui.forms.events.ExpansionEvent;
import org.eclipse.ui.forms.widgets.ExpandableComposite;

public class ResolverConfigurationComponent extends ExpandableComposite
{

    public ResolverConfigurationComponent(final Composite parent, final ProjectImportConfiguration propectImportConfiguration, boolean enableProjectNameTemplate)
    {
        super(parent, 98);
        projectImportConfiguration = propectImportConfiguration;
        resolverConfiguration = propectImportConfiguration.getResolverConfiguration();
        setText(Messages.resolverConfigurationAdvanced);
        Composite advancedComposite = new Composite(this, 0);
        setClient(advancedComposite);
        addExpansionListener(new ExpansionAdapter() {

            public void expansionStateChanged(ExpansionEvent e)
            {
                Shell shell = parent.getShell();
                Point minSize = shell.getMinimumSize();
                shell.setMinimumSize(shell.getSize().x, minSize.y);
                shell.pack();
                parent.layout();
                shell.setMinimumSize(minSize);
            }

            final ResolverConfigurationComponent this$0;
            private final Composite val$parent;

            
            {
                this$0 = ResolverConfigurationComponent.this;
                parent = composite;
                super();
            }
        }
);
        GridLayout gridLayout = new GridLayout();
        gridLayout.marginLeft = 11;
        gridLayout.numColumns = 2;
        advancedComposite.setLayout(gridLayout);
        resolveWorkspaceProjects = new Button(advancedComposite, 32);
        resolveWorkspaceProjects.setLayoutData(new GridData(16384, 0x1000000, false, false, 2, 1));
        resolveWorkspaceProjects.setText(Messages.resolverConfigurationResolveWorkspaceProjects);
        resolveWorkspaceProjects.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                resolverConfiguration.setResolveWorkspaceProjects(resolveWorkspaceProjects.getSelection());
            }

            final ResolverConfigurationComponent this$0;

            
            {
                this$0 = ResolverConfigurationComponent.this;
                super();
            }
        }
);
        Label profilesLabel = new Label(advancedComposite, 0);
        profilesLabel.setLayoutData(new GridData(16384, 0x1000000, false, false));
        profilesLabel.setText(Messages.resolverConfigurationProfiles);
        profiles = new Text(advancedComposite, 2048);
        profiles.setLayoutData(new GridData(4, 0x1000000, true, false));
        profiles.addModifyListener(new ModifyListener() {

            public void modifyText(ModifyEvent e)
            {
                resolverConfiguration.setActiveProfiles(profiles.getText());
            }

            final ResolverConfigurationComponent this$0;

            
            {
                this$0 = ResolverConfigurationComponent.this;
                super();
            }
        }
);
        if(enableProjectNameTemplate)
        {
            Label templateLabel = new Label(advancedComposite, 0);
            templateLabel.setLayoutData(new GridData(16384, 0x1000000, false, false));
            templateLabel.setText(Messages.resolverConfigurationTemplate);
            template = new Combo(advancedComposite, 2048);
            template.setLayoutData(new GridData(4, 0x1000000, true, false));
            template.setToolTipText(Messages.resolverConfigurationTemplateDescription);
            template.setItems(DEFAULT_NAME_TEMPLATES);
            template.addModifyListener(new ModifyListener() {

                public void modifyText(ModifyEvent e)
                {
                    propectImportConfiguration.setProjectNameTemplate(template.getText());
                }

                final ResolverConfigurationComponent this$0;
                private final ProjectImportConfiguration val$propectImportConfiguration;

            
            {
                this$0 = ResolverConfigurationComponent.this;
                propectImportConfiguration = projectimportconfiguration;
                super();
            }
            }
);
        }
        loadData();
    }

    public void loadData()
    {
        resolveWorkspaceProjects.setSelection(resolverConfiguration.shouldResolveWorkspaceProjects());
        profiles.setText(resolverConfiguration.getActiveProfiles());
        if(template != null)
            template.setText(projectImportConfiguration.getProjectNameTemplate());
    }

    public ResolverConfiguration getResolverConfiguration()
    {
        return resolverConfiguration;
    }

    public void setModifyListener(ModifyListener modifyListener)
    {
        this.modifyListener = modifyListener;
        if(template != null)
            template.addModifyListener(modifyListener);
    }

    public void dispose()
    {
        super.dispose();
        if(modifyListener != null)
            template.removeModifyListener(modifyListener);
    }

    private static final String DEFAULT_NAME_TEMPLATES[] = {
        "[artifactId]", "[artifactId]-TRUNK", "[artifactId]-[version]", "[groupId].[artifactId]", "[groupId].[artifactId]-[version]"
    };
    protected final ResolverConfiguration resolverConfiguration;
    private final ProjectImportConfiguration projectImportConfiguration;
    private ModifyListener modifyListener;
    Button resolveWorkspaceProjects;
    Text profiles;
    Combo template;

}
