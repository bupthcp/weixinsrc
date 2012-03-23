// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ConnectionFactory.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, Connection

public interface ConnectionFactory
{

    public abstract Connection createConnection()
        throws JMSException;

    public abstract Connection createConnection(String s, String s1)
        throws JMSException;
}
