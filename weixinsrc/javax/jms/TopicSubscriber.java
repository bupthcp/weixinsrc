// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   TopicSubscriber.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, MessageConsumer, Topic

public interface TopicSubscriber
    extends MessageConsumer
{

    public abstract Topic getTopic()
        throws JMSException;

    public abstract boolean getNoLocal()
        throws JMSException;
}
