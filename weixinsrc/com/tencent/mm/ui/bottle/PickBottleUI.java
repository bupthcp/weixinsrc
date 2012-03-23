// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConversationStorage;

// Referenced classes of package com.tencent.mm.ui.bottle:
//            BottleBeachUI, PickedBottleImageView, SprayLayout

public class PickBottleUI extends FrameLayout
    implements android.view.View.OnClickListener, android.view.View.OnTouchListener
{

    public PickBottleUI(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        f = new Handler();
        g = new _cls1();
        h = new _cls2();
        a = (BottleBeachUI)context;
    }

    static com.tencent.mm.modelbottle.SceneBottle.PickBottle a(PickBottleUI pickbottleui, com.tencent.mm.modelbottle.SceneBottle.PickBottle pickbottle)
    {
        pickbottleui.e = pickbottle;
        return pickbottle;
    }

    static SprayLayout a(PickBottleUI pickbottleui)
    {
        return pickbottleui.b;
    }

    static BottleBeachUI b(PickBottleUI pickbottleui)
    {
        return pickbottleui.a;
    }

    static com.tencent.mm.modelbottle.SceneBottle.PickBottle c(PickBottleUI pickbottleui)
    {
        return pickbottleui.e;
    }

    static PickedBottleImageView d(PickBottleUI pickbottleui)
    {
        return pickbottleui.c;
    }

    static Runnable e(PickBottleUI pickbottleui)
    {
        return pickbottleui.h;
    }

    static Handler f(PickBottleUI pickbottleui)
    {
        return pickbottleui.f;
    }

    static ImageView g(PickBottleUI pickbottleui)
    {
        return pickbottleui.d;
    }

    public final void a()
    {
        c = (PickedBottleImageView)findViewById(0x7f070077);
        b = (SprayLayout)a.findViewById(0x7f070067);
        d = (ImageView)a.findViewById(0x7f070066);
        c.setOnClickListener(this);
        if(!Util.a())
            setBackgroundResource(0x7f02003a);
        setOnClickListener(this);
        setOnTouchListener(this);
    }

    public final void b()
    {
        a = null;
        b = null;
        c = null;
    }

    public final void c()
    {
        c.setVisibility(8);
        b.a(0x7fffffff, -1, -1);
        d.setVisibility(8);
        a.b();
        f.postDelayed(g, 1000L);
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131165303 2131165303: default 24
    //                   2131165303 25;
           goto _L1 _L2
_L1:
        return;
_L2:
        if(c.a() != null)
            MMCore.f().j().e(c.a());
        a.onClick(view);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if(motionevent.getAction() == 1)
        {
            float f1 = motionevent.getX();
            float f2 = motionevent.getY();
            int i = getHeight();
            int j = getWidth();
            int k = (i * 550) / 800;
            int l = (j - (j * 120) / 480) / 2;
            int i1 = j - l;
            boolean flag;
            if(f2 > (float)k)
                flag = true;
            else
            if(f1 < (float)l - (f2 * (float)l) / (float)k)
                flag = true;
            else
            if(f1 > (float)i1 + (f2 * (float)l) / (float)k)
                flag = true;
            else
                flag = false;
            if(flag)
            {
                if(e != null)
                {
                    e.a();
                    e = null;
                }
                f.removeCallbacks(g);
                f.removeCallbacks(h);
                a.i(0);
            }
        }
        return true;
    }

    public void setVisibility(int i)
    {
        b.setVisibility(i);
        c.setVisibility(8);
        super.setVisibility(i);
    }

    private BottleBeachUI a;
    private SprayLayout b;
    private PickedBottleImageView c;
    private ImageView d;
    private com.tencent.mm.modelbottle.SceneBottle.PickBottle e;
    private Handler f;
    private Runnable g;
    private Runnable h;

    private class _cls1
        implements Runnable
    {

        public void run()
        {
            PickBottleUI.a(a, new com.tencent.mm.modelbottle.SceneBottle.PickBottle());
            class _cls1
                implements com.tencent.mm.modelbottle.SceneBottle.IOnFinishListener
            {

                public final void a(int i, int j)
                {
                    PickBottleUI.a(a.a).a();
                    if(j == -2002)
                    {
                        PickBottleUI.a(a.a, null);
                        PickBottleUI.b(a.a).i(0);
                        PickBottleUI.b(a.a).h(0x7f0a03e7);
                    }
                    if(PickBottleUI.c(a.a) != null)
                        if(i != 0 || j != 0 || PickBottleUI.c(a.a).b == -10001)
                        {
                            PickBottleUI.d(a.a).a(null);
                            PickBottleUI.d(a.a).a(-10001);
                            PickBottleUI.f(a.a).postDelayed(PickBottleUI.e(a.a), 2000L);
                        } else
                        {
                            PickBottleUI.d(a.a).a(PickBottleUI.c(a.a).a);
                            PickBottleUI.d(a.a).a(PickBottleUI.c(a.a).b);
                            PickBottleUI.g(a.a).setVisibility(0);
                            PickBottleUI.a(a.a, null);
                        }
                }

                private _cls1 a;

                _cls1()
                {
                    a = _cls1.this;
                    super();
                }
            }

            PickBottleUI.c(a).a(new _cls1());
        }

        final PickBottleUI a;

        _cls1()
        {
            a = PickBottleUI.this;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        public void run()
        {
            if(PickBottleUI.d(a) != null && PickBottleUI.d(a).isShown())
                PickBottleUI.b(a).i(0);
        }

        private PickBottleUI a;

        _cls2()
        {
            a = PickBottleUI.this;
            super();
        }
    }

}
