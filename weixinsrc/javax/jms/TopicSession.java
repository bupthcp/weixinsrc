// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   TopicSession.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, Session, Topic, TopicSubscriber, 
//            TopicPublisher, TemporaryTopic

public interface TopicSession
    extends Session
{

    public abstract Topic createTopic(String s)
        throws JMSException;

    public abstract TopicSubscriber createSubscriber(Topic topic)
        throws JMSException;

    public abstract TopicSubscriber createSubscriber(Topic topic, String s, boolean flag)
        throws JMSException;

    public abstract TopicSubscriber createDurableSubscriber(Topic topic, String s)
        throws JMSException;

    public abstract TopicSubscriber createDurableSubscriber(Topic topic, String s, String s1, boolean flag)
        throws JMSException;

    public abstract TopicPublisher createPublisher(Topic topic)
        throws JMSException;

    public abstract TemporaryTopic createTemporaryTopic()
        throws JMSException;

    public abstract void unsubscribe(String s)
        throws JMSException;
}
