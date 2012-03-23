// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.ListView;
import com.tencent.mm.platformtools.MTimerHandler;
import com.tencent.mm.platformtools.Util;

public class MMListView extends ListView
{

    public MMListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = new MTimerHandler(new _cls1(), true);
        c = 30F;
    }

    public MMListView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = new MTimerHandler(new _cls1(), true);
        c = 30F;
    }

    public void draw(Canvas canvas)
    {
        long l = Util.e();
        super.draw(canvas);
        long l1 = Util.f(l);
        if(l1 > 0L)
            c = 1000L / l1;
        canvas.drawText((new StringBuilder()).append("avg fps:").append(c).append(", ms:").append(l1).toString(), 10F, 10F, a);
        b.a(100L);
    }

    private static final Paint a;
    private MTimerHandler b;
    private float c;

    static 
    {
        Paint paint = new Paint();
        a = paint;
        paint.setColor(0xffff0000);
    }

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            a.invalidate();
            return false;
        }

        private MMListView a;

        _cls1()
        {
            a = MMListView.this;
            super();
        }
    }

}
