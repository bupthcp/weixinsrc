// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.readerapp.model;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IMessageExtension;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.storagebase.SqliteDB;
import java.util.Map;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.plugin.readerapp.model:
//            ReaderAppInfo, ReaderAppInfoStorage

public class ReaderAppMsgExtension
    implements IMessageExtension
{

    public ReaderAppMsgExtension()
    {
    }

    public final MsgInfo a(com.tencent.mm.protocal.MMSync.CmdAddMsg cmdaddmsg)
    {
        long l;
        String s;
        int j;
        int k;
        int i1;
        int j1;
        int k1;
        String s1;
        int l1;
        Map map;
        Object obj;
        String s2;
        int i2;
        boolean flag;
        boolean flag1;
        int i;
        Conversation conversation1;
        StringBuilder stringbuilder;
        if(cmdaddmsg != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        if(cmdaddmsg.g() != null)
            flag1 = true;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        l = Util.d();
        i = MMCore.f().e().b();
        s = "";
        j = 0;
        k = 0;
        i1 = 0;
        map = Util.b(cmdaddmsg.g(), "mmreader");
        k1 = 0;
        j1 = k;
        s1 = s;
        l1 = i1;
_L18:
        if(k1 > 0) goto _L2; else goto _L1
_L1:
        stringbuilder = (new StringBuilder()).append(".mmreader.category");
        if(k1 <= 0) goto _L4; else goto _L3
_L3:
        obj = Integer.valueOf(k1);
_L7:
        s2 = stringbuilder.append(obj).toString();
        i2 = Util.j((String)map.get((new StringBuilder()).append(s2).append(".$type").toString()));
        if(i2 != 0) goto _L6; else goto _L5
_L5:
        Log.a("MicroMsg.ReaderAppMsgExtension", (new StringBuilder()).append("get ").append(s2).append(".$type  error").toString());
_L2:
        int k2;
        int l2;
        String s7;
        MsgInfo msginfo;
        if(j1 > 0)
        {
            Conversation conversation = MMCore.f().j().d(ReaderAppInfo.a(l1));
            Exception exception1;
            String s3;
            String s4;
            String s5;
            int j2;
            StringBuilder stringbuilder1;
            Object obj1;
            String s6;
            ReaderAppInfo readerappinfo;
            if(conversation == null || !conversation.g().equals(ReaderAppInfo.a(l1)))
            {
                conversation1 = new Conversation();
                conversation1.a(ReaderAppInfo.a(l1));
                conversation1.b(s1);
                conversation1.a(Util.d());
                conversation1.e();
                conversation1.a(k1);
                MMCore.f().j().a(conversation1);
            } else
            {
                conversation.b(s1);
                conversation.a(Util.d());
                conversation.e();
                conversation.a(k1 + conversation.b());
                MMCore.f().j().a(conversation, ReaderAppInfo.a(l1));
            }
        }
        MMCore.f().e().b(i);
        MMCore.f().e().a(i);
        MMCore.f().r().a();
        if(j1 > 0)
        {
            msginfo = new MsgInfo();
            msginfo.b(s1);
            msginfo.a(ReaderAppInfo.a(l1));
            msginfo.c(1);
            msginfo.a(0x709394L);
        } else
        {
            msginfo = null;
        }
        return msginfo;
_L4:
        obj = "";
          goto _L7
_L6:
        if(i2 == 20 || i2 == 11) goto _L9; else goto _L8
_L8:
        Log.a("MicroMsg.ReaderAppMsgExtension", (new StringBuilder()).append("get ").append(s2).append(".$type  error Type:").append(i2).toString());
          goto _L2
        exception1;
        i1 = l1;
        j = k1;
        s = s1;
        k = j1;
_L19:
        j1 = k;
        k1 = j;
        s1 = s;
        l1 = i1;
          goto _L2
_L9:
        s3 = (String)map.get((new StringBuilder()).append(s2).append(".name").toString());
        if(Util.i(s3))
        {
            Log.a("MicroMsg.ReaderAppMsgExtension", (new StringBuilder()).append("get ").append(s2).append(".name  error").toString());
            l1 = i2;
        } else
        {
            s4 = (String)map.get((new StringBuilder()).append(s2).append(".topnew.cover").toString());
            s5 = (String)map.get((new StringBuilder()).append(s2).append(".topnew.digest").toString());
            j2 = Util.j((String)map.get((new StringBuilder()).append(s2).append(".$count").toString()));
            if(i2 != 0)
                break MISSING_BLOCK_LABEL_1271;
            Log.a("MicroMsg.ReaderAppMsgExtension", (new StringBuilder()).append("get ").append(s2).append(".$count  error").toString());
            l1 = i2;
        }
          goto _L2
_L16:
        if(k2 >= j2) goto _L11; else goto _L10
_L10:
        stringbuilder1 = (new StringBuilder()).append(s2).append(".item");
        if(k2 <= 0) goto _L13; else goto _L12
_L12:
        obj1 = Integer.valueOf(k2);
_L17:
        s6 = stringbuilder1.append(obj1).toString();
        readerappinfo = new ReaderAppInfo();
        readerappinfo.c((String)map.get((new StringBuilder()).append(s6).append(".title").toString()));
        if(k2 != 0) goto _L15; else goto _L14
_L14:
        s7 = readerappinfo.g();
        readerappinfo.l();
        readerappinfo.i(s4);
        readerappinfo.j(s5);
        s1 = s7;
_L15:
        readerappinfo.d((String)map.get((new StringBuilder()).append(s6).append(".url").toString()));
        readerappinfo.e((String)map.get((new StringBuilder()).append(s6).append(".shorturl").toString()));
        readerappinfo.f((String)map.get((new StringBuilder()).append(s6).append(".longurl").toString()));
        readerappinfo.b(Util.j((String)map.get((new StringBuilder()).append(s6).append(".pub_time").toString())));
        readerappinfo.a((String)map.get((new StringBuilder()).append(s6).append(".tweetid").toString()));
        readerappinfo.g((String)map.get((new StringBuilder()).append(s6).append(".sources.source.name").toString()));
        readerappinfo.h((String)map.get((new StringBuilder()).append(s6).append(".sources.source.icon").toString()));
        readerappinfo.a(l + (long)k1);
        readerappinfo.b(i2);
        readerappinfo.b(s3);
        l2 = j1 + 1;
        MMCore.f().r().a(readerappinfo);
        k2++;
        j1 = l2;
          goto _L16
_L13:
        obj1 = "";
          goto _L17
_L11:
        k1++;
        l1 = i2;
          goto _L18
        Exception exception;
        exception;
          goto _L19
        Exception exception4;
        exception4;
        k = j1;
        j = k1;
        s = s7;
        i1 = i2;
          goto _L19
        Exception exception2;
        exception2;
        i1 = i2;
        k = j1;
        j = k1;
        s = s1;
          goto _L19
        Exception exception3;
        exception3;
        k = l2;
        j = k1;
        s = s1;
        i1 = i2;
          goto _L19
        k2 = 0;
          goto _L16
    }
}
