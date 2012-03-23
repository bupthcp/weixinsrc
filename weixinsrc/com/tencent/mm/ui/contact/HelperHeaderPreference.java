// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.ui.tools.SwitchColorStateList;
import junit.framework.Assert;

public class HelperHeaderPreference extends Preference
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged
{

    public HelperHeaderPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        g = false;
    }

    public HelperHeaderPreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        g = false;
    }

    private void a(String s)
    {
        Log.d("MicroMsg.HelperHeaderPreference", (new StringBuilder()).append("updateAvatar : user = ").append(s).toString());
        if(b != null && e.s().equals(s))
            b.setImageBitmap(AvatarLogic.i(s));
    }

    private void b()
    {
        if(g && e != null) goto _L2; else goto _L1
_L1:
        Log.b("MicroMsg.HelperHeaderPreference", (new StringBuilder()).append("initView : bindView = ").append(g).append("contact = ").append(e).toString());
_L4:
        return;
_L2:
        a(e.s());
        if(a != null)
            a.setText(e.z());
        if(f != null)
        {
            f.a(this);
            CharSequence charsequence = f.a();
            if(charsequence != null)
            {
                d.setText(charsequence);
                d.setVisibility(0);
            } else
            {
                d.setVisibility(8);
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a()
    {
        if(f != null)
            f.b();
        MMCore.f().y().b(this);
    }

    public final void a(Contact contact, IHandler ihandler)
    {
        a();
        boolean flag;
        if(contact != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        MMCore.f().y().a(this);
        e = contact;
        f = ihandler;
        b();
    }

    public final void a(boolean flag)
    {
        if(f != null)
            if(flag)
            {
                c.setTextColor(SwitchColorStateList.a(getContext()));
                c.setText(0x7f0a019d);
                c.setCompoundDrawablesWithIntrinsicBounds(0x7f0202b2, 0, 0, 0);
            } else
            {
                c.setTextColor(SwitchColorStateList.b(getContext()));
                c.setText(0x7f0a019c);
                c.setCompoundDrawablesWithIntrinsicBounds(0x7f0202b1, 0, 0, 0);
            }
    }

    public final void b(String s)
    {
        a(s);
    }

    public void onBindView(View view)
    {
        b = (ImageView)view.findViewById(0x7f0700e7);
        c = (TextView)view.findViewById(0x7f0700e9);
        a = (TextView)view.findViewById(0x7f0700e8);
        d = (TextView)view.findViewById(0x7f0700ea);
        g = true;
        b();
        super.onBindView(view);
    }

    private TextView a;
    private ImageView b;
    private TextView c;
    private TextView d;
    private Contact e;
    private IHandler f;
    private boolean g;

    private class IHandler
    {

        public abstract CharSequence a();

        public abstract void a(HelperHeaderPreference helperheaderpreference);

        public abstract boolean a(boolean flag);

        public abstract void b();
    }

}
