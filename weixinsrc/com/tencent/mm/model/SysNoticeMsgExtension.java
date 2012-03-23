// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import com.tencent.mm.modelbase.IMessageExtension;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.MsgInfo;
import java.util.Map;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.model:
//            MMCore, AccountStorage

public class SysNoticeMsgExtension
    implements IMessageExtension
{

    public SysNoticeMsgExtension()
    {
    }

    private static MsgInfo b(com.tencent.mm.protocal.MMSync.CmdAddMsg cmdaddmsg)
    {
        boolean flag = true;
        boolean flag1;
        if(cmdaddmsg != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        if(cmdaddmsg.g() == null)
            flag = false;
        Assert.assertTrue(flag);
        try
        {
            Map map = Util.b((new StringBuilder()).append("<root>").append(cmdaddmsg.g()).append("</root>").toString(), "root");
            int i = Integer.valueOf((String)map.get(".root.newcount")).intValue();
            int j = Integer.valueOf((String)map.get(".root.version")).intValue();
            ConfigStorage configstorage = MMCore.f().f();
            configstorage.a(12304, Integer.valueOf(i));
            configstorage.a(12305, Integer.valueOf(j));
        }
        catch(Exception exception) { }
        return null;
    }

    public final MsgInfo a(com.tencent.mm.protocal.MMSync.CmdAddMsg cmdaddmsg)
    {
        return b(cmdaddmsg);
    }
}
