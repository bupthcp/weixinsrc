// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import com.tencent.mm.modelbase.IMessageExtension;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.MsgInfo;
import java.util.Map;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.model:
//            MMCore, AccountStorage

public class SoftwareMsgExtension
    implements IMessageExtension
{

    public SoftwareMsgExtension()
    {
    }

    public final MsgInfo a(com.tencent.mm.protocal.MMSync.CmdAddMsg cmdaddmsg)
    {
        boolean flag = true;
        boolean flag1;
        String s;
        if(cmdaddmsg != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        if(cmdaddmsg.g() == null)
            flag = false;
        Assert.assertTrue(flag);
        s = (String)Util.b(cmdaddmsg.g(), "tips").get(".tips.tip.url");
        Log.e("MicroMsg.SoftwareMsgExtension", (new StringBuilder()).append("url:").append(s).toString());
        MMCore.f().f().a(12308, s);
        return null;
    }
}
