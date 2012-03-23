// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bindmobile;

import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.widget.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelfriend.FriendLogic;
import com.tencent.mm.modelfriend.NetSceneBindOpMobile;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.friend.SmsBindMobileObserver;

// Referenced classes of package com.tencent.mm.ui.bindmobile:
//            BindMContactStatusUI

public class BindMContactIntroUI extends MMWizardActivity
    implements IOnSceneEnd
{

    public BindMContactIntroUI()
    {
        l = null;
    }

    static ProgressDialog a(BindMContactIntroUI bindmcontactintroui, ProgressDialog progressdialog)
    {
        bindmcontactintroui.l = progressdialog;
        return progressdialog;
    }

    static com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState a(BindMContactIntroUI bindmcontactintroui, com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState bindopmobilestate)
    {
        bindmcontactintroui.j = bindopmobilestate;
        return bindopmobilestate;
    }

    static String a(BindMContactIntroUI bindmcontactintroui)
    {
        return bindmcontactintroui.k;
    }

    static void a(BindMContactIntroUI bindmcontactintroui, String s)
    {
        if(bindmcontactintroui.m == null)
        {
            bindmcontactintroui.m = new SmsBindMobileObserver(com.tencent.mm.ui.friend.SmsBindMobileObserver.SmsSceneType.b, new Handler(), bindmcontactintroui, bindmcontactintroui. new _cls7(s));
            bindmcontactintroui.getContentResolver().registerContentObserver(Uri.parse("content://sms/"), true, bindmcontactintroui.m);
        }
        bindmcontactintroui.m.a(s);
    }

    static com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState b(BindMContactIntroUI bindmcontactintroui)
    {
        return bindmcontactintroui.j;
    }

    static Button c(BindMContactIntroUI bindmcontactintroui)
    {
        return bindmcontactintroui.h;
    }

    protected final int a()
    {
        return 0x7f030018;
    }

    public final void a(int i1, int j1, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.BindMContactIntroUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i1).append(" errCode = ").append(j1).append(" errMsg = ").append(s).toString());
        if(((NetSceneBindOpMobile)netscenebase).f() == 3) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(l != null)
        {
            l.dismiss();
            l = null;
        }
        if(i1 == 0 && j1 == 0)
        {
            if(((NetSceneBindOpMobile)netscenebase).f() == 3)
                a(((android.content.Context) (this)), new Intent(this, com/tencent/mm/ui/bindmobile/BindMContactStatusUI));
            continue; /* Loop/switch isn't completed */
        }
        j1;
        JVM INSTR tableswitch -43 -34: default 168
    //                   -43 245
    //                   -42 168
    //                   -41 261
    //                   -40 168
    //                   -39 168
    //                   -38 168
    //                   -37 168
    //                   -36 293
    //                   -35 277
    //                   -34 229;
           goto _L3 _L4 _L3 _L5 _L3 _L3 _L3 _L3 _L6 _L7 _L8
_L6:
        break MISSING_BLOCK_LABEL_293;
_L8:
        break; /* Loop/switch isn't completed */
_L3:
        boolean flag = false;
_L10:
        if(!flag && ((NetSceneBindOpMobile)netscenebase).f() == 3)
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i1);
            aobj[1] = Integer.valueOf(j1);
            Toast.makeText(this, getString(0x7f0a02bb, aobj), 0).show();
        }
        if(true) goto _L1; else goto _L9
_L9:
        Toast.makeText(this, 0x7f0a02d0, 0).show();
        flag = true;
          goto _L10
_L4:
        Toast.makeText(this, 0x7f0a02d1, 0).show();
        flag = true;
          goto _L10
_L5:
        Toast.makeText(this, 0x7f0a02d5, 0).show();
        flag = true;
          goto _L10
_L7:
        Toast.makeText(this, 0x7f0a02d6, 0).show();
        flag = true;
          goto _L10
        Toast.makeText(this, 0x7f0a02d4, 0).show();
        flag = true;
          goto _L10
    }

    protected final void b()
    {
        j = FriendLogic.b();
        a = (ImageView)findViewById(0x7f070045);
        b = (TextView)findViewById(0x7f070047);
        c = (TextView)findViewById(0x7f070046);
        d = (TextView)findViewById(0x7f070040);
        e = (Button)findViewById(0x7f070048);
        f = (Button)findViewById(0x7f07004b);
        g = (Button)findViewById(0x7f07004c);
        h = (Button)findViewById(0x7f07004a);
        i = (Button)findViewById(0x7f070049);
        if(j == com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.a)
        {
            a.setImageResource(0x7f0201db);
            b.setVisibility(0);
            c.setVisibility(8);
            d.setVisibility(8);
            e.setVisibility(0);
            f.setVisibility(8);
            g.setVisibility(8);
            h.setVisibility(8);
            i.setVisibility(8);
        }
        if(j == com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.b)
        {
            a.setImageResource(0x7f0201db);
            b.setVisibility(8);
            c.setVisibility(0);
            d.setVisibility(8);
            e.setVisibility(8);
            f.setVisibility(8);
            g.setVisibility(0);
            h.setVisibility(8);
            i.setVisibility(0);
        }
        if(j == com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.d)
        {
            a.setImageResource(0x7f0201da);
            b.setVisibility(8);
            c.setVisibility(8);
            d.setVisibility(0);
            e.setVisibility(8);
            f.setVisibility(0);
            g.setVisibility(8);
            h.setVisibility(0);
            i.setVisibility(8);
            h.setText(getString(0x7f0a02c2));
        }
        if(j == com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.c)
        {
            a.setImageResource(0x7f0201da);
            b.setVisibility(8);
            c.setVisibility(8);
            d.setVisibility(0);
            e.setVisibility(8);
            f.setVisibility(0);
            g.setVisibility(8);
            h.setVisibility(0);
            i.setVisibility(8);
        }
        k = (String)MMCore.f().f().a(6);
        if(k == null || k.equals(""))
            k = (String)MMCore.f().f().a(4097);
        TextView textview = c;
        Object aobj[] = new Object[1];
        aobj[0] = k;
        textview.setText(getString(0x7f0a02c6, aobj));
        TextView textview1 = d;
        Object aobj1[] = new Object[1];
        aobj1[0] = k;
        textview1.setText(getString(0x7f0a02c7, aobj1));
        e.setOnClickListener(new _cls1());
        i.setOnClickListener(new _cls2());
        f.setOnClickListener(new _cls3());
        g.setOnClickListener(new _cls4());
        h.setOnClickListener(new _cls5());
        b(((android.view.View.OnClickListener) (new _cls6())));
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Log.d("MicroMsg.BindMContactIntroUI", (new StringBuilder()).append("state ").append(FriendLogic.b()).toString());
        MMCore.g().a(27, this);
        d(0x7f0a02b1);
    }

    public void onDestroy()
    {
        MMCore.g().b(27, this);
        if(m != null)
        {
            getContentResolver().unregisterContentObserver(m);
            m.a();
        }
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
        b();
    }

    private ImageView a;
    private TextView b;
    private TextView c;
    private TextView d;
    private Button e;
    private Button f;
    private Button g;
    private Button h;
    private Button i;
    private com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState j;
    private String k;
    private ProgressDialog l;
    private SmsBindMobileObserver m;

    private class _cls7
        implements com.tencent.mm.ui.friend.SmsBindMobileObserver.OnMobileBindedListener
    {

        public final void a(int i1)
        {
            if(i1 != 1) goto _L2; else goto _L1
_L1:
            MMWizardActivity.a(b, new Intent(b, com/tencent/mm/ui/bindmobile/BindMContactStatusUI));
_L4:
            return;
_L2:
            if(i1 == 2)
            {
                Intent intent = new Intent(b, com/tencent/mm/ui/bindmobile/BindMContactVerifyUI);
                intent.putExtra("bindmcontact_mobile", a);
                MMWizardActivity.a(b, intent);
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private String a;
        private BindMContactIntroUI b;

        _cls7(String s)
        {
            b = BindMContactIntroUI.this;
            a = s;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    MMWizardActivity.a(a.a, new Intent(a.a, com/tencent/mm/ui/bindmobile/BindMContactUI));
                }

                private _cls1 a;

                _cls1()
                {
                    a = _cls1.this;
                    super();
                }
            }

            MMAlert.a(a.c(), 0x7f0a02c9, 0x7f0a02c8, new _cls1(), null);
        }

        final BindMContactIntroUI a;

        _cls1()
        {
            a = BindMContactIntroUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            BindMContactIntroUI.a(a, BindMContactIntroUI.a(a));
        }

        private BindMContactIntroUI a;

        _cls2()
        {
            a = BindMContactIntroUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    if(BindMContactIntroUI.a(a.a) != null && !BindMContactIntroUI.a(a.a).equals(""))
                    {
                        NetSceneBindOpMobile netscenebindopmobile = new NetSceneBindOpMobile(BindMContactIntroUI.a(a.a), 3, "");
                        MMCore.g().b(netscenebindopmobile);
                        class _cls1
                            implements android.content.DialogInterface.OnCancelListener
                        {

                            public void onCancel(DialogInterface dialoginterface1)
                            {
                                MMCore.g().a(a);
                            }

                            private NetSceneBindOpMobile a;
                            private _cls1 b;

                            _cls1(NetSceneBindOpMobile netscenebindopmobile)
                            {
                                b = _cls1.this;
                                a = netscenebindopmobile;
                                super();
                            }
                        }

                        BindMContactIntroUI.a(a.a, MMAlert.a(a.a.c(), a.a.getString(0x7f0a0010), a.a.getString(0x7f0a02b9), true, new _cls1(netscenebindopmobile)));
                    }
                }

                private _cls3 a;

                _cls1()
                {
                    a = _cls3.this;
                    super();
                }
            }

            if(Util.a((Integer)MMCore.f().f().a(9)) == 0)
                MMAlert.a(a.c(), a.getString(0x7f0a02d3), a.getString(0x7f0a0010));
            else
                MMAlert.a(a.c(), 0x7f0a02cf, 0x7f0a02ca, new _cls1(), null);
        }

        final BindMContactIntroUI a;

        _cls3()
        {
            a = BindMContactIntroUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            android.content.Context context = a.c();
            BindMContactIntroUI bindmcontactintroui = a;
            Object aobj[] = new Object[1];
            aobj[0] = BindMContactIntroUI.a(a);
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    MMCore.f().f().a(4097, "");
                    MMCore.f().f().a(6, "");
                    a.a.b();
                }

                private _cls4 a;

                _cls1()
                {
                    a = _cls4.this;
                    super();
                }
            }

            MMAlert.a(context, bindmcontactintroui.getString(0x7f0a02df, aobj), a.getString(0x7f0a02d8), new _cls1(), null);
        }

        final BindMContactIntroUI a;

        _cls4()
        {
            a = BindMContactIntroUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(BindMContactIntroUI.b(a) == com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.d)
            {
                FriendLogic.a();
                int i1 = ConfigStorageLogic.d();
                FriendLogic.a();
                int j1 = i1 & 0xfffdffff;
                MMCore.f().f().a(7, Integer.valueOf(j1));
                MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch(17, 2));
                MMCore.g().b(new NetSceneSync(5));
                BindMContactIntroUI.c(a).setText(a.getString(0x7f0a02c1));
                FriendLogic.a(a.getApplicationContext());
                BindMContactIntroUI.a(a, com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.c);
            } else
            {
                Intent intent = new Intent(a, com/tencent/mm/ui/friend/MobileFriendUI);
                intent.addFlags(0x4000000);
                a.startActivity(intent);
                a.finish();
            }
        }

        private BindMContactIntroUI a;

        _cls5()
        {
            a = BindMContactIntroUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private BindMContactIntroUI a;

        _cls6()
        {
            a = BindMContactIntroUI.this;
            super();
        }
    }

}
