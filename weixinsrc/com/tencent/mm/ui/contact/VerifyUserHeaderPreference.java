// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.modelfriend.AddrUpload;
import com.tencent.mm.modelfriend.AddrUploadStorage;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.storage.ContactStorage;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.chatting.SpanUtil;
import junit.framework.Assert;

public class VerifyUserHeaderPreference extends Preference
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged, IOnSceneEnd, com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public VerifyUserHeaderPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        m = "";
        n = false;
        a = (MMActivity)context;
    }

    public VerifyUserHeaderPreference(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        m = "";
        n = false;
        a = (MMActivity)context;
    }

    private void a()
    {
        boolean flag;
        if(n && o != null)
            flag = true;
        else
            flag = false;
        if(flag) goto _L2; else goto _L1
_L1:
        Log.b("MicroMsg.VertifyUserHeaderPreference", (new StringBuilder()).append("initView : bindView = ").append(n).append("contact = ").append(o).toString());
_L14:
        return;
_L2:
        if(q != 37) goto _L4; else goto _L3
_L3:
        c.setText((new StringBuilder()).append(o.t()).append(": ").append(m).toString());
        p;
        JVM INSTR tableswitch 18 30: default 184
    //                   18 589
    //                   19 184
    //                   20 184
    //                   21 184
    //                   22 601
    //                   23 601
    //                   24 601
    //                   25 625
    //                   26 601
    //                   27 601
    //                   28 601
    //                   29 601
    //                   30 613;
           goto _L5 _L6 _L5 _L5 _L5 _L7 _L7 _L7 _L8 _L7 _L7 _L7 _L7 _L9
_L5:
        b.setText(0x7f0a015e);
_L10:
        String s1;
        TextView textview;
        StringBuilder stringbuilder;
        String s2;
        String s3;
        String s4;
        String s5;
        if(o.L() != null && !o.L().equals("") && o.M() != null && !o.M().equals(""))
        {
            g.setText((new StringBuilder()).append(ContactStorageLogic.L(o.L())).append("  ").append(o.M()).toString());
            g.setVisibility(0);
            j.setVisibility(0);
        } else
        {
            g.setVisibility(8);
            j.setVisibility(8);
        }
        if(o.K() != null && !o.K().trim().equals(""))
        {
            android.text.SpannableString spannablestring = SpanUtil.a(a, o.K(), -2);
            i.setText(spannablestring);
            i.setVisibility(0);
            l.setVisibility(0);
        } else
        {
            i.setVisibility(8);
            l.setVisibility(8);
        }
        if(ContactStorageLogic.g(o))
            if(o.S() != null && !o.S().equals(""))
            {
                TextView textview1 = h;
                StringBuilder stringbuilder1 = (new StringBuilder()).append(Util.a(o.U(), ""));
                Context context = a;
                Object aobj[] = new Object[1];
                aobj[0] = ContactStorageLogic.K(o.S());
                textview1.setText(stringbuilder1.append(context.getString(0x7f0a018e, aobj)).toString());
                h.setVisibility(0);
                k.setVisibility(0);
            } else
            {
                h.setVisibility(8);
                k.setVisibility(8);
            }
        if(AvatarLogic.i(o.s()) != null)
            d.setImageBitmap(AvatarLogic.i(o.s()));
        else
            d.setImageResource(0x7f020100);
        e.setText(o.t());
        f.setVisibility(0);
        if(o.p() == 1)
            f.setImageDrawable(((MMActivity)a).a(0x7f02013a));
        else
        if(o.p() == 2)
            f.setImageDrawable(((MMActivity)a).a(0x7f020139));
        continue; /* Loop/switch isn't completed */
_L6:
        b.setText(0x7f0a015a);
          goto _L10
_L7:
        b.setText(0x7f0a015b);
          goto _L10
_L9:
        b.setText(0x7f0a0351);
          goto _L10
_L8:
        b.setText(0x7f0a015c);
          goto _L10
_L4:
        if(q != 40) goto _L10; else goto _L11
_L11:
        switch(p)
        {
        default:
            b.setText(0x7f0a0163);
            c.setVisibility(8);
            break;

        case 4: // '\004'
            b.setText(0x7f0a0167);
            s5 = a.getString(0x7f0a0164);
            c.setText((new StringBuilder()).append(s5).append(r).toString());
            break;

        case 10: // '\n'
            s1 = a.getString(0x7f0a0165);
            b.setText(0x7f0a0168);
            textview = c;
            stringbuilder = (new StringBuilder()).append(s1);
            s2 = s;
            s3 = t;
            s4 = c(s2);
            if(s4 == null || s4.equals(""))
                s4 = c(s3);
            textview.setText(stringbuilder.append(s4).toString());
            break;
        }
        if(true) goto _L10; else goto _L12
_L12:
        if(true) goto _L14; else goto _L13
_L13:
    }

    private static String c(String s1)
    {
        String s2;
        if(s1 == null || s1.length() <= 0)
        {
            Log.a("MicroMsg.VertifyUserHeaderPreference", "getLocalMobileRemark : phoneMD5 null");
            s2 = "";
        } else
        {
            AddrUpload addrupload = MMCore.f().t().c(s1);
            if(addrupload == null || addrupload.d() == null)
            {
                Log.a("MicroMsg.VertifyUserHeaderPreference", "getLocalMobileRemark : not in phone addr");
                s2 = "";
            } else
            {
                s2 = addrupload.d();
            }
        }
        return s2;
    }

    public final void a(int i1, int j1, String s1, NetSceneBase netscenebase)
    {
    }

    public final void a(Contact contact, int i1, int j1, long l1, String s1, String s2)
    {
        MMCore.f().h().a(this);
        MMCore.f().y().a(this);
        m = ((Activity)a).getIntent().getStringExtra("Contact_Content");
        o = contact;
        p = i1;
        q = j1;
        r = l1;
        s = s1;
        t = s2;
        boolean flag;
        if(Util.h(contact.s()).length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("initView: contact username is null", flag);
        a();
    }

    public final void a_(String s1)
    {
    }

    public final void b(String s1)
    {
    }

    public void onBindView(View view)
    {
        Log.d("MicroMsg.VertifyUserHeaderPreference", "onBindView");
        b = (TextView)view.findViewById(0x7f0700f2);
        c = (TextView)view.findViewById(0x7f0700f3);
        d = (ImageView)view.findViewById(0x7f0700f4);
        e = (TextView)view.findViewById(0x7f0700f5);
        f = (ImageView)view.findViewById(0x7f0700eb);
        g = (TextView)view.findViewById(0x7f0700f9);
        h = (TextView)view.findViewById(0x7f0700fa);
        i = (TextView)view.findViewById(0x7f0700fb);
        j = (TextView)view.findViewById(0x7f0700f6);
        k = (TextView)view.findViewById(0x7f0700f7);
        l = (TextView)view.findViewById(0x7f0700f8);
        n = true;
        a();
        super.onBindView(view);
    }

    private Context a;
    private TextView b;
    private TextView c;
    private ImageView d;
    private TextView e;
    private ImageView f;
    private TextView g;
    private TextView h;
    private TextView i;
    private TextView j;
    private TextView k;
    private TextView l;
    private String m;
    private boolean n;
    private Contact o;
    private int p;
    private int q;
    private long r;
    private String s;
    private String t;
}
