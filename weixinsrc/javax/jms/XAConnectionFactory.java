// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   XAConnectionFactory.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, XAConnection

public interface XAConnectionFactory
{

    public abstract XAConnection createXAConnection()
        throws JMSException;

    public abstract XAConnection createXAConnection(String s, String s1)
        throws JMSException;
}
