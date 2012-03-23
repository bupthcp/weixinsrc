// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.*;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.ImageView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelemoji.*;
import java.util.ArrayList;
import java.util.List;

public class EmojiView extends ImageView
{

    public EmojiView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        g = 0L;
        h = 0;
        i = 0;
        j = 0L;
        k = null;
        l = null;
        m = false;
        n = true;
        p = new Handler();
        q = new _cls2();
    }

    public static int a(String s)
    {
        return (new StringBuilder()).append("emojiview_").append(s).toString().hashCode();
    }

    public static void a()
    {
        c = 0x7fffffffffffffffL;
    }

    public static void a(long l1)
    {
        if(l1 < c)
            c = l1;
    }

    static void a(EmojiView emojiview)
    {
        emojiview.f();
    }

    public static void a(boolean flag)
    {
        a = flag;
        if(flag)
            d.sendEmptyMessageDelayed(e, 1000L);
        else
            d.removeMessages(e);
    }

    public static long b()
    {
        return c;
    }

    public static void b(boolean flag)
    {
        b = flag;
    }

    static boolean d()
    {
        return a;
    }

    private int e()
    {
        int i1 = h;
        h = i1 + 1;
        return i1 % i;
    }

    private void f()
    {
        if(f != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(!MMCore.f().c())
        {
            l = ((BitmapDrawable)getContext().getResources().getDrawable(0x7f0201f3)).getBitmap();
            continue; /* Loop/switch isn't completed */
        }
        if(f.i() == EmojiInfo.e)
        {
            if(k == null)
            {
                ArrayList arraylist = new ArrayList();
                for(int i1 = 0; i1 < 4; i1++)
                {
                    EmojiInfo emojiinfo1 = new EmojiInfo();
                    emojiinfo1.c((new StringBuilder()).append("dice_action_").append(i1).append(".png").toString());
                    arraylist.add(emojiinfo1);
                }

                k = arraylist;
                i = k.size();
                j = 100L;
            }
            g();
            if(h <= 3 * i)
            {
                l = ((EmojiInfo)k.get(e())).a(getContext());
            } else
            {
                m = false;
                l = f.a(getContext());
            }
            continue; /* Loop/switch isn't completed */
        }
        if(f.i() == EmojiInfo.d)
        {
            if(k == null)
            {
                k = MMCore.f().l().a(f.i());
                i = k.size();
                j = 300L;
            }
            g();
            if(h <= 3 * i)
            {
                l = ((EmojiInfo)k.get(e())).a(getContext());
            } else
            {
                m = false;
                l = f.a(getContext());
            }
            if(!n)
            {
                Bitmap bitmap = l;
                if(bitmap != null && !bitmap.isRecycled())
                {
                    Matrix matrix = new Matrix();
                    matrix.preScale(-1F, 1F);
                    bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
                    bitmap.setDensity(160);
                }
                l = bitmap;
            }
            continue; /* Loop/switch isn't completed */
        }
        if(f.j() != EmojiInfo.i)
            continue; /* Loop/switch isn't completed */
        if(!f.c())
        {
            if(!EmojiLogic.a(f))
                EmojiLogic.a(f, getContext());
            l = f.a(getContext());
            continue; /* Loop/switch isn't completed */
        }
        if(j == 0L)
        {
            String as[] = f.p().split("_");
            if(as.length != 2)
                continue; /* Loop/switch isn't completed */
            i = Integer.parseInt(as[0]);
            j = Long.parseLong(as[1]);
        }
        g();
        EmojiInfo emojiinfo = f;
        getContext();
        l = emojiinfo.a(e());
        if(l == null)
        {
            l = f.a(getContext());
            f.e("");
            MMCore.f().l().a(f);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private void g()
    {
        if(l != null && !l.isRecycled())
            l.recycle();
    }

    public final void a(EmojiInfo emojiinfo)
    {
        a(emojiinfo, 0L, true, true);
    }

    public final void a(EmojiInfo emojiinfo, long l1, boolean flag, boolean flag1)
    {
        setId(a(emojiinfo.f()));
        if(MMCore.f().c()) goto _L2; else goto _L1
_L1:
        if(emojiinfo.i() == EmojiInfo.a || emojiinfo.i() == EmojiInfo.e || emojiinfo.i() == EmojiInfo.d)
            l = emojiinfo.a(getContext());
        else
            l = ((BitmapDrawable)getContext().getResources().getDrawable(0x7f0201f3)).getBitmap();
        m = false;
        requestLayout();
        invalidate();
_L4:
        return;
_L2:
        if(emojiinfo != null && (f == null || !f.f().equals(emojiinfo.f()) || g != l1))
        {
            f = emojiinfo;
            g = l1;
            n = flag1;
            if(!emojiinfo.d() && emojiinfo.j() != EmojiInfo.i || !flag)
            {
                g();
                l = emojiinfo.a(getContext());
                m = false;
            } else
            {
                m = true;
                h = 0;
                i = 0;
                j = 0L;
                k = null;
                f();
                o = 0L;
            }
            requestLayout();
            invalidate();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void c()
    {
        f = MMCore.f().l().d(f.f());
        o = 0L;
        invalidate();
    }

    public void draw(Canvas canvas)
    {
        if(m && b)
        {
            boolean flag;
            if(o + j <= System.currentTimeMillis())
                flag = true;
            else
                flag = false;
            if(flag)
            {
                o = System.currentTimeMillis();
                Handler handler = p;
                Runnable runnable = q;
                long l1;
                if(j == 0L)
                    l1 = 100L;
                else
                    l1 = j;
                handler.postDelayed(runnable, l1);
            }
        }
        super.draw(canvas);
    }

    protected void onDraw(Canvas canvas)
    {
        if(l != null && !l.isRecycled())
        {
            canvas.clipRect(getPaddingLeft(), getPaddingTop(), getRight() - getLeft() - getPaddingTop(), getBottom() - getTop() - getPaddingBottom());
            canvas.drawBitmap(l, 0F, 0F, null);
        }
    }

    protected void onMeasure(int i1, int j1)
    {
        int k1 = 0;
        int l1;
        if(l != null)
        {
            l1 = resolveSize(l.getScaledWidth(getResources().getDisplayMetrics().densityDpi), i1);
            k1 = resolveSize(l.getScaledHeight(getResources().getDisplayMetrics().densityDpi), j1);
        } else
        {
            l1 = k1;
        }
        setMeasuredDimension(l1, k1);
    }

    private static boolean a = false;
    private static boolean b = false;
    private static long c = 0L;
    private static Handler d = new Handler(new _cls1());
    private static int e = 1;
    private EmojiInfo f;
    private long g;
    private int h;
    private int i;
    private long j;
    private List k;
    private Bitmap l;
    private boolean m;
    private boolean n;
    private long o;
    private Handler p;
    private Runnable q;


    private class _cls2
        implements Runnable
    {

        public void run()
        {
            if(!EmojiView.d())
                EmojiView.a(a);
            a.invalidate();
        }

        private EmojiView a;

        _cls2()
        {
            a = EmojiView.this;
            super();
        }
    }


    private class _cls1
        implements android.os.Handler.Callback
    {

        public final boolean handleMessage(Message message)
        {
            EmojiView.a(false);
            return false;
        }

        _cls1()
        {
        }
    }

}
