// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoip;

import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import java.net.InetAddress;

public class v2protocal
{

    public static boolean a(v2protocal v2protocal1)
    {
        boolean flag;
        if(v2protocal1 == null || !v2protocal1.q)
            flag = false;
        else
            flag = true;
        return flag;
    }

    private static int[] a(String s, int i1)
    {
        int j1 = 0;
        InetAddress ainetaddress1[] = InetAddress.getAllByName(s);
        InetAddress ainetaddress[] = ainetaddress1;
_L1:
        Exception exception;
        int ai[];
        if(ainetaddress == null || ainetaddress.length <= 0)
        {
            Log.a("MicroMsg.V2Protocol", (new StringBuilder()).append("getAddrArray failed:").append(s).toString());
            ai = null;
        } else
        {
            int ai1[];
label0:
            {
                ai1 = new int[2];
                int k1 = j1;
                byte abyte0[];
                do
                {
                    if(k1 >= ainetaddress.length)
                        break label0;
                    Log.d("MicroMsg.V2Protocol", (new StringBuilder()).append(" ip :").append(ainetaddress[k1].getHostAddress()).toString());
                    abyte0 = ainetaddress[k1].getAddress();
                    Log.d("MicroMsg.V2Protocol", (new StringBuilder()).append(" ipbyte : ").append(abyte0.length).toString());
                    if(abyte0 != null && abyte0.length > 0)
                        break;
                    Log.a("MicroMsg.V2Protocol", (new StringBuilder()).append("addr to byte[] failed:").append(ainetaddress[k1].getAddress()).toString());
                    k1++;
                } while(true);
                int l1 = 0xff & abyte0[3] | 0xff00 & abyte0[2] << 8 | 0xff0000 & abyte0[1] << 16 | 0xff000000 & abyte0[j1] << 24;
                Log.d("MicroMsg.V2Protocol", (new StringBuilder()).append(" cnt : ").append(j1).append("  ip:").append(l1).append(" port:").append(i1).toString());
                ai1[j1] = l1;
                ai1[1] = i1;
                j1 = 2;
            }
            if(j1 >= 2 && j1 % 2 == 0)
                ai = ai1;
            else
                ai = null;
        }
        return ai;
        exception;
        ainetaddress = null;
          goto _L1
    }

    private native int init();

    private native int uninit();

    public final int a()
    {
        boolean flag = false;
        m = ((flag) ? 1 : 0);
        n = null;
        o = null;
        a = null;
        b = null;
        c = ((flag) ? 1 : 0);
        d = null;
        p = ((flag) ? 1 : 0);
        e = ((flag) ? 1 : 0);
        f = 0L;
        g = 0L;
        h = null;
        i = null;
        j = null;
        k = null;
        l = null;
        if(q)
        {
            q = flag;
            flag = uninit();
        }
        return ((flag) ? 1 : 0);
    }

    public final int a(boolean flag)
    {
        n = a("punch.weixin.qq.com", 8080);
        o = a("voip.weixin.qq.com", 80);
        int i1;
        int j1;
        if(flag)
            i1 = 3;
        else
            i1 = 1;
        m = i1;
        j1 = init();
        Log.d("MicroMsg.V2Protocol", (new StringBuilder()).append("protocal init ret :").append(j1).append("peerId:").append(new String(a)).append("capInfo:").append(new String(b)).toString());
        if(Util.b(a) || Util.b(b))
            Log.a("MicroMsg.V2Protocol", "Voip init get peerId or capInfo failed.");
        q = true;
        return j1;
    }

    public native int exchangecabinfo();

    public native int handlecommand();

    public native int playcallback();

    public native int recordcallback();

    public native int setconfigconnect();

    public byte a[];
    public byte b[];
    public int c;
    public String d;
    public int e;
    public long f;
    public long g;
    public byte h[];
    public byte i[];
    public byte j[];
    public byte k[];
    public byte l[];
    private int m;
    private int n[];
    private int o[];
    private int p;
    private boolean q;
}
