// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenImportWizard.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.*;
import org.apache.maven.project.MavenProject;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.dialogs.MessageDialogWithToggle;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.internal.M2EUtils;
import org.eclipse.m2e.core.internal.lifecyclemapping.discovery.*;
import org.eclipse.m2e.core.lifecyclemapping.model.PluginExecutionAction;
import org.eclipse.m2e.core.project.*;
import org.eclipse.m2e.core.project.configurator.MojoExecutionKey;
import org.eclipse.m2e.core.ui.internal.*;
import org.eclipse.m2e.core.ui.internal.actions.SelectionUtil;
import org.eclipse.m2e.core.ui.internal.editing.LifecycleMappingOperation;
import org.eclipse.m2e.core.ui.internal.editing.PomEdits;
import org.eclipse.m2e.core.ui.internal.lifecyclemapping.ILifecycleMappingLabelProvider;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.IImportWizard;
import org.eclipse.ui.IWorkbench;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.wizards:
//            AbstractMavenProjectWizard, IMavenDiscoveryUI, LifecycleMappingPage, MavenImportWizardPage, 
//            AbstractCreateMavenProjectsOperation

public class MavenImportWizard extends AbstractMavenProjectWizard
    implements IImportWizard
{

    public MavenImportWizard()
    {
        showLocation = true;
        initialized = false;
        setNeedsProgressMonitor(true);
        setWindowTitle(Messages.MavenImportWizard_title);
    }

    public MavenImportWizard(ProjectImportConfiguration importConfiguration, List locations)
    {
        this();
        this.locations = locations;
        showLocation = false;
    }

    public MavenImportWizard(ProjectImportConfiguration importConfiguration, List locations, LifecycleMappingConfiguration mappingConfiguration)
    {
        this(importConfiguration, locations);
        this.mappingConfiguration = mappingConfiguration;
    }

    public void init(IWorkbench workbench, IStructuredSelection selection)
    {
        super.init(workbench, selection);
        initialized = true;
        if(locations == null || locations.isEmpty())
        {
            IPath location = SelectionUtil.getSelectedLocation(selection);
            if(location != null)
                locations = Collections.singletonList(location.toOSString());
        }
    }

    public void addPages()
    {
        if(!initialized)
            init(null, null);
        page = new MavenImportWizardPage(importConfiguration, workingSets);
        page.setLocations(locations);
        page.setShowLocation(showLocation);
        addPage(page);
        if(getDiscovery() != null)
        {
            lifecycleMappingPage = new LifecycleMappingPage();
            addPage(lifecycleMappingPage);
        }
    }

    public boolean performFinish()
    {
        if(!page.isPageComplete())
            return false;
        if(lifecycleMappingPage != null && !lifecycleMappingPage.isMappingComplete() && !warnIncompleteMapping())
            return false;
        List proposals = getMavenDiscoveryProposals();
        Collection projects = getProjects();
        IRunnableWithProgress importOperation = new AbstractCreateMavenProjectsOperation(proposals) {

            protected List doCreateMavenProjects(IProgressMonitor progressMonitor)
                throws CoreException
            {
                SubMonitor monitor = SubMonitor.convert(progressMonitor, 101);
                java.util.ArrayList arraylist;
                List results = MavenPlugin.getProjectConfigurationManager().importProjects(projects, importConfiguration, monitor.newChild(proposals.isEmpty() ? 100 : 50));
                arraylist = toProjects(results);
                monitor.done();
                return arraylist;
                Exception exception;
                exception;
                monitor.done();
                throw exception;
            }

            final MavenImportWizard this$0;
            private final Collection val$projects;
            private final List val$proposals;

            
            {
                this$0 = MavenImportWizard.this;
                projects = collection;
                proposals = list;
                super($anonymous0);
            }
        }
;
        boolean doImport = true;
        IMavenDiscoveryUI discovery = getPageFactory();
        if(discovery != null && !proposals.isEmpty())
        {
            Set projectsToConfigure = new HashSet();
            for(Iterator iterator = projects.iterator(); iterator.hasNext();)
            {
                MavenProjectInfo projectInfo = (MavenProjectInfo)iterator.next();
                if(projectInfo.getModel() != null)
                    projectsToConfigure.add(importConfiguration.getProjectName(projectInfo.getModel()));
            }

            doImport = discovery.implement(proposals, importOperation, getContainer(), projectsToConfigure);
        }
        if(doImport)
        {
            IRunnableWithProgress ignoreJob = new IRunnableWithProgress() {

                public void run(IProgressMonitor monitor)
                    throws InvocationTargetException, InterruptedException
                {
                    List changed = new LinkedList();
                    for(Iterator iterator1 = lifecycleMappingPage.getIgnore().iterator(); iterator1.hasNext();)
                    {
                        ILifecycleMappingLabelProvider prov = (ILifecycleMappingLabelProvider)iterator1.next();
                        org.eclipse.m2e.core.internal.lifecyclemapping.discovery.ILifecycleMappingRequirement req = prov.getKey();
                        if(req instanceof org.eclipse.m2e.core.internal.lifecyclemapping.discovery.MojoExecutionMappingConfiguration.MojoExecutionMappingRequirement)
                        {
                            changed.addAll(getProject(prov.getProjects()));
                            ignore(((org.eclipse.m2e.core.internal.lifecyclemapping.discovery.MojoExecutionMappingConfiguration.MojoExecutionMappingRequirement)req).getExecution(), prov.getProjects());
                        }
                    }

                    for(Iterator iterator2 = lifecycleMappingPage.getIgnoreParent().iterator(); iterator2.hasNext();)
                    {
                        ILifecycleMappingLabelProvider prov = (ILifecycleMappingLabelProvider)iterator2.next();
                        org.eclipse.m2e.core.internal.lifecyclemapping.discovery.ILifecycleMappingRequirement req = prov.getKey();
                        if(req instanceof org.eclipse.m2e.core.internal.lifecyclemapping.discovery.MojoExecutionMappingConfiguration.MojoExecutionMappingRequirement)
                        {
                            changed.addAll(getProject(prov.getProjects()));
                            ignoreAtDefinition(((org.eclipse.m2e.core.internal.lifecyclemapping.discovery.MojoExecutionMappingConfiguration.MojoExecutionMappingRequirement)req).getExecution(), prov.getProjects());
                        }
                    }

                    (new UpdateConfigurationJob((IProject[])changed.toArray(new IProject[changed.size()]))).schedule();
                }

                private Collection getProject(Collection projects)
                {
                    List workspaceProjects = new LinkedList();
                    for(Iterator iterator1 = projects.iterator(); iterator1.hasNext();)
                    {
                        MavenProject project = (MavenProject)iterator1.next();
                        IMavenProjectFacade facade = MavenPlugin.getMavenProjectRegistry().getMavenProject(project.getGroupId(), project.getArtifactId(), project.getVersion());
                        if(facade != null)
                            workspaceProjects.add(facade.getProject());
                    }

                    return workspaceProjects;
                }

                private void ignore(MojoExecutionKey key, Collection projects)
                {
                    String pluginGroupId = key.getGroupId();
                    String pluginArtifactId = key.getArtifactId();
                    String pluginVersion = key.getVersion();
                    String goals[] = {
                        key.getGoal()
                    };
                    for(Iterator iterator1 = projects.iterator(); iterator1.hasNext();)
                    {
                        MavenProject project = (MavenProject)iterator1.next();
                        org.eclipse.core.resources.IFile pomFile = M2EUtils.getPomFile(project);
                        try
                        {
                            PomEdits.performOnDOMDocument(new org.eclipse.m2e.core.ui.internal.editing.PomEdits.OperationTuple[] {
                                new org.eclipse.m2e.core.ui.internal.editing.PomEdits.OperationTuple(pomFile, new LifecycleMappingOperation(pluginGroupId, pluginArtifactId, pluginVersion, PluginExecutionAction.ignore, goals))
                            });
                        }
                        catch(IOException ex)
                        {
                            MavenImportWizard.LOG.error(ex.getMessage(), ex);
                        }
                        catch(CoreException ex)
                        {
                            MavenImportWizard.LOG.error(ex.getMessage(), ex);
                        }
                    }

                }

                private void ignoreAtDefinition(MojoExecutionKey key, Collection projects)
                {
                    ignore(key, M2EUtils.getDefiningProjects(key, projects));
                }

                final MavenImportWizard this$0;

            
            {
                this$0 = MavenImportWizard.this;
                super();
            }
            }
;
            Job job = new WorkspaceJob(ignoreJob) {

                public IStatus runInWorkspace(IProgressMonitor monitor)
                    throws CoreException
                {
                    try
                    {
                        importOperation.run(monitor);
                        if(lifecycleMappingPage != null)
                            ignoreJob.run(monitor);
                    }
                    catch(InvocationTargetException e)
                    {
                        return AbstractCreateMavenProjectsOperation.toStatus(e);
                    }
                    catch(InterruptedException _ex)
                    {
                        return Status.CANCEL_STATUS;
                    }
                    return Status.OK_STATUS;
                }

                final MavenImportWizard this$0;
                private final IRunnableWithProgress val$importOperation;
                private final IRunnableWithProgress val$ignoreJob;

            
            {
                this$0 = MavenImportWizard.this;
                importOperation = irunnablewithprogress;
                ignoreJob = irunnablewithprogress1;
                super($anonymous0);
            }
            }
;
            job.setRule(MavenPlugin.getProjectConfigurationManager().getRule());
            job.schedule();
        }
        return doImport;
    }

    public boolean canFinish()
    {
        IWizardPage currentPage = getContainer().getCurrentPage();
        if(!currentPage.isPageComplete())
            return false;
        if(getDiscovery() == null)
            return true;
        if(currentPage == page)
            return getMappingConfiguration().isMappingComplete(true) && getMappingConfiguration().getSelectedProposals().isEmpty();
        else
            return super.canFinish();
    }

    private List getMavenDiscoveryProposals()
    {
        if(lifecycleMappingPage == null)
            return Collections.emptyList();
        else
            return lifecycleMappingPage.getSelectedDiscoveryProposals();
    }

    public Collection getProjects()
    {
        return page.getProjects();
    }

    public LifecycleMappingConfiguration getMappingConfiguration()
    {
        return mappingConfiguration;
    }

    void scanProjects(List list, IProgressMonitor monitor)
    {
        LOG.debug("About to calculate lifecycle mapping configuration");
        ProjectImportConfiguration importConfiguration = getProjectImportConfiguration();
        mappingConfiguration = LifecycleMappingConfiguration.calculate(list, importConfiguration, monitor);
        discoverProposals(mappingConfiguration, monitor);
    }

    void discoverProposals(LifecycleMappingConfiguration mappingConfiguration, IProgressMonitor monitor)
    {
        IMavenDiscovery discovery = getDiscovery();
        if(discovery == null)
            return;
        Collection projects = mappingConfiguration.getProjects();
        monitor.beginTask(Messages.MavenImportWizard_searchingTaskTitle, projects.size());
        Map proposals = new LinkedHashMap();
        for(Iterator iterator = projects.iterator(); iterator.hasNext(); monitor.worked(1))
        {
            ProjectLifecycleMappingConfiguration project = (ProjectLifecycleMappingConfiguration)iterator.next();
            if(monitor.isCanceled())
                throw new OperationCanceledException();
            MavenProject mavenProject = project.getMavenProject();
            List mojoExecutions = project.getMojoExecutions();
            try
            {
                proposals.putAll(discovery.discover(mavenProject, mojoExecutions, mappingConfiguration.getSelectedProposals(), SubMonitor.convert(monitor, NLS.bind(Messages.MavenImportWizard_analyzingProject, project.getRelpath()), 1)));
            }
            catch(CoreException e)
            {
                LOG.error(e.getMessage(), e);
            }
        }

        mappingConfiguration.setProposals(proposals);
    }

    private boolean skipIncompleteWarning()
    {
        return M2EUIPluginActivator.getDefault().getPreferenceStore().getBoolean("eclipse.m2.warn_incomplete_mapping");
    }

    private boolean warnIncompleteMapping()
    {
        if(!skipIncompleteWarning())
        {
            MessageDialogWithToggle dialog = MessageDialogWithToggle.open(5, getShell(), Messages.MavenImportWizard_titleIncompleteMapping, Messages.MavenImportWizard_messageIncompleteMapping, Messages.MavenImportWizard_hideWarningMessage, false, null, null, 0x10000000);
            if(dialog.getReturnCode() == 0)
            {
                M2EUIPluginActivator.getDefault().getPreferenceStore().setValue("eclipse.m2.warn_incomplete_mapping", dialog.getToggleState());
                return true;
            } else
            {
                return false;
            }
        } else
        {
            return true;
        }
    }

    private static final Logger LOG = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/wizards/MavenImportWizard);
    private MavenImportWizardPage page;
    private LifecycleMappingPage lifecycleMappingPage;
    private List locations;
    private boolean showLocation;
    private boolean initialized;
    private LifecycleMappingConfiguration mappingConfiguration;



}
