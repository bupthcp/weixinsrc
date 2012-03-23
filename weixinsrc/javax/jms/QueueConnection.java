// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   QueueConnection.java

package javax.jms;


// Referenced classes of package javax.jms:
//            Connection, JMSException, QueueSession, Queue, 
//            ServerSessionPool, ConnectionConsumer

public interface QueueConnection
    extends Connection
{

    public abstract QueueSession createQueueSession(boolean flag, int i)
        throws JMSException;

    public abstract ConnectionConsumer createConnectionConsumer(Queue queue, String s, ServerSessionPool serversessionpool, int i)
        throws JMSException;
}
