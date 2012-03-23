// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   XATopicConnectionFactory.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, TopicConnectionFactory, XAConnectionFactory, XATopicConnection

public interface XATopicConnectionFactory
    extends XAConnectionFactory, TopicConnectionFactory
{

    public abstract XATopicConnection createXATopicConnection()
        throws JMSException;

    public abstract XATopicConnection createXATopicConnection(String s, String s1)
        throws JMSException;
}
