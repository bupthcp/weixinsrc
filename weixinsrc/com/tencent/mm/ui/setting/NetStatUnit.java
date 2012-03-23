// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.Context;
import android.graphics.*;
import android.util.AttributeSet;
import android.view.View;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelstat.NetStatInfo;
import com.tencent.mm.modelstat.NetStatStorage;

class NetStatUnit extends View
{

    public NetStatUnit(Context context)
    {
        this(context, null);
    }

    public NetStatUnit(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public NetStatUnit(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private void a(int i, int j)
    {
        b = i;
        c = j;
        if(i > 0x5a00000)
            b = 0x5a00000;
        if(j > 0x5a00000)
            c = 0x5a00000;
        int k;
        if(i <= j)
            i = j;
        k = 0x180000 * (1 + i / 0x180000);
        if(0x5a00000 <= k)
            k = 0x5a00000;
        if(0x300000 >= k)
            k = 0x300000;
        if(k > a)
            a = k;
    }

    public final void a(int i, boolean flag)
    {
        NetStatInfo netstatinfo = MMCore.f().G().a(i);
        if(netstatinfo != null)
            if(flag)
                a(netstatinfo.A() + netstatinfo.o(), netstatinfo.C() + netstatinfo.q());
            else
                a(netstatinfo.z() + netstatinfo.n(), netstatinfo.B() + netstatinfo.p());
    }

    public void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        Paint paint = new Paint();
        Rect rect = new Rect();
        getDrawingRect(rect);
        float f = ((float)rect.height() * (float)c) / (float)a;
        float f1 = 0.6F * (float)rect.width();
        Rect rect1 = new Rect(rect.left, (int)((float)rect.bottom - f), (int)(f1 + (float)rect.left), rect.bottom);
        paint.setColor(0xff888888);
        canvas.drawRect(rect1, paint);
        float f2 = ((float)rect.height() * (float)b) / (float)a;
        float f3 = 0.6F * (float)rect.width();
        Rect rect2 = new Rect(rect.left, (int)((float)rect.bottom - f2), (int)(f3 + (float)rect.left), rect.bottom);
        paint.setColor(0xff00ff00);
        canvas.drawRect(rect2, paint);
    }

    protected static int a;
    private int b;
    private int c;
}
