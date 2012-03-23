// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PomHierarchyComposite.java

package org.eclipse.m2e.core.ui.internal.components;

import java.lang.reflect.InvocationTargetException;
import java.util.*;
import org.apache.maven.project.MavenProject;
import org.eclipse.core.runtime.*;
import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.viewers.*;
import org.eclipse.m2e.core.MavenPlugin;
import org.eclipse.m2e.core.project.IMavenProjectFacade;
import org.eclipse.m2e.core.project.IMavenProjectRegistry;
import org.eclipse.m2e.core.ui.internal.MavenImages;
import org.eclipse.m2e.core.ui.internal.util.ParentGatherer;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.*;
import org.eclipse.ui.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PomHierarchyComposite extends Composite
    implements IInputSelectionProvider
{
    public static class DepLabelProvider extends LabelProvider
        implements IColorProvider
    {

        public String getText(Object element)
        {
            MavenProject project = null;
            if(element instanceof MavenProject)
                project = (MavenProject)element;
            else
            if(element instanceof Object[])
                project = (MavenProject)((Object[])element)[0];
            else
                return "";
            StringBuffer buffer = new StringBuffer();
            buffer.append((new StringBuilder(String.valueOf(project.getGroupId()))).append(" : ").append(project.getArtifactId()).append(" : ").append(project.getVersion()).toString());
            return buffer.toString();
        }

        public Color getForeground(Object element)
        {
            if(element instanceof MavenProject)
            {
                MavenProject project = (MavenProject)element;
                IMavenProjectFacade search = MavenPlugin.getMavenProjectRegistry().getMavenProject(project.getGroupId(), project.getArtifactId(), project.getVersion());
                if(search == null)
                    return Display.getDefault().getSystemColor(16);
            }
            return null;
        }

        public Color getBackground(Object element)
        {
            return null;
        }

        public Image getImage(Object element)
        {
            if(element instanceof MavenProject)
            {
                MavenProject project = (MavenProject)element;
                IMavenProjectFacade search = MavenPlugin.getMavenProjectRegistry().getMavenProject(project.getGroupId(), project.getArtifactId(), project.getVersion());
                if(search == null)
                    return MavenImages.getOverlayImage("jar_obj.gif", "lock_ovr.gif", 2);
                else
                    return PlatformUI.getWorkbench().getSharedImages().getImage("IMG_OBJ_PROJECT");
            } else
            {
                return null;
            }
        }

        public DepLabelProvider()
        {
        }
    }

    public static class PomHeirarchyContentProvider
        implements ITreeContentProvider
    {

        public void inputChanged(Viewer viewer, Object oldInput, Object newInput)
        {
            if(newInput instanceof LinkedList)
                projects = (LinkedList)newInput;
        }

        public void dispose()
        {
        }

        public boolean hasChildren(Object element)
        {
            Object children[] = getChildren(element);
            return children.length != 0;
        }

        public Object getParent(Object element)
        {
            if(element instanceof MavenProject)
            {
                MavenProject project = (MavenProject)element;
                return project.getParent();
            } else
            {
                return null;
            }
        }

        public Object[] getElements(Object inputElement)
        {
            if(inputElement instanceof LinkedList)
            {
                LinkedList projects = (LinkedList)inputElement;
                if(projects.isEmpty())
                    return new Object[0];
                else
                    return (new Object[] {
                        projects.getLast()
                    });
            } else
            {
                return new Object[0];
            }
        }

        public Object[] getChildren(Object parentElement)
        {
            if(parentElement instanceof MavenProject)
            {
                MavenProject parent = (MavenProject)parentElement;
                if(projects.size() == 1)
                    return new Object[0];
                if(((MavenProject)projects.getFirst()).equals(parent))
                    return new Object[0];
                for(ListIterator iter = projects.listIterator(); iter.hasNext();)
                {
                    MavenProject next = (MavenProject)iter.next();
                    if(next.equals(parent))
                    {
                        iter.previous();
                        MavenProject previous = (MavenProject)iter.previous();
                        return (new Object[] {
                            previous
                        });
                    }
                }

            }
            return new Object[0];
        }

        private LinkedList projects;

        public PomHeirarchyContentProvider()
        {
        }
    }


    public PomHierarchyComposite(Composite parent, int style)
    {
        super(parent, style);
        build();
    }

    private void build()
    {
        setLayout(new FillLayout(256));
        pomsViewer = new TreeViewer(this, 0);
        pomsViewer.setLabelProvider(new DepLabelProvider());
        pomsViewer.setContentProvider(new PomHeirarchyContentProvider());
    }

    public void setEnabled(boolean bool)
    {
        pomsViewer.getTree().setEnabled(bool);
        super.setEnabled(bool);
    }

    public void computeHeirarchy(final IMavenProjectFacade project, IRunnableContext context)
    {
        try
        {
            if(context != null)
                context.run(false, true, new IRunnableWithProgress() {

                    public void run(IProgressMonitor monitor)
                        throws InvocationTargetException, InterruptedException
                    {
                        try
                        {
                            computeHeirarchy(project, monitor);
                        }
                        catch(CoreException e)
                        {
                            throw new InvocationTargetException(e);
                        }
                    }

                    final PomHierarchyComposite this$0;
                    private final IMavenProjectFacade val$project;

            
            {
                this$0 = PomHierarchyComposite.this;
                project = imavenprojectfacade;
                super();
            }
                }
);
            else
                computeHeirarchy(project, ((IProgressMonitor) (new NullProgressMonitor())));
        }
        catch(Exception e)
        {
            LOG.error("An error occurred building pom heirarchy", e);
        }
    }

    private void computeHeirarchy(IMavenProjectFacade projectFacade, IProgressMonitor monitor)
        throws CoreException
    {
        LinkedList hierarchy = new LinkedList();
        hierarchy.addAll((new ParentGatherer(projectFacade.getMavenProject(monitor), projectFacade)).getParentHierarchy(monitor));
        setHierarchy(hierarchy);
    }

    public void setHierarchy(LinkedList hierarchy)
    {
        this.hierarchy = hierarchy;
        pomsViewer.setInput(hierarchy);
        pomsViewer.expandAll();
    }

    public void addSelectionChangedListener(ISelectionChangedListener listener)
    {
        pomsViewer.addSelectionChangedListener(listener);
    }

    public Object getInput()
    {
        return pomsViewer.getInput();
    }

    public ISelection getSelection()
    {
        return pomsViewer.getSelection();
    }

    public void removeSelectionChangedListener(ISelectionChangedListener listener)
    {
        pomsViewer.removeSelectionChangedListener(listener);
    }

    public void setSelection(ISelection selection)
    {
        pomsViewer.setSelection(selection);
    }

    public List getHierarchy()
    {
        return hierarchy;
    }

    public MavenProject fromSelection()
    {
        ISelection selection = pomsViewer.getSelection();
        if(selection instanceof IStructuredSelection)
        {
            Object obj = ((IStructuredSelection)selection).getFirstElement();
            if(obj instanceof MavenProject)
                return (MavenProject)obj;
        }
        return null;
    }

    private static final Logger LOG = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/components/PomHierarchyComposite);
    private TreeViewer pomsViewer;
    private List hierarchy;


}
