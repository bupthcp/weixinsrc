// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoip;

import android.content.Context;
import android.media.AudioRecord;
import android.os.Process;

// Referenced classes of package com.tencent.mm.modelvoip:
//            AudioRecDevCallBack

public class AudioRecorder extends Thread
{

    public AudioRecorder()
    {
        g = 2;
        a = null;
        b = false;
        c = false;
        d = false;
        e = null;
        h = 0;
        i = 0;
        j = 0;
        k = 0;
        l = 0;
        m = 0;
        n = 0;
        o = null;
        f = null;
    }

    public final int a()
    {
        boolean flag = false;
        if(b)
            if(!c)
            {
                flag = true;
            } else
            {
                a.stop();
                c = flag;
                d = flag;
                try
                {
                    join();
                }
                catch(InterruptedException interruptedexception) { }
                flag = true;
            }
        return ((flag) ? 1 : 0);
    }

    public final int a(Context context)
    {
        boolean flag;
        flag = true;
        p = context;
        if(k == 2)
            g = 3;
        else
            g = 2;
        i = AudioRecord.getMinBufferSize(j, g, 2);
        if(i != -2 && i != -1) goto _L2; else goto _L1
_L1:
        flag = false;
_L4:
        return ((flag) ? 1 : 0);
_L2:
        i = i << 1;
        a = new AudioRecord(flag, j, g, 2, i);
        if(a.getState() == 0)
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        e = new byte[i];
        if(e == null)
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        if(h <= 0)
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        if(i < h)
        {
            o = new byte[h];
            if(o == null)
            {
                flag = false;
                continue; /* Loop/switch isn't completed */
            }
        }
        n = 0;
        m = 0;
        b = flag;
        c = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int b()
    {
        int i1 = 1;
        if(i1 == c)
        {
            i1 = 0;
        } else
        {
            j = 8000;
            k = i1;
            l = 20;
            h = 2 * (1 * (j / 1000) * l);
        }
        return i1;
    }

    public void run()
    {
        n = 0;
        m = 0;
        Process.setThreadPriority(-19);
        do
        {
            if(!c)
                break;
            if(!d)
                try
                {
                    sleep(1000L);
                }
                catch(InterruptedException interruptedexception) { }
            else
            if(i >= h)
            {
                int l1 = a.read(e, 0, h);
                byte abyte0[] = new byte[320];
                System.arraycopy(e, 0, abyte0, 0, 320);
                if(l1 == h && f != null)
                    f.a(abyte0);
            } else
            {
                int i1 = a.read(e, 0, e.length);
                if(i1 == e.length)
                {
                    m = i1 + n;
                    if(m >= h)
                    {
                        System.arraycopy(e, 0, o, n, h - n);
                        if(f != null)
                            f.a(o);
                        int j1 = i1 - (h - n);
                        int k1 = h - n;
                        for(; j1 >= h; j1 -= h)
                        {
                            System.arraycopy(e, k1, o, 0, h);
                            if(f != null)
                                f.a(o);
                            k1 += h;
                        }

                        n = j1;
                        System.arraycopy(e, k1, o, 0, n);
                    } else
                    {
                        System.arraycopy(e, 0, o, n, i1);
                        n = i1 + n;
                    }
                }
            }
        } while(true);
    }

    AudioRecord a;
    boolean b;
    boolean c;
    boolean d;
    byte e[];
    AudioRecDevCallBack f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private byte o[];
    private Context p;
}
