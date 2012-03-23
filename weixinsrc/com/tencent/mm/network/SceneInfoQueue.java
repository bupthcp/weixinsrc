// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network;

import com.tencent.mm.platformtools.Log;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.network:
//            INetContext, IReqResp_AIDL, GYNetContext, IAccInfo, 
//            IOnGYNetEnd_AIDL

class SceneInfoQueue
{

    SceneInfoQueue()
    {
    }

    public final int a(INetContext inetcontext, IOnGYNetEnd_AIDL iongynetend_aidl)
    {
        if(inetcontext.a() >= 0 || inetcontext.b() > 0) goto _L2; else goto _L1
_L1:
        int i;
        inetcontext.g();
        i = -1;
_L4:
        return i;
_L2:
        if(!a(inetcontext.c().a()))
        {
            Log.c("MicroMsg.AutoAuth.SceneInfoQueue", "already authing, re-enter failed");
            inetcontext.g();
            i = -1;
            continue; /* Loop/switch isn't completed */
        }
        i = 0;
        do
        {
            if(i >= 100)
                break;
            if(a[i] == null)
            {
                Log.c("MicroMsg.AutoAuth.SceneInfoQueue", (new StringBuilder()).append("inQueue: netid=").append(i).toString());
                a[i] = new SceneInfo(inetcontext, iongynetend_aidl);
                continue; /* Loop/switch isn't completed */
            }
            i++;
        } while(true);
        if(inetcontext instanceof GYNetContext)
        {
            IAccInfo iaccinfo = ((GYNetContext)inetcontext).a;
            if(iaccinfo != null)
            {
                int j = iaccinfo.g();
                if(j != 0 && (j / 10) % 100 == 9)
                    Assert.assertTrue((new StringBuilder()).append("the context queue is full in autoAuth with uin ").append(j).toString(), false);
            }
        }
        inetcontext.g();
        i = -1;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int a(IReqResp_AIDL ireqresp_aidl)
    {
        int i = 0;
_L3:
        if(i >= 100)
            break MISSING_BLOCK_LABEL_43;
        if(a[i] == null || a[i].a.c() != ireqresp_aidl) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        i++;
          goto _L3
        i = -1;
          goto _L1
    }

    public final void a()
    {
        for(int i = 0; i < a.length; i++)
            a[i] = null;

    }

    public final boolean a(int i)
    {
        boolean flag = true;
        if(i == flag || i == 2) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        int j = 0;
_L7:
        if(j >= 100) goto _L1; else goto _L3
_L3:
        SceneInfo sceneinfo = a[j];
        if(sceneinfo == null || !sceneinfo.c()) goto _L5; else goto _L4
_L4:
        sceneinfo.a.c().a();
        JVM INSTR tableswitch 1 2: default 80
    //                   1 86
    //                   2 86;
           goto _L5 _L6 _L6
_L5:
        j++;
          goto _L7
_L6:
        Log.c("MicroMsg.AutoAuth.SceneInfoQueue", "already authing, re-enter failed");
        flag = false;
        if(true) goto _L1; else goto _L8
_L8:
    }

    public final void b()
    {
        Log.a("MicroMsg.AutoAuth.SceneInfoQueue", "[dumping queue]");
        int i = 0;
        while(i < 100) 
        {
            SceneInfo sceneinfo = a[i];
            if(sceneinfo != null && sceneinfo.c())
            {
                StringBuilder stringbuilder = (new StringBuilder()).append("si.threadId=").append(sceneinfo.a.a()).append(", si.type=").append(sceneinfo.a.c().a()).append(", si.auto=");
                boolean flag;
                if(sceneinfo.b == null)
                    flag = true;
                else
                    flag = false;
                Log.a("MicroMsg.AutoAuth.SceneInfoQueue", stringbuilder.append(flag).toString());
            }
            i++;
        }
        Log.a("MicroMsg.AutoAuth.SceneInfoQueue", "[dumping done]");
    }

    public final void b(int i)
    {
        boolean flag;
        if(i >= 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        if(a[i] != null)
        {
            Log.c("MicroMsg.AutoAuth.SceneInfoQueue", (new StringBuilder()).append("outQueue: netId=").append(i).append(", type=").append(a[i].a.c().a()).toString());
            a[i] = null;
        }
    }

    public final SceneInfo c(int i)
    {
        boolean flag;
        if(i >= 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        return a[i];
    }

    public final void d(int i)
    {
        SceneInfo sceneinfo = c(i);
        if(sceneinfo.c())
            sceneinfo.a.d();
    }

    private final SceneInfo a[] = new SceneInfo[100];

    private class SceneInfo
    {

        public final boolean a()
        {
            boolean flag;
            if(c() && a.b() > 0)
                flag = true;
            else
                flag = false;
            return flag;
        }

        public final boolean b()
        {
            boolean flag;
            if(a != null && b == null)
                flag = true;
            else
                flag = false;
            return flag;
        }

        public final boolean c()
        {
            boolean flag;
            if(a != null)
                flag = true;
            else
                flag = false;
            return flag;
        }

        INetContext a;
        IOnGYNetEnd_AIDL b;

        public SceneInfo(INetContext inetcontext, IOnGYNetEnd_AIDL iongynetend_aidl)
        {
            a = inetcontext;
            b = iongynetend_aidl;
        }
    }

}
