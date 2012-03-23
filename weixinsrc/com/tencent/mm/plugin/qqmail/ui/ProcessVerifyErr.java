// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.ui;

import android.app.Activity;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.ui.chatting.ProcessErrNeedQQPwd;

public class ProcessVerifyErr
    implements IOnSceneEnd
{

    public ProcessVerifyErr(Activity activity)
    {
        d = new _cls1();
        if(activity != null)
            b = new ProcessErrNeedQQPwd(activity, d);
        MMCore.g().a(38, this);
    }

    static void b()
    {
        c();
    }

    private static void c()
    {
        if(System.currentTimeMillis() - a > 0x927c0L && MMCore.f().b())
        {
            MMCore.o().a("", MMCore.o().a());
            MMCore.g().b(new NetSceneSync(5));
        }
    }

    public final void a()
    {
        if(b != null)
            b.a();
        MMCore.g().b(38, this);
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        if(i == 0 && j == 0 && c != null)
        {
            c.a();
            c = null;
        }
        a = System.currentTimeMillis();
    }

    public final void a(CallBack callback)
    {
        c = callback;
        if(b != null)
            b.b();
        else
            c();
    }

    protected void finalize()
    {
        a();
        super.finalize();
    }

    private static long a = 0L;
    private ProcessErrNeedQQPwd b;
    private CallBack c;
    private com.tencent.mm.ui.chatting.ProcessErrNeedQQPwd.CallBack d;


    private class _cls1 extends com.tencent.mm.ui.chatting.ProcessErrNeedQQPwd.CallBack
    {

        public final boolean a(int i, int j)
        {
            boolean flag;
            if(i == 0 && j == 0)
            {
                ProcessVerifyErr.b();
                flag = true;
            } else
            {
                flag = false;
            }
            return flag;
        }

        private ProcessVerifyErr a;

        _cls1()
        {
            a = ProcessVerifyErr.this;
            super();
        }
    }


    private class CallBack
    {

        public abstract void a();

        public CallBack()
        {
        }
    }

}
