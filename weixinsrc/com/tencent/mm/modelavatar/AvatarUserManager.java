// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelavatar;

import com.tencent.mm.algorithm.LRUMap;
import com.tencent.mm.model.ConfigStorageLogic;
import com.tencent.mm.model.ContactStorageLogic;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import java.util.*;

// Referenced classes of package com.tencent.mm.modelavatar:
//            AvatarLogic

final class AvatarUserManager
{

    private AvatarUserManager()
    {
    }

    public static Stack a()
    {
        return b;
    }

    public static void a(String s, byte abyte0[])
    {
        c.put(s, abyte0);
        d.push(s);
        AvatarLogic.a(s, 3);
    }

    public static void b()
    {
        d.clear();
        c.clear();
        b.clear();
    }

    public static void c()
    {
        d.clear();
        c.clear();
        b.clear();
        a.a();
    }

    public static AvatarRes d()
    {
        Log.d("MicroMsg.AvatarUserManager", (new StringBuilder()).append("getRes size:").append(d.size()).append(" ,").append(c.size()).toString());
_L4:
        if(d.size() <= 0) goto _L2; else goto _L1
_L1:
        String s = (String)d.pop();
        if(!c.containsKey(s)) goto _L4; else goto _L3
_L3:
        AvatarRes avatarres;
        AvatarRes avatarres1 = new AvatarRes();
        avatarres1.a = s;
        avatarres1.b = (byte[])c.get(s);
        c.remove(s);
        avatarres = avatarres1;
_L6:
        return avatarres;
_L2:
        avatarres = null;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static List e()
    {
        com.tencent.mm.algorithm.CodeInfo.TestTime testtime = new com.tencent.mm.algorithm.CodeInfo.TestTime();
        HashSet hashset = new HashSet();
        ArrayList arraylist = new ArrayList();
        do
            if(b.size() > 0 && arraylist.size() <= 8)
            {
                String s = (String)b.pop();
                if(!hashset.contains(s) && !c.containsKey(s))
                {
                    boolean flag;
                    if(Util.i(s))
                        flag = false;
                    else
                    if(ContactStorageLogic.t(s) && s.equals((new StringBuilder()).append(ConfigStorageLogic.b()).append("@bottle").toString()))
                        flag = false;
                    else
                    if(s.equals(ConfigStorageLogic.b()))
                    {
                        flag = false;
                    } else
                    {
                        long l = Util.c();
                        RecentDownInfo recentdowninfo = (RecentDownInfo)a.b(s);
                        if(recentdowninfo != null && recentdowninfo.b >= 5 && l - recentdowninfo.a < 600L)
                        {
                            Log.b("MicroMsg.AvatarUserManager", (new StringBuilder()).append("checkUser block by recentdown :").append(s).toString());
                            flag = false;
                        } else
                        if(!AvatarLogic.m(s))
                        {
                            Log.b("MicroMsg.AvatarUserManager", (new StringBuilder()).append("checkUser block local no need :").append(s).toString());
                            RecentDownInfo recentdowninfo2 = new RecentDownInfo();
                            recentdowninfo2.b = 5;
                            recentdowninfo2.a = l;
                            a.a(s, recentdowninfo2);
                            flag = false;
                        } else
                        if(recentdowninfo == null)
                        {
                            RecentDownInfo recentdowninfo1 = new RecentDownInfo();
                            recentdowninfo1.b = 1;
                            recentdowninfo1.a = l;
                            a.a(s, recentdowninfo1);
                            flag = true;
                        } else
                        {
                            Log.d("MicroMsg.AvatarUserManager", (new StringBuilder()).append("checkUser retry now :").append(s).append(" tryCount:").append(recentdowninfo.b).append(" time:").append(l - recentdowninfo.a).toString());
                            if(recentdowninfo.b < 5)
                            {
                                recentdowninfo.b = 1 + recentdowninfo.b;
                                recentdowninfo.a = l;
                                a.a(s, recentdowninfo);
                                flag = true;
                            } else
                            if(l - recentdowninfo.a > 600L)
                            {
                                recentdowninfo.b = 1;
                                recentdowninfo.a = l;
                                a.a(s, recentdowninfo);
                                flag = true;
                            } else
                            {
                                Log.d("MicroMsg.AvatarUserManager", "Never should go here BUG!");
                                flag = false;
                            }
                        }
                    }
                    if(flag)
                        arraylist.add(s);
                }
            } else
            {
                Log.d("MicroMsg.AvatarUserManager", (new StringBuilder()).append("getReqUser time:").append(testtime.b()).append(" list:").append(arraylist.size()).toString());
                return arraylist;
            }
        while(true);
    }

    private static LRUMap a = new LRUMap(400);
    private static Stack b = new Stack();
    private static Map c = new HashMap();
    private static Stack d = new Stack();


    private class AvatarRes
    {

        public String a;
        public byte b[];

        AvatarRes()
        {
        }
    }


    private class RecentDownInfo
    {

        public long a;
        public int b;

        RecentDownInfo()
        {
            a = 0L;
            b = 0;
        }
    }

}
