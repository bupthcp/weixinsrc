// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoice;

import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.MsgInfoStorage;
import java.io.File;

// Referenced classes of package com.tencent.mm.modelvoice:
//            VoiceInfo, VoiceStorage, AmrFileOperator

public final class VoiceLogic
{

    private VoiceLogic()
    {
    }

    public static int a(VoiceInfo voiceinfo, byte abyte0[], int k)
    {
        boolean flag;
        com.tencent.mm.algorithm.CodeInfo.TestTime testtime;
        flag = false;
        testtime = new com.tencent.mm.algorithm.CodeInfo.TestTime();
        if(voiceinfo != null) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.VoiceLogic", "setRecvSync voice is null");
        flag = -1;
_L4:
        return ((flag) ? 1 : 0);
_L2:
        VoiceInfo voiceinfo1 = MMCore.f().o().a(voiceinfo.k());
        if(voiceinfo1 != null && voiceinfo1.o() == 99)
            continue; /* Loop/switch isn't completed */
        MsgInfo msginfo = MMCore.f().i().a(voiceinfo.i(), voiceinfo.k());
        if(msginfo != null && msginfo.c() == voiceinfo.k() && voiceinfo1 == null)
            continue; /* Loop/switch isn't completed */
        byte byte0;
        if(voiceinfo1 != null)
            voiceinfo.b(voiceinfo1.h());
        else
            voiceinfo.b(VoiceStorage.a(voiceinfo.e()));
        voiceinfo.a(1 | voiceinfo.c());
        Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append(CodeInfo.a()).append("checktime :").append(testtime.b()).toString());
        if(abyte0 != null && abyte0.length > 1)
        {
            if(voiceinfo1 != null)
                Log.a("MicroMsg.VoiceLogic", "Sync Voice Buf , But  VoiceInfo is not new !");
            String s = voiceinfo.h();
            int i1 = b(s).a(abyte0, abyte0.length, flag);
            long l;
            if(i1 < 0)
            {
                Log.a("MicroMsg.VoiceLogic", (new StringBuilder()).append("Write Failed File:").append(s).append(" newOffset:").append(i1).toString());
                byte0 = flag;
            } else
            if(abyte0.length != i1)
            {
                Log.a("MicroMsg.VoiceLogic", (new StringBuilder()).append("Write File:").append(s).append(" fileOff:").append(i1).append(" bufLen:").append(abyte0.length).toString());
                byte0 = flag;
            } else
            {
                Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append("writeVoiceFile file:[").append(s).append("] + buf:").append(abyte0.length).toString());
                c(s);
                byte0 = 1;
            }
        } else
        {
            byte0 = flag;
        }
        Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append(CodeInfo.a()).append("checktime :").append(testtime.b()).toString());
        voiceinfo.b(System.currentTimeMillis() / 1000L);
        voiceinfo.a(0x100 | voiceinfo.c());
        if(byte0 != 0)
            voiceinfo.h(99);
        else
        if(voiceinfo.n() == 0)
            voiceinfo.h(5);
        else
            voiceinfo.h(6);
        voiceinfo.a(0x40 | voiceinfo.c());
        if(voiceinfo1 == null)
        {
            MsgInfo msginfo1 = new MsgInfo();
            msginfo1.b(voiceinfo.k());
            msginfo1.c(voiceinfo.h());
            msginfo1.d(k);
            msginfo1.b(MsgInfoStorageLogic.a(voiceinfo.i(), voiceinfo.p()));
            msginfo1.a(voiceinfo.i());
            msginfo1.c(34);
            if(byte0 == 0)
                msginfo1.b(com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent.a(voiceinfo.e(), 0L, flag));
            else
                msginfo1.b(com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent.a(voiceinfo.e(), voiceinfo.g(), flag));
            l = MsgInfoStorageLogic.b(msginfo1);
            Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append(CodeInfo.a()).append("checktime :").append(testtime.b()).toString());
            voiceinfo.b((int)l);
            voiceinfo.a(-1);
            Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append("Insert fileName:").append(voiceinfo.h()).append(" stat:").append(voiceinfo.o()).append(" net:").append(voiceinfo.l()).append(" total:").append(voiceinfo.n()).toString());
            if(!MMCore.f().o().a(voiceinfo))
            {
                Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append("Insert Error fileName:").append(voiceinfo.h()).append(" stat:").append(voiceinfo.o()).append(" net:").append(voiceinfo.l()).append(" total:").append(voiceinfo.n()).toString());
                flag = -2;
                continue; /* Loop/switch isn't completed */
            }
            Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append(CodeInfo.a()).append("checktime :").append(testtime.b()).toString());
            if(byte0 != 0)
            {
                flag = true;
                continue; /* Loop/switch isn't completed */
            }
        } else
        {
            Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append("Sync Update file:").append(voiceinfo.h()).append(" stat:").append(voiceinfo.o()).toString());
            if(!a(voiceinfo))
            {
                flag = -44;
                continue; /* Loop/switch isn't completed */
            }
            if(byte0 != 0)
            {
                b(voiceinfo);
                flag = true;
                continue; /* Loop/switch isn't completed */
            }
        }
        if(voiceinfo1 != null && voiceinfo1.m() == voiceinfo.n())
        {
            b(voiceinfo1.h(), voiceinfo1.m());
            Log.b("MicroMsg.VoiceLogic", (new StringBuilder()).append("Sync TotalLen not Change (send endflag but TotoalLen == FileLen) :").append(voiceinfo1.h()).toString());
        }
        MMCore.i().a();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static boolean a(int k)
    {
        boolean flag;
        MsgInfo msginfo;
        flag = false;
        msginfo = MMCore.f().i().a(k);
        break MISSING_BLOCK_LABEL_14;
        while(true) 
        {
            do
                return flag;
            while(msginfo == null || msginfo.b() == 0L || msginfo.j() == null || Util.i(msginfo.j()));
            VoiceInfo voiceinfo = j(msginfo.j());
            if(voiceinfo != null && !Util.i(voiceinfo.h()))
            {
                String s = e(msginfo.h());
                if(!Util.i(s) && FilesCopy.a(d(msginfo.j()), d(s), flag))
                {
                    a(s, voiceinfo.g());
                    MMCore.i().a();
                    flag = true;
                }
            }
        }
    }

    public static boolean a(VoiceInfo voiceinfo)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(voiceinfo != null && voiceinfo.c() != -1)
            flag = MMCore.f().o().a(voiceinfo.h(), voiceinfo);
        return flag;
    }

    public static boolean a(String s)
    {
        boolean flag = false;
        if(s != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        VoiceInfo voiceinfo = j(s);
        if(voiceinfo != null && voiceinfo.r() < 80)
        {
            voiceinfo.i(1 + voiceinfo.r());
            voiceinfo.a(8192);
            flag = a(voiceinfo);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static boolean a(String s, int k)
    {
        boolean flag = false;
        if(s != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append("StopRecord fileName[").append(s).append("]").toString());
        VoiceInfo voiceinfo = j(s);
        if(voiceinfo != null)
        {
            if(voiceinfo.o() != 97)
                voiceinfo.h(3);
            else
                voiceinfo.h(97);
            voiceinfo.g(AmrFileOperator.a(d(s)));
            if(voiceinfo.n() <= 0)
            {
                i(s);
            } else
            {
                voiceinfo.b(System.currentTimeMillis() / 1000L);
                voiceinfo.c(k);
                voiceinfo.a(3424);
                MsgInfo msginfo = new MsgInfo();
                msginfo.a(voiceinfo.i());
                msginfo.c(34);
                msginfo.e(1);
                msginfo.c(s);
                if(voiceinfo.o() != 97)
                {
                    msginfo.d(1);
                } else
                {
                    msginfo.d(2);
                    msginfo.b(com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent.a(voiceinfo.e(), voiceinfo.g(), flag));
                }
                msginfo.b(MsgInfoStorageLogic.c(voiceinfo.i()));
                voiceinfo.b((int)MsgInfoStorageLogic.b(msginfo));
                flag = a(voiceinfo);
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static int b(String s, int k)
    {
        byte byte0 = -1;
        if(s != null) goto _L2; else goto _L1
_L1:
        return byte0;
_L2:
        VoiceInfo voiceinfo = j(s);
        if(voiceinfo != null)
        {
            voiceinfo.f(k);
            voiceinfo.b(System.currentTimeMillis() / 1000L);
            voiceinfo.a(272);
            byte0 = 0;
            if(voiceinfo.n() > 0 && k >= voiceinfo.n())
            {
                b(voiceinfo);
                voiceinfo.h(99);
                voiceinfo.a(0x40 | voiceinfo.c());
                Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append("END!!! updateRecv  file:").append(s).append(" newsize:").append(k).append(" total:").append(voiceinfo.n()).append(" status:").append(voiceinfo.o()).append(" netTimes:").append(voiceinfo.r()).toString());
                byte0 = 1;
                c(s);
            }
            Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append("updateRecv file:").append(s).append(" newsize:").append(k).append(" total:").append(voiceinfo.n()).append(" status:").append(voiceinfo.o()).toString());
            if(!a(voiceinfo))
                byte0 = -3;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static AmrFileOperator b(String s)
    {
        return MMCore.f().o().c(d(s));
    }

    private static boolean b(VoiceInfo voiceinfo)
    {
        MsgInfo msginfo = new MsgInfo();
        msginfo.b(voiceinfo.k());
        msginfo.b(com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent.a(voiceinfo.e(), voiceinfo.g(), false));
        Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append("set msg content :").append(msginfo.i()).toString());
        msginfo.a(256);
        msginfo.a(voiceinfo.i());
        MMCore.f().i().a(voiceinfo.k(), msginfo);
        return true;
    }

    public static void c(String s)
    {
        MMCore.f().o().d(d(s));
    }

    public static String d(String s)
    {
        String s1 = (new StringBuilder()).append(MMCore.f().o().a()).append(s).toString();
        if(!(new File(s1)).exists())
            s1 = (new StringBuilder()).append(s1).append(".amr").toString();
        return s1;
    }

    public static String e(String s)
    {
        String s1 = VoiceStorage.a(ConfigStorageLogic.b());
        VoiceInfo voiceinfo = new VoiceInfo();
        voiceinfo.b(s1);
        voiceinfo.c(s);
        voiceinfo.a(System.currentTimeMillis() / 1000L);
        voiceinfo.d(s1);
        voiceinfo.b(System.currentTimeMillis() / 1000L);
        voiceinfo.h(1);
        voiceinfo.a(ConfigStorageLogic.b());
        voiceinfo.a(-1);
        if(!MMCore.f().o().a(voiceinfo))
            s1 = null;
        return s1;
    }

    public static boolean f(String s)
    {
        boolean flag;
        if(s == null)
        {
            flag = false;
        } else
        {
            VoiceInfo voiceinfo = j(s);
            if(voiceinfo == null)
            {
                Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append("cancel null download : ").append(s).toString());
                flag = true;
            } else
            {
                Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append("cancel download : ").append(s).append(" SvrlId:").append(voiceinfo.k()).toString());
                if(voiceinfo.k() != 0)
                    MMCore.f().i().c(voiceinfo.i(), voiceinfo.k());
                flag = h(s);
            }
        }
        return flag;
    }

    public static boolean g(String s)
    {
        boolean flag;
        if(s == null)
        {
            flag = false;
        } else
        {
            VoiceInfo voiceinfo = j(s);
            if(voiceinfo == null)
            {
                Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append("cancel null record : ").append(s).toString());
                flag = true;
            } else
            {
                Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append("cancel record : ").append(s).append(" LocalId:").append(voiceinfo.f()).toString());
                if(voiceinfo.f() != 0)
                    MMCore.f().i().b(voiceinfo.f());
                flag = h(s);
            }
        }
        return flag;
    }

    public static boolean h(String s)
    {
        boolean flag;
        if(s == null)
        {
            flag = false;
        } else
        {
            MMCore.f().o().e(s);
            c(s);
            flag = (new File(d(s))).delete();
        }
        return flag;
    }

    public static boolean i(String s)
    {
        boolean flag = false;
        if(s != null)
        {
            VoiceInfo voiceinfo = j(s);
            if(voiceinfo == null)
            {
                Log.a("MicroMsg.VoiceLogic", (new StringBuilder()).append("Set error failed file:").append(s).toString());
            } else
            {
                voiceinfo.h(98);
                voiceinfo.b(System.currentTimeMillis() / 1000L);
                voiceinfo.a(320);
                flag = a(voiceinfo);
                Log.d("MicroMsg.VoiceLogic", (new StringBuilder()).append("setError file:").append(s).append(" msgid:").append(voiceinfo.f()).append(" old stat:").append(voiceinfo.o()).toString());
                if(voiceinfo == null)
                    Log.a("MicroMsg.VoiceLogic", "setError failed msg null");
                else
                if(voiceinfo.f() == 0 || Util.i(voiceinfo.i()))
                {
                    Log.a("MicroMsg.VoiceLogic", (new StringBuilder()).append("setError failed msg id:").append(voiceinfo.f()).append(" user:").append(voiceinfo.i()).toString());
                } else
                {
                    MsgInfo msginfo = new MsgInfo();
                    msginfo.a(voiceinfo.f());
                    msginfo.d(5);
                    msginfo.a(voiceinfo.i());
                    msginfo.b(com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent.a(voiceinfo.e(), -1L, true));
                    msginfo.a(264);
                    MMCore.f().i().a(msginfo.b(), msginfo);
                }
            }
        }
        return flag;
    }

    public static VoiceInfo j(String s)
    {
        return MMCore.f().o().f(s);
    }
}
