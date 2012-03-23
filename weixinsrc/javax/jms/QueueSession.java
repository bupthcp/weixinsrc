// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   QueueSession.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, Session, Queue, QueueReceiver, 
//            QueueSender, QueueBrowser, TemporaryQueue

public interface QueueSession
    extends Session
{

    public abstract Queue createQueue(String s)
        throws JMSException;

    public abstract QueueReceiver createReceiver(Queue queue)
        throws JMSException;

    public abstract QueueReceiver createReceiver(Queue queue, String s)
        throws JMSException;

    public abstract QueueSender createSender(Queue queue)
        throws JMSException;

    public abstract QueueBrowser createBrowser(Queue queue)
        throws JMSException;

    public abstract QueueBrowser createBrowser(Queue queue, String s)
        throws JMSException;

    public abstract TemporaryQueue createTemporaryQueue()
        throws JMSException;
}
