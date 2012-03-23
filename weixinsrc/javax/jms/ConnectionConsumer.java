// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ConnectionConsumer.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, ServerSessionPool

public interface ConnectionConsumer
{

    public abstract ServerSessionPool getServerSessionPool()
        throws JMSException;

    public abstract void close()
        throws JMSException;
}
