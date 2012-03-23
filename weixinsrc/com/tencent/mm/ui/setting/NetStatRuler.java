// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import com.tencent.mm.platformtools.Util;

// Referenced classes of package com.tencent.mm.ui.setting:
//            NetStatUnit

class NetStatRuler extends View
{

    public NetStatRuler(Context context)
    {
        this(context, null);
    }

    public NetStatRuler(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public NetStatRuler(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        TextPaint textpaint = new TextPaint();
        textpaint.setAntiAlias(true);
        textpaint.setDither(true);
        Rect rect = new Rect();
        getDrawingRect(rect);
        float f = rect.height();
        float f1 = rect.left + getPaddingLeft();
        float f2 = (float)rect.top + f / 3F;
        float f3 = (float)rect.top + (2F * f) / 3F;
        float f4 = f + (float)rect.top;
        textpaint.setColor(0xff888888);
        canvas.drawText(Util.c((2 * NetStatUnit.a) / 3), f1, f2, textpaint);
        canvas.drawText(Util.c(NetStatUnit.a / 3), f1, f3, textpaint);
        canvas.drawText(Util.c(0L), f1, f4, textpaint);
    }
}
