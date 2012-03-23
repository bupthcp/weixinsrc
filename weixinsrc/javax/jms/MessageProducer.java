// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MessageProducer.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, Destination, Message

public interface MessageProducer
{

    public abstract void setDisableMessageID(boolean flag)
        throws JMSException;

    public abstract boolean getDisableMessageID()
        throws JMSException;

    public abstract void setDisableMessageTimestamp(boolean flag)
        throws JMSException;

    public abstract boolean getDisableMessageTimestamp()
        throws JMSException;

    public abstract void setDeliveryMode(int i)
        throws JMSException;

    public abstract int getDeliveryMode()
        throws JMSException;

    public abstract void setPriority(int i)
        throws JMSException;

    public abstract int getPriority()
        throws JMSException;

    public abstract void setTimeToLive(long l)
        throws JMSException;

    public abstract long getTimeToLive()
        throws JMSException;

    public abstract Destination getDestination()
        throws JMSException;

    public abstract void close()
        throws JMSException;

    public abstract void send(Message message)
        throws JMSException;

    public abstract void send(Message message, int i, int j, long l)
        throws JMSException;

    public abstract void send(Destination destination, Message message)
        throws JMSException;

    public abstract void send(Destination destination, Message message, int i, int j, long l)
        throws JMSException;
}
