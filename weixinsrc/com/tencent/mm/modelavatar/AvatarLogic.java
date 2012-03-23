// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelavatar;

import android.content.Context;
import android.graphics.Bitmap;
import com.tencent.mm.algorithm.UIN;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.storage.ContactStorage;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelavatar:
//            ImgFlagStorage, ImgFlag, AvatarStorage

public final class AvatarLogic
{

    private AvatarLogic()
    {
    }

    public static Bitmap a(long l1)
    {
        return n(b(l1));
    }

    public static Bitmap a(Bitmap bitmap, int i1)
    {
        Bitmap bitmap1 = null;
        if(bitmap != null)
        {
            int j1 = bitmap.getWidth();
            int k1 = bitmap.getHeight();
            if(j1 - i1 * 2 > 0 && k1 - i1 * 2 > 0)
                bitmap1 = Bitmap.createBitmap(bitmap, i1, i1, j1 - i1 * 2, k1 - i1 * 2, bitmap1, false);
            else
                bitmap1 = bitmap;
        }
        return bitmap1;
    }

    public static void a()
    {
        b = 0;
        c.a();
    }

    public static void a(Runnable runnable)
    {
        if(MMCore.f().b()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        List list = MMCore.f().B().b();
        a = list;
        if(list != null && a.size() > 0)
        {
            c.a(runnable);
            c.a(10L);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static void a(String s)
    {
        a((new StringBuilder()).append(s).append("@fb").toString(), 3);
    }

    public static boolean a(long l1, int i1)
    {
        boolean flag;
        if(i1 != 3)
            flag = false;
        else
            flag = e(b(l1));
        return flag;
    }

    public static boolean a(String s, int i1)
    {
        ImgFlag imgflag = new ImgFlag();
        imgflag.a(s);
        imgflag.b(i1);
        imgflag.a(3);
        return MMCore.f().B().a(imgflag);
    }

    public static boolean a(String s, boolean flag)
    {
        boolean flag1;
        if(Util.i(s))
        {
            flag1 = false;
        } else
        {
            ImgFlag imgflag = new ImgFlag();
            imgflag.a(s);
            imgflag.a(flag);
            imgflag.a(32);
            if(flag)
            {
                imgflag.b(3);
                imgflag.a(34);
            }
            flag1 = MMCore.f().B().a(imgflag);
        }
        return flag1;
    }

    public static Bitmap b(String s)
    {
        return n((new StringBuilder()).append(s).append("@fb").toString());
    }

    private static String b(long l1)
    {
        return (new StringBuilder()).append(new UIN(l1)).append("@qqim").toString();
    }

    static List b()
    {
        return a;
    }

    static int c()
    {
        return b;
    }

    public static long c(String s)
    {
        long l1 = -1L;
        if(ContactStorageLogic.s(s)) goto _L2; else goto _L1
_L1:
        return l1;
_L2:
        String as[] = s.split("@");
        long l2 = Long.parseLong(as[0]);
        l1 = l2;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    static int d()
    {
        b = 0;
        return 0;
    }

    public static long d(String s)
    {
        long l1 = -1L;
        if(ContactStorageLogic.r(s)) goto _L2; else goto _L1
_L1:
        return l1;
_L2:
        String as[] = s.split("@");
        long l2 = Long.parseLong(as[0]);
        l1 = l2;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    static int e()
    {
        int i1 = b;
        b = i1 + 1;
        return i1;
    }

    public static boolean e(String s)
    {
        boolean flag = false;
        if(s == null)
            Log.b("MicroMsg.AvatarLogic", "setQQAvatarImgFlag failed : invalid username");
        else
        if(!s.endsWith("@qqim"))
        {
            Log.b("MicroMsg.AvatarLogic", "setQQAvatarImgFlag failed : invalid username");
        } else
        {
            ImgFlag imgflag = new ImgFlag();
            imgflag.a(s);
            imgflag.b(3);
            imgflag.a(3);
            flag = MMCore.f().B().a(imgflag);
        }
        return flag;
    }

    public static boolean f(String s)
    {
        boolean flag = false;
        if(s == null)
            Log.b("MicroMsg.AvatarLogic", "setMBAvatarImgFlag failed : invalid username");
        else
        if(!s.endsWith("@t.qq.com"))
        {
            Log.b("MicroMsg.AvatarLogic", "setMBAvatarImgFlag failed : invalid username");
        } else
        {
            ImgFlag imgflag = new ImgFlag();
            imgflag.a(s);
            imgflag.b(3);
            imgflag.a(3);
            flag = MMCore.f().B().a(imgflag);
        }
        return flag;
    }

    public static boolean g(String s)
    {
        boolean flag = false;
        if(!Util.i(s)) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        ImgFlag imgflag = MMCore.f().B().a(s);
        if(imgflag == null)
            flag = true;
        else
        if(imgflag == null || imgflag.e())
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static Bitmap h(String s)
    {
        return AvatarStorage.a(a(n(s), 2));
    }

    public static Bitmap i(String s)
    {
        return n(s);
    }

    public static Bitmap j(String s)
    {
        return n(s);
    }

    public static void k(String s)
    {
        if(o(s))
            MMCore.f().v().b(s);
    }

    public static boolean l(String s)
    {
        boolean flag;
        if(n(s) != null)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean m(String s)
    {
        boolean flag = false;
        if(o(s)) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        ImgFlag imgflag = MMCore.f().B().a(s);
        if(imgflag != null)
        {
            if(imgflag.d() == 2)
                flag = true;
            else
            if(imgflag.d() == 3 && !MMCore.f().y().a(s))
                flag = true;
        } else
        {
            Contact contact = MMCore.f().h().c(s);
            if(contact != null && contact.s().equals(s))
            {
                a(s, contact.I());
                if(contact.I() != 4 && !MMCore.f().y().a(s))
                    flag = true;
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static Bitmap n(String s)
    {
        Bitmap bitmap = null;
        if(o(s)) goto _L2; else goto _L1
_L1:
        return bitmap;
_L2:
        if(!MMCore.f().c())
        {
            if(MMCore.c() != null && MMCore.c().getResources() != null)
                bitmap = MMCore.f().y().a(MMCore.c().getResources());
        } else
        {
            if(ContactStorageLogic.t(s))
                s = ContactStorageLogic.u(s);
            bitmap = MMCore.f().y().b(s);
            if(bitmap == null)
            {
                Log.d("MicroMsg.AvatarLogic", (new StringBuilder()).append("getting head image: ").append(s).toString());
                MMCore.f().v().a(s);
            }
            ImgFlag imgflag = MMCore.f().B().a(s);
            if(imgflag != null && imgflag.d() == 2)
                MMCore.f().v().a(s);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static boolean o(String s)
    {
        boolean flag;
        if(s != null && s.length() > 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    private static List a = null;
    private static int b = 0;
    private static RemoveOldAvatarPusher c = new RemoveOldAvatarPusher(new RemoveOldCallBack());


    private class RemoveOldAvatarPusher extends MTimerHandler
    {

        protected final void a(Runnable runnable)
        {
            a.a(runnable);
        }

        private final RemoveOldCallBack a;

        public RemoveOldAvatarPusher(RemoveOldCallBack removeoldcallback)
        {
            super(removeoldcallback, true);
            a = removeoldcallback;
        }
    }


    private class AvatarSerivce
        implements IOnSceneEnd
    {

        static void a(AvatarSerivce avatarserivce)
        {
            avatarserivce.d();
        }

        public static void b()
        {
            NetSceneBatchGetHeadImg.a(true);
        }

        public static void c()
        {
            NetSceneBatchGetHeadImg.a(false);
        }

        private void d()
        {
            long l1 = Util.c();
            if(a && l1 - c > 300L)
                a = false;
            if(!a && AvatarUserManager.a().size() > 0)
            {
                c = l1;
                a = true;
                d = new NetSceneBatchGetHeadImg();
                MMCore.g().b(d);
            }
        }

        public final void a()
        {
            if(d != null)
                MMCore.g().a(d);
            AvatarUserManager.b();
            a = false;
        }

        public final void a(int i1, int j1, String s, NetSceneBase netscenebase)
        {
            if(netscenebase.b() == 19) goto _L2; else goto _L1
_L1:
            return;
_L2:
            d = null;
            a = false;
            if(AvatarUserManager.a().size() > 0)
                d();
            if(true) goto _L1; else goto _L3
_L3:
        }

        public final void a(String s)
        {
            Log.d("MicroMsg.AvatarLogic", (new StringBuilder()).append("avatar service push :").append(s).toString());
            AvatarUserManager.a().push(s);
            if(AvatarUserManager.a().size() > 5)
                d();
            else
                b.a(1000L);
        }

        public final void b(String s)
        {
            Log.d("MicroMsg.AvatarLogic", (new StringBuilder()).append("avatar service pushHighPriority :").append(s).toString());
            AvatarUserManager.a().push(s);
            d();
        }

        protected void finalize()
        {
            MMCore.g().b(19, this);
            super.finalize();
        }

        private static boolean a = false;
        private static long c = 0L;
        private MTimerHandler b;
        private NetSceneBatchGetHeadImg d;


        public AvatarSerivce()
        {
            class _cls1
                implements com.tencent.mm.platformtools.MTimerHandler.CallBack
            {

                public final boolean a()
                {
                    AvatarSerivce.a(a);
                    return false;
                }

                private AvatarSerivce a;

                _cls1()
                {
                    a = AvatarSerivce.this;
                    super();
                }
            }

            b = new MTimerHandler(new _cls1(), false);
            d = null;
            MMCore.g().a(19, this);
            AvatarUserManager.c();
            a = false;
        }
    }


    private class RemoveOldCallBack
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        protected final void a(Runnable runnable)
        {
            a = runnable;
        }

        public final boolean a()
        {
            int i1 = AvatarLogic.b().size();
            Log.a("MicroMsg.AvatarLogic", (new StringBuilder()).append("RemoveOldAvatar left count:").append(i1).toString());
            boolean flag;
            if(i1 <= 2000 || AvatarLogic.c() >= 300)
            {
                if(a != null)
                    a.run();
                AvatarLogic.d();
                flag = false;
            } else
            {
                int j1 = MMCore.f().e().b();
                for(int k1 = i1 + -1; k1 >= i1 + -30; k1--)
                {
                    AvatarLogic.e();
                    String s = (String)AvatarLogic.b().get(k1);
                    AvatarLogic.b().remove(k1);
                    MMCore.f().y().b(s, false);
                    MMCore.f().y().b(s, true);
                    MMCore.f().B().c(s);
                }

                MMCore.f().e().b(j1);
                MMCore.f().e().a(j1);
                flag = true;
            }
            return flag;
        }

        private Runnable a;

        RemoveOldCallBack()
        {
        }
    }

}
