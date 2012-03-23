// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   XAQueueConnection.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, QueueConnection, XAConnection, XAQueueSession, 
//            QueueSession

public interface XAQueueConnection
    extends XAConnection, QueueConnection
{

    public abstract XAQueueSession createXAQueueSession()
        throws JMSException;

    public abstract QueueSession createQueueSession(boolean flag, int i)
        throws JMSException;
}
