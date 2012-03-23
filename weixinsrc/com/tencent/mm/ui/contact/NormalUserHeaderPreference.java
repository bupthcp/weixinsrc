// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.*;
import b.a.e;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelgetvuserinfo.SceneGetVUserInfo;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.storage.ContactStorage;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.chatting.SpanUtil;
import junit.framework.Assert;

public class NormalUserHeaderPreference extends Preference
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged, IOnSceneEnd, com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public NormalUserHeaderPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        k = null;
        o = false;
        s = false;
        r = (MMActivity)context;
        b();
    }

    public NormalUserHeaderPreference(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        k = null;
        o = false;
        s = false;
        r = (MMActivity)context;
        b();
    }

    static Dialog a(NormalUserHeaderPreference normaluserheaderpreference, Dialog dialog)
    {
        normaluserheaderpreference.k = dialog;
        return dialog;
    }

    static View a(NormalUserHeaderPreference normaluserheaderpreference, View view)
    {
        normaluserheaderpreference.j = view;
        return view;
    }

    static ImageView a(NormalUserHeaderPreference normaluserheaderpreference, ImageView imageview)
    {
        normaluserheaderpreference.h = imageview;
        return imageview;
    }

    static ProgressBar a(NormalUserHeaderPreference normaluserheaderpreference, ProgressBar progressbar)
    {
        normaluserheaderpreference.i = progressbar;
        return progressbar;
    }

    static MMActivity a(NormalUserHeaderPreference normaluserheaderpreference)
    {
        return normaluserheaderpreference.r;
    }

    private void a(Bitmap bitmap)
    {
        i.setVisibility(4);
        j.setVisibility(4);
        h.setImageBitmap(bitmap);
_L2:
        return;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    static void a(NormalUserHeaderPreference normaluserheaderpreference, Bitmap bitmap)
    {
        normaluserheaderpreference.a(bitmap);
    }

    static Dialog b(NormalUserHeaderPreference normaluserheaderpreference)
    {
        return normaluserheaderpreference.k;
    }

    private void b()
    {
        o = false;
        q = "";
    }

    static Contact c(NormalUserHeaderPreference normaluserheaderpreference)
    {
        return normaluserheaderpreference.n;
    }

    private boolean c()
    {
        boolean flag;
        if(o && n != null)
            flag = true;
        else
            flag = false;
        return flag;
    }

    static ImageView d(NormalUserHeaderPreference normaluserheaderpreference)
    {
        return normaluserheaderpreference.h;
    }

    private void d()
    {
        if(c()) goto _L2; else goto _L1
_L1:
        Log.b("MicroMsg.ContactInfoHeader", (new StringBuilder()).append("initView : bindView = ").append(o).append("contact = ").append(n).toString());
_L5:
        return;
_L2:
        boolean flag;
        flag = ContactStorageLogic.t(n.s());
        Bitmap bitmap;
        if(flag)
        {
            b.setText("");
            if(ContactStorageLogic.u(ConfigStorageLogic.b()).equals(n.s()))
            {
                g.setVisibility(0);
                g.setOnClickListener(new _cls1());
            }
        } else
        {
            android.text.SpannableString spannablestring = SpanUtil.a(r, (new StringBuilder()).append(Util.h(n.z())).append(" ").toString(), (int)b.getTextSize());
            b.setText(spannablestring);
        }
        e.setVisibility(0);
        if(n.p() != 1) goto _L4; else goto _L3
_L3:
        e.setImageDrawable(r.a(0x7f02013a));
_L6:
        if(n.N() > 0)
        {
            f.setVisibility(0);
            bitmap = b.a.e.a(SceneGetVUserInfo.a(n.N()), 1.5F);
            f.setImageBitmap(bitmap);
        }
        a.setImageBitmap(AvatarLogic.i(n.s()));
        a.setOnClickListener(new _cls2());
        if(ContactStorageLogic.r(n.s()))
            c.setText((new StringBuilder()).append(getContext().getString(0x7f0a0038)).append(n.B()).toString());
        else
        if(ContactStorageLogic.p(n.s()))
            c.setText((new StringBuilder()).append(getContext().getString(0x7f0a003a)).append(n.B()).toString());
        else
        if(p)
        {
            if(n.P() == null || n.P().equals(""))
                c.setText(0x7f0a0028);
            else
                c.setText(n.P());
        } else
        if(flag)
            c.setText((new StringBuilder()).append(Util.h(ContactStorageLogic.L(n.L()))).append(" ").append(Util.h(n.M())).toString().trim());
        else
        if(ContactStorageLogic.q(n.s()))
        {
            c.setVisibility(4);
        } else
        {
            String s1 = Util.h(n.B());
            c.setText((new StringBuilder()).append(getContext().getString(0x7f0a0039)).append(s1).toString());
        }
        if(Util.h(q).length() <= 0)
        {
            l.setVisibility(8);
        } else
        {
            l.setVisibility(0);
            m.setText(q);
        }
        e();
        if(true) goto _L5; else goto _L4
_L4:
        if(n.p() == 2)
            e.setImageDrawable(r.a(0x7f020139));
          goto _L6
    }

    private void e()
    {
        String s1 = n.D();
        boolean flag;
        if(n.l() || n.n())
            flag = true;
        else
            flag = false;
        if(Util.h(s1).length() <= 0 || !flag)
            d.setVisibility(8);
        else
        if(p)
        {
            d.setText(0x7f0a0028);
        } else
        {
            d.setVisibility(0);
            android.text.SpannableString spannablestring = SpanUtil.a(r, (new StringBuilder()).append(getContext().getString(0x7f0a023e)).append(s1).toString(), (int)d.getTextSize());
            d.setText(spannablestring);
        }
    }

    static boolean e(NormalUserHeaderPreference normaluserheaderpreference)
    {
        return normaluserheaderpreference.s;
    }

    static ProgressBar f(NormalUserHeaderPreference normaluserheaderpreference)
    {
        return normaluserheaderpreference.i;
    }

    static View g(NormalUserHeaderPreference normaluserheaderpreference)
    {
        return normaluserheaderpreference.j;
    }

    public final void a()
    {
        MMCore.f().h().b(this);
        MMCore.f().y().b(this);
        MMCore.g().b(46, this);
    }

    public final void a(int i1, int j1, String s1, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.ContactInfoHeader", (new StringBuilder()).append("onSceneEnd: errType = ").append(i1).append(" errCode = ").append(j1).append(" errMsg = ").append(s1).toString());
        i.setVisibility(4);
        j.setVisibility(4);
        if(i1 != 0 || j1 != 0) goto _L2; else goto _L1
_L1:
        String s2 = n.s();
        if(ContactStorageLogic.t(s2))
            s2 = ContactStorageLogic.u(s2);
        Bitmap bitmap = MMCore.f().y().d(s2);
        if(bitmap != null)
            a(bitmap);
_L4:
        return;
_L2:
        if(i1 != 4 || j1 != -55)
            Toast.makeText(getContext(), 0x7f0a0287, 0).show();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a(Contact contact)
    {
        boolean flag = false;
        MMCore.f().h().a(this);
        MMCore.f().y().a(this);
        n = contact;
        p = r.getIntent().getBooleanExtra("Contact_IsLBSFriend", flag);
        q = r.getIntent().getStringExtra("Contact_Content");
        if(Util.h(contact.s()).length() > 0)
            flag = true;
        Assert.assertTrue("initView: contact username is null", flag);
        d();
    }

    public final void a_(String s1)
    {
        if(c()) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.ContactInfoHeader", (new StringBuilder()).append("initView : bindView = ").append(o).append("contact = ").append(n).toString());
_L4:
        return;
_L2:
        if(Util.h(s1).length() > 0 && n != null && n.s().equals(s1))
        {
            n = MMCore.f().h().c(s1);
            e();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void b(String s1)
    {
        if(c()) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.ContactInfoHeader", (new StringBuilder()).append("initView : bindView = ").append(o).append("contact = ").append(n).toString());
_L4:
        return;
_L2:
        if(Util.h(s1).length() <= 0)
            Log.a("MicroMsg.ContactInfoHeader", (new StringBuilder()).append("notifyChanged: user = ").append(s1).toString());
        else
        if(s1.equals(n.s()))
            d();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void onBindView(View view)
    {
        Log.d("MicroMsg.ContactInfoHeader", "onBindView");
        b = (TextView)view.findViewById(0x7f0700e8);
        c = (TextView)view.findViewById(0x7f0700ed);
        d = (TextView)view.findViewById(0x7f0700ee);
        g = (Button)view.findViewById(0x7f0700ef);
        m = (TextView)view.findViewById(0x7f0700f1);
        l = (LinearLayout)view.findViewById(0x7f0700f0);
        a = (ImageView)view.findViewById(0x7f0700e7);
        e = (ImageView)view.findViewById(0x7f0700eb);
        f = (ImageView)view.findViewById(0x7f0700ec);
        o = true;
        d();
        super.onBindView(view);
    }

    private ImageView a;
    private TextView b;
    private TextView c;
    private TextView d;
    private ImageView e;
    private ImageView f;
    private Button g;
    private ImageView h;
    private ProgressBar i;
    private View j;
    private Dialog k;
    private LinearLayout l;
    private TextView m;
    private Contact n;
    private boolean o;
    private boolean p;
    private String q;
    private MMActivity r;
    private boolean s;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            NormalUserHeaderPreference.a(a).startActivity(new Intent(NormalUserHeaderPreference.a(a), com/tencent/mm/ui/bottle/BottlePersonalInfoUI));
        }

        private NormalUserHeaderPreference a;

        _cls1()
        {
            a = NormalUserHeaderPreference.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(NormalUserHeaderPreference.b(a) == null || !NormalUserHeaderPreference.b(a).isShowing())
            {
                View view1 = LayoutInflater.from(a.getContext()).inflate(0x7f030101, null);
                NormalUserHeaderPreference.a(a, new Dialog(a.getContext(), 0x7f0b004b));
                class _cls1
                    implements android.view.View.OnClickListener
                {

                    public void onClick(View view2)
                    {
                        NormalUserHeaderPreference.b(a.a).dismiss();
                    }

                    private _cls2 a;

                _cls1()
                {
                    a = _cls2.this;
                    super();
                }
                }

                view1.setOnClickListener(new _cls1());
                NormalUserHeaderPreference.b(a).setCanceledOnTouchOutside(true);
                NormalUserHeaderPreference.b(a).setContentView(view1);
                NormalUserHeaderPreference.b(a).show();
                NormalUserHeaderPreference.a(a, (ImageView)view1.findViewById(0x7f0702ba));
                NormalUserHeaderPreference.a(a, (ProgressBar)view1.findViewById(0x7f0702bc));
                NormalUserHeaderPreference.a(a, view1.findViewById(0x7f0702bb));
                Bitmap bitmap = AvatarLogic.h(NormalUserHeaderPreference.c(a).s());
                if(bitmap == null)
                    bitmap = AvatarStorage.a(NormalUserHeaderPreference.a(a));
                NormalUserHeaderPreference.d(a).setImageBitmap(bitmap);
                if(!com.tencent.mm.ui.contact.NormalUserHeaderPreference.e(a) && !AvatarLogic.g(NormalUserHeaderPreference.c(a).s()))
                {
                    Log.c("MicroMsg.ContactInfoHeader", (new StringBuilder()).append("the contact ").append(NormalUserHeaderPreference.c(a).s()).append(" has no hd head img").toString());
                    NormalUserHeaderPreference.f(a).setVisibility(4);
                    NormalUserHeaderPreference.g(a).setVisibility(4);
                } else
                if(!MMCore.f().c())
                {
                    NormalUserHeaderPreference.a(a, AvatarStorage.a(NormalUserHeaderPreference.a(a)));
                } else
                {
                    String s1 = NormalUserHeaderPreference.c(a).s();
                    if(ContactStorageLogic.t(s1))
                        s1 = ContactStorageLogic.u(s1);
                    Bitmap bitmap1 = MMCore.f().y().d(s1);
                    if(bitmap1 != null)
                    {
                        Log.c("MicroMsg.ContactInfoHeader", (new StringBuilder()).append("The HDAvatar of ").append(s1).append(" is already exists").toString());
                        NormalUserHeaderPreference.a(a, bitmap1);
                    } else
                    {
                        NetSceneGetHDHeadImg netscenegethdheadimg = new NetSceneGetHDHeadImg(NormalUserHeaderPreference.c(a).s());
                        MMCore.g().a(46, a);
                        MMCore.g().b(netscenegethdheadimg);
                    }
                }
            }
        }

        final NormalUserHeaderPreference a;

        _cls2()
        {
            a = NormalUserHeaderPreference.this;
            super();
        }
    }

}
