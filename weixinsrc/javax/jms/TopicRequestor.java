// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   TopicRequestor.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, Message, TemporaryTopic, TopicPublisher, 
//            TopicSession, TopicSubscriber, Topic

public class TopicRequestor
{

    public TopicRequestor(TopicSession session, Topic topic)
        throws JMSException
    {
        this.session = session;
        this.topic = topic;
        tempTopic = session.createTemporaryTopic();
        publisher = session.createPublisher(topic);
        subscriber = session.createSubscriber(tempTopic);
    }

    public Message request(Message message)
        throws JMSException
    {
        message.setJMSReplyTo(tempTopic);
        publisher.publish(message);
        return subscriber.receive();
    }

    public void close()
        throws JMSException
    {
        session.close();
        tempTopic.delete();
    }

    TopicSession session;
    Topic topic;
    TemporaryTopic tempTopic;
    TopicPublisher publisher;
    TopicSubscriber subscriber;
}
