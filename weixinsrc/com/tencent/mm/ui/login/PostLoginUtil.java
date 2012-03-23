// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.login;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelfriend.FriendLogic;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.MMAlert;

final class PostLoginUtil
{

    private PostLoginUtil()
    {
    }

    public static void a(Activity activity)
    {
        if(FriendLogic.b() != com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.c)
            Log.a("MicroMsg.PostLoginUtil", "not successfully binded, skip addrbook confirm");
        else
        if(Util.b((Boolean)MMCore.f().f().a(12322)))
        {
            Log.d("MicroMsg.PostLoginUtil", "addrbook upload confirmed");
        } else
        {
            MMCore.f().f().a(12322, Boolean.valueOf(false));
            String s = Util.h(Util.b(activity));
            if(s.length() > 0 && s.equals(MMCore.f().f().a(6)))
                Log.c("MicroMsg.PostLoginUtil", "same none-nil phone number, leave it");
            else
            if(Util.b((Boolean)MMCore.f().f().a(12323)))
            {
                Log.d("MicroMsg.PostLoginUtil", "addrbook upload login confirmed showed");
            } else
            {
                MMAlert.a(activity, 0x7f0a02c9, 0x7f0a0010, 0x7f0a001f, 0x7f0a0020, new _cls1(), new _cls2());
                MMCore.f().f().a(12323, Boolean.valueOf(true));
            }
        }
    }

    public static void a(Context context, String s)
    {
        context.getSharedPreferences("com.tencent.mm_preferences", 0).edit().putString("login_user_name", s).commit();
    }

    private class _cls1
        implements android.content.DialogInterface.OnClickListener
    {

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            MMCore.f().f().a(12322, Boolean.valueOf(true));
        }

        _cls1()
        {
        }
    }


    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            MMCore.f().f().a(12322, Boolean.valueOf(false));
        }

        _cls2()
        {
        }
    }

}
