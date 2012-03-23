// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ConcurrentTaskManager.java

package org.eclipse.epp.internal.mpc.ui.util;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.*;
import org.eclipse.core.runtime.*;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.util:
//            Messages

public class ConcurrentTaskManager
{

    public ConcurrentTaskManager(ExecutorService executor, String taskName)
    {
        futures = new ArrayList();
        this.executor = executor;
        this.taskName = taskName;
    }

    public ConcurrentTaskManager(int size, String taskName)
    {
        this(Executors.newFixedThreadPool(Math.max(1, Math.min(size, 10))), taskName);
    }

    public void submit(Callable task)
    {
        futures.add(executor.submit(task));
    }

    public void submit(Runnable task)
    {
        futures.add(executor.submit(task));
    }

    public List getFutures()
    {
        return futures;
    }

    public void waitUntilFinished(IProgressMonitor monitor)
        throws CoreException
    {
        MultiStatus errorStatus;
        errorStatus = new MultiStatus("org.eclipse.epp.mpc.ui", 0, Messages.ConcurrentTaskManager_multipleErrorsOccurred, null);
        int totalWork = futures.isEmpty() ? 1 : futures.size();
        monitor.beginTask(taskName, totalWork);
        if(futures.isEmpty()) goto _L2; else goto _L1
_L4:
        Future future;
        int timeoutCount;
        future = (Future)futures.remove(0);
        timeoutCount = 0;
_L3:
        future.get(1L, TimeUnit.SECONDS);
        continue; /* Loop/switch isn't completed */
        JVM INSTR pop ;
        if(monitor.isCanceled())
        {
            executor.shutdownNow();
            monitor.done();
            return;
        }
        if(timeoutCount > 15)
        {
            future.cancel(true);
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_213;
        InterruptedException e;
        e;
        throw new CoreException(new Status(8, "org.eclipse.epp.mpc.ui", e.getMessage()));
        e;
        errorStatus.add(new Status(4, "org.eclipse.epp.mpc.ui", e.getCause().getMessage(), e.getCause()));
        if(monitor.isCanceled())
            continue; /* Loop/switch isn't completed */
        timeoutCount++;
          goto _L3
        monitor.worked(1);
_L1:
        if(!futures.isEmpty()) goto _L4; else goto _L2
_L2:
        if(!errorStatus.isOK() && errorStatus.getChildren().length > 0)
            if(errorStatus.getChildren().length == 1)
                throw new CoreException(errorStatus.getChildren()[0]);
            else
                throw new CoreException(errorStatus);
        break MISSING_BLOCK_LABEL_306;
        Exception exception;
        exception;
        executor.shutdownNow();
        monitor.done();
        throw exception;
        executor.shutdownNow();
        monitor.done();
        return;
    }

    public void shutdownNow()
    {
        executor.shutdownNow();
    }

    private final ExecutorService executor;
    private final List futures;
    private final String taskName;
}
