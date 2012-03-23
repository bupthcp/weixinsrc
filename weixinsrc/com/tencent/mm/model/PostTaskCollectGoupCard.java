// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelsimple.NetSceneCollectChatRoom;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.protocal.protobuf.GroupCardReq;
import com.tencent.mm.storage.ChatroomMembersStorage;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.tencent.mm.model:
//            MMCore, AccountStorage

public class PostTaskCollectGoupCard
{

    private PostTaskCollectGoupCard()
    {
    }

    public static void a()
    {
        Log.d("MicroMsg.PostTaskCollectGoupCard", "collectGroupCard");
        LinkedList linkedlist = new LinkedList();
        new LinkedList();
        List list = MMCore.f().n().a();
        if(list != null)
        {
            for(int i = 0; i < list.size(); i++)
            {
                Log.d("MicroMsg.PostTaskCollectGoupCard", (new StringBuilder()).append("groupCard ").append((String)list.get(i)).toString());
                GroupCardReq groupcardreq = new GroupCardReq();
                groupcardreq.a((String)list.get(i));
                linkedlist.add(groupcardreq);
            }

            NetSceneCollectChatRoom netscenecollectchatroom = new NetSceneCollectChatRoom(linkedlist);
            MMCore.g().b(netscenecollectchatroom);
        }
    }
}
