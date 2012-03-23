// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelemoji;

import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.IMessageExtension;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.MsgInfo;
import java.util.Map;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelemoji:
//            EmojiService

public class EmojiExtension
    implements IMessageExtension
{

    public EmojiExtension()
    {
    }

    private static MsgInfo b(com.tencent.mm.protocal.MMSync.CmdAddMsg cmdaddmsg)
    {
        EmojiMsgInfo emojimsginfo;
        Map map;
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        String s;
        String s1;
        if(cmdaddmsg != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        if(cmdaddmsg.f() == 47)
            flag2 = flag;
        else
            flag2 = false;
        Assert.assertTrue(flag2);
        if(Util.h(cmdaddmsg.d()).length() > 0)
            flag3 = flag;
        else
            flag3 = false;
        Assert.assertTrue(flag3);
        if(Util.h(cmdaddmsg.e()).length() <= 0)
            flag = false;
        Assert.assertTrue(flag);
        emojimsginfo = new EmojiMsgInfo();
        if(((String)MMCore.f().f().a(2)).equals(cmdaddmsg.d()))
            s = cmdaddmsg.e();
        else
            s = cmdaddmsg.d();
        emojimsginfo.a = s;
        s1 = cmdaddmsg.g();
        if(ContactStorageLogic.b(cmdaddmsg.d()))
        {
            s1 = MsgInfoStorageLogic.b(s1);
            Log.e("MicroMsg.EmojiExtension", (new StringBuilder()).append("chatroom emojiMsg, new content=").append(s1).toString());
        }
        map = Util.b(s1, "msg");
        if(map != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        emojimsginfo.c = (String)map.get(".msg.emoji.$idbuffer");
        emojimsginfo.b = (String)map.get(".msg.emoji.$fromusername");
        String s2 = (String)map.get(".msg.emoji.$androidmd5");
        emojimsginfo.d = s2;
        if(s2 == null)
            emojimsginfo.d = (String)map.get(".msg.emoji.$md5");
        emojimsginfo.e = Integer.valueOf((String)map.get(".msg.emoji.$type")).intValue();
        if(map.get(".msg.emoji.$androidlen") == null) goto _L4; else goto _L3
_L3:
        emojimsginfo.f = Integer.valueOf((String)map.get(".msg.emoji.$androidlen")).intValue();
_L6:
        emojimsginfo.g = Integer.valueOf((String)map.get(".msg.gameext.$type")).intValue();
        emojimsginfo.h = Integer.valueOf((String)map.get(".msg.gameext.$content")).intValue();
_L7:
        Log.d("MicroMsg.EmojiExtension", (new StringBuilder()).append("id:").append(emojimsginfo.c).append(" md5:").append(emojimsginfo.d).append(" emojitype:").append(emojimsginfo.e).append(" emojilen:").append(emojimsginfo.f).append(" gametype:").append(emojimsginfo.g).append(" gamecontent:").append(emojimsginfo.h).toString());
        MMCore.m().a(emojimsginfo);
          goto _L1
_L4:
        if(map.get(".msg.emoji.$len") == null) goto _L6; else goto _L5
_L5:
        emojimsginfo.f = Integer.valueOf((String)map.get(".msg.emoji.$len")).intValue();
          goto _L6
        Exception exception;
        exception;
          goto _L7
    }

    public final MsgInfo a(com.tencent.mm.protocal.MMSync.CmdAddMsg cmdaddmsg)
    {
        return b(cmdaddmsg);
    }

    private class EmojiMsgInfo
    {

        public String a;
        public String b;
        public String c;
        public String d;
        public int e;
        public int f;
        public int g;
        public int h;

        EmojiMsgInfo()
        {
        }
    }

}
