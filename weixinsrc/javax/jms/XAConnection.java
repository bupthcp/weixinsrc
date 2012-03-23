// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   XAConnection.java

package javax.jms;


// Referenced classes of package javax.jms:
//            Connection, JMSException, XASession, Session

public interface XAConnection
    extends Connection
{

    public abstract XASession createXASession()
        throws JMSException;

    public abstract Session createSession(boolean flag, int i)
        throws JMSException;
}
