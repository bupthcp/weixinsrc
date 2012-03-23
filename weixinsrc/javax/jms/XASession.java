// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   XASession.java

package javax.jms;

import javax.transaction.xa.XAResource;

// Referenced classes of package javax.jms:
//            JMSException, Session

public interface XASession
    extends Session
{

    public abstract Session getSession()
        throws JMSException;

    public abstract XAResource getXAResource();

    public abstract boolean getTransacted()
        throws JMSException;

    public abstract void commit()
        throws JMSException;

    public abstract void rollback()
        throws JMSException;
}
