// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   XATopicConnection.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, TopicConnection, XAConnection, XATopicSession, 
//            TopicSession

public interface XATopicConnection
    extends XAConnection, TopicConnection
{

    public abstract XATopicSession createXATopicSession()
        throws JMSException;

    public abstract TopicSession createTopicSession(boolean flag, int i)
        throws JMSException;
}
