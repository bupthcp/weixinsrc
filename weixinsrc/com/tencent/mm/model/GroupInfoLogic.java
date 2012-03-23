// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.*;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.tencent.mm.model:
//            MMCore, AccountStorage

public final class GroupInfoLogic
{

    private GroupInfoLogic()
    {
    }

    public static GroupInfo a(String s)
    {
        return new GroupInfo("@black.android", null, s, null, true, true);
    }

    public static GroupInfo a(String s, String s1)
    {
        GroupInfo groupinfo = null;
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        return groupinfo;
_L2:
        RoleInfo roleinfo = MMCore.f().m().a(s);
        if(roleinfo != null && roleinfo.d())
            groupinfo = new GroupInfo("@domain.android", roleinfo.a(), c(roleinfo.e().a(""), s1), roleinfo.e().a(""), roleinfo.b(), true);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static boolean a()
    {
        boolean flag;
        List list;
        flag = false;
        list = MMCore.f().m().a();
        if(list != null && list.size() > 0) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        int i = ((flag) ? 1 : 0);
        do
        {
            if(i < list.size())
            {
label0:
                {
                    if(!((RoleInfo)list.get(i)).b())
                        break label0;
                    flag = true;
                }
            }
            if(true)
                continue;
            i++;
        } while(true);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static GroupInfo b(String s)
    {
        GroupInfo groupinfo = null;
        RoleInfo roleinfo = MMCore.f().m().a("@t.qq.com");
        if(roleinfo != null)
        {
            boolean flag = roleinfo.b();
            boolean flag1 = roleinfo.c();
            groupinfo = new GroupInfo("@t.qq.com", groupinfo, s, groupinfo, flag, flag1);
        }
        return groupinfo;
    }

    public static GroupInfo b(String s, String s1)
    {
        GroupInfo groupinfo = null;
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        return groupinfo;
_L2:
        RoleInfo roleinfo = MMCore.f().m().c(s);
        if(roleinfo != null && roleinfo.d())
            groupinfo = new GroupInfo("@domain.android", roleinfo.a(), c(roleinfo.e().a(""), s1), roleinfo.e().a(""), roleinfo.b(), true);
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static String c(String s, String s1)
    {
        String s2 = "";
        if(s != null)
            s2 = (new StringBuilder()).append(s2).append(s.replace("@", "")).toString();
        if(s1 != null)
            s2 = (new StringBuilder()).append(s2).append(s1).toString();
        return s2;
    }

    public static List c(String s)
    {
        List list = MMCore.f().m().a();
        Object obj;
        if(list == null || list.size() <= 0)
        {
            obj = null;
        } else
        {
            Log.d("MicroMsg", (new StringBuilder()).append("domain mail count").append(list.size()).toString());
            LinkedList linkedlist = new LinkedList();
            for(int i = 0; i < list.size(); i++)
            {
                Log.d("MicroMsg", (new StringBuilder()).append("domain mail : name").append(((RoleInfo)list.get(i)).a()).toString());
                linkedlist.add(new GroupInfo("@domain.android", ((RoleInfo)list.get(i)).a(), c(((RoleInfo)list.get(i)).e().a(""), s), ((RoleInfo)list.get(i)).e().a(""), ((RoleInfo)list.get(i)).b(), true));
            }

            obj = linkedlist;
        }
        return ((List) (obj));
    }
}
