// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CustomRepositoriesNode.java

package org.eclipse.m2e.core.ui.internal.views.nodes;

import java.util.List;
import org.eclipse.m2e.core.repository.IRepositoryRegistry;
import org.eclipse.m2e.core.ui.internal.Messages;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.views.nodes:
//            AbstractRepositoriesNode

public class CustomRepositoriesNode extends AbstractRepositoriesNode
{

    public CustomRepositoriesNode()
    {
    }

    protected List getRepositories()
    {
        return repositoryRegistry.getRepositories(1);
    }

    public String getName()
    {
        return Messages.CustomRepositoriesNode_name;
    }
}
