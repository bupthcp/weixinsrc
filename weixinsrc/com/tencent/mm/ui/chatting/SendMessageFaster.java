// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.MTimerHandler;
import com.tencent.mm.storagebase.SqliteDB;

class SendMessageFaster
{

    SendMessageFaster()
    {
        b = -1;
        c = new MTimerHandler(new _cls1(), true);
    }

    static int a(SendMessageFaster sendmessagefaster)
    {
        return sendmessagefaster.b;
    }

    public final void a()
    {
        b = MMCore.f().e().b();
        c.a(a);
    }

    public final void b()
    {
        MMCore.f().e().b(b);
        MMCore.f().e().a(b);
        c.a();
    }

    private static int a = 10000;
    private int b;
    private MTimerHandler c;


    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            if(SendMessageFaster.a(a) > 0)
            {
                a.b();
                a.a();
            }
            return true;
        }

        private SendMessageFaster a;

        _cls1()
        {
            a = SendMessageFaster.this;
            super();
        }
    }

}
