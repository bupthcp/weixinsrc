// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelpmsg;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.MsgInfo;
import java.util.LinkedList;
import java.util.Queue;

// Referenced classes of package com.tencent.mm.modelpmsg:
//            NetSceneGetPSMImg

public class PushMessageExtension
    implements IMessageExtension, IOnSceneEnd
{

    public PushMessageExtension()
    {
        a = null;
        b = false;
    }

    private void a()
    {
_L2:
        return;
        if(b || a.size() == 0) goto _L2; else goto _L1
_L1:
        DoSceneStruct doscenestruct = (DoSceneStruct)a.peek();
        if(doscenestruct.b.size() == 0)
        {
            a.poll();
            MMCore.f().f().a(8193, doscenestruct.a);
            MMCore.f().f().a(8449, Long.valueOf(Util.c()));
        } else
        {
            String s = (String)doscenestruct.b.peek();
            if(s != null && s.length() > 0)
            {
                b = true;
                NetSceneGetPSMImg netscenegetpsmimg = new NetSceneGetPSMImg(s);
                MMCore.g().b(netscenegetpsmimg);
            }
        }
        if(true) goto _L2; else goto _L3
_L3:
    }

    public final MsgInfo a(com.tencent.mm.protocal.MMSync.CmdAddMsg cmdaddmsg)
    {
        String s = cmdaddmsg.g();
        if(a == null)
        {
            a = new LinkedList();
            MMCore.g().a(35, this);
        }
        DoSceneStruct doscenestruct = new DoSceneStruct(s);
        if(doscenestruct.a != null)
        {
            a.offer(doscenestruct);
            a();
        }
        return null;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        if(netscenebase.b() != 35)
        {
            b = false;
        } else
        {
            String s1 = ((NetSceneGetPSMImg)netscenebase).f();
            DoSceneStruct doscenestruct = (DoSceneStruct)a.peek();
            if(doscenestruct == null || doscenestruct.b.size() == 0)
            {
                Log.a("MicroMsg.PushMessageExtension", "getDoSceneQueue failed ! reset queue!");
                a = new LinkedList();
                b = false;
            } else
            if(doscenestruct.b.size() == 0)
            {
                Log.a("MicroMsg.PushMessageExtension", "get imgQueue failed ! ignore this message");
                a.poll();
                b = false;
            } else
            if(!((String)doscenestruct.b.peek()).equals(s1))
            {
                Log.a("MicroMsg.PushMessageExtension", "check img url failed ! ignore this message");
                a.poll();
                b = false;
            } else
            if(i != 0 || j != 0)
            {
                Log.a("MicroMsg.PushMessageExtension", (new StringBuilder()).append("down failed [").append(i).append(",").append(j).append("] ignore this message : img:[").append(s1).append("] ").toString());
                a.poll();
                b = false;
            } else
            {
                doscenestruct.b.poll();
                b = false;
                a();
            }
        }
    }

    protected void finalize()
    {
        if(a != null)
            MMCore.g().b(35, this);
        super.finalize();
    }

    private Queue a;
    private boolean b;

    private class DoSceneStruct
    {

        public String a;
        public Queue b;

        DoSceneStruct(String s)
        {
            a = s;
            b = new LinkedList();
            Log.d("MicroMsg.PushMessageExtension", (new StringBuilder()).append("DoSceneStruct:").append(s).toString());
            ArrayList arraylist = PushMessage.a(MMCore.c(), s);
            if(arraylist == null || arraylist.size() <= 0)
            {
                Log.a("MicroMsg.PushMessageExtension", "Parse Message Failed !");
            } else
            {
                int i = 0;
                while(i < arraylist.size()) 
                {
                    Map map = ((PushMessage)arraylist.get(i)).a();
                    if(map != null)
                    {
                        for(Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); b.offer(((java.util.Map.Entry)iterator.next()).getValue()));
                    }
                    i++;
                }
            }
        }
    }

}
