// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   TopicConnection.java

package javax.jms;


// Referenced classes of package javax.jms:
//            Connection, JMSException, TopicSession, Topic, 
//            ServerSessionPool, ConnectionConsumer

public interface TopicConnection
    extends Connection
{

    public abstract TopicSession createTopicSession(boolean flag, int i)
        throws JMSException;

    public abstract ConnectionConsumer createConnectionConsumer(Topic topic, String s, ServerSessionPool serversessionpool, int i)
        throws JMSException;

    public abstract ConnectionConsumer createDurableConnectionConsumer(Topic topic, String s, String s1, ServerSessionPool serversessionpool, int i)
        throws JMSException;
}
