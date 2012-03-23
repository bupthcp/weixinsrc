// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelfriend.AddrUpload;
import com.tencent.mm.modelfriend.AddrUploadStorage;
import com.tencent.mm.modelfriend.FriendLogic;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import java.util.List;

// Referenced classes of package com.tencent.mm.model:
//            MMCore, AccountStorage, ContactStorageLogic

public class PostTaskUpdateCtRemark
{

    private PostTaskUpdateCtRemark()
    {
    }

    public static void a()
    {
        boolean flag = Util.a((Boolean)MMCore.f().f().a(0x10901), true);
        if(FriendLogic.b() != com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.c && FriendLogic.b() != com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.d)
            flag = false;
        if(flag)
        {
            Log.d("MicroMsg.PostTaskUpdateCtRemark", "collect addr userName");
            List list = MMCore.f().t().g();
            if(list != null)
            {
                Log.d("MicroMsg.PostTaskUpdateCtRemark", (new StringBuilder()).append("list ").append(list.size()).toString());
                int i = 0;
                boolean flag1 = false;
                for(; i < list.size(); i++)
                {
                    String s = ((AddrUpload)list.get(i)).e();
                    String s1 = ((AddrUpload)list.get(i)).d().trim();
                    if(s == null || s.equals(""))
                        continue;
                    Contact contact = MMCore.f().h().c(s);
                    if(contact.l() && (contact.D() == null || contact.D().equals("")))
                    {
                        Log.d("MicroMsg.PostTaskUpdateCtRemark", (new StringBuilder()).append("userName ").append(s).append("conRemark").append(s1).toString());
                        ContactStorageLogic.a(contact, s1);
                        flag1 = true;
                    }
                }

                MMCore.f().f().a(0x10901, Boolean.valueOf(false));
                if(flag1)
                    MMCore.g().b(new NetSceneSync(5));
            }
        }
    }
}
