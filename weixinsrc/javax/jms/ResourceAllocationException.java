// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ResourceAllocationException.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException

public class ResourceAllocationException extends JMSException
{

    public ResourceAllocationException(String reason, String errorCode)
    {
        super(reason, errorCode);
    }

    public ResourceAllocationException(String reason)
    {
        super(reason);
    }
}
