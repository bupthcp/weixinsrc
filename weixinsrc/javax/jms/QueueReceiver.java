// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   QueueReceiver.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, MessageConsumer, Queue

public interface QueueReceiver
    extends MessageConsumer
{

    public abstract Queue getQueue()
        throws JMSException;
}
