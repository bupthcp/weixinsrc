// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   TopicConnectionFactory.java

package javax.jms;


// Referenced classes of package javax.jms:
//            ConnectionFactory, JMSException, TopicConnection

public interface TopicConnectionFactory
    extends ConnectionFactory
{

    public abstract TopicConnection createTopicConnection()
        throws JMSException;

    public abstract TopicConnection createTopicConnection(String s, String s1)
        throws JMSException;
}
