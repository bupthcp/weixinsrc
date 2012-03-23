// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ObjectMessage.java

package javax.jms;

import java.io.Serializable;

// Referenced classes of package javax.jms:
//            JMSException, Message

public interface ObjectMessage
    extends Message
{

    public abstract void setObject(Serializable serializable)
        throws JMSException;

    public abstract Serializable getObject()
        throws JMSException;
}
