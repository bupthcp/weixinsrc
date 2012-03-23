// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Session.java

package javax.jms;

import java.io.Serializable;

// Referenced classes of package javax.jms:
//            JMSException, BytesMessage, MapMessage, Message, 
//            ObjectMessage, StreamMessage, TextMessage, MessageListener, 
//            Destination, MessageProducer, MessageConsumer, Queue, 
//            Topic, TopicSubscriber, QueueBrowser, TemporaryQueue, 
//            TemporaryTopic

public interface Session
    extends Runnable
{

    public abstract BytesMessage createBytesMessage()
        throws JMSException;

    public abstract MapMessage createMapMessage()
        throws JMSException;

    public abstract Message createMessage()
        throws JMSException;

    public abstract ObjectMessage createObjectMessage()
        throws JMSException;

    public abstract ObjectMessage createObjectMessage(Serializable serializable)
        throws JMSException;

    public abstract StreamMessage createStreamMessage()
        throws JMSException;

    public abstract TextMessage createTextMessage()
        throws JMSException;

    public abstract TextMessage createTextMessage(String s)
        throws JMSException;

    public abstract boolean getTransacted()
        throws JMSException;

    public abstract int getAcknowledgeMode()
        throws JMSException;

    public abstract void commit()
        throws JMSException;

    public abstract void rollback()
        throws JMSException;

    public abstract void close()
        throws JMSException;

    public abstract void recover()
        throws JMSException;

    public abstract MessageListener getMessageListener()
        throws JMSException;

    public abstract void setMessageListener(MessageListener messagelistener)
        throws JMSException;

    public abstract void run();

    public abstract MessageProducer createProducer(Destination destination)
        throws JMSException;

    public abstract MessageConsumer createConsumer(Destination destination)
        throws JMSException;

    public abstract MessageConsumer createConsumer(Destination destination, String s)
        throws JMSException;

    public abstract MessageConsumer createConsumer(Destination destination, String s, boolean flag)
        throws JMSException;

    public abstract Queue createQueue(String s)
        throws JMSException;

    public abstract Topic createTopic(String s)
        throws JMSException;

    public abstract TopicSubscriber createDurableSubscriber(Topic topic, String s)
        throws JMSException;

    public abstract TopicSubscriber createDurableSubscriber(Topic topic, String s, String s1, boolean flag)
        throws JMSException;

    public abstract QueueBrowser createBrowser(Queue queue)
        throws JMSException;

    public abstract QueueBrowser createBrowser(Queue queue, String s)
        throws JMSException;

    public abstract TemporaryQueue createTemporaryQueue()
        throws JMSException;

    public abstract TemporaryTopic createTemporaryTopic()
        throws JMSException;

    public abstract void unsubscribe(String s)
        throws JMSException;

    public static final int AUTO_ACKNOWLEDGE = 1;
    public static final int CLIENT_ACKNOWLEDGE = 2;
    public static final int DUPS_OK_ACKNOWLEDGE = 3;
    public static final int SESSION_TRANSACTED = 0;
}
