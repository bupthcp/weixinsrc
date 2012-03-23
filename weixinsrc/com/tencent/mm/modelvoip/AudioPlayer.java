// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoip;

import android.content.Context;
import android.media.AudioTrack;
import android.os.Process;
import com.tencent.mm.platformtools.Log;

// Referenced classes of package com.tencent.mm.modelvoip:
//            AudioPlayDevCallBack

public class AudioPlayer extends Thread
{

    public AudioPlayer()
    {
        a = false;
        b = false;
        c = 2;
        d = 0;
        e = null;
        f = null;
        g = 0;
        h = 0;
        i = 0;
        j = 0;
        k = null;
        l = null;
    }

    public final int a()
    {
        k.release();
        a = false;
        b = false;
        return 1;
    }

    public final int a(Context context)
    {
        int i1 = 1;
        n = context;
        if(h == 2)
            c = 3;
        else
            c = 2;
        d = AudioTrack.getMinBufferSize(g, c, 2);
        if(d == -2 || d == -1)
        {
            i1 = 0;
        } else
        {
            k = new AudioTrack(3, g, c, 2, d, i1);
            if(k == null)
            {
                i1 = 0;
            } else
            {
                e = new byte[d];
                if(e == null)
                {
                    i1 = 0;
                } else
                {
                    f = new byte[j];
                    if(f == null)
                    {
                        i1 = 0;
                    } else
                    {
                        a = false;
                        b = false;
                    }
                }
            }
        }
        return i1;
    }

    public final void a(AudioPlayDevCallBack audioplaydevcallback)
    {
        l = audioplaydevcallback;
    }

    public final int b()
    {
        int i1 = 1;
        if(i1 == a)
        {
            i1 = 0;
        } else
        {
            g = 8000;
            h = i1;
            i = 20;
            j = 2 * (1 * (g / 1000) * i);
        }
        return i1;
    }

    public final int c()
    {
        boolean flag = true;
        if(flag != a)
        {
            a = flag;
            k.play();
            if(k.getState() == 0)
                flag = false;
            else
                start();
        }
        return ((flag) ? 1 : 0);
    }

    public final int d()
    {
        if(a)
        {
            a = false;
            try
            {
                join();
            }
            catch(InterruptedException interruptedexception) { }
            k.stop();
        }
        return 1;
    }

    public void run()
    {
        Process.setThreadPriority(-16);
        int i1 = 0;
        do
        {
            if(!a)
                break;
            if(l != null)
            {
                l.a(f);
                if(d >= j)
                {
                    int l1 = k.write(f, 0, j);
                    Log.d("AudioPlayer", (new StringBuilder()).append("audioTrack.write :").append(l1).toString());
                } else
                {
                    System.arraycopy(f, 0, e, i1, d - i1);
                    k.write(e, 0, e.length);
                    int j1 = d - i1;
                    i1 = j - j1;
                    int k1 = j1;
                    for(; i1 >= d; i1 -= d)
                    {
                        k.write(f, k1, d);
                        k1 += d;
                    }

                    System.arraycopy(f, k1, e, 0, i1);
                }
            }
        } while(true);
    }

    private static float m = 0F;
    private boolean a;
    private boolean b;
    private int c;
    private int d;
    private byte e[];
    private byte f[];
    private int g;
    private int h;
    private int i;
    private int j;
    private AudioTrack k;
    private AudioPlayDevCallBack l;
    private Context n;

}
