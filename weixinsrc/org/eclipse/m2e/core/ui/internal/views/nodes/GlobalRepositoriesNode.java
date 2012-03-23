// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   GlobalRepositoriesNode.java

package org.eclipse.m2e.core.ui.internal.views.nodes;

import java.util.List;
import org.eclipse.m2e.core.repository.IRepositoryRegistry;
import org.eclipse.m2e.core.ui.internal.Messages;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.views.nodes:
//            AbstractRepositoriesNode

public class GlobalRepositoriesNode extends AbstractRepositoriesNode
{

    public GlobalRepositoriesNode()
    {
    }

    public String getName()
    {
        return Messages.GlobalRepositoriesNode_name;
    }

    protected List getRepositories()
    {
        return repositoryRegistry.getRepositories(8);
    }
}
