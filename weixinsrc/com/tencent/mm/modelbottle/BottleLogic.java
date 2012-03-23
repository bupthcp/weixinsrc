// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbottle;

import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;

// Referenced classes of package com.tencent.mm.modelbottle:
//            BottleInfoStorage, BottleInfo

public final class BottleLogic
{

    private BottleLogic()
    {
    }

    public static int a()
    {
        return a;
    }

    public static String a(String s)
    {
        String s1 = null;
        if(!Util.i(s)) goto _L2; else goto _L1
_L1:
        return s1;
_L2:
        String as[] = s.split("@bottle:");
        if(as != null && as.length >= 2)
            s1 = as[1];
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static void a(int i)
    {
        a = i;
    }

    public static int b()
    {
        return b;
    }

    public static void b(int i)
    {
        b = i;
    }

    public static void b(String s)
    {
        MMCore.g().b(new NetSceneSync(11));
        if(MMCore.f().i().p(s) == 1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        MsgInfo msginfo = MMCore.f().i().c(s);
        if(msginfo != null && msginfo.h().equals(s))
        {
            String s1 = a(s);
            if(!Util.i(s1))
            {
                BottleInfo bottleinfo = MMCore.f().H().a(s1);
                if(bottleinfo != null && bottleinfo.c().equals(s1) && bottleinfo.d() == 1)
                {
                    MsgInfo msginfo1 = new MsgInfo();
                    msginfo1.a(s);
                    long l;
                    if(msginfo.g() <= bottleinfo.h())
                        l = msginfo.g() - 1L;
                    else
                        l = bottleinfo.h();
                    msginfo1.b(l);
                    msginfo1.c(c(bottleinfo.e()));
                    msginfo1.d(2);
                    msginfo1.e(1);
                    if(msginfo1.d() == 34)
                    {
                        msginfo1.b(com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent.a(ConfigStorageLogic.b(), bottleinfo.f(), false));
                        msginfo1.c(bottleinfo.g());
                    } else
                    {
                        msginfo1.b(bottleinfo.g());
                    }
                    MMCore.f().i().a(msginfo1);
                }
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static int c()
    {
        return MMCore.f().j().e();
    }

    public static int c(int i)
    {
        i;
        JVM INSTR tableswitch 1 4: default 32
    //                   1 37
    //                   2 42
    //                   3 47
    //                   4 53;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        byte byte0 = -1;
_L7:
        return byte0;
_L2:
        byte0 = 1;
        continue; /* Loop/switch isn't completed */
_L3:
        byte0 = 3;
        continue; /* Loop/switch isn't completed */
_L4:
        byte0 = 34;
        continue; /* Loop/switch isn't completed */
_L5:
        byte0 = 43;
        if(true) goto _L7; else goto _L6
_L6:
    }

    public static boolean d()
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        if((0x8000 & ConfigStorageLogic.d()) == 0)
            flag1 = flag;
        else
            flag1 = false;
        flag2 = ConfigStorageLogic.h();
        if(!flag1 || !flag2)
            flag = false;
        return flag;
    }

    private static int a = 1;
    private static int b = 1;

}
