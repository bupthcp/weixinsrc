// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   IllegalStateException.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException

public class IllegalStateException extends JMSException
{

    public IllegalStateException(String reason, String errorCode)
    {
        super(reason, errorCode);
    }

    public IllegalStateException(String reason)
    {
        super(reason);
    }
}
