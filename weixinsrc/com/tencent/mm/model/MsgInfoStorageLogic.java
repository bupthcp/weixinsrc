// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import android.content.Context;
import android.database.Cursor;
import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.modelimage.ImgInfoStorage;
import com.tencent.mm.modelvideo.VideoInfoStorage;
import com.tencent.mm.modelvoice.VoiceLogic;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.model:
//            MMCore, AccountStorage, ContactStorageLogic, ConfigStorageLogic

public final class MsgInfoStorageLogic
{

    private MsgInfoStorageLogic()
    {
    }

    public static float a(MsgInfo msginfo)
    {
        boolean flag;
        float f1;
        if(msginfo != null && msginfo.k())
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        f1 = (float)(new VoiceContent(msginfo.i())).c() / 1000F;
        if(f1 < 1F)
            f1 = 1F;
        return (float)Math.round(f1 * 10F) / 10F;
    }

    public static int a(long l)
    {
        MsgInfo msginfo = MMCore.f().i().a(l);
        int i;
        if(msginfo == null || msginfo.b() != l)
        {
            i = 0;
        } else
        {
            f(msginfo);
            i = MMCore.f().i().b(l);
        }
        return i;
    }

    public static int a(String s)
    {
        int i = -1;
        if(s != null) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        int j = s.indexOf(':', 0);
        if(j != i)
            i = j;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static int a(String s, int i)
    {
        MsgInfo msginfo = MMCore.f().i().a(s, i);
        int j;
        if(msginfo == null || msginfo.c() != i)
        {
            j = 0;
        } else
        {
            f(msginfo);
            j = MMCore.f().i().c(s, i);
        }
        return j;
    }

    public static long a(String s, long l)
    {
        long l1 = 0L;
        if(s != null)
        {
            MsgInfo msginfo = MMCore.f().i().c(s);
            if(msginfo != null)
                l1 = 1L + msginfo.g();
        }
        if(l1 <= l * 1000L)
            l1 = l * 1000L;
        return l1;
    }

    public static String a(int i, String s, String s1, int j, Context context)
    {
        String s2;
        String s5;
        s2 = null;
        boolean flag;
        boolean flag1;
        boolean flag2;
        if(context != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("context is null", flag);
        if(s != null && s.length() > 0)
            flag1 = true;
        else
            flag1 = false;
        Assert.assertTrue("username is null", flag1);
        j;
        JVM INSTR lookupswitch 15: default 172
    //                   3: 244
    //                   11: 321
    //                   13: 298
    //                   23: 244
    //                   33: 244
    //                   34: 339
    //                   35: 905
    //                   36: 321
    //                   37: 595
    //                   39: 298
    //                   40: 832
    //                   42: 968
    //                   43: 467
    //                   47: 256
    //                   48: 1126;
           goto _L1 _L2 _L3 _L4 _L2 _L2 _L5 _L6 _L3 _L7 _L4 _L8 _L9 _L10 _L11 _L12
_L1:
        s5 = "";
_L15:
        if(!ContactStorageLogic.o(s)) goto _L14; else goto _L13
_L13:
        flag2 = ConfigStorageLogic.j();
        long l = Util.a((Long)MMCore.f().f().a(0x10101), 0L);
        String s4;
        Object aobj[];
        int i1;
        com.tencent.mm.storage.MsgInfo.FriendContent friendcontent;
        String s11;
        Object aobj2[];
        Object aobj3[];
        int j1;
        com.tencent.mm.storage.MsgInfo.MailContent mailcontent;
        Object aobj4[];
        com.tencent.mm.storage.MsgInfo.FriendContent friendcontent1;
        Object aobj5[];
        com.tencent.mm.storage.MsgInfo.VerifyContent verifycontent;
        Object aobj6[];
        Object aobj7[];
        Object aobj8[];
        Object aobj9[];
        VideoContent videocontent;
        VoiceContent voicecontent;
        EmojiContent emojicontent;
        if(!flag2)
            s1 = context.getString(0x7f0a019f);
        else
        if(l == 0L)
            s1 = context.getString(0x7f0a009a);
        else
        if(1000L * Util.d(l) > 0x48190800L)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = Long.valueOf((1000L * Util.d(l)) / 0x5265c00L);
            s1 = context.getString(0x7f0a0099, aobj1);
        }
_L36:
        s2 = Util.h(s1);
_L31:
        return s2;
_L2:
        s5 = context.getString(0x7f0a0022);
          goto _L15
_L11:
        emojicontent = EmojiContent.a(s1);
        s1 = (new StringBuilder()).append(emojicontent.b()).append(": ").toString();
        s5 = context.getString(0x7f0a0025);
          goto _L15
_L4:
        s1 = a(context, i, s, s1, context.getString(0x7f0a0022));
        s5 = "";
          goto _L15
_L3:
        s1 = a(context, i, s, s1, s2);
        s5 = "";
          goto _L15
_L5:
        if(ContactStorageLogic.p(s) || ContactStorageLogic.r(s) || ContactStorageLogic.i(s) || ContactStorageLogic.k(s))
        {
            s1 = a(context, i, s, s1, context.getString(0x7f0a0023));
            s5 = "";
        } else
        {
            if(s1 != null && s1.length() > 0 && !ContactStorageLogic.j(s))
                if(ContactStorageLogic.b(s))
                {
                    voicecontent = new VoiceContent(s1);
                    s1 = (new StringBuilder()).append(voicecontent.b()).append(": ").toString();
                } else
                {
                    s1 = "";
                }
            s5 = context.getString(0x7f0a0023);
        }
          goto _L15
_L10:
        if(ContactStorageLogic.p(s) || ContactStorageLogic.r(s) || ContactStorageLogic.i(s) || ContactStorageLogic.k(s))
        {
            s1 = a(context, i, s, s1, context.getString(0x7f0a0024));
            s5 = "";
        } else
        {
            if(s1 != null && s1.length() > 0 && !ContactStorageLogic.j(s))
                if(ContactStorageLogic.b(s))
                {
                    videocontent = new VideoContent(s1);
                    s1 = (new StringBuilder()).append(videocontent.a()).append(": ").toString();
                } else
                {
                    s1 = "";
                }
            s5 = context.getString(0x7f0a0024);
        }
          goto _L15
_L7:
        if(s1 == null || s1.length() <= 0) goto _L1; else goto _L16
_L16:
        verifycontent = com.tencent.mm.storage.MsgInfo.VerifyContent.a(s1);
        if(verifycontent == null || verifycontent.a() == null || verifycontent.a().length() <= 0) goto _L18; else goto _L17
_L17:
        verifycontent.h();
        JVM INSTR tableswitch 18 29: default 704
    //                   18 736
    //                   19 704
    //                   20 704
    //                   21 704
    //                   22 768
    //                   23 768
    //                   24 768
    //                   25 800
    //                   26 768
    //                   27 768
    //                   28 768
    //                   29 768;
           goto _L19 _L20 _L19 _L19 _L19 _L21 _L21 _L21 _L22 _L21 _L21 _L21 _L21
_L19:
        aobj9 = new Object[1];
        aobj9[0] = verifycontent.c();
        s1 = context.getString(0x7f0a009f, aobj9);
_L18:
        s5 = "";
          goto _L15
_L20:
        aobj8 = new Object[1];
        aobj8[0] = verifycontent.c();
        s1 = context.getString(0x7f0a00a0, aobj8);
        s5 = "";
          goto _L15
_L21:
        aobj7 = new Object[1];
        aobj7[0] = verifycontent.c();
        s1 = context.getString(0x7f0a00a1, aobj7);
        s5 = "";
          goto _L15
_L22:
        aobj6 = new Object[1];
        aobj6[0] = verifycontent.c();
        s1 = context.getString(0x7f0a00a2, aobj6);
        s5 = "";
          goto _L15
_L8:
        if(s1 == null || s1.length() <= 0) goto _L1; else goto _L23
_L23:
        friendcontent1 = com.tencent.mm.storage.MsgInfo.FriendContent.a(s1);
        if(friendcontent1 != null && friendcontent1.a() != null && friendcontent1.a().length() > 0)
        {
            aobj5 = new Object[1];
            aobj5[0] = friendcontent1.c();
            s1 = context.getString(0x7f0a00a3, aobj5);
        }
        s5 = "";
          goto _L15
_L6:
        if(Util.h(s1).length() <= 0) goto _L1; else goto _L24
_L24:
        mailcontent = MMCore.f().i().l(s1);
        aobj4 = new Object[2];
        aobj4[0] = mailcontent.c();
        aobj4[1] = mailcontent.a();
        s1 = context.getString(0x7f0a0098, aobj4);
        s5 = "";
          goto _L15
_L9:
        if(Util.h(s1).length() <= 0) goto _L1; else goto _L25
_L25:
        String s10;
        if(ContactStorageLogic.b(s))
        {
            j1 = a(s1);
            String s3;
            int k;
            String s6;
            String s7;
            String as[];
            String s8;
            String s9;
            String as1[];
            Contact contact;
            String as2[];
            if(j1 != -1)
                s10 = s1.substring(0, j1).trim();
            else
                s10 = s;
            s1 = b(s1);
        } else
        {
            s10 = s;
        }
        friendcontent = MMCore.f().i().n(s1);
        s11 = MMCore.f().h().c(s10).A();
        if(i == 1)
        {
            aobj3 = new Object[2];
            aobj3[0] = s11;
            aobj3[1] = friendcontent.a();
            s1 = context.getString(0x7f0a00a8, aobj3);
            s5 = "";
        } else
        {
            aobj2 = new Object[2];
            aobj2[0] = s11;
            aobj2[1] = friendcontent.a();
            s1 = context.getString(0x7f0a00a7, aobj2);
            s5 = "";
        }
          goto _L15
_L12:
        if(Util.h(s1).length() <= 0) goto _L1; else goto _L26
_L26:
        if(ContactStorageLogic.b(s))
        {
            i1 = a(s1);
            if(i1 != -1)
                s3 = s1.substring(0, i1).trim();
            else
                s3 = s;
            b(s1);
        } else
        {
            s3 = s;
        }
        s4 = MMCore.f().h().c(s3).A();
        if(i == 1)
        {
            s1 = context.getString(0x7f0a0184);
            s5 = "";
        } else
        {
            aobj = new Object[1];
            aobj[0] = s4;
            s1 = context.getString(0x7f0a0185, aobj);
            s5 = "";
        }
          goto _L15
_L14:
        if(!ContactStorageLogic.j(s)) goto _L28; else goto _L27
_L27:
        if(1 != i) goto _L30; else goto _L29
_L29:
        if(!Util.i(s5))
        {
            s2 = s5;
        } else
        {
            as2 = s1.split("@bottle:");
            if(as2.length > 1)
                s2 = as2[1];
        }
          goto _L31
_L30:
        as = s1.split(":");
        if(as == null || as.length <= 0) goto _L31; else goto _L32
_L32:
        s8 = as[0];
        if(Util.i(s8)) goto _L34; else goto _L33
_L33:
        contact = MMCore.f().h().c(s8);
        if(contact == null || contact.M() == null) goto _L34; else goto _L35
_L35:
        s9 = contact.M();
_L37:
        if(!Util.i(s5))
        {
            s2 = (new StringBuilder()).append(s9).append(": ").append(s5).toString();
        } else
        {
            as1 = s1.split("@bottle:");
            if(as1.length > 1)
                s2 = (new StringBuilder()).append(s9).append(": ").append(as1[1]).toString();
            else
                s2 = s9;
        }
          goto _L31
_L28:
        if(ContactStorageLogic.b(s))
        {
            k = a(s1);
            if(k != -1)
            {
                s6 = s1.substring(0, k).trim();
                s7 = ContactStorageLogic.e(s6);
                if(s7 != null && s7.length() > 0)
                    s1 = s1.replace(s6, s7);
            }
            if(s5 != null && s5.length() > 0)
                if(i == 1)
                    s1 = s5;
                else
                    s1 = (new StringBuilder()).append(s1).append(s5).toString();
        } else
        if(s5 != null && s5.length() > 0)
            s1 = s5;
          goto _L36
_L34:
        s9 = s2;
          goto _L37
    }

    private static String a(Context context, int i, String s, String s1, String s2)
    {
        int j = 0x7f0a00a4;
        if(!ContactStorageLogic.i(s) || ConfigStorageLogic.i()) goto _L2; else goto _L1
_L1:
        s1 = context.getString(0x7f0a019f);
_L8:
        return s1;
_L2:
        String s3;
        if(ContactStorageLogic.k(s) && !ConfigStorageLogic.g())
        {
            s1 = context.getString(0x7f0a019f);
            continue; /* Loop/switch isn't completed */
        }
        s3 = "";
        if(!ContactStorageLogic.i(s) && !ContactStorageLogic.k(s)) goto _L4; else goto _L3
_L3:
        if(s1 != null)
        {
            int k = s1.indexOf(":");
            if(k >= 0 && k < s1.length())
            {
                String s4 = s1.substring(0, k);
                if(ContactStorageLogic.p(s4) || ContactStorageLogic.r(s4))
                {
                    s3 = ContactStorageLogic.e(s4);
                    s1 = s1.substring(k + 1);
                }
            }
        }
_L6:
        StringBuilder stringbuilder2;
        Object aobj1[];
        StringBuilder stringbuilder3;
        if(Util.h(s3).length() <= 0)
        {
            if(s2 != null)
                s1 = s2;
        } else
        {
            StringBuilder stringbuilder = new StringBuilder();
            Object aobj[];
            StringBuilder stringbuilder1;
            if(i != 1)
                j = 0x7f0a00a5;
            aobj = new Object[1];
            aobj[0] = s3;
            stringbuilder1 = stringbuilder.append(context.getString(j, aobj));
            if(s2 != null)
                s1 = s2;
            s1 = stringbuilder1.append(s1).toString();
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if(!ContactStorageLogic.p(s) && !ContactStorageLogic.r(s)) goto _L6; else goto _L5
_L5:
        ContactStorageLogic.e(s);
        if(i == 1)
        {
            stringbuilder2 = new StringBuilder();
            aobj1 = new Object[1];
            aobj1[0] = "";
            stringbuilder3 = stringbuilder2.append(context.getString(j, aobj1));
            if(s2 != null)
                s1 = s2;
            s1 = stringbuilder3.append(s1).toString();
        } else
        if(s2 != null)
            s1 = s2;
        if(true) goto _L8; else goto _L7
_L7:
    }

    public static void a()
    {
        MMCore.f().j().a();
        c();
        d();
        b();
        List list = MMCore.f().i().d("message");
        if(list != null)
        {
            for(int i = 0; i < list.size(); i++)
                f((MsgInfo)list.get(i));

        }
        MMCore.f().i().e("message");
    }

    public static void a(String s, List list)
    {
        MsgInfo msginfo = new MsgInfo();
        msginfo.a(s);
        msginfo.c(10000);
        msginfo.b(System.currentTimeMillis());
        msginfo.d(4);
        StringBuffer stringbuffer = new StringBuffer();
        String s1 = ConfigStorageLogic.b();
        Iterator iterator = list.iterator();
        do
        {
            if(!iterator.hasNext())
                break;
            String s2 = (String)iterator.next();
            if(!s2.equals(s1))
                stringbuffer.append((new StringBuilder()).append(s2).append("\u3001").toString());
        } while(true);
        if(stringbuffer.length() > 0)
            stringbuffer.deleteCharAt(stringbuffer.lastIndexOf("\u3001"));
        Context context = MMCore.c();
        Object aobj[] = new Object[1];
        aobj[0] = stringbuffer;
        msginfo.b(context.getString(0x7f0a035f, aobj));
        MMCore.f().i().a(msginfo);
    }

    public static void a(boolean flag, String s)
    {
        byte byte0 = 3;
        MsgInfo msginfo = MMCore.f().i().c("qqsync");
        if(msginfo == null || msginfo.b() == 0L)
        {
            msginfo.a("qqsync");
            if(!flag)
                byte0 = 4;
            msginfo.d(byte0);
            msginfo.c(1);
            if(s == null)
                s = "";
            msginfo.b(s);
            msginfo.b(Util.d());
            msginfo.a(-2);
            MMCore.f().i().a(msginfo);
            Log.c("MicroMsg.MsgInfoStorageLogic", "qqsync reminder new");
        } else
        {
            msginfo.a("qqsync");
            if(!flag)
                byte0 = 4;
            msginfo.d(byte0);
            msginfo.c(1);
            if(s != null)
                msginfo.b(s);
            msginfo.b(Util.d());
            msginfo.a(-2);
            MMCore.f().i().a(msginfo.b(), msginfo);
            Log.c("MicroMsg.MsgInfoStorageLogic", "qqsync reminder updated");
        }
    }

    public static int b(String s, int i)
    {
        Cursor cursor = MMCore.f().i().e(s, i);
        if(cursor.moveToFirst())
            for(; !cursor.isAfterLast(); cursor.moveToNext())
            {
                MsgInfo msginfo = new MsgInfo();
                msginfo.a(cursor);
                f(msginfo);
            }

        cursor.close();
        return MMCore.f().i().d(s, i);
    }

    public static long b(MsgInfo msginfo)
    {
        Contact contact = MMCore.f().h().c(msginfo.h());
        if(contact == null || contact.o() == 0)
            MMCore.f().h().c(new Contact(msginfo.h()));
        return MMCore.f().i().a(msginfo);
    }

    public static String b(String s)
    {
        int i;
        i = a(s);
        break MISSING_BLOCK_LABEL_5;
        if(i != -1 && i + 2 < s.length())
            s = s.substring(i + 2);
        return s;
    }

    public static void b()
    {
        List list = MMCore.f().i().d("bottlemessage");
        if(list != null)
        {
            for(int i = 0; i < list.size(); i++)
                f((MsgInfo)list.get(i));

        }
        MMCore.f().i().e("bottlemessage");
    }

    public static long c(String s)
    {
        long l = System.currentTimeMillis();
        if(s != null)
        {
            MsgInfo msginfo = MMCore.f().i().c(s);
            if(msginfo != null && 1L + msginfo.g() > l)
                l = 1L + msginfo.g();
        }
        return l;
    }

    public static void c()
    {
        List list = MMCore.f().i().d("qmessage");
        if(list != null)
        {
            for(int i = 0; i < list.size(); i++)
                f((MsgInfo)list.get(i));

        }
        MMCore.f().i().e("qmessage");
    }

    public static boolean c(MsgInfo msginfo)
    {
        boolean flag;
        if(msginfo == null || !msginfo.k())
            flag = false;
        else
            flag = VoiceContent.a(new VoiceContent(msginfo.i()));
        return flag;
    }

    public static int d(String s)
    {
        Cursor cursor = MMCore.f().i().i(s);
        if(cursor.moveToFirst())
            for(; !cursor.isAfterLast(); cursor.moveToNext())
            {
                MsgInfo msginfo = new MsgInfo();
                msginfo.a(cursor);
                f(msginfo);
            }

        cursor.close();
        return MMCore.f().i().f(s);
    }

    public static void d()
    {
        List list = MMCore.f().i().d("tmessage");
        if(list != null)
        {
            for(int i = 0; i < list.size(); i++)
                f((MsgInfo)list.get(i));

        }
        MMCore.f().i().e("tmessage");
    }

    public static boolean d(MsgInfo msginfo)
    {
        boolean flag = true;
        if(msginfo != null && msginfo.k() && msginfo.f() != flag) goto _L2; else goto _L1
_L1:
        flag = false;
_L4:
        return flag;
_L2:
        if((new VoiceContent(msginfo.i())).c() != 0L)
            flag = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static void e(MsgInfo msginfo)
    {
        if(msginfo != null && msginfo.k()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        MsgInfo msginfo1 = MMCore.f().i().a(msginfo.b());
        if(msginfo1 != null && msginfo1.b() == msginfo.b())
        {
            VoiceContent voicecontent = new VoiceContent(msginfo1.i());
            if(!voicecontent.d())
            {
                voicecontent.e();
                msginfo.b(voicecontent.a());
                msginfo.a(256);
                MMCore.f().i().a(msginfo.b(), msginfo);
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static void f(MsgInfo msginfo)
    {
        if(msginfo != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(msginfo.d() == 34)
            VoiceLogic.h(msginfo.j());
        else
        if(msginfo.d() == 43)
        {
            String s = msginfo.j();
            if(!Util.i(s) && MMCore.f().p().b(s))
                try
                {
                    (new File(MMCore.f().p().e(s))).delete();
                    (new File(MMCore.f().p().d(s))).delete();
                }
                catch(Exception exception)
                {
                    Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("ERR: Delete file Failed").append(CodeInfo.a()).append(" file:").append(s).append(" msg:").append(exception.getMessage()).toString());
                }
        } else
        if(msginfo.d() == 3)
            MMCore.f().k().b(msginfo.j());
        if(true) goto _L1; else goto _L3
_L3:
    }

    private class VoiceContent
    {

        public static String a(String s, long l, boolean flag)
        {
            StringBuilder stringbuilder = (new StringBuilder()).append(s).append(":").append(l).append(":");
            int i;
            if(flag)
                i = 1;
            else
                i = 0;
            return stringbuilder.append(i).append("\n").toString();
        }

        static boolean a(VoiceContent voicecontent)
        {
            return voicecontent.c;
        }

        public final String a()
        {
            StringBuilder stringbuilder = (new StringBuilder()).append(b).append(":").append(a).append(":");
            int i;
            if(c)
                i = 1;
            else
                i = 0;
            return stringbuilder.append(i).append("\n").toString();
        }

        public final String b()
        {
            return b;
        }

        public final long c()
        {
            return a;
        }

        public final boolean d()
        {
            return c;
        }

        public final void e()
        {
            c = true;
        }

        private long a;
        private String b;
        private boolean c;

        public VoiceContent(String s)
        {
            String as[];
            if(s.endsWith("\n"))
                s = s.substring(0, -1 + s.length());
            as = s.split(":");
            int i;
            if(as.length != 4 || !ContactStorageLogic.t(as[0]))
                break MISSING_BLOCK_LABEL_142;
            i = 1;
_L2:
            if(as.length > i)
                b = as[i];
            if(as.length > i + 1)
                a = Long.parseLong(as[i + 1]);
            if(as.length > i + 2)
                c = as[i + 2].equals("1");
_L1:
            return;
            Exception exception;
            exception;
            b = "";
            c = false;
            a = 0L;
            Log.a("MicroMsg.MsgInfoStorageLogic", "VoiceContent parse failed.");
              goto _L1
            i = 0;
              goto _L2
        }
    }


    private class EmojiContent extends VoiceContent
    {

        public static EmojiContent a(String s)
        {
            return new EmojiContent(s);
        }

        private EmojiContent(String s)
        {
            super(s);
        }
    }


    private class VideoContent
    {

        public static String a(String s, long l, boolean flag)
        {
            StringBuilder stringbuilder = (new StringBuilder()).append(s).append(":").append(l).append(":");
            int i;
            if(flag)
                i = 1;
            else
                i = 0;
            return stringbuilder.append(i).append("\n").toString();
        }

        public final String a()
        {
            return b;
        }

        private long a;
        private String b;
        private boolean c;

        public VideoContent(String s)
        {
            String as[];
            if(s.endsWith("\n"))
                s = s.substring(0, -1 + s.length());
            as = s.split(":");
            if(as.length > 0)
                b = as[0];
            if(as.length > 1)
                a = Long.parseLong(as[1]);
            if(as.length > 2)
                c = as[2].equals("1");
_L1:
            return;
            Exception exception;
            exception;
            b = "";
            c = false;
            a = 0L;
            Log.a("MicroMsg.MsgInfoStorageLogic", "VoiceContent parse failed.");
              goto _L1
        }
    }

}
