// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.qrcode;

import a.f;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.*;
import android.util.AttributeSet;
import android.view.View;
import java.util.*;
import junit.framework.Assert;

public final class ViewfinderView extends View
{

    public ViewfinderView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        l = null;
        Resources resources = getResources();
        d = resources.getColor(0x7f080012);
        e = resources.getColor(0x7f080011);
        f = resources.getColor(0x7f08000f);
        g = resources.getColor(0x7f080010);
        h = resources.getColor(0x7f08000e);
        i = 0;
        j = new HashSet(5);
    }

    public final void onDraw(Canvas canvas)
    {
        Rect rect = l;
        boolean flag;
        int i1;
        int j1;
        Paint paint;
        int k1;
        if(l != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("ViewfinderView onDraw frameRect == null", flag);
        i1 = canvas.getWidth();
        j1 = canvas.getHeight();
        paint = b;
        if(c != null)
            k1 = e;
        else
            k1 = d;
        paint.setColor(k1);
        canvas.drawRect(0F, 0F, i1, rect.top, b);
        canvas.drawRect(0F, rect.top, rect.left, 1 + rect.bottom, b);
        canvas.drawRect(1 + rect.right, rect.top, i1, 1 + rect.bottom, b);
        canvas.drawRect(0F, 1 + rect.bottom, i1, j1, b);
        if(c != null)
        {
            b.setAlpha(255);
            canvas.drawBitmap(c, rect.left, rect.top, b);
        } else
        {
            b.setColor(f);
            canvas.drawRect(rect.left, rect.top, 1 + rect.right, 2 + rect.top, b);
            canvas.drawRect(rect.left, 2 + rect.top, 2 + rect.left, -1 + rect.bottom, b);
            canvas.drawRect(-1 + rect.right, rect.top, 1 + rect.right, -1 + rect.bottom, b);
            canvas.drawRect(rect.left, -1 + rect.bottom, 1 + rect.right, 1 + rect.bottom, b);
            Collection collection = j;
            Collection collection1 = k;
            if(collection.isEmpty())
            {
                k = null;
            } else
            {
                j = new HashSet(5);
                k = collection;
                b.setAlpha(255);
                b.setColor(h);
                Iterator iterator = collection.iterator();
                while(iterator.hasNext()) 
                {
                    f f1 = (f)iterator.next();
                    canvas.drawCircle((float)rect.left + f1.a(), (float)rect.top + f1.b(), 6F, b);
                }
            }
            if(collection1 != null)
            {
                b.setAlpha(127);
                b.setColor(h);
                f f2;
                for(Iterator iterator1 = collection1.iterator(); iterator1.hasNext(); canvas.drawCircle((float)rect.left + f2.a(), (float)rect.top + f2.b(), 3F, b))
                    f2 = (f)iterator1.next();

            }
            postInvalidateDelayed(100L, rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    private static final int a[];
    private final Paint b = new Paint();
    private Bitmap c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;
    private int i;
    private Collection j;
    private Collection k;
    private Rect l;

    static 
    {
        int ai[] = new int[8];
        ai[0] = 0;
        ai[1] = 64;
        ai[2] = 128;
        ai[3] = 192;
        ai[4] = 255;
        ai[5] = 192;
        ai[6] = 128;
        ai[7] = 64;
        a = ai;
    }
}
