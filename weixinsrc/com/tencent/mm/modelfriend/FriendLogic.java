// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import android.content.Context;
import android.os.Handler;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelfriend:
//            AddrUploadStorage, AddrBookObserver

public final class FriendLogic
{

    private FriendLogic()
    {
    }

    public static void a()
    {
        MMCore.f().f().a(12322, Boolean.valueOf(true));
    }

    public static void a(List list)
    {
        if(list == null)
            Log.a("MicroMsg.FriendLogic", "sync address book failed, null info list");
        else
            MMCore.f().t().b(list);
    }

    public static boolean a(long l)
    {
        boolean flag;
        if(Util.b((Boolean)MMCore.f().f().a(4114)))
        {
            MMCore.f().f().a(4114, Boolean.valueOf(false));
            flag = true;
        } else
        if(l - Util.a((Long)MMCore.f().f().a(4100)) > 0xa4cb80L)
        {
            MMCore.f().f().a(4100, Long.valueOf(l));
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    public static boolean a(Context context)
    {
        boolean flag;
        if(!Util.a((Boolean)MMCore.f().f().a(12322), true))
        {
            flag = false;
        } else
        {
            a();
            flag = (new AddrBookObserver(context, new Handler())).a(new _cls1());
        }
        return flag;
    }

    public static BindOpMobileState b()
    {
        String s = (String)MMCore.f().f().a(4097);
        String s1 = (String)MMCore.f().f().a(6);
        boolean flag;
        BindOpMobileState bindopmobilestate;
        if((0x20000 & ConfigStorageLogic.d()) == 0)
            flag = true;
        else
            flag = false;
        Log.d("MicroMsg.FriendLogic", (new StringBuilder()).append("isUpload ").append(flag).append(" stat ").append(ConfigStorageLogic.d()).toString());
        if(s == null || s.length() <= 0)
            s = null;
        if(s1 == null || s1.length() <= 0)
            s1 = null;
        if(s == null && s1 == null)
            bindopmobilestate = BindOpMobileState.a;
        else
        if(s != null && s1 == null)
            bindopmobilestate = BindOpMobileState.b;
        else
        if(flag)
            bindopmobilestate = BindOpMobileState.c;
        else
            bindopmobilestate = BindOpMobileState.d;
        return bindopmobilestate;
    }

    public static void b(List list)
    {
        if(list == null)
            Log.a("MicroMsg.FriendLogic", "set uploaded mobile contact failed, null info list");
        else
            MMCore.f().t().c(list);
    }

    public static List c()
    {
        return MMCore.f().t().b();
    }

    public static List d()
    {
        return MMCore.f().t().f();
    }

    private class _cls1
        implements AddrBookObserver.OnSyncAddrBookOkListener
    {

        public final void a()
        {
            MMCore.f().f().a(4100, Long.valueOf(System.currentTimeMillis()));
            NetSceneUploadMContact netsceneuploadmcontact = new NetSceneUploadMContact(FriendLogic.d(), FriendLogic.c());
            MMCore.g().b(netsceneuploadmcontact);
        }

        _cls1()
        {
        }
    }


    private class BindOpMobileState extends Enum
    {

        public static BindOpMobileState valueOf(String s)
        {
            return (BindOpMobileState)Enum.valueOf(com/tencent/mm/modelfriend/FriendLogic$BindOpMobileState, s);
        }

        public static BindOpMobileState[] values()
        {
            return (BindOpMobileState[])e.clone();
        }

        public static final BindOpMobileState a;
        public static final BindOpMobileState b;
        public static final BindOpMobileState c;
        public static final BindOpMobileState d;
        private static final BindOpMobileState e[];

        static 
        {
            a = new BindOpMobileState("NO_INIT", 0);
            b = new BindOpMobileState("SET_MOBILE", 1);
            c = new BindOpMobileState("SUCC", 2);
            d = new BindOpMobileState("SUCC_UNLOAD", 3);
            BindOpMobileState abindopmobilestate[] = new BindOpMobileState[4];
            abindopmobilestate[0] = a;
            abindopmobilestate[1] = b;
            abindopmobilestate[2] = c;
            abindopmobilestate[3] = d;
            e = abindopmobilestate;
        }

        private BindOpMobileState(String s, int i)
        {
            super(s, i);
        }
    }

}
