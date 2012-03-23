// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   BytesMessage.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, Message

public interface BytesMessage
    extends Message
{

    public abstract long getBodyLength()
        throws JMSException;

    public abstract boolean readBoolean()
        throws JMSException;

    public abstract byte readByte()
        throws JMSException;

    public abstract int readUnsignedByte()
        throws JMSException;

    public abstract short readShort()
        throws JMSException;

    public abstract int readUnsignedShort()
        throws JMSException;

    public abstract char readChar()
        throws JMSException;

    public abstract int readInt()
        throws JMSException;

    public abstract long readLong()
        throws JMSException;

    public abstract float readFloat()
        throws JMSException;

    public abstract double readDouble()
        throws JMSException;

    public abstract String readUTF()
        throws JMSException;

    public abstract int readBytes(byte abyte0[])
        throws JMSException;

    public abstract int readBytes(byte abyte0[], int i)
        throws JMSException;

    public abstract void writeBoolean(boolean flag)
        throws JMSException;

    public abstract void writeByte(byte byte0)
        throws JMSException;

    public abstract void writeShort(short word0)
        throws JMSException;

    public abstract void writeChar(char c)
        throws JMSException;

    public abstract void writeInt(int i)
        throws JMSException;

    public abstract void writeLong(long l)
        throws JMSException;

    public abstract void writeFloat(float f)
        throws JMSException;

    public abstract void writeDouble(double d)
        throws JMSException;

    public abstract void writeUTF(String s)
        throws JMSException;

    public abstract void writeBytes(byte abyte0[])
        throws JMSException;

    public abstract void writeBytes(byte abyte0[], int i, int j)
        throws JMSException;

    public abstract void writeObject(Object obj)
        throws JMSException;

    public abstract void reset()
        throws JMSException;
}
