// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   QueueSender.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, MessageProducer, Queue, Message

public interface QueueSender
    extends MessageProducer
{

    public abstract Queue getQueue()
        throws JMSException;

    public abstract void send(Message message)
        throws JMSException;

    public abstract void send(Message message, int i, int j, long l)
        throws JMSException;

    public abstract void send(Queue queue, Message message)
        throws JMSException;

    public abstract void send(Queue queue, Message message, int i, int j, long l)
        throws JMSException;
}
