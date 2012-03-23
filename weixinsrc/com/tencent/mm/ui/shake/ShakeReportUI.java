// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.shake;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.os.*;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.*;
import android.widget.*;
import b.a.e;
import b.a.r;
import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelgetvuserinfo.SceneGetVUserInfo;
import com.tencent.mm.modelshake.*;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.chatting.SpanUtil;
import com.tencent.mm.ui.nearbyfriends.LBSManager;
import com.tencent.mm.ui.tools.CropImageUI;
import java.io.PrintStream;
import java.util.List;

// Referenced classes of package com.tencent.mm.ui.shake:
//            ShakeFriendsView, DraggerButton, ShakeManager, ScreenOnKeeper

public class ShakeReportUI extends MMActivity
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged, IOnSceneEnd
{

    public ShakeReportUI()
    {
        h = false;
        i = true;
        j = false;
        p = "";
        q = 0L;
        P = new MTimerHandler(new _cls1(), true);
        Q = new Handler();
        R = new _cls2();
        S = false;
        T = 0;
        U = 22;
        a = false;
        Y = null;
        Z = 0;
        aa = 0;
        ab = false;
    }

    static boolean A(ShakeReportUI shakereportui)
    {
        return shakereportui.i;
    }

    static void B(ShakeReportUI shakereportui)
    {
        shakereportui.k = new NetSceneShakeReport(shakereportui.c, shakereportui.b, shakereportui.e, shakereportui.d, shakereportui.f, shakereportui.g);
        MMCore.g().b(shakereportui.k);
        if(!shakereportui.h)
            shakereportui.n.a();
    }

    static View C(ShakeReportUI shakereportui)
    {
        return shakereportui.t;
    }

    static View D(ShakeReportUI shakereportui)
    {
        return shakereportui.A;
    }

    static View E(ShakeReportUI shakereportui)
    {
        return shakereportui.B;
    }

    static View F(ShakeReportUI shakereportui)
    {
        return shakereportui.D;
    }

    static void G(ShakeReportUI shakereportui)
    {
        shakereportui.h(1);
    }

    static boolean H(ShakeReportUI shakereportui)
    {
        return shakereportui.j;
    }

    static void I(ShakeReportUI shakereportui)
    {
        shakereportui.q();
    }

    static DraggerButton J(ShakeReportUI shakereportui)
    {
        return shakereportui.L;
    }

    static void K(ShakeReportUI shakereportui)
    {
        if(((android.widget.AbsoluteLayout.LayoutParams)shakereportui.M.getLayoutParams()).y <= shakereportui.aa / 2)
            shakereportui.q();
        else
            shakereportui.r();
    }

    static ShakeFriendsView L(ShakeReportUI shakereportui)
    {
        return shakereportui.N;
    }

    static void M(ShakeReportUI shakereportui)
    {
        if(shakereportui.N != null)
        {
            MMCore.f().I().e();
            Log.c("MicroMsg.ShakeFriendsView", "onAfterView");
            shakereportui.N.a(false);
        }
    }

    static float a(ShakeReportUI shakereportui, float f1)
    {
        shakereportui.b = f1;
        return f1;
    }

    static int a(ShakeReportUI shakereportui, int i1)
    {
        shakereportui.e = i1;
        return i1;
    }

    static long a(ShakeReportUI shakereportui, long l1)
    {
        shakereportui.q = l1;
        return l1;
    }

    static Dialog a(ShakeReportUI shakereportui, Dialog dialog)
    {
        shakereportui.r = dialog;
        return dialog;
    }

    static View a(ShakeReportUI shakereportui, View view)
    {
        shakereportui.w = view;
        return view;
    }

    static ImageView a(ShakeReportUI shakereportui, ImageView imageview)
    {
        shakereportui.u = imageview;
        return imageview;
    }

    static ProgressBar a(ShakeReportUI shakereportui, ProgressBar progressbar)
    {
        shakereportui.v = progressbar;
        return progressbar;
    }

    static NetSceneGetHDHeadImg a(ShakeReportUI shakereportui, NetSceneGetHDHeadImg netscenegethdheadimg)
    {
        shakereportui.m = netscenegethdheadimg;
        return netscenegethdheadimg;
    }

    static NetSceneShakeGet a(ShakeReportUI shakereportui, NetSceneShakeGet netsceneshakeget)
    {
        shakereportui.l = netsceneshakeget;
        return netsceneshakeget;
    }

    static String a(ShakeReportUI shakereportui, String s1)
    {
        shakereportui.f = s1;
        return s1;
    }

    private void a(Bitmap bitmap)
    {
        v.setVisibility(4);
        w.setVisibility(4);
        u.setImageBitmap(bitmap);
_L2:
        return;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    static void a(ShakeReportUI shakereportui)
    {
        shakereportui.findViewById(0x7f070270).setVisibility(0);
        shakereportui.L = (DraggerButton)shakereportui.findViewById(0x7f070272);
        shakereportui.L.setBackgroundResource(0x7f02028e);
        shakereportui.Z = b.a.e.a(shakereportui, 40F);
        shakereportui.M = (LinearLayout)shakereportui.findViewById(0x7f070271);
        shakereportui.aa = shakereportui.findViewById(0x7f070275).getTop();
        if(shakereportui.N == null)
            shakereportui.N = new ShakeFriendsView(shakereportui);
        ((LinearLayout)shakereportui.findViewById(0x7f070273)).addView(shakereportui.N);
        shakereportui.O = (TextView)shakereportui.findViewById(0x7f070274);
        if(shakereportui.N.e() <= 0)
            shakereportui.O.setVisibility(0);
        shakereportui.b(shakereportui.aa - shakereportui.Z);
        shakereportui.L.a(shakereportui. new _cls18());
        shakereportui.L.setOnTouchListener(shakereportui. new _cls19());
    }

    static void a(ShakeReportUI shakereportui, Bitmap bitmap)
    {
        shakereportui.a(bitmap);
    }

    private void a(String s1)
    {
        if(J == null)
            J = AnimationUtils.loadAnimation(c(), 0x7f040004);
        h(2);
        if(C == null)
            C = (TextView)findViewById(0x7f070269);
        if(s1 != null && s1.length() > 1)
            C.setText(s1);
        C.startAnimation(J);
        a = true;
        (new Handler()).postDelayed(new _cls13(), J.getDuration());
    }

    static boolean a(ShakeReportUI shakereportui, boolean flag)
    {
        shakereportui.S = flag;
        return flag;
    }

    static float b(ShakeReportUI shakereportui, float f1)
    {
        shakereportui.c = f1;
        return f1;
    }

    static int b(ShakeReportUI shakereportui, int i1)
    {
        shakereportui.d = i1;
        return i1;
    }

    static Handler b(ShakeReportUI shakereportui)
    {
        return shakereportui.Q;
    }

    static String b(ShakeReportUI shakereportui, String s1)
    {
        shakereportui.g = s1;
        return s1;
    }

    private void b()
    {
        S = true;
        Log.c("MicroMsg.ShakeReportUI", "tryStartShake");
        if(o != null && !o.a())
        {
            o.a(new _cls5());
            if(o.d() && D != null)
                ((TextView)D).setText(getString(0x7f0a03f0));
            else
                ((TextView)D).setText(getString(0x7f0a03f3));
        }
    }

    private void b(float f1)
    {
        android.widget.AbsoluteLayout.LayoutParams layoutparams = (android.widget.AbsoluteLayout.LayoutParams)M.getLayoutParams();
        layoutparams.y = (int)(f1 + (float)layoutparams.y);
        if(layoutparams.y < 0)
            layoutparams.y = 0;
        if(layoutparams.y > aa - Z)
            layoutparams.y = aa - Z;
        M.setLayoutParams(layoutparams);
    }

    static boolean b(ShakeReportUI shakereportui, boolean flag)
    {
        shakereportui.s = flag;
        return flag;
    }

    static Runnable c(ShakeReportUI shakereportui)
    {
        return shakereportui.R;
    }

    static void c(ShakeReportUI shakereportui, float f1)
    {
        shakereportui.b(f1);
    }

    static boolean c(ShakeReportUI shakereportui, boolean flag)
    {
        shakereportui.j = flag;
        return flag;
    }

    static NetSceneShakeGet d(ShakeReportUI shakereportui)
    {
        return shakereportui.l;
    }

    static boolean d(ShakeReportUI shakereportui, boolean flag)
    {
        shakereportui.i = flag;
        return flag;
    }

    static NetSceneShakeReport e(ShakeReportUI shakereportui)
    {
        return shakereportui.k;
    }

    static boolean f(ShakeReportUI shakereportui)
    {
        shakereportui.h = true;
        return true;
    }

    static boolean g(ShakeReportUI shakereportui)
    {
        return shakereportui.S;
    }

    static long h(ShakeReportUI shakereportui)
    {
        return shakereportui.q;
    }

    private void h(int i1)
    {
        if(E != null)
        {
            View view = E;
            int j1;
            if(i1 == 1)
                j1 = 0;
            else
                j1 = 4;
            view.setVisibility(j1);
        }
        if(F != null)
            if(i1 == 2)
            {
                F.setVisibility(0);
            } else
            {
                F.setVisibility(8);
                F.cancelLongPress();
            }
    }

    static ScreenOnKeeper i(ShakeReportUI shakereportui)
    {
        return shakereportui.K;
    }

    static boolean j(ShakeReportUI shakereportui)
    {
        return shakereportui.ab;
    }

    static void k(ShakeReportUI shakereportui)
    {
        shakereportui.r();
    }

    static boolean l(ShakeReportUI shakereportui)
    {
        return shakereportui.s;
    }

    static void m(ShakeReportUI shakereportui)
    {
        if(shakereportui.V == null)
            shakereportui.V = Util.a(shakereportui, 0x7f0a000c, null);
        if(shakereportui.V != null)
            shakereportui.V.start();
    }

    static void n(ShakeReportUI shakereportui)
    {
        if(shakereportui.W == null)
            shakereportui.W = (Vibrator)shakereportui.c().getSystemService("vibrator");
        if(shakereportui.W != null)
            shakereportui.W.vibrate(X, -1);
    }

    private void o()
    {
        if(k != null)
            MMCore.g().a(k);
        if(l != null)
            MMCore.g().a(l);
        if(Q != null && R != null)
            Q.removeCallbacks(R);
        a = true;
        h(3);
    }

    static void o(ShakeReportUI shakereportui)
    {
        shakereportui.o();
    }

    private void p()
    {
        ImageView imageview = (ImageView)findViewById(0x7f070260);
        int i1;
        int j1;
        if(Util.a((Boolean)MMCore.f().f().a(4110)))
        {
            String s1 = (new StringBuilder()).append(MMCore.f().M()).append("default_shake_img_filename.jpg").toString();
            ImageView imageview1;
            ImageView imageview2;
            if(FileOperation.c(s1))
            {
                imageview.setImageDrawable(Drawable.createFromPath(s1));
            } else
            {
                int k1;
                if(T == 2)
                    k1 = 0x7f020293;
                else
                    k1 = 0x7f020292;
                imageview.setImageResource(k1);
            }
        } else
        {
            imageview.setImageDrawable(Drawable.createFromPath((String)MMCore.f().f().a(4111)));
        }
        imageview1 = (ImageView)findViewById(0x7f070262);
        imageview2 = (ImageView)findViewById(0x7f070266);
        if(T == 2)
            i1 = 0x7f020284;
        else
            i1 = 0x7f020285;
        imageview1.setImageResource(i1);
        if(T == 2)
            j1 = 0x7f020283;
        else
            j1 = 0x7f020282;
        imageview2.setImageResource(j1);
        if(Y == null)
            Y = new _cls17();
        imageview1.setOnClickListener(Y);
        imageview2.setOnClickListener(Y);
        if(A == null)
            A = findViewById(0x7f070265);
        A.setOnClickListener(Y);
        if(B == null)
            B = findViewById(0x7f070263);
        B.setOnClickListener(Y);
    }

    static void p(ShakeReportUI shakereportui)
    {
        if(shakereportui.y == null)
            shakereportui.y = shakereportui.findViewById(0x7f070261);
        if(shakereportui.z == null)
            shakereportui.z = shakereportui.findViewById(0x7f070264);
        if(shakereportui.A == null)
            shakereportui.A = shakereportui.findViewById(0x7f070265);
        if(shakereportui.B == null)
            shakereportui.B = shakereportui.findViewById(0x7f070263);
        if(shakereportui.G == null)
        {
            shakereportui.G = AnimationUtils.loadAnimation(shakereportui.c(), 0x7f040018);
            shakereportui.G.setAnimationListener(shakereportui. new _cls14());
        }
        if(shakereportui.H == null)
            shakereportui.H = AnimationUtils.loadAnimation(shakereportui.c(), 0x7f040015);
        if(shakereportui.I == null)
            shakereportui.I = AnimationUtils.loadAnimation(shakereportui.c(), 0x7f040010);
        if(shakereportui.J != null && shakereportui.C != null)
            b.a.r.a(shakereportui.C, shakereportui.J);
        shakereportui.h(3);
        shakereportui.A.startAnimation(shakereportui.I);
        shakereportui.B.startAnimation(shakereportui.I);
        shakereportui.A.setVisibility(0);
        shakereportui.B.setVisibility(0);
        shakereportui.D.setVisibility(4);
        shakereportui.y.startAnimation(shakereportui.G);
        shakereportui.z.startAnimation(shakereportui.H);
        shakereportui.p = "";
        if(shakereportui.t != null && shakereportui.t.getVisibility() == 0)
        {
            Animation animation = AnimationUtils.loadAnimation(shakereportui.c(), 0x7f040012);
            animation.setFillAfter(true);
            shakereportui.t.startAnimation(animation);
            (new Handler()).postDelayed(shakereportui. new _cls15(), animation.getDuration());
        }
        shakereportui.a = false;
        (new Handler()).postDelayed(shakereportui. new _cls16(), 1200L);
    }

    private void q()
    {
        int i1 = ((android.widget.AbsoluteLayout.LayoutParams)M.getLayoutParams()).y;
        b(0 - i1);
        TranslateAnimation translateanimation = new TranslateAnimation(0F, 0F, i1 + 0, 0F);
        translateanimation.setDuration(400L);
        translateanimation.setAnimationListener(new _cls20());
        M.startAnimation(translateanimation);
        if(!ab)
        {
            View view = findViewById(0x7f070185);
            view.setVisibility(8);
            view.startAnimation(AnimationUtils.loadAnimation(this, 0x7f040014));
        }
        L.setBackgroundResource(0x7f02028a);
        ab = true;
    }

    static void q(ShakeReportUI shakereportui)
    {
        shakereportui.b();
    }

    static String r(ShakeReportUI shakereportui)
    {
        return shakereportui.p;
    }

    private void r()
    {
        int i1 = aa - Z;
        int j1 = ((android.widget.AbsoluteLayout.LayoutParams)M.getLayoutParams()).y;
        b(i1 - j1);
        if(ab)
        {
            View view = findViewById(0x7f070185);
            view.setVisibility(0);
            view.startAnimation(AnimationUtils.loadAnimation(this, 0x7f040013));
        }
        TranslateAnimation translateanimation = new TranslateAnimation(0F, 0F, j1 - i1, 0F);
        translateanimation.setDuration(400L);
        translateanimation.setAnimationListener(new _cls21());
        M.startAnimation(translateanimation);
        L.setBackgroundResource(0x7f02028e);
        ab = false;
        N.d();
    }

    static int s(ShakeReportUI shakereportui)
    {
        return shakereportui.U;
    }

    static Dialog t(ShakeReportUI shakereportui)
    {
        return shakereportui.r;
    }

    static ImageView u(ShakeReportUI shakereportui)
    {
        return shakereportui.u;
    }

    static NetSceneGetHDHeadImg v(ShakeReportUI shakereportui)
    {
        return shakereportui.m;
    }

    static View w(ShakeReportUI shakereportui)
    {
        return shakereportui.E;
    }

    static TextView x(ShakeReportUI shakereportui)
    {
        return shakereportui.O;
    }

    static void y(ShakeReportUI shakereportui)
    {
        shakereportui.p();
    }

    static View z(ShakeReportUI shakereportui)
    {
        return shakereportui.F;
    }

    protected final int a()
    {
        return 0x7f0300e4;
    }

    public final void a(int i1, int j1, String s1, NetSceneBase netscenebase)
    {
        netscenebase.b();
        JVM INSTR lookupswitch 3: default 40
    //                   46: 977
    //                   51: 41
    //                   52: 131;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L3:
        if(N != null)
            N.a(false);
        NetSceneShakeReport netsceneshakereport = (NetSceneShakeReport)netscenebase;
        if(j1 != 0 || i1 != 0 || netsceneshakereport.g() != 0)
        {
            if(s)
                Util.a(c(), 0x7f0a000d);
            a(((String) (null)));
            Log.a("MicroMsg.ShakeReportUI", "onSceneEnd reprot failed");
        } else
        {
            Q.postDelayed(R, 3000L);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        NetSceneShakeGet netsceneshakeget = (NetSceneShakeGet)netscenebase;
        if(j1 != 0 || i1 != 0 || netsceneshakeget.i() != 0)
        {
            if(s)
                Util.a(c(), 0x7f0a000d);
            a(netsceneshakeget.j());
        } else
        {
            U = netsceneshakeget.h();
            List list = netsceneshakeget.g();
            int k1 = list.size();
            if(k1 == 0)
            {
                Log.c("MicroMsg.ShakeReportUI", "empty shake get list");
                if(s)
                    Util.a(c(), 0x7f0a000d);
                a(netsceneshakeget.j());
            } else
            if(k1 == 1)
            {
                if(N != null)
                    N.a(true);
                String s3 = ((ShakeItem)list.get(0)).c();
                String s4 = ((ShakeItem)list.get(0)).d();
                Log.c("MicroMsg.ShakeReportUI", (new StringBuilder()).append("1 u:").append(s3).append(" n:").append(s4).append(" d:").append(((ShakeItem)list.get(0)).h()).toString());
                if(s)
                    Util.a(c(), 0x7f0a000e);
                h(3);
                ShakeItem shakeitem = (ShakeItem)netsceneshakeget.g().get(0);
                if(!Util.i(shakeitem.c()))
                {
                    p = shakeitem.c();
                    t.setVisibility(0);
                    Contact contact = MMCore.f().h().c(shakeitem.c());
                    TextView textview = (TextView)t.findViewById(0x7f07025b);
                    Context context = c();
                    StringBuilder stringbuilder = (new StringBuilder()).append(shakeitem.d());
                    String s5;
                    TextView textview1;
                    String s6;
                    ImageView imageview;
                    TextView textview2;
                    if(contact.l())
                        s5 = getString(0x7f0a03fc);
                    else
                        s5 = "";
                    textview.setText(SpanUtil.a(context, stringbuilder.append(s5).toString(), (int)textview.getTextSize()));
                    textview1 = (TextView)t.findViewById(0x7f07025d);
                    if(shakeitem.r() == 1)
                        s6 = (new StringBuilder()).append(shakeitem.m()).append(getString(0x7f0a03f5)).toString();
                    else
                        s6 = shakeitem.h();
                    textview1.setText(s6);
                    ((ImageView)t.findViewById(0x7f07025a)).setImageBitmap(AvatarLogic.i(shakeitem.c()));
                    imageview = (ImageView)t.findViewById(0x7f07026f);
                    if(shakeitem.n() > 0)
                    {
                        imageview.setImageBitmap(b.a.e.a(SceneGetVUserInfo.a(shakeitem.n()), 1.5F));
                        imageview.setVisibility(0);
                    } else
                    {
                        imageview.setVisibility(8);
                    }
                    if(shakeitem.i() != 0)
                    {
                        int l1;
                        Drawable drawable;
                        if(shakeitem.i() == 1)
                            l1 = 0x7f02013a;
                        else
                            l1 = 0x7f020139;
                        drawable = a(l1);
                        ((ImageView)t.findViewById(0x7f07025c)).setImageDrawable(drawable);
                    }
                    textview2 = (TextView)t.findViewById(0x7f07025e);
                    if(shakeitem.e() == null)
                    {
                        Log.a("MicroMsg.ShakeReportUI", "PROVINCE NULL");
                        shakeitem.c("");
                    }
                    if(shakeitem.f() == null)
                    {
                        Log.a("MicroMsg.ShakeReportUI", "CITY NULL");
                        shakeitem.d("");
                    }
                    if(shakeitem.m() > 1000 && (shakeitem.e().length() > 0 || shakeitem.f().length() > 0))
                    {
                        textview2.setVisibility(0);
                        textview2.setText((new StringBuilder()).append(shakeitem.e()).append(" ").append(shakeitem.f()).toString());
                    } else
                    {
                        textview2.setVisibility(8);
                    }
                    t.startAnimation(AnimationUtils.loadAnimation(c(), 0x7f040011));
                }
                O.setVisibility(8);
            } else
            {
                if(N != null)
                    N.a(true);
                if(s)
                    Util.a(c(), 0x7f0a000e);
                h(3);
                q();
                O.setVisibility(8);
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        Log.c("MicroMsg.ShakeReportUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i1).append(" errCode = ").append(j1).append(" errMsg = ").append(s1).toString());
        if(v != null)
        {
            v.setVisibility(4);
            w.setVisibility(4);
        }
        String s2 = ((NetSceneGetHDHeadImg)netscenebase).g();
        if(i1 == 0 && j1 == 0)
        {
            Bitmap bitmap = MMCore.f().y().d(s2);
            if(bitmap != null)
                a(bitmap);
        } else
        if(i1 != 4 || j1 != -55)
            Toast.makeText(c(), 0x7f0a0287, 0).show();
        if(true) goto _L1; else goto _L5
_L5:
    }

    public final void b(String s1)
    {
        if(t != null && !Util.i(p) && s1.equals(p))
        {
            Log.c("MicroMsg.ShakeReportUI", (new StringBuilder()).append("notifyChanged user:").append(s1).toString());
            ((ImageView)t.findViewById(0x7f07025a)).setImageBitmap(AvatarLogic.i(s1));
        }
    }

    protected final int h()
    {
        return 1;
    }

    protected final int j()
    {
        return -1;
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        super.onActivityResult(i1, j1, intent);
        i1;
        JVM INSTR tableswitch 1 2: default 32
    //                   1 33
    //                   2 140;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        if(intent != null)
        {
            String s2 = Util.a(this, intent, MMCore.f().M());
            if(s2 != null && s2.length() > 0)
            {
                Intent intent1 = new Intent();
                intent1.setClass(c(), com/tencent/mm/ui/tools/CropImageUI);
                intent1.putExtra("CropImage_ImgPath", s2);
                intent1.putExtra("CropImage_OutputPath", (new StringBuilder()).append(MMCore.f().M()).append("custom_shake_img_filename.jpg").toString());
                startActivityForResult(intent1, 2);
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if(intent != null)
        {
            String s1 = intent.getStringExtra("CropImage_OutputPath");
            MMCore.f().f().a(4110, Boolean.valueOf(false));
            MMCore.f().f().a(4111, s1);
            p();
        }
        if(true) goto _L1; else goto _L4
_L4:
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        System.out.println("onConfigurationChanged");
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a03ef);
        MMCore.g().a(51, this);
        MMCore.g().a(52, this);
        MMCore.g().a(46, this);
        MMCore.f().y().a(this);
        AvatarDrawable.a(this);
        K = new ScreenOnKeeper(f());
        ImageView imageview = (ImageView)findViewById(0x7f07026b);
        View view = View.inflate(c(), 0x7f0300e2, null);
        Dialog dialog = new Dialog(c(), 0x7f0b0051);
        dialog.setContentView(view);
        dialog.setOnCancelListener(new _cls6());
        x = (Button)view.findViewById(0x7f070259);
        D = findViewById(0x7f070267);
        E = findViewById(0x7f070268);
        F = findViewById(0x7f070269);
        t = findViewById(0x7f07026e);
        t.setOnClickListener(new _cls7());
        ((ImageView)t.findViewById(0x7f07025a)).setOnClickListener(new _cls8());
        if(!Util.b((Boolean)MMCore.f().f().a(4108)))
        {
            view.setVisibility(0);
            dialog.show();
            MMCore.f().f().a(4108, Boolean.valueOf(true));
        }
        imageview.setOnClickListener(new _cls9(dialog));
        x.setOnClickListener(new _cls10(dialog));
        b(new _cls11());
        a(getString(0x7f0a0013), new _cls12());
        T = Util.a((Integer)MMCore.f().f().a(12290), 0);
        p();
        P.a(20L);
        n = new LBSManager(this, new _cls3());
        b = -1000F;
        c = -1000F;
        e = -1000;
        d = 1;
        f = n.f();
        g = n.e();
        n.a();
        o = new ShakeManager(this);
        s = Util.a((Boolean)MMCore.f().f().a(4112));
        View view1 = findViewById(0x7f07026a);
        byte byte0;
        if(s)
            byte0 = 4;
        else
            byte0 = 0;
        view1.setVisibility(byte0);
        if(!o.d())
            MMAlert.a(this, 0x7f0a03f3, 0x7f0a0010, new _cls4());
    }

    protected void onDestroy()
    {
        MMCore.g().b(51, this);
        MMCore.g().b(52, this);
        MMCore.g().b(46, this);
        MMCore.f().y().b(this);
        AvatarDrawable.b(this);
        if(n != null)
        {
            n.d();
            n = null;
        }
        if(o != null)
        {
            o.c();
            o = null;
        }
        if(N != null)
            N.b();
        if(V != null)
            V.release();
        super.onDestroy();
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        boolean flag;
        if(i1 == 4 && ab)
        {
            r();
            flag = true;
        } else
        {
            flag = super.onKeyDown(i1, keyevent);
        }
        return flag;
    }

    protected void onPause()
    {
        Log.c("MicroMsg.ShakeReportUI", "onPause!");
        if(n != null)
            n.b();
        Log.c("MicroMsg.ShakeReportUI", "stopShake");
        S = false;
        if(o != null)
            o.c();
        o();
        if(N != null)
            N.a();
        K.b();
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
        q = Util.e();
        if(n != null)
            n.c();
        b();
        if(o != null)
            o.b();
        if(N != null)
            N.c();
    }

    private static final long X[];
    private View A;
    private View B;
    private TextView C;
    private View D;
    private View E;
    private View F;
    private Animation G;
    private Animation H;
    private Animation I;
    private Animation J;
    private ScreenOnKeeper K;
    private DraggerButton L;
    private LinearLayout M;
    private ShakeFriendsView N;
    private TextView O;
    private MTimerHandler P;
    private Handler Q;
    private Runnable R;
    private boolean S;
    private int T;
    private int U;
    private MediaPlayer V;
    private Vibrator W;
    private android.view.View.OnClickListener Y;
    private int Z;
    boolean a;
    private int aa;
    private boolean ab;
    private float b;
    private float c;
    private int d;
    private int e;
    private String f;
    private String g;
    private boolean h;
    private boolean i;
    private boolean j;
    private NetSceneShakeReport k;
    private NetSceneShakeGet l;
    private NetSceneGetHDHeadImg m;
    private LBSManager n;
    private ShakeManager o;
    private String p;
    private long q;
    private Dialog r;
    private boolean s;
    private View t;
    private ImageView u;
    private ProgressBar v;
    private View w;
    private Button x;
    private View y;
    private View z;

    static 
    {
        long al[] = new long[4];
        al[0] = 300L;
        al[1] = 200L;
        al[2] = 300L;
        al[3] = 200L;
        X = al;
    }

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            boolean flag;
            if(a.findViewById(0x7f070275).getTop() <= 0)
            {
                flag = true;
            } else
            {
                ShakeReportUI.a(a);
                flag = false;
            }
            return flag;
        }

        private ShakeReportUI a;

        _cls1()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        public void run()
        {
            if(ShakeReportUI.b(a) != null && ShakeReportUI.c(a) != null)
                ShakeReportUI.b(a).removeCallbacks(ShakeReportUI.c(a));
            if(ShakeReportUI.d(a) != null)
                MMCore.g().a(ShakeReportUI.d(a));
            if(com.tencent.mm.ui.shake.ShakeReportUI.e(a) != null)
            {
                ShakeReportUI.a(a, new NetSceneShakeGet(com.tencent.mm.ui.shake.ShakeReportUI.e(a).f()));
                MMCore.g().b(ShakeReportUI.d(a));
            }
        }

        private ShakeReportUI a;

        _cls2()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls18
        implements DraggerButton.OnDragListener
    {

        public final boolean a()
        {
            if(!ShakeReportUI.j(a)) goto _L2; else goto _L1
_L1:
            ShakeReportUI.k(a);
_L4:
            return true;
_L2:
            if(ShakeReportUI.w(a) == null || ShakeReportUI.w(a).getVisibility() != 0)
                ShakeReportUI.I(a);
            if(true) goto _L4; else goto _L3
_L3:
        }

        private ShakeReportUI a;

        _cls18()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls19
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            if(!ShakeReportUI.J(b).onTouchEvent(motionevent)) goto _L2; else goto _L1
_L1:
            return true;
_L2:
            switch(motionevent.getAction())
            {
            case 0: // '\0'
                a = motionevent.getRawY();
                break;

            case 1: // '\001'
                ShakeReportUI.K(b);
                break;

            case 2: // '\002'
                if(ShakeReportUI.w(b) == null || ShakeReportUI.w(b).getVisibility() != 0)
                {
                    ShakeReportUI.c(b, motionevent.getRawY() - a);
                    a = motionevent.getRawY();
                }
                break;
            }
            if(true) goto _L1; else goto _L3
_L3:
        }

        private float a;
        private ShakeReportUI b;

        _cls19()
        {
            b = ShakeReportUI.this;
            super();
            a = 0F;
        }
    }


    private class _cls13
        implements Runnable
    {

        public void run()
        {
            if(ShakeReportUI.z(a) != null)
                ShakeReportUI.z(a).setVisibility(8);
        }

        private ShakeReportUI a;

        _cls13()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls5
        implements ShakeManager.ShakeListener
    {

        public final void a()
        {
            if(a.isFinishing())
                Log.a("MicroMsg.ShakeReportUI", "ui finished");
            else
            if(!ShakeReportUI.g(a))
            {
                Log.c("MicroMsg.ShakeReportUI", "tryShake the status is can's shake");
            } else
            {
                long l1 = Util.f(ShakeReportUI.h(a));
                if(l1 < 1200L)
                {
                    Log.c("MicroMsg.ShakeReportUI", (new StringBuilder()).append("tryStartShake delay too short:").append(l1).toString());
                } else
                {
                    if(ShakeReportUI.i(a) != null)
                        ShakeReportUI.i(a).a();
                    Log.b("MicroMsg.ShakeReportUI", (new StringBuilder()).append("tryStartShake delaytoo enough:").append(l1).toString());
                    ShakeReportUI.a(a, Util.e());
                    if(ShakeReportUI.j(a))
                        ShakeReportUI.k(a);
                    if(ShakeReportUI.l(a))
                        ShakeReportUI.m(a);
                    else
                        ShakeReportUI.n(a);
                    ShakeReportUI.o(a);
                    ShakeReportUI.p(a);
                }
            }
        }

        private ShakeReportUI a;

        _cls5()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls17
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ShakeReportUI.H(a))
            {
                ShakeReportUI.a(a, false);
                ShakeReportUI.d(a, false);
                ShakeReportUI.w(a).setVisibility(4);
                Context context = a.c();
                String as[] = new String[1];
                as[0] = a.getString(0x7f0a03f7);
                class _cls1
                    implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
                {

                    public final void a(int i1)
                    {
                        ShakeReportUI.a(a.a, true);
                        i1;
                        JVM INSTR tableswitch 0 0: default 32
                    //                                   0 33;
                           goto _L1 _L2
_L1:
                        return;
_L2:
                        Intent intent = new Intent("android.intent.action.GET_CONTENT");
                        intent.setType("image/*");
                        a.a.startActivityForResult(Intent.createChooser(intent, null), 1);
                        if(true) goto _L1; else goto _L3
_L3:
                    }

                    private _cls17 a;

                _cls1()
                {
                    a = _cls17.this;
                    super();
                }
                }

                class _cls2
                    implements android.content.DialogInterface.OnCancelListener
                {

                    public void onCancel(DialogInterface dialoginterface)
                    {
                        ShakeReportUI.a(a.a, true);
                    }

                    private _cls17 a;

                _cls2()
                {
                    a = _cls17.this;
                    super();
                }
                }

                MMAlert.a(context, null, as, "", new _cls1(), new _cls2());
            }
        }

        final ShakeReportUI a;

        _cls17()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls14
        implements android.view.animation.Animation.AnimationListener
    {

        public void onAnimationEnd(Animation animation)
        {
            if(ShakeReportUI.A(a))
                ShakeReportUI.B(a);
            ShakeReportUI.c(a, false);
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
            ShakeReportUI.d(a, true);
            ShakeReportUI.c(a, true);
        }

        private ShakeReportUI a;

        _cls14()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls15
        implements Runnable
    {

        public void run()
        {
            if(ShakeReportUI.C(a) != null)
                ShakeReportUI.C(a).setVisibility(8);
        }

        private ShakeReportUI a;

        _cls15()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls16
        implements Runnable
    {

        public void run()
        {
            if(ShakeReportUI.D(a) != null)
                ShakeReportUI.D(a).setVisibility(8);
            if(ShakeReportUI.E(a) != null)
                ShakeReportUI.E(a).setVisibility(8);
            if(ShakeReportUI.F(a) != null)
                ShakeReportUI.F(a).setVisibility(0);
            if(!a.a && ShakeReportUI.A(a))
                ShakeReportUI.G(a);
        }

        private ShakeReportUI a;

        _cls16()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls20
        implements android.view.animation.Animation.AnimationListener
    {

        public void onAnimationEnd(Animation animation)
        {
            ShakeReportUI.L(a).d();
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }

        private ShakeReportUI a;

        _cls20()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls21
        implements android.view.animation.Animation.AnimationListener
    {

        public void onAnimationEnd(Animation animation)
        {
            ShakeReportUI.M(a);
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }

        private ShakeReportUI a;

        _cls21()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls6
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            ShakeReportUI.q(a);
        }

        private ShakeReportUI a;

        _cls6()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls7
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(!Util.i(com.tencent.mm.ui.shake.ShakeReportUI.r(a))) goto _L2; else goto _L1
_L1:
            return;
_L2:
            ShakeItem shakeitem = MMCore.f().I().a(com.tencent.mm.ui.shake.ShakeReportUI.r(a));
            String s1 = shakeitem.c();
            if(!Util.i(s1))
                if(MMCore.f().h().c(s1).l())
                {
                    Intent intent = new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI);
                    intent.putExtra("Contact_User", s1);
                    if(s1 != null && s1.length() > 0)
                        a.startActivity(intent);
                } else
                {
                    Intent intent1 = new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI);
                    intent1.putExtra("Contact_User", shakeitem.c());
                    intent1.putExtra("Contact_Nick", shakeitem.d());
                    intent1.putExtra("Contact_Distance", shakeitem.h());
                    intent1.putExtra("Contact_Signature", shakeitem.g());
                    intent1.putExtra("Contact_Province", shakeitem.e());
                    intent1.putExtra("Contact_City", shakeitem.f());
                    intent1.putExtra("Contact_Sex", shakeitem.i());
                    intent1.putExtra("Contact_IsLBSFriend", true);
                    intent1.putExtra("Contact_VUser_Info", shakeitem.o());
                    intent1.putExtra("Contact_VUser_Info_Flag", shakeitem.n());
                    intent1.putExtra("Contact_Scene", ShakeReportUI.s(a));
                    a.startActivity(intent1);
                }
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ShakeReportUI a;

        _cls7()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls8
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            View view1 = LayoutInflater.from(a.c()).inflate(0x7f030101, null);
            ShakeReportUI.a(a, new Dialog(a.c(), 0x7f0b004b));
            class _cls1
                implements android.view.View.OnClickListener
            {

                public void onClick(View view2)
                {
                    ShakeReportUI.t(a.a).dismiss();
                }

                private _cls8 a;

                _cls1()
                {
                    a = _cls8.this;
                    super();
                }
            }

            view1.setOnClickListener(new _cls1());
            ShakeReportUI.t(a).setCanceledOnTouchOutside(true);
            ShakeReportUI.t(a).setContentView(view1);
            ShakeReportUI.t(a).show();
            ShakeReportUI.a(a, (ImageView)view1.findViewById(0x7f0702ba));
            ShakeReportUI.a(a, (ProgressBar)view1.findViewById(0x7f0702bc));
            ShakeReportUI.a(a, view1.findViewById(0x7f0702bb));
            Bitmap bitmap = AvatarLogic.h(com.tencent.mm.ui.shake.ShakeReportUI.r(a));
            if(bitmap == null)
                bitmap = AvatarStorage.a(a);
            ShakeReportUI.u(a).setImageBitmap(bitmap);
            if(!MMCore.f().c())
            {
                ShakeReportUI.a(a, AvatarStorage.a(a));
            } else
            {
                Bitmap bitmap1 = MMCore.f().y().d(com.tencent.mm.ui.shake.ShakeReportUI.r(a));
                if(bitmap1 != null)
                {
                    Log.c("MicroMsg.ShakeReportUI", (new StringBuilder()).append("The HDAvatar of ").append(com.tencent.mm.ui.shake.ShakeReportUI.r(a)).append(" is already exists").toString());
                    ShakeReportUI.a(a, bitmap1);
                } else
                {
                    if(ShakeReportUI.v(a) != null)
                        MMCore.g().a(ShakeReportUI.v(a));
                    ShakeReportUI.a(a, new NetSceneGetHDHeadImg(com.tencent.mm.ui.shake.ShakeReportUI.r(a)));
                    MMCore.g().b(ShakeReportUI.v(a));
                }
            }
        }

        final ShakeReportUI a;

        _cls8()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls9
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ShakeReportUI.w(b) == null || ShakeReportUI.w(b).getVisibility() != 0)
            {
                a.show();
                ShakeReportUI.a(b, false);
            }
        }

        private Dialog a;
        private ShakeReportUI b;

        _cls9(Dialog dialog)
        {
            b = ShakeReportUI.this;
            a = dialog;
            super();
        }
    }


    private class _cls10
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.cancel();
            ShakeReportUI.q(b);
        }

        private Dialog a;
        private ShakeReportUI b;

        _cls10(Dialog dialog)
        {
            b = ShakeReportUI.this;
            a = dialog;
            super();
        }
    }


    private class _cls11
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private ShakeReportUI a;

        _cls11()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls12
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ShakeReportUI.w(a) == null || ShakeReportUI.w(a).getVisibility() != 0)
            {
                ShakeReportUI.a(a, false);
                class _cls1
                    implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
                {

                    public final void a(int i1)
                    {
                        int j1;
                        boolean flag;
                        j1 = 0;
                        flag = true;
                        ShakeReportUI.a(a.a, flag);
                        i1;
                        JVM INSTR tableswitch 0 3: default 48
                    //                                   0 49
                    //                                   1 120
                    //                                   2 159
                    //                                   3 188;
                           goto _L1 _L2 _L3 _L4 _L5
_L1:
                        return;
_L2:
                        Context context1 = a.a.c();
                        String s2 = a.a.getString(0x7f0a03fe);
                        String as1[] = new String[flag];
                        as1[j1] = a.a.getString(0x7f0a03fd);
                        class _cls1
                            implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
                        {

                            public final void a(int l1)
                            {
                                l1;
                                JVM INSTR tableswitch 0 0: default 20
                            //                                           0 21;
                                   goto _L1 _L2
_L1:
                                return;
_L2:
                                MMCore.f().I().d();
                                ShakeReportUI.x(a.a.a).setVisibility(0);
                                if(true) goto _L1; else goto _L3
_L3:
                            }

                            private _cls1 a;

                                _cls1()
                                {
                                    a = _cls1.this;
                                    super();
                                }
                        }

                        MMAlert.a(context1, s2, as1, "", new _cls1());
                        continue; /* Loop/switch isn't completed */
_L3:
                        Intent intent = new Intent("android.intent.action.GET_CONTENT");
                        intent.setType("image/*");
                        a.a.startActivityForResult(Intent.createChooser(intent, null), flag);
                        continue; /* Loop/switch isn't completed */
_L4:
                        MMCore.f().f().a(4110, Boolean.valueOf(flag));
                        ShakeReportUI.y(a.a);
                        continue; /* Loop/switch isn't completed */
_L5:
                        ConfigStorage configstorage = MMCore.f().f();
                        int k1;
                        ShakeReportUI shakereportui;
                        View view1;
                        if(!ShakeReportUI.l(a.a))
                            k1 = ((flag) ? 1 : 0);
                        else
                            k1 = j1;
                        configstorage.a(4112, Boolean.valueOf(k1));
                        shakereportui = a.a;
                        if(ShakeReportUI.l(a.a))
                            flag = j1;
                        ShakeReportUI.b(shakereportui, flag);
                        view1 = a.a.findViewById(0x7f07026a);
                        if(ShakeReportUI.l(a.a))
                            j1 = 4;
                        view1.setVisibility(j1);
                        if(true) goto _L1; else goto _L6
_L6:
                    }

                    final _cls12 a;

                _cls1()
                {
                    a = _cls12.this;
                    super();
                }
                }

                class _cls2
                    implements android.content.DialogInterface.OnCancelListener
                {

                    public void onCancel(DialogInterface dialoginterface)
                    {
                        ShakeReportUI.a(a.a, true);
                    }

                    private _cls12 a;

                _cls2()
                {
                    a = _cls12.this;
                    super();
                }
                }

                String s1;
                Context context;
                String as[];
                if(ShakeReportUI.l(a))
                    s1 = a.getString(0x7f0a03f9);
                else
                    s1 = a.getString(0x7f0a03fa);
                context = a.c();
                as = new String[4];
                as[0] = a.getString(0x7f0a03f6);
                as[1] = a.getString(0x7f0a03f7);
                as[2] = a.getString(0x7f0a03f8);
                as[3] = s1;
                MMAlert.a(context, null, as, "", new _cls1(), new _cls2());
            }
        }

        final ShakeReportUI a;

        _cls12()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls3
        implements com.tencent.mm.ui.nearbyfriends.LBSManager.OnLocationGotListener
    {

        public final void a(float f1, float f2, int i1, int j1, String s1, String s2, boolean flag)
        {
            if(flag)
            {
                ShakeReportUI.a(a, f1);
                ShakeReportUI.b(a, f2);
                ShakeReportUI.a(a, i1);
                ShakeReportUI.b(a, j1);
                ShakeReportUI.a(a, s1);
                ShakeReportUI.b(a, s2);
                ShakeReportUI.f(a);
            } else
            {
                Log.a("MicroMsg.ShakeReportUI", "initLbsManager failed");
            }
        }

        private ShakeReportUI a;

        _cls3()
        {
            a = ShakeReportUI.this;
            super();
        }
    }


    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            a.finish();
        }

        private ShakeReportUI a;

        _cls4()
        {
            a = ShakeReportUI.this;
            super();
        }
    }

}
