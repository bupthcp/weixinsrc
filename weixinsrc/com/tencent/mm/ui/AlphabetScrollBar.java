// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.*;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.TextView;
import b.a.e;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity

public class AlphabetScrollBar extends View
{

    public AlphabetScrollBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        String as[] = new String[29];
        as[0] = "!";
        as[1] = "+";
        as[2] = "A";
        as[3] = "B";
        as[4] = "C";
        as[5] = "D";
        as[6] = "E";
        as[7] = "F";
        as[8] = "G";
        as[9] = "H";
        as[10] = "I";
        as[11] = "J";
        as[12] = "K";
        as[13] = "L";
        as[14] = "M";
        as[15] = "N";
        as[16] = "O";
        as[17] = "P";
        as[18] = "Q";
        as[19] = "R";
        as[20] = "S";
        as[21] = "T";
        as[22] = "U";
        as[23] = "V";
        as[24] = "W";
        as[25] = "X";
        as[26] = "Y";
        as[27] = "Z";
        as[28] = "#";
        a = as;
        c = (MMActivity)context;
        setFocusable(true);
        setFocusableInTouchMode(true);
        i = b.a.e.a(context, 3F);
        View view = inflate(context, 0x7f0300e8, null);//show_head_toast
        int k = b.a.e.a(context, 79F);
        g = new PopupWindow(view, k, k);
        h = (TextView)view.findViewById(0x7f07027b);//show_head_toast_text
        b = BitmapFactory.decodeStream(getResources().openRawResource(0x7f020265));//scroll_bar_search_icon
    }

    public final void a()
    {
        j = null;
    }

    public final void a(OnScollBarTouchListener onscollbartouchlistener)
    {
        j = onscollbartouchlistener;
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        int k = getMeasuredHeight();
        int l = getMeasuredWidth();
        e = (float)(k - b.getHeight() - i) / (1.2F * (float)a.length);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(0xff858c94);
        paint.setTextAlign(android.graphics.Paint.Align.CENTER);
        paint.setTextSize(e);
        canvas.drawBitmap(b, (float)(l - b.getWidth()) / 2F, i, paint);
        for(int i1 = 0; i1 < a.length; i1++)
            canvas.drawText(a[i1], (float)l / 2F, e + 1.2F * ((float)i1 * e) + (float)b.getHeight() + (float)i, paint);

    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if(motionevent.getAction() == 0 || motionevent.getAction() == 2)
        {
            f = motionevent.getY();
            if(f < 0F)
                f = 0F;
            if(f > (float)getMeasuredHeight())
                f = getMeasuredHeight();
            setBackgroundDrawable(c.a(0x7f020266));
            float f1 = f;
            float f2 = 1.2F * e;
            int k;
            if(f1 < (float)(b.getHeight() + i))
            {
                k = -1;
            } else
            {
                k = (int)(((f1 - (float)b.getHeight()) + (float)i) / f2);
                if(k < 0)
                    k = 0;
                if(k >= a.length)
                    k = -1 + a.length;
            }
            d = k;
            if(d == -1)
                h.setText(0x7f0a0043);
            else
                h.setText(a[d]);
            g.showAtLocation(this, 17, 0, 0);
            if(j != null)
                if(d == -1)
                    j.a(c.getString(0x7f0a0043));
                else
                    j.a(a[d]);
            invalidate();
        }
        if(motionevent.getAction() == 1)
        {
            setBackgroundResource(0);
            g.dismiss();
        }
        return true;
    }

    private String a[];
    private Bitmap b;
    private MMActivity c;
    private int d;
    private float e;
    private float f;
    private PopupWindow g;
    private TextView h;
    private int i;
    private OnScollBarTouchListener j;

    private class OnScollBarTouchListener
    {

        public abstract void a(String s);
    }

}
