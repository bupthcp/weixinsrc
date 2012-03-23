// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network.connpool;

import android.os.*;

// Referenced classes of package com.tencent.mm.network.connpool:
//            IConnPoolMoniter

public abstract class ConnEvent
{

    protected ConnEvent(Looper looper)
    {
        a = null;
        if(looper == null)
            looper = Looper.myLooper();
        b = looper;
        c = new _cls1(b);
    }

    protected final Looper a()
    {
        return b;
    }

    protected abstract void a(int i, Object obj, Object obj1);

    public final void a(int i, String s)
    {
        Param param = new Param();
        param.a = Integer.valueOf(i);
        param.b = s;
        Message message = Message.obtain();
        message.what = 3;
        message.obj = param;
        c.sendMessage(message);
    }

    public final void a(IConnPoolMoniter iconnpoolmoniter)
    {
        a = iconnpoolmoniter;
    }

    public final void a(String s)
    {
        Message message = Message.obtain();
        message.what = 7;
        message.obj = s;
        c.sendMessage(message);
    }

    protected abstract void a(String s, Integer integer, Object obj);

    public final void a(String s, byte abyte0[], Object obj)
    {
        Param param = new Param();
        param.a = s;
        param.b = abyte0;
        param.c = obj;
        Message message = Message.obtain();
        message.what = 6;
        message.obj = param;
        c.sendMessage(message);
    }

    public final void a(byte abyte0[])
    {
        Param param = new Param();
        param.a = abyte0;
        Message message = Message.obtain();
        message.what = 4;
        message.obj = param;
        c.sendMessage(message);
    }

    protected abstract void a(byte abyte0[], Object obj);

    public final void b(int i, Object obj, Object obj1)
    {
        Param param = new Param();
        param.a = Integer.valueOf(i);
        param.b = obj;
        param.c = obj1;
        Message message = Message.obtain();
        message.what = 1;
        message.obj = param;
        c.sendMessage(message);
    }

    public final void b(String s, Integer integer, Object obj)
    {
        Param param = new Param();
        param.a = integer;
        param.b = obj;
        param.c = s;
        Message message = Message.obtain();
        message.what = 2;
        message.obj = param;
        c.sendMessage(message);
    }

    public final void b(byte abyte0[])
    {
        Param param = new Param();
        param.a = abyte0;
        Message message = Message.obtain();
        message.what = 5;
        message.obj = param;
        c.sendMessage(message);
    }

    protected IConnPoolMoniter a;
    private Looper b;
    private final Handler c;

    private class _cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
            Param param = (Param)message.obj;
            if(message.what == 1)
                a.a(((Integer)param.a).intValue(), param.b, param.c);
            if(message.what == 2)
                a.a((String)param.c, (Integer)param.a, param.b);
            if(message.what == 3)
                ((Integer)param.a).intValue();
            if(message.what == 6)
                a.a((byte[])param.b, param.c);
        }

        private ConnEvent a;

        _cls1(Looper looper)
        {
            a = ConnEvent.this;
            super(looper);
        }
    }


    private class Param
    {

        Object a;
        Object b;
        Object c;

        Param()
        {
        }
    }

}
