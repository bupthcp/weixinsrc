// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AbstractResourceRunnable.java

package org.eclipse.epp.internal.mpc.ui.catalog;

import java.io.*;
import java.lang.reflect.InvocationTargetException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.concurrent.Callable;
import org.eclipse.core.runtime.*;
import org.eclipse.epp.internal.mpc.core.util.ITransport;
import org.eclipse.epp.internal.mpc.core.util.TransportFactory;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUi;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.osgi.util.NLS;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.catalog:
//            Messages, ResourceProvider

abstract class AbstractResourceRunnable
    implements IRunnableWithProgress, Callable
{

    public AbstractResourceRunnable(IProgressMonitor cancellationMonitor, ResourceProvider resourceProvider, String resourceUrl)
    {
        this.cancellationMonitor = cancellationMonitor;
        this.resourceProvider = resourceProvider;
        this.resourceUrl = resourceUrl;
    }

    public Object call()
        throws Exception
    {
        run(new NullProgressMonitor() {

            public boolean isCanceled()
            {
                return cancellationMonitor.isCanceled();
            }

            final AbstractResourceRunnable this$0;

            
            {
                this$0 = AbstractResourceRunnable.this;
                super();
            }
        }
);
        return this;
    }

    public void run(IProgressMonitor monitor)
        throws InvocationTargetException, InterruptedException
    {
        InputStream in;
        URL imageUrl = new URL(resourceUrl);
        in = TransportFactory.instance().getTransport().stream(imageUrl.toURI(), monitor);
        resourceProvider.putResource(resourceUrl, in);
        break MISSING_BLOCK_LABEL_57;
        Exception exception;
        exception;
        if(in != null)
            in.close();
        throw exception;
        if(in != null)
            in.close();
        break MISSING_BLOCK_LABEL_113;
        URISyntaxException e;
        e;
        MarketplaceClientUi.error(NLS.bind(Messages.AbstractResourceRunnable_badUri, resourceUrl), e);
        break MISSING_BLOCK_LABEL_113;
        JVM INSTR pop ;
        break MISSING_BLOCK_LABEL_113;
        e;
        if(!(e.getCause() instanceof OperationCanceledException))
            MarketplaceClientUi.error(e);
        break MISSING_BLOCK_LABEL_113;
        e;
        MarketplaceClientUi.error(e);
        if(resourceProvider.containsResource(resourceUrl))
            resourceRetrieved();
        return;
    }

    protected abstract void resourceRetrieved();

    protected ResourceProvider resourceProvider;
    protected String resourceUrl;
    private final IProgressMonitor cancellationMonitor;

}
