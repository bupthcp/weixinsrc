// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.qrcode;

import android.app.*;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.*;
import android.view.animation.TranslateAnimation;
import android.widget.*;
import b.a.ad;
import b.a.e;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelqrcode.*;
import com.tencent.mm.modelsimple.NetSceneSearchContact;
import com.tencent.mm.network.IDispatcher;
import com.tencent.mm.network.NetService;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.MMAlert;
import com.tencent.mm.ui.MMAppMgr;
import com.tencent.mm.ui.contact.ContactInfoUI;
import java.util.Locale;

public class GetFriendQRCodeUI extends Activity
    implements android.view.SurfaceHolder.Callback, IOnSceneEnd
{

    public GetFriendQRCodeUI()
    {
        a = true;
        b = null;
        l = null;
        m = null;
        n = false;
        o = new MTimerHandler(new _cls6(), true);
        r = null;
    }

    static Dialog a(GetFriendQRCodeUI getfriendqrcodeui)
    {
        return getfriendqrcodeui.j;
    }

    static ProgressDialog a(GetFriendQRCodeUI getfriendqrcodeui, ProgressDialog progressdialog)
    {
        getfriendqrcodeui.r = progressdialog;
        return progressdialog;
    }

    private void a()
    {
        Log.d("MicroMsg.GetFriendQRCodeUI", "prepare");
        SurfaceHolder surfaceholder = ((SurfaceView)findViewById(0x7f070120)).getHolder();
        if(!a)
        {
            a(surfaceholder);
        } else
        {
            surfaceholder.addCallback(this);
            surfaceholder.setType(3);
        }
        a = false;
    }

    private void a(SurfaceHolder surfaceholder)
    {
        try
        {
            l.a(surfaceholder);
        }
        catch(Exception exception) { }
        c();
    }

    static void a(GetFriendQRCodeUI getfriendqrcodeui, String s)
    {
        if(Util.i(s)) goto _L2; else goto _L1
_L1:
        String s1 = "";
        NetSceneSearchContact netscenesearchcontact;
        if(s.startsWith("weixin://qr/"))
            s1 = (new StringBuilder()).append(s.substring("weixin://qr/".length())).append("@qr").toString();
        else
        if(s.startsWith("http://weixin.qq.com/r/"))
            s1 = (new StringBuilder()).append(s.substring("http://weixin.qq.com/r/".length())).append("@qr").toString();
        if(Util.i(s1)) goto _L2; else goto _L3
_L3:
        netscenesearchcontact = new NetSceneSearchContact(s1);
        MMCore.g().b(netscenesearchcontact);
        getfriendqrcodeui.r = MMAlert.a(getfriendqrcodeui, getfriendqrcodeui.getString(0x7f0a0010), getfriendqrcodeui.getString(0x7f0a022a), true, getfriendqrcodeui. new _cls12(netscenesearchcontact));
_L5:
        return;
_L2:
        Object aobj[] = new Object[1];
        aobj[0] = s;
        MMAlert.a(getfriendqrcodeui, getfriendqrcodeui.getString(0x7f0a0333, aobj), getfriendqrcodeui.getString(0x7f0a0010), getfriendqrcodeui. new _cls13(s), getfriendqrcodeui. new _cls14());
        if(true) goto _L5; else goto _L4
_L4:
    }

    private void b()
    {
        Log.d("MicroMsg.GetFriendQRCodeUI", "unPrepare");
        if(b != null)
        {
            b.a();
            b = null;
        }
        l.a();
    }

    static void b(GetFriendQRCodeUI getfriendqrcodeui)
    {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        getfriendqrcodeui.startActivityForResult(Intent.createChooser(intent, null), 0x12340011);
    }

    private void c()
    {
        b = new CaptureHandler(l, m, new _cls9(), new _cls10());
    }

    static void c(GetFriendQRCodeUI getfriendqrcodeui)
    {
        getfriendqrcodeui.d = (ImageView)getfriendqrcodeui.findViewById(0x7f070122);
        DisplayMetrics displaymetrics = getfriendqrcodeui.getResources().getDisplayMetrics();
        int i1;
        if(getfriendqrcodeui.c)
            i1 = getfriendqrcodeui.findViewById(0x7f070121).getHeight();
        else
            i1 = displaymetrics.heightPixels;
        if(i1 == 0)
        {
            getfriendqrcodeui.d.setVisibility(8);
        } else
        {
            int j1 = b.a.e.a(getfriendqrcodeui, p);
            int k1 = (i1 - j1) / 2;
            getfriendqrcodeui.d.getWidth();
            int l1 = j1 + k1;
            Log.e("MicroMsg.GetFriendQRCodeUI", (new StringBuilder()).append("matrix:").append(displaymetrics.widthPixels).append(",").append(displaymetrics.heightPixels).append(" content:").append(i1).append(" pos:").append(k1).append(",").append(l1).toString());
            getfriendqrcodeui.e = new TranslateAnimation(0F, 0F, k1 - getfriendqrcodeui.d.getHeight() / 2, l1 - getfriendqrcodeui.d.getHeight() / 2);
            getfriendqrcodeui.e.setRepeatCount(-1);
            getfriendqrcodeui.e.setDuration(5000L);
            getfriendqrcodeui.d.startAnimation(getfriendqrcodeui.e);
        }
    }

    static boolean d(GetFriendQRCodeUI getfriendqrcodeui)
    {
        getfriendqrcodeui.n = false;
        return false;
    }

    static boolean e(GetFriendQRCodeUI getfriendqrcodeui)
    {
        getfriendqrcodeui.a = false;
        return false;
    }

    static void f(GetFriendQRCodeUI getfriendqrcodeui)
    {
        getfriendqrcodeui.a();
    }

    static ProgressDialog g(GetFriendQRCodeUI getfriendqrcodeui)
    {
        return getfriendqrcodeui.r;
    }

    static void h(GetFriendQRCodeUI getfriendqrcodeui)
    {
        getfriendqrcodeui.c();
    }

    static MTimerHandler i(GetFriendQRCodeUI getfriendqrcodeui)
    {
        return getfriendqrcodeui.q;
    }

    public final void a(int i1, int j1, String s, NetSceneBase netscenebase)
    {
        q.a(2000L);
        Log.c("MicroMsg.GetFriendQRCodeUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i1).append(" errCode = ").append(j1).append(" errMsg = ").append(s).toString());
        if(r != null)
        {
            r.dismiss();
            r = null;
        }
        i1;
        JVM INSTR tableswitch 1 4: default 104
    //                   1 113
    //                   2 223
    //                   3 104
    //                   4 268;
           goto _L1 _L2 _L3 _L1 _L4
_L1:
        boolean flag = false;
_L5:
        Object aobj1[];
        Object aobj2[];
        if(!flag)
            if(i1 == 4 && j1 == -2004)
                MMAlert.a(this, 0x7f0a0354, 0x7f0a0010);
            else
            if(i1 != 0 || j1 != 0)
            {
                Object aobj[] = new Object[2];
                aobj[0] = Integer.valueOf(i1);
                aobj[1] = Integer.valueOf(j1);
                Toast.makeText(this, getString(0x7f0a007f, aobj), 0).show();
            } else
            {
                com.tencent.mm.protocal.MMSearchContact.Resp resp = ((NetSceneSearchContact)netscenebase).f();
                Contact contact = MMCore.f().h().c(resp.d());
                Log.d("MicroMsg.GetFriendQRCodeUI", (new StringBuilder()).append("resp:").append(resp.d()).append(" local:").append(contact.s()).toString());
                if(contact != null && contact.l())
                {
                    Intent intent1 = new Intent();
                    intent1.putExtra("Contact_User", contact.s());
                    intent1.setClass(this, com/tencent/mm/ui/contact/ContactInfoUI);
                    if(Util.h(contact.s()).length() > 0)
                        startActivity(intent1);
                } else
                {
                    Intent intent = new Intent();
                    intent.putExtra("Contact_User", resp.d());
                    intent.putExtra("Contact_Alias", resp.b());
                    intent.putExtra("Contact_Nick", resp.e());
                    intent.putExtra("Contact_PyInitial", resp.f());
                    intent.putExtra("Contact_QuanPin", resp.g());
                    intent.putExtra("Contact_Sex", resp.i());
                    intent.putExtra("Contact_VUser_Info", resp.o());
                    intent.putExtra("Contact_VUser_Info_Flag", resp.n());
                    intent.putExtra("Contact_KWeibo_flag", resp.q());
                    intent.putExtra("Contact_KWeibo", resp.p());
                    intent.putExtra("Contact_KWeiboNick", resp.r());
                    intent.putExtra("Contact_Scene", 30);
                    intent.putExtra("Contact_KHideExpose", true);
                    intent.putExtra("Contact_Province", resp.m());
                    intent.putExtra("Contact_City", resp.l());
                    MMCore.f().y().a(resp.d(), resp.h());
                    intent.setClass(this, com/tencent/mm/ui/contact/ContactInfoUI);
                    if(Util.h(resp.d()).length() > 0)
                        startActivity(intent);
                }
            }
        return;
_L2:
        if(MMCore.q() != null && !MMCore.q().f())
            MMAppMgr.a(this, MMCore.q().a(), (new StringBuilder()).append("").append(j1).toString());
        else
        if(NetService.b(this))
        {
            MMAppMgr.a(this);
        } else
        {
            aobj2 = new Object[2];
            aobj2[0] = Integer.valueOf(1);
            aobj2[1] = Integer.valueOf(j1);
            Toast.makeText(this, getString(0x7f0a0079, aobj2), 1).show();
        }
        flag = true;
          goto _L5
_L3:
        aobj1 = new Object[2];
        aobj1[0] = Integer.valueOf(2);
        aobj1[1] = Integer.valueOf(j1);
        Toast.makeText(this, getString(0x7f0a007a, aobj1), 1).show();
        flag = true;
          goto _L5
_L4:
        if(j1 != -4) goto _L1; else goto _L6
_L6:
        MMAlert.a(this, 0x7f0a0334, 0x7f0a0010);
        flag = true;
          goto _L5
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        if(j1 == -1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        switch(i1)
        {
        case 305397777: 
            if(intent != null)
            {
                n = true;
                b();
                String s = Util.a(this, intent, MMCore.f().M());
                Log.d("MicroMsg.GetFriendQRCodeUI", (new StringBuilder()).append("select: ").append(s).toString());
                (new DecodeFile()).a(s, new _cls7());
                (new Handler()).post(new _cls8());
            }
            break;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        String s = LocaleUtil.a(getSharedPreferences("com.tencent.mm_preferences", 0));
        boolean flag;
        Display display;
        Point point;
        if(s.equals("zh_TW") || s.equals("zh_HK"))
            LocaleUtil.a(this, Locale.TAIWAN);
        else
        if(s.equals("en"))
            LocaleUtil.a(this, Locale.ENGLISH);
        else
        if(s.equals("zh_CN"))
            LocaleUtil.a(this, Locale.CHINA);
        MMCore.g().a(5, this);
        if(!ad.b())
            flag = true;
        else
            flag = false;
        c = flag;
        requestWindowFeature(1);
        if(c)
        {
            setContentView(0x7f030051);
            i = View.inflate(this, 0x7f0300b0, null);
            setRequestedOrientation(1);
        } else
        {
            getWindow().setFlags(1024, 1024);
            setRequestedOrientation(0);
            setContentView(0x7f030052);
            i = View.inflate(this, 0x7f0300b1, null);
        }
        display = ((WindowManager)getSystemService("window")).getDefaultDisplay();
        point = new Point(display.getWidth(), display.getHeight());
        m = new ScreenManager(point);
        l = new CameraManager(point);
        j = new Dialog(this, 0x7f0b0053);
        j.setContentView(i);
        k = (Button)i.findViewById(0x7f0701e3);
        k.setOnClickListener(new _cls1());
        if(Util.a((Integer)MMCore.f().f().a(0x10402)) == 0)
        {
            MMCore.f().f().a(0x10402, Integer.valueOf(1));
            j.show();
        }
        f = (Button)findViewById(0x7f070123);
        g = findViewById(0x7f070125);
        h = (ImageView)findViewById(0x7f070127);
        ((Button)findViewById(0x7f070126)).setOnClickListener(new _cls2());
        f.setOnClickListener(new _cls3());
        g.setOnClickListener(new _cls4());
        h.setOnClickListener(new _cls5());
        o.a(50L);
    }

    protected void onDestroy()
    {
        Log.d("qrtest", (new StringBuilder()).append("onDestroy:").append(a).toString());
        MMCore.g().b(5, this);
        q.a();
        super.onDestroy();
    }

    protected void onPause()
    {
        Log.d("qrtest", (new StringBuilder()).append("onPause:").append(a).toString());
        b();
        super.onPause();
    }

    protected void onResume()
    {
        Log.d("qrtest", (new StringBuilder()).append("onResume:").append(a).toString());
        super.onResume();
        if(!n)
            a();
    }

    public void onStart()
    {
        super.onStart();
        if(c)
            setRequestedOrientation(1);
        else
            setRequestedOrientation(0);
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i1, int j1, int k1)
    {
        Log.d("qrtest", (new StringBuilder()).append("surfaceChanged:").append(a).toString());
        if(!n)
        {
            a(surfaceholder);
            a = false;
        }
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        Log.d("qrtest", (new StringBuilder()).append("surfaceCreated:").append(a).toString());
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        Log.d("qrtest", (new StringBuilder()).append("surfaceDestroyed:").append(a).toString());
        a = true;
        l.a();
    }

    private static int p = 220;
    private boolean a;
    private CaptureHandler b;
    private boolean c;
    private ImageView d;
    private TranslateAnimation e;
    private Button f;
    private View g;
    private ImageView h;
    private View i;
    private Dialog j;
    private Button k;
    private CameraManager l;
    private ScreenManager m;
    private boolean n;
    private MTimerHandler o;
    private final MTimerHandler q = new MTimerHandler(new _cls11(), false);
    private ProgressDialog r;


    private class _cls6
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            boolean flag;
            if(a.findViewById(0x7f070121).getHeight() <= 0)
            {
                flag = true;
            } else
            {
                GetFriendQRCodeUI.c(a);
                flag = false;
            }
            return flag;
        }

        private GetFriendQRCodeUI a;

        _cls6()
        {
            a = GetFriendQRCodeUI.this;
            super();
        }
    }


    private class _cls11
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            GetFriendQRCodeUI.h(a);
            return false;
        }

        private GetFriendQRCodeUI a;

        _cls11()
        {
            a = GetFriendQRCodeUI.this;
            super();
        }
    }


    private class _cls12
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
            GetFriendQRCodeUI.i(b).a(2000L);
        }

        private NetSceneSearchContact a;
        private GetFriendQRCodeUI b;

        _cls12(NetSceneSearchContact netscenesearchcontact)
        {
            b = GetFriendQRCodeUI.this;
            a = netscenesearchcontact;
            super();
        }
    }


    private class _cls13
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            Util.b(b, a);
_L1:
            return;
            Exception exception;
            exception;
            MMAlert.a(b, 0x7f0a0332, 0x7f0a0010);
              goto _L1
        }

        private String a;
        private GetFriendQRCodeUI b;

        _cls13(String s)
        {
            b = GetFriendQRCodeUI.this;
            a = s;
            super();
        }
    }


    private class _cls14
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            GetFriendQRCodeUI.i(a).a(2000L);
        }

        private GetFriendQRCodeUI a;

        _cls14()
        {
            a = GetFriendQRCodeUI.this;
            super();
        }
    }


    private class _cls9
        implements com.tencent.mm.modelqrcode.CaptureHandler.OnResetPreviewListener
    {

        private GetFriendQRCodeUI a;

        _cls9()
        {
            a = GetFriendQRCodeUI.this;
            super();
        }
    }


    private class _cls10
        implements com.tencent.mm.modelqrcode.CaptureHandler.OnSuccessListener
    {

        public final void a(String s)
        {
            GetFriendQRCodeUI.a(a, s);
        }

        private GetFriendQRCodeUI a;

        _cls10()
        {
            a = GetFriendQRCodeUI.this;
            super();
        }
    }


    private class _cls7
        implements com.tencent.mm.modelqrcode.DecodeFile.DecodeFinCallback
    {

        public final int a(String s)
        {
            GetFriendQRCodeUI.d(a);
            com.tencent.mm.ui.qrcode.GetFriendQRCodeUI.e(a);
            GetFriendQRCodeUI.f(a);
            if(GetFriendQRCodeUI.g(a).isShowing())
            {
                GetFriendQRCodeUI.g(a).dismiss();
                if(Util.i(s))
                    MMAlert.a(a, 0x7f0a034c, 0x7f0a0010);
                else
                    GetFriendQRCodeUI.a(a, s);
            }
            return 0;
        }

        private GetFriendQRCodeUI a;

        _cls7()
        {
            a = GetFriendQRCodeUI.this;
            super();
        }
    }


    private class _cls8
        implements Runnable
    {

        public void run()
        {
            class _cls1
                implements android.content.DialogInterface.OnCancelListener
            {

                public void onCancel(DialogInterface dialoginterface)
                {
                    GetFriendQRCodeUI.d(a.a);
                    if(!a.a.isFinishing())
                        GetFriendQRCodeUI.f(a.a);
                }

                private _cls8 a;

                _cls1()
                {
                    a = _cls8.this;
                    super();
                }
            }

            GetFriendQRCodeUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a034b), true, new _cls1()));
        }

        final GetFriendQRCodeUI a;

        _cls8()
        {
            a = GetFriendQRCodeUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            GetFriendQRCodeUI.a(a).cancel();
        }

        private GetFriendQRCodeUI a;

        _cls1()
        {
            a = GetFriendQRCodeUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            GetFriendQRCodeUI.b(a);
        }

        private GetFriendQRCodeUI a;

        _cls2()
        {
            a = GetFriendQRCodeUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private GetFriendQRCodeUI a;

        _cls3()
        {
            a = GetFriendQRCodeUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent(a, com/tencent/mm/ui/qrcode/SelfQRCodeUI);
            a.startActivity(intent);
        }

        private GetFriendQRCodeUI a;

        _cls4()
        {
            a = GetFriendQRCodeUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            GetFriendQRCodeUI.a(a).show();
        }

        private GetFriendQRCodeUI a;

        _cls5()
        {
            a = GetFriendQRCodeUI.this;
            super();
        }
    }

}
