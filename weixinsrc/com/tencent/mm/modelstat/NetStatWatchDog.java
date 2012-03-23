// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelstat;

import android.text.format.DateFormat;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConstantsStorage;
import java.io.*;
import java.util.*;

public class NetStatWatchDog extends com.tencent.mm.network.connpool.IConnPoolMoniter_AIDL.Stub
{

    public NetStatWatchDog()
    {
        File file;
        b = new LinkedList();
        c = System.currentTimeMillis();
        file = new File(a);
        break MISSING_BLOCK_LABEL_33;
        if((!file.exists() || !file.isDirectory()) && !file.mkdirs())
            Log.a("MicroMsg.NetStatWatchDog", "create watchdog house failed");
        return;
    }

    public static String a()
    {
        File file = new File(a);
        if(!file.exists() || !file.isDirectory())
            file.mkdirs();
        File afile[] = file.listFiles(d);
        String s;
        if(afile == null || afile.length <= 0)
        {
            Log.a("MicroMsg.NetStatWatchDog", "empty ipxx folder");
            s = null;
        } else
        {
            Arrays.sort(afile);
            s = afile[0].getAbsolutePath();
        }
        return s;
    }

    public static void b()
    {
        File file = new File(a);
        if(file.exists() && file.isDirectory()) goto _L2; else goto _L1
_L1:
        Log.d("MicroMsg.NetStatWatchDog", "empty watchdog root, skipped cleanup");
_L4:
        return;
_L2:
        File afile[];
        afile = file.listFiles(d);
        if(afile != null && afile.length > 7)
            break; /* Loop/switch isn't completed */
        Log.a("MicroMsg.NetStatWatchDog", "no need to clean up");
        if(true) goto _L4; else goto _L3
_L3:
        Arrays.sort(afile);
        int i = -7 + afile.length;
        while(i < afile.length) 
        {
            afile[i].delete();
            Log.d("MicroMsg.NetStatWatchDog", (new StringBuilder()).append("delete file: ").append(afile[i]).toString());
            i++;
        }
        if(true) goto _L4; else goto _L5
_L5:
    }

    private void c()
    {
        int i = 0;
        c = System.currentTimeMillis();
        String s = (new StringBuilder()).append(a).append(DateFormat.format("yyyyMMdd", c)).append(".ipxx").toString();
        Log.d("MicroMsg.NetStatWatchDog", (new StringBuilder()).append("--> begin commit ipxx to ").append(s).toString());
        String as[] = (String[])b.toArray(new String[i]);
        b.clear();
        try
        {
            File file = new File(s);
            if(!file.exists())
                file.createNewFile();
            FileOutputStream fileoutputstream = new FileOutputStream(file, true);
            for(int j = as.length; i < j; i++)
            {
                String s1 = as[i];
                Log.e("MicroMsg.NetStatWatchDog", s1);
                fileoutputstream.write(s1.getBytes());
            }

            fileoutputstream.close();
        }
        catch(Exception exception) { }
        Log.d("MicroMsg.NetStatWatchDog", "<-- end commit ipxx");
    }

    public final void a(int i, int j, String s, int k, String s1, boolean flag)
    {
        switch(i)
        {
        default:
            a((new StringBuilder()).append(i).append("_").append(s1).append("_").append(flag).toString(), false);
            // fall through

        case 4: // '\004'
        case 5: // '\005'
            return;
        }
    }

    public final void a(String s, boolean flag)
    {
        b.add((new StringBuilder()).append(System.currentTimeMillis()).append("_").append(s).append("\n").toString());
        if(b.size() > 80)
        {
            int i = -1 + b.size();
            List list = b;
            int j;
            if(i > 80)
                j = i + -80;
            else
                j = 0;
            b = list.subList(j, i);
        }
        if(Util.e(c) > 0x1b7740L || flag)
            c();
    }

    private static final String a;
    private static FilenameFilter d = new _cls1();
    private List b;
    private long c;

    static 
    {
        a = (new StringBuilder()).append(ConstantsStorage.b).append("watchdog/").toString();
    }

    private class _cls1
        implements FilenameFilter
    {

        public final boolean accept(File file, String s)
        {
            boolean flag;
            if(s != null && s.endsWith(".ipxx"))
                flag = true;
            else
                flag = false;
            return flag;
        }

        _cls1()
        {
        }
    }

}
