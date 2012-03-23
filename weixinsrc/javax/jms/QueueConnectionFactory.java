// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   QueueConnectionFactory.java

package javax.jms;


// Referenced classes of package javax.jms:
//            ConnectionFactory, JMSException, QueueConnection

public interface QueueConnectionFactory
    extends ConnectionFactory
{

    public abstract QueueConnection createQueueConnection()
        throws JMSException;

    public abstract QueueConnection createQueueConnection(String s, String s1)
        throws JMSException;
}
