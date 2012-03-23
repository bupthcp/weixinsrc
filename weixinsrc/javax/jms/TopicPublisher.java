// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   TopicPublisher.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, MessageProducer, Topic, Message

public interface TopicPublisher
    extends MessageProducer
{

    public abstract Topic getTopic()
        throws JMSException;

    public abstract void publish(Message message)
        throws JMSException;

    public abstract void publish(Message message, int i, int j, long l)
        throws JMSException;

    public abstract void publish(Topic topic, Message message)
        throws JMSException;

    public abstract void publish(Topic topic, Message message, int i, int j, long l)
        throws JMSException;
}
