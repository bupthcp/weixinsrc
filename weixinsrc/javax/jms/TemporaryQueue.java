// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   TemporaryQueue.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, Queue

public interface TemporaryQueue
    extends Queue
{

    public abstract void delete()
        throws JMSException;
}
