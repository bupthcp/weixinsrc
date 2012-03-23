// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.*;
import android.widget.ImageView;
import android.widget.TextView;
import b.a.e;
import b.a.o;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelfriend.AddrUpload;
import com.tencent.mm.modelfriend.AddrUploadStorage;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.ui.MMActivity;
import junit.framework.Assert;

public class FriendPreference extends Preference
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged, ContactInfoUI.IFriendWidget
{

    public FriendPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        k = (MMActivity)context;
        d();
    }

    public FriendPreference(Context context, AttributeSet attributeset, int l)
    {
        super(context, attributeset, l);
        setLayoutResource(0x7f030076);
        setWidgetLayoutResource(0x7f030091);
        d();
    }

    private void d()
    {
        d = false;
        e = null;
        f = null;
        g = "";
        h = 0L;
        i = 0L;
        j = 0;
    }

    private void e()
    {
        if(e == null || !d)
            Log.d("MicroMsg.FriendPreference", (new StringBuilder()).append("initView : contact = ").append(e).append(" bindView = ").append(d).toString());
        else
        if(h > 0L)
            g();
        else
        if(f != null)
            h();
        else
        if(i > 0L)
            f();
        else
            Assert.assertTrue(false);
    }

    private void f()
    {
        if(e != null && d) goto _L2; else goto _L1
_L1:
        Log.d("MicroMsg.FriendPreference", (new StringBuilder()).append("initView : contact = ").append(e).append(" bindView = ").append(d).toString());
_L4:
        return;
_L2:
        j = 3;
        a.setText(getContext().getString(0x7f0a005c));
        b.setText(Util.h(e.u()));
        Bitmap bitmap = AvatarLogic.b((new StringBuilder()).append("").append(i).toString());
        if(bitmap == null)
            bitmap = b.a.e.a(getContext().getResources().openRawResource(0x7f020103));
        if(bitmap != null)
        {
            Bitmap bitmap1 = Util.a(Bitmap.createScaledBitmap(bitmap, 48, 48, false), 4F);
            c.setImageBitmap(bitmap1);
        }
        if(!MMCore.f().c())
            c.setBackgroundDrawable(k.a(0x7f020184));
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void g()
    {
        if(e != null && d) goto _L2; else goto _L1
_L1:
        Log.d("MicroMsg.FriendPreference", (new StringBuilder()).append("initView : contact = ").append(e).append(" bindView = ").append(d).toString());
_L4:
        return;
_L2:
        j = 2;
        a.setText(getContext().getString(0x7f0a024b));
        String s = Util.h(g);
        String s1 = (new StringBuilder()).append(s).append(" ").append(Long.toString(h)).toString();
        b.setText(s1);
        Bitmap bitmap = AvatarLogic.a(h);
        if(bitmap == null)
            bitmap = b.a.e.a(getContext().getResources().openRawResource(0x7f020103));
        if(bitmap != null)
        {
            Bitmap bitmap1 = Util.a(Bitmap.createScaledBitmap(bitmap, 48, 48, false), 4F);
            c.setImageBitmap(bitmap1);
        }
        if(!MMCore.f().c())
            c.setBackgroundDrawable(k.a(0x7f020184));
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void h()
    {
        if(e != null && d) goto _L2; else goto _L1
_L1:
        Log.d("MicroMsg.FriendPreference", (new StringBuilder()).append("initView : contact = ").append(e).append(" bindView = ").append(d).toString());
_L4:
        return;
_L2:
        if(f != null)
        {
            j = 1;
            a.setText(getContext().getString(0x7f0a024c));
            String s = Util.h(f.d());
            String s1 = (new StringBuilder()).append(s).append(" ").append(Util.h(f.g())).toString();
            b.setText(s1);
            Bitmap bitmap = o.b(f.c(), getContext());
            if(bitmap == null)
            {
                c.setImageDrawable(k.a(0x7f020102));
            } else
            {
                Bitmap bitmap1 = Util.a(Bitmap.createScaledBitmap(bitmap, 48, 48, false), 4F);
                c.setImageBitmap(bitmap1);
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int a()
    {
        return j;
    }

    public final boolean a(Contact contact, String s, long l, String s1, long l1)
    {
        boolean flag;
        flag = false;
        boolean flag1;
        boolean flag2;
        if(contact != null)
            flag1 = true;
        else
            flag1 = flag;
        Assert.assertTrue(flag1);
        if(Util.h(contact.s()).length() > 0)
            flag2 = true;
        else
            flag2 = flag;
        Assert.assertTrue(flag2);
        MMCore.f().y().a(this);
        e = contact;
        h = l;
        g = s1;
        i = l1;
        if(s == null || s.length() <= 0) goto _L2; else goto _L1
_L1:
        f = MMCore.f().t().d(s);
        if(f != null && f.b() != null && f.b().length() > 0) goto _L4; else goto _L3
_L3:
        Log.a("MicroMsg.FriendPreference", (new StringBuilder()).append("error : this is not the mobile contact, MD5 = ").append(s).toString());
        c();
_L6:
        return flag;
_L4:
        if(f.e() == null || f.e().length() <= 0)
        {
            f.g(contact.s());
            f.a(128);
            if(MMCore.f().t().a(f.b(), f) == -1)
            {
                Log.a("MicroMsg.FriendPreference", "update mobile contact username failed");
                c();
                continue; /* Loop/switch isn't completed */
            }
        }
        h();
        flag = true;
        continue; /* Loop/switch isn't completed */
_L2:
        if(l > 0L)
        {
            g();
            flag = true;
        } else
        if(l1 > 0L)
        {
            f();
            flag = true;
        } else
        {
            c();
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    public final String b()
    {
        return b.getText().toString();
    }

    public final void b(String s)
    {
        long l = AvatarLogic.d(s);
        if(l > 0L && h == l && AvatarLogic.i(s) != null)
            e();
        if(AvatarLogic.c(s) == i && AvatarLogic.i(s) != null)
            e();
    }

    public final boolean c()
    {
        MMCore.f().y().b(this);
        return true;
    }

    public volatile CharSequence getSummary()
    {
        return b();
    }

    public void onBindView(View view)
    {
        a = (TextView)view.findViewById(0x7f070124);
        b = (TextView)view.findViewById(0x7f070178);
        c = (ImageView)view.findViewById(0x7f070177);
        d = true;
        e();
        super.onBindView(view);
    }

    protected View onCreateView(ViewGroup viewgroup)
    {
        View view = super.onCreateView(viewgroup);
        LayoutInflater layoutinflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(0x7f070117);
        viewgroup1.removeAllViews();
        layoutinflater.inflate(0x7f03007e, viewgroup1);
        return view;
    }

    private TextView a;
    private TextView b;
    private ImageView c;
    private boolean d;
    private Contact e;
    private AddrUpload f;
    private String g;
    private long h;
    private long i;
    private int j;
    private MMActivity k;
}
