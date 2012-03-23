// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   JMSException.java

package javax.jms;


public class JMSException extends Exception
{

    public JMSException(String reason, String errorCode)
    {
        super(reason);
        this.errorCode = errorCode;
        linkedException = null;
    }

    public JMSException(String reason)
    {
        super(reason);
        errorCode = null;
        linkedException = null;
    }

    public String getErrorCode()
    {
        return errorCode;
    }

    public Exception getLinkedException()
    {
        return linkedException;
    }

    public synchronized void setLinkedException(Exception ex)
    {
        linkedException = ex;
    }

    private String errorCode;
    private Exception linkedException;
}
