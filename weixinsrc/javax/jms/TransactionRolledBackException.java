// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   TransactionRolledBackException.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException

public class TransactionRolledBackException extends JMSException
{

    public TransactionRolledBackException(String reason, String errorCode)
    {
        super(reason, errorCode);
    }

    public TransactionRolledBackException(String reason)
    {
        super(reason);
    }
}
