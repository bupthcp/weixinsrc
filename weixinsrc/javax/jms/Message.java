// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Message.java

package javax.jms;

import java.util.Enumeration;

// Referenced classes of package javax.jms:
//            JMSException, Destination

public interface Message
{

    public abstract String getJMSMessageID()
        throws JMSException;

    public abstract void setJMSMessageID(String s)
        throws JMSException;

    public abstract long getJMSTimestamp()
        throws JMSException;

    public abstract void setJMSTimestamp(long l)
        throws JMSException;

    public abstract byte[] getJMSCorrelationIDAsBytes()
        throws JMSException;

    public abstract void setJMSCorrelationIDAsBytes(byte abyte0[])
        throws JMSException;

    public abstract void setJMSCorrelationID(String s)
        throws JMSException;

    public abstract String getJMSCorrelationID()
        throws JMSException;

    public abstract Destination getJMSReplyTo()
        throws JMSException;

    public abstract void setJMSReplyTo(Destination destination)
        throws JMSException;

    public abstract Destination getJMSDestination()
        throws JMSException;

    public abstract void setJMSDestination(Destination destination)
        throws JMSException;

    public abstract int getJMSDeliveryMode()
        throws JMSException;

    public abstract void setJMSDeliveryMode(int i)
        throws JMSException;

    public abstract boolean getJMSRedelivered()
        throws JMSException;

    public abstract void setJMSRedelivered(boolean flag)
        throws JMSException;

    public abstract String getJMSType()
        throws JMSException;

    public abstract void setJMSType(String s)
        throws JMSException;

    public abstract long getJMSExpiration()
        throws JMSException;

    public abstract void setJMSExpiration(long l)
        throws JMSException;

    public abstract int getJMSPriority()
        throws JMSException;

    public abstract void setJMSPriority(int i)
        throws JMSException;

    public abstract void clearProperties()
        throws JMSException;

    public abstract boolean propertyExists(String s)
        throws JMSException;

    public abstract boolean getBooleanProperty(String s)
        throws JMSException;

    public abstract byte getByteProperty(String s)
        throws JMSException;

    public abstract short getShortProperty(String s)
        throws JMSException;

    public abstract int getIntProperty(String s)
        throws JMSException;

    public abstract long getLongProperty(String s)
        throws JMSException;

    public abstract float getFloatProperty(String s)
        throws JMSException;

    public abstract double getDoubleProperty(String s)
        throws JMSException;

    public abstract String getStringProperty(String s)
        throws JMSException;

    public abstract Object getObjectProperty(String s)
        throws JMSException;

    public abstract Enumeration getPropertyNames()
        throws JMSException;

    public abstract void setBooleanProperty(String s, boolean flag)
        throws JMSException;

    public abstract void setByteProperty(String s, byte byte0)
        throws JMSException;

    public abstract void setShortProperty(String s, short word0)
        throws JMSException;

    public abstract void setIntProperty(String s, int i)
        throws JMSException;

    public abstract void setLongProperty(String s, long l)
        throws JMSException;

    public abstract void setFloatProperty(String s, float f)
        throws JMSException;

    public abstract void setDoubleProperty(String s, double d)
        throws JMSException;

    public abstract void setStringProperty(String s, String s1)
        throws JMSException;

    public abstract void setObjectProperty(String s, Object obj)
        throws JMSException;

    public abstract void acknowledge()
        throws JMSException;

    public abstract void clearBody()
        throws JMSException;

    public static final int DEFAULT_DELIVERY_MODE = 2;
    public static final int DEFAULT_PRIORITY = 4;
    public static final long DEFAULT_TIME_TO_LIVE = 0L;
}
