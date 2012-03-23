// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ProvisioningJobListener.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.io.InputStream;
import java.net.URI;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.runtime.*;
import org.eclipse.core.runtime.jobs.*;
import org.eclipse.epp.internal.mpc.core.service.Node;
import org.eclipse.epp.internal.mpc.core.util.ITransport;
import org.eclipse.epp.internal.mpc.core.util.TransportFactory;
import org.eclipse.epp.internal.mpc.ui.util.ConcurrentTaskManager;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            Messages

class ProvisioningJobListener extends JobChangeAdapter
{

    public ProvisioningJobListener(Set installItems)
    {
        this.installItems = installItems;
    }

    public void done(IJobChangeEvent event)
    {
        if(event.getResult().isOK())
        {
            Job job = new Job(Messages.ProvisioningJobListener_notificationTaskName) {

                protected IStatus run(IProgressMonitor monitor)
                {
                    ConcurrentTaskManager taskManager = new ConcurrentTaskManager(installItems.size(), Messages.ProvisioningJobListener_notificationTaskName);
                    final CatalogItem item;
                    for(Iterator iterator = installItems.iterator(); iterator.hasNext(); taskManager.submit(new Runnable() {

                public void run()
                {
                    String url;
                    Node node = (Node)item.getData();
                    url = node.getUrl();
                    if(!url.endsWith("/"))
                        url = (new StringBuilder(String.valueOf(url))).append("/").toString();
                    url = (new StringBuilder(String.valueOf(url))).append("success").toString();
                    InputStream stream = TransportFactory.instance().getTransport().stream(new URI(url), new NullProgressMonitor());
                    while(stream.read() != -1) ;
                    break MISSING_BLOCK_LABEL_112;
                    Exception exception;
                    exception;
                    stream.close();
                    throw exception;
                    stream.close();
                    break MISSING_BLOCK_LABEL_120;
                    JVM INSTR pop ;
                }

                final _cls1 this$1;
                private final CatalogItem val$item;

                    
                    {
                        this$1 = _cls1.this;
                        item = catalogitem;
                        super();
                    }
            }
))
                        item = (CatalogItem)iterator.next();

                    try
                    {
                        taskManager.waitUntilFinished(monitor);
                    }
                    catch(CoreException e)
                    {
                        return e.getStatus();
                    }
                    return monitor.isCanceled() ? Status.CANCEL_STATUS : Status.OK_STATUS;
                }

                final ProvisioningJobListener this$0;

            
            {
                this$0 = ProvisioningJobListener.this;
                super($anonymous0);
                setPriority(30);
                setSystem(true);
                setUser(true);
            }
            }
;
            job.schedule();
        }
    }

    private final Set installItems;

}
