// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   TextMessage.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, Message

public interface TextMessage
    extends Message
{

    public abstract void setText(String s)
        throws JMSException;

    public abstract String getText()
        throws JMSException;
}
