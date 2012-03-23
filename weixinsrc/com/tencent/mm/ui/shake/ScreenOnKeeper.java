// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.shake;

import android.view.View;
import com.tencent.mm.platformtools.MTimerHandler;

class ScreenOnKeeper
{

    public ScreenOnKeeper(View view)
    {
        b = new MTimerHandler(new _cls1(), false);
        a = view;
    }

    public final void a()
    {
        if(a != null)
            a.setKeepScreenOn(true);
        b.a(30000L);
    }

    public final void b()
    {
        a.setKeepScreenOn(false);
    }

    private View a;
    private MTimerHandler b;

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            a.b();
            return false;
        }

        private ScreenOnKeeper a;

        _cls1()
        {
            a = ScreenOnKeeper.this;
            super();
        }
    }

}
