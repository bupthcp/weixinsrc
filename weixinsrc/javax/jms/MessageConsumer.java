// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MessageConsumer.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, MessageListener, Message

public interface MessageConsumer
{

    public abstract String getMessageSelector()
        throws JMSException;

    public abstract MessageListener getMessageListener()
        throws JMSException;

    public abstract void setMessageListener(MessageListener messagelistener)
        throws JMSException;

    public abstract Message receive()
        throws JMSException;

    public abstract Message receive(long l)
        throws JMSException;

    public abstract Message receiveNoWait()
        throws JMSException;

    public abstract void close()
        throws JMSException;
}
