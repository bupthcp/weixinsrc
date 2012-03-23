// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import android.os.SystemClock;
import java.util.ArrayList;

// Referenced classes of package com.tencent.mm.platformtools:
//            Log

public class TimeLogger
{

    public TimeLogger(String s, String s1)
    {
        a = s;
        b = s1;
        c = false;
        if(!c)
        {
            if(d == null)
            {
                d = new ArrayList();
                e = new ArrayList();
            } else
            {
                d.clear();
                e.clear();
            }
            a(null);
        }
    }

    public final void a()
    {
        if(!c)
        {
            Log.d(a, (new StringBuilder()).append(b).append(": begin").toString());
            long l = ((Long)d.get(0)).longValue();
            int i = 1;
            long l1;
            long l2;
            for(l1 = l; i < d.size(); l1 = l2)
            {
                l2 = ((Long)d.get(i)).longValue();
                String s = (String)e.get(i);
                long l3 = ((Long)d.get(i + -1)).longValue();
                Log.d(a, (new StringBuilder()).append(b).append(":      ").append(l2 - l3).append(" ms, ").append(s).toString());
                i++;
            }

            Log.d(a, (new StringBuilder()).append(b).append(": end, ").append(l1 - l).append(" ms").toString());
        }
    }

    public final void a(String s)
    {
        if(!c)
        {
            long l = SystemClock.elapsedRealtime();
            d.add(Long.valueOf(l));
            e.add(s);
        }
    }

    private String a;
    private String b;
    private boolean c;
    private ArrayList d;
    private ArrayList e;
}
