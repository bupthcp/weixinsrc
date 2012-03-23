// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   QueueBrowser.java

package javax.jms;

import java.util.Enumeration;

// Referenced classes of package javax.jms:
//            JMSException, Queue

public interface QueueBrowser
{

    public abstract Queue getQueue()
        throws JMSException;

    public abstract String getMessageSelector()
        throws JMSException;

    public abstract Enumeration getEnumeration()
        throws JMSException;

    public abstract void close()
        throws JMSException;
}
