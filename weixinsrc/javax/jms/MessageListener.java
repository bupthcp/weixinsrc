// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MessageListener.java

package javax.jms;


// Referenced classes of package javax.jms:
//            Message

public interface MessageListener
{

    public abstract void onMessage(Message message);
}
