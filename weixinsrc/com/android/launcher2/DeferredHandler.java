// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   DeferredHandler.java

package com.android.launcher2;

import android.os.*;
import java.util.LinkedList;

public class DeferredHandler
{
    private class IdleRunnable
        implements Runnable
    {

        public void run()
        {
            mRunnable.run();
        }

        Runnable mRunnable;
        final DeferredHandler this$0;

        IdleRunnable(Runnable r)
        {
            this$0 = DeferredHandler.this;
            super();
            mRunnable = r;
        }
    }

    private class Impl extends Handler
        implements android.os.MessageQueue.IdleHandler
    {

        public void handleMessage(Message msg)
        {
            Runnable r;
label0:
            {
                synchronized(mQueue)
                {
                    if(mQueue.size() != 0)
                        break label0;
                }
                return;
            }
            r = (Runnable)mQueue.removeFirst();
            linkedlist;
            JVM INSTR monitorexit ;
            r.run();
            synchronized(mQueue)
            {
                scheduleNextLocked();
            }
            return;
        }

        public boolean queueIdle()
        {
            handleMessage(null);
            return false;
        }

        final DeferredHandler this$0;

        private Impl()
        {
            this$0 = DeferredHandler.this;
            super();
        }

        Impl(Impl impl)
        {
            this();
        }
    }


    public DeferredHandler()
    {
        mQueue = new LinkedList();
        mMessageQueue = Looper.myQueue();
        mHandler = new Impl(null);
    }

    public void post(Runnable runnable)
    {
        synchronized(mQueue)
        {
            mQueue.add(runnable);
            if(mQueue.size() == 1)
                scheduleNextLocked();
        }
    }

    public void postIdle(Runnable runnable)
    {
        post(new IdleRunnable(runnable));
    }

    public void cancelRunnable(Runnable runnable)
    {
        synchronized(mQueue)
        {
            while(mQueue.remove(runnable)) ;
        }
    }

    public void cancel()
    {
        synchronized(mQueue)
        {
            mQueue.clear();
        }
    }

    void scheduleNextLocked()
    {
        if(mQueue.size() > 0)
        {
            Runnable peek = (Runnable)mQueue.getFirst();
            if(peek instanceof IdleRunnable)
                mMessageQueue.addIdleHandler(mHandler);
            else
                mHandler.sendEmptyMessage(1);
        }
    }

    private LinkedList mQueue;
    private MessageQueue mMessageQueue;
    private Impl mHandler;

}
