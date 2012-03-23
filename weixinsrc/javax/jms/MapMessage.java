// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MapMessage.java

package javax.jms;

import java.util.Enumeration;

// Referenced classes of package javax.jms:
//            JMSException, Message

public interface MapMessage
    extends Message
{

    public abstract boolean getBoolean(String s)
        throws JMSException;

    public abstract byte getByte(String s)
        throws JMSException;

    public abstract short getShort(String s)
        throws JMSException;

    public abstract char getChar(String s)
        throws JMSException;

    public abstract int getInt(String s)
        throws JMSException;

    public abstract long getLong(String s)
        throws JMSException;

    public abstract float getFloat(String s)
        throws JMSException;

    public abstract double getDouble(String s)
        throws JMSException;

    public abstract String getString(String s)
        throws JMSException;

    public abstract byte[] getBytes(String s)
        throws JMSException;

    public abstract Object getObject(String s)
        throws JMSException;

    public abstract Enumeration getMapNames()
        throws JMSException;

    public abstract void setBoolean(String s, boolean flag)
        throws JMSException;

    public abstract void setByte(String s, byte byte0)
        throws JMSException;

    public abstract void setShort(String s, short word0)
        throws JMSException;

    public abstract void setChar(String s, char c)
        throws JMSException;

    public abstract void setInt(String s, int i)
        throws JMSException;

    public abstract void setLong(String s, long l)
        throws JMSException;

    public abstract void setFloat(String s, float f)
        throws JMSException;

    public abstract void setDouble(String s, double d)
        throws JMSException;

    public abstract void setString(String s, String s1)
        throws JMSException;

    public abstract void setBytes(String s, byte abyte0[])
        throws JMSException;

    public abstract void setBytes(String s, byte abyte0[], int i, int j)
        throws JMSException;

    public abstract void setObject(String s, Object obj)
        throws JMSException;

    public abstract boolean itemExists(String s)
        throws JMSException;
}
