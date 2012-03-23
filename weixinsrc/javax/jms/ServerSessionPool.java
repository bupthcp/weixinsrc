// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ServerSessionPool.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, ServerSession

public interface ServerSessionPool
{

    public abstract ServerSession getServerSession()
        throws JMSException;
}
