// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Connection.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, Session, ConnectionMetaData, ExceptionListener, 
//            Destination, ServerSessionPool, ConnectionConsumer, Topic

public interface Connection
{

    public abstract Session createSession(boolean flag, int i)
        throws JMSException;

    public abstract String getClientID()
        throws JMSException;

    public abstract void setClientID(String s)
        throws JMSException;

    public abstract ConnectionMetaData getMetaData()
        throws JMSException;

    public abstract ExceptionListener getExceptionListener()
        throws JMSException;

    public abstract void setExceptionListener(ExceptionListener exceptionlistener)
        throws JMSException;

    public abstract void start()
        throws JMSException;

    public abstract void stop()
        throws JMSException;

    public abstract void close()
        throws JMSException;

    public abstract ConnectionConsumer createConnectionConsumer(Destination destination, String s, ServerSessionPool serversessionpool, int i)
        throws JMSException;

    public abstract ConnectionConsumer createDurableConnectionConsumer(Topic topic, String s, String s1, ServerSessionPool serversessionpool, int i)
        throws JMSException;
}
