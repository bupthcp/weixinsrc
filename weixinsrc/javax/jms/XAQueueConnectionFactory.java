// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   XAQueueConnectionFactory.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, QueueConnectionFactory, XAConnectionFactory, XAQueueConnection

public interface XAQueueConnectionFactory
    extends XAConnectionFactory, QueueConnectionFactory
{

    public abstract XAQueueConnection createXAQueueConnection()
        throws JMSException;

    public abstract XAQueueConnection createXAQueueConnection(String s, String s1)
        throws JMSException;
}
