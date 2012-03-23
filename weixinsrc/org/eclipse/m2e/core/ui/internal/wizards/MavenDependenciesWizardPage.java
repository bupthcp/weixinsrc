// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenDependenciesWizardPage.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.util.*;
import org.apache.maven.model.Dependency;
import org.eclipse.jface.viewers.*;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.m2e.core.internal.index.IndexedArtifact;
import org.eclipse.m2e.core.internal.index.IndexedArtifactFile;
import org.eclipse.m2e.core.project.ProjectImportConfiguration;
import org.eclipse.m2e.core.ui.internal.MavenImages;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.m2e.core.ui.internal.dialogs.MavenRepositorySearchDialog;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            AbstractMavenWizardPage

public class MavenDependenciesWizardPage extends AbstractMavenWizardPage
{
    public static class ArtifactLabelProvider extends LabelProvider
    {

        public String getText(Object element)
        {
            if(element instanceof Dependency)
            {
                Dependency d = (Dependency)element;
                return (new StringBuilder(String.valueOf(d.getGroupId()))).append(":").append(d.getArtifactId()).append(":").append(d.getVersion()).append(d.getClassifier() != null ? (new StringBuilder(":")).append(d.getClassifier()).toString() : "").toString();
            } else
            {
                return super.getText(element);
            }
        }

        public Image getImage(Object element)
        {
            if(element instanceof Dependency)
                return DEPENDENCY_IMAGE;
            else
                return super.getImage(element);
        }

        private static final Image DEPENDENCY_IMAGE;

        static 
        {
            DEPENDENCY_IMAGE = MavenImages.IMG_JAR;
        }

        public ArtifactLabelProvider()
        {
        }
    }

    public static class DependencySorter extends ViewerComparator
    {

        public int compare(Viewer viewer, Object e1, Object e2)
        {
            if(!(e1 instanceof Dependency) || !(e2 instanceof Dependency))
                return super.compare(viewer, e1, e2);
            String group1 = ((Dependency)e1).getGroupId();
            String group2 = ((Dependency)e2).getGroupId();
            int result = group1 != null ? group1.compareToIgnoreCase(group2) : -1;
            if(result == 0)
            {
                String artifact1 = ((Dependency)e1).getArtifactId();
                String artifact2 = ((Dependency)e2).getArtifactId();
                result = artifact1 != null ? artifact1.compareToIgnoreCase(artifact2) : -1;
            }
            return result;
        }

        public DependencySorter()
        {
        }
    }


    public MavenDependenciesWizardPage()
    {
        this(null, Messages.wizardProjectPageDependenciesTitle, Messages.wizardProjectPageDependenciesDescription);
    }

    public MavenDependenciesWizardPage(ProjectImportConfiguration projectImportConfiguration, String title, String description)
    {
        super("MavenDependenciesWizardPage", projectImportConfiguration);
        listeners = new ArrayList();
        showScope = false;
        setTitle(title);
        setDescription(description);
        setPageComplete(true);
    }

    public void setShowScope(boolean showScope)
    {
        this.showScope = showScope;
    }

    public void setDependencies(Dependency dependencies[])
    {
        this.dependencies = dependencies;
    }

    public void createControl(Composite parent)
    {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout(3, false);
        composite.setLayout(layout);
        if(dependencies != null)
            createArtifacts(composite);
        createAdvancedSettings(composite, new GridData(4, 128, false, false, 3, 1));
        setControl(composite);
        updatePage();
    }

    private void createArtifacts(Composite composite)
    {
        Label mavenArtifactsLabel = new Label(composite, 0);
        mavenArtifactsLabel.setLayoutData(new GridData(16384, 0x1000000, false, false, 3, 1));
        mavenArtifactsLabel.setText(Messages.MavenDependenciesWizardPage_lblArtifacts);
        dependencyViewer = new TableViewer(composite, 2818);
        dependencyViewer.getTable().setLayoutData(new GridData(4, 4, true, true, 2, 2));
        dependencyViewer.setUseHashlookup(true);
        dependencyViewer.setLabelProvider(new ArtifactLabelProvider());
        dependencyViewer.setComparator(new DependencySorter());
        dependencyViewer.add(dependencies);
        Button addDependencyButton = new Button(composite, 8);
        GridData gd_addDependencyButton = new GridData(4, 128, false, false);
        addDependencyButton.setLayoutData(gd_addDependencyButton);
        addDependencyButton.setText(Messages.wizardProjectPageDependenciesAdd);
        addDependencyButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                MavenRepositorySearchDialog dialog = MavenRepositorySearchDialog.createSearchDependencyDialog(getShell(), Messages.MavenDependenciesWizardPage_searchDialog_title, null, null, false);
                if(dialog.open() == 0)
                {
                    Object result = dialog.getFirstResult();
                    if(result instanceof IndexedArtifactFile)
                    {
                        Dependency dependency = ((IndexedArtifactFile)result).getDependency();
                        dependency.setScope(dialog.getSelectedScope());
                        dependencyViewer.add(dependency);
                        notifyListeners();
                    } else
                    if(result instanceof IndexedArtifact)
                    {
                        Set files = ((IndexedArtifact)result).getFiles();
                        if(files != null && !files.isEmpty())
                        {
                            dependencyViewer.add(((IndexedArtifactFile)files.iterator().next()).getDependency());
                            notifyListeners();
                        }
                    }
                }
            }

            final MavenDependenciesWizardPage this$0;

            
            {
                this$0 = MavenDependenciesWizardPage.this;
                super();
            }
        }
);
        final Button removeDependencyButton = new Button(composite, 8);
        removeDependencyButton.setLayoutData(new GridData(4, 128, false, true));
        removeDependencyButton.setText(Messages.wizardProjectPageDependenciesRemove);
        removeDependencyButton.setEnabled(false);
        removeDependencyButton.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                IStructuredSelection selection = (IStructuredSelection)dependencyViewer.getSelection();
                if(selection != null)
                {
                    dependencyViewer.remove(selection.toArray());
                    notifyListeners();
                }
            }

            final MavenDependenciesWizardPage this$0;

            
            {
                this$0 = MavenDependenciesWizardPage.this;
                super();
            }
        }
);
        dependencyViewer.addSelectionChangedListener(new ISelectionChangedListener() {

            public void selectionChanged(SelectionChangedEvent event)
            {
                IStructuredSelection selection = (IStructuredSelection)event.getSelection();
                removeDependencyButton.setEnabled(selection.size() > 0);
            }

            final MavenDependenciesWizardPage this$0;
            private final Button val$removeDependencyButton;

            
            {
                this$0 = MavenDependenciesWizardPage.this;
                removeDependencyButton = button;
                super();
            }
        }
);
    }

    public IWizardContainer getContainer()
    {
        return super.getContainer();
    }

    void updatePage()
    {
        setPageComplete(isPageValid());
    }

    private boolean isPageValid()
    {
        setErrorMessage(null);
        return true;
    }

    protected void notifyListeners()
    {
        SelectionChangedEvent event = new SelectionChangedEvent(dependencyViewer, dependencyViewer.getSelection());
        ISelectionChangedListener listener;
        for(Iterator iterator = listeners.iterator(); iterator.hasNext(); listener.selectionChanged(event))
            listener = (ISelectionChangedListener)iterator.next();

    }

    public void addListener(ISelectionChangedListener listener)
    {
        listeners.add(listener);
    }

    public Dependency[] getDependencies()
    {
        List dependencies = new ArrayList();
        for(int i = 0; i < dependencyViewer.getTable().getItemCount(); i++)
        {
            Object element = dependencyViewer.getElementAt(i);
            if(element instanceof Dependency)
                dependencies.add((Dependency)element);
        }

        return (Dependency[])dependencies.toArray(new Dependency[dependencies.size()]);
    }

    TableViewer dependencyViewer;
    private Dependency dependencies[];
    private List listeners;
    boolean showScope;
}
