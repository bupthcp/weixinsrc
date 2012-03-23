// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelqrcode;

import android.graphics.Point;
import android.graphics.Rect;
import com.tencent.mm.platformtools.Log;
import junit.framework.Assert;

public class ScreenManager
{

    public ScreenManager(Point point)
    {
        a = null;
        b = null;
        a = point;
    }

    public final Point a()
    {
        return a;
    }

    public final Rect b()
    {
        int i = 240;
        boolean flag;
        if(a != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("screenResolution == null", flag);
        if(b == null)
        {
            int j = (3 * a.x) / 4;
            int k;
            int l;
            int i1;
            if(j < i)
                j = i;
            else
            if(j > 480)
                j = 480;
            k = (3 * a.y) / 4;
            if(k >= i)
                if(k > 360)
                    i = 360;
                else
                    i = k;
            l = (a.x - j) / 2;
            i1 = (a.y - i) / 2;
            b = new Rect(l, i1, j + l, i + i1);
        }
        Log.d("MicroMsg.ScreenManager", (new StringBuilder()).append("getFramingRect rect: ").append(b).toString());
        return b;
    }

    private Point a;
    private Rect b;
}
