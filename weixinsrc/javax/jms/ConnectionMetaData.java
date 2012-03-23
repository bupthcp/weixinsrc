// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ConnectionMetaData.java

package javax.jms;

import java.util.Enumeration;

// Referenced classes of package javax.jms:
//            JMSException

public interface ConnectionMetaData
{

    public abstract String getJMSVersion()
        throws JMSException;

    public abstract int getJMSMajorVersion()
        throws JMSException;

    public abstract int getJMSMinorVersion()
        throws JMSException;

    public abstract String getJMSProviderName()
        throws JMSException;

    public abstract String getProviderVersion()
        throws JMSException;

    public abstract int getProviderMajorVersion()
        throws JMSException;

    public abstract int getProviderMinorVersion()
        throws JMSException;

    public abstract Enumeration getJMSXPropertyNames()
        throws JMSException;
}
