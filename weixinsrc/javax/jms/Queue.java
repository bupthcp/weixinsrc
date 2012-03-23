// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Queue.java

package javax.jms;


// Referenced classes of package javax.jms:
//            Destination, JMSException

public interface Queue
    extends Destination
{

    public abstract String getQueueName()
        throws JMSException;

    public abstract String toString();
}
