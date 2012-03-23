// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.View;
import android.widget.*;
import b.a.e;
import com.tencent.mm.platformtools.MTimerHandler;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity

public class MMToast extends Toast
{

    public MMToast(Context context)
    {
        super(context);
        d = context;
        e();
        e = View.inflate(context, 0x7f0300f7, null);
        setView(e);
        setGravity(55, 0, b.a.e.a(context, 40F));
        setDuration(0);
        f = (TextView)e.findViewById(0x7f070297);
        d();
    }

    static long a(MMToast mmtoast)
    {
        return mmtoast.c;
    }

    public static PopupWindow a(MMActivity mmactivity, String s, long l)
    {
        View view = View.inflate(mmactivity, 0x7f0300f7, null);
        ((TextView)view.findViewById(0x7f070297)).setText(s);
        PopupWindow popupwindow = new PopupWindow(view);
        popupwindow.setWidth(-1);
        popupwindow.setHeight(b.a.e.a(mmactivity, 40F));
        popupwindow.showAsDropDown(mmactivity.m());
        (new _cls2(popupwindow)).sendEmptyMessageDelayed(0, l);
        return popupwindow;
    }

    static int b(MMToast mmtoast)
    {
        int i = mmtoast.b;
        mmtoast.b = i + -1;
        return i;
    }

    static int c(MMToast mmtoast)
    {
        return mmtoast.b;
    }

    private void d()
    {
        a;
        JVM INSTR tableswitch 1 2: default 28
    //                   1 29
    //                   2 41;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        f.setTextColor(-1);
        continue; /* Loop/switch isn't completed */
_L3:
        f.setTextColor(d.getResources().getColor(0x7f080005));
        if(true) goto _L1; else goto _L4
_L4:
    }

    private void e()
    {
        a = 1;
        c = 2000L;
        b = 1 + (int)(c / 100L);
    }

    public final void a()
    {
        c = -1L;
    }

    public final void a(int i)
    {
        a = i;
        d();
    }

    public final void b()
    {
        cancel();
        g.a();
        e();
    }

    public final void c()
    {
        cancel();
        g.a();
        b = 1 + (int)(c / 100L);
        g.a(100L);
    }

    public void setText(int i)
    {
        f.setText(i);
    }

    public void setText(CharSequence charsequence)
    {
        f.setText(charsequence);
    }

    private int a;
    private int b;
    private long c;
    private final Context d;
    private View e;
    private final TextView f;
    private final MTimerHandler g = new MTimerHandler(new _cls1(), true);

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            boolean flag = true;
            if(MMToast.a(a) == -1L)
            {
                a.show();
            } else
            {
                MMToast.b(a);
                if(MMToast.c(a) >= 0)
                {
                    a.show();
                } else
                {
                    a.cancel();
                    flag = false;
                }
            }
            return flag;
        }

        private MMToast a;

        _cls1()
        {
            a = MMToast.this;
            super();
        }
    }


    private class _cls2 extends Handler
    {

        public final void handleMessage(Message message)
        {
            a.dismiss();
            super.handleMessage(message);
        }

        private PopupWindow a;

        _cls2(PopupWindow popupwindow)
        {
            a = popupwindow;
            super();
        }
    }

}
