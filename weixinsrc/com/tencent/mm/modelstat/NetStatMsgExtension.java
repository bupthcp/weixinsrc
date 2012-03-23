// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelstat;

import android.os.Handler;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IMessageExtension;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.OpLogStorage;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelstat:
//            NetStatWatchDog

public class NetStatMsgExtension extends com.tencent.mm.network.connpool.IConnPoolMoniter_AIDL.Stub
    implements IMessageExtension
{

    public NetStatMsgExtension()
    {
    }

    public final MsgInfo a(com.tencent.mm.protocal.MMSync.CmdAddMsg cmdaddmsg)
    {
        Assert.assertEquals("weixin", cmdaddmsg.d());
        if(MMCore.f().b()) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.NetStatMsgExtension", "skip ipxx stat while account not set");
_L4:
        return null;
_L2:
        List list = LogHelper.a(NetStatWatchDog.a());
        if(list != null && list.size() > 0)
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpKvStat(list));
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a(int i, int j, String s, int k, String s1, boolean flag)
    {
        a.post(new _cls1(i, j, s, k, s1, flag));
    }

    private final Handler a = new Handler();

    private class LogHelper
    {

        public static List a(String s)
        {
            LinkedList linkedlist = new LinkedList();
            if(s == null)
                Log.a("MicroMsg.NetStatMsgExtension", "invalid ipxx path");
            else
                try
                {
                    File file = new File(s);
                    FileInputStream fileinputstream = new FileInputStream(file);
                    BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(fileinputstream));
                    do
                    {
                        String s1 = bufferedreader.readLine();
                        if(s1 == null)
                            break;
                        linkedlist.add(new com.tencent.mm.storage.OpLogStorage.OpKvStat.OpKvStatItem(4, s1));
                        Log.e("MicroMsg.NetStatMsgExtension", (new StringBuilder()).append("extract ipxx stat line:").append(s1).toString());
                    } while(true);
                    bufferedreader.close();
                    fileinputstream.close();
                    file.delete();
                }
                catch(Exception exception) { }
            return linkedlist;
        }

        public LogHelper()
        {
        }
    }


    private class _cls1
        implements Runnable
    {

        public void run()
        {
            int i;
            int j;
            String s;
            int k;
            String s1;
            boolean flag;
            i = a;
            j = b;
            s = c;
            k = d;
            s1 = e;
            flag = f;
            if(!MMCore.f().b()) goto _L2; else goto _L1
_L1:
            i;
            JVM INSTR tableswitch 4 8: default 76
        //                       4 127
        //                       5 77
        //                       6 76
        //                       7 76
        //                       8 177;
               goto _L2 _L3 _L4 _L2 _L2 _L5
_L2:
            return;
_L4:
            Log.d("MicroMsg.NetStatMsgExtension", (new StringBuilder()).append("send bytes flow:").append(k).toString());
            if(flag)
                NetStatStorageLogic.a(0, k, j);
            else
                NetStatStorageLogic.b(0, k, j);
            continue; /* Loop/switch isn't completed */
_L3:
            Log.d("MicroMsg.NetStatMsgExtension", (new StringBuilder()).append("recv bytes flow:").append(k).toString());
            if(flag)
                NetStatStorageLogic.a(k, 0, j);
            else
                NetStatStorageLogic.b(k, 0, j);
            continue; /* Loop/switch isn't completed */
_L5:
            if(MMEntryLock.a("dns_failed_report"))
                MMCore.f().W().a("dnsreport", (new StringBuilder()).append("").append(s).append("_").append(s1).toString());
            if(true) goto _L2; else goto _L6
_L6:
        }

        private int a;
        private int b;
        private String c;
        private int d;
        private String e;
        private boolean f;
        private NetStatMsgExtension g;

        _cls1(int i, int j, String s, int k, String s1, boolean flag)
        {
            g = NetStatMsgExtension.this;
            a = i;
            b = j;
            c = s;
            d = k;
            e = s1;
            f = flag;
            super();
        }
    }

}
