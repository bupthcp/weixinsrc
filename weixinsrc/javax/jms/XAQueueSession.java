// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   XAQueueSession.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, XASession, QueueSession

public interface XAQueueSession
    extends XASession
{

    public abstract QueueSession getQueueSession()
        throws JMSException;
}
