// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.*;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.storage.ContactStorage;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity

public final class PluginPreference extends Preference
{

    public PluginPreference(Context context)
    {
        this(context, null);
        h = (MMActivity)context;
    }

    public PluginPreference(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
        h = (MMActivity)context;
    }

    public PluginPreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        c = "";
        d = -1;
        e = 8;
        f = null;
        g = 255;
        h = (MMActivity)context;
        setLayoutResource(0x7f030076);
        setWidgetLayoutResource(0x7f030091);
    }

    public final String a()
    {
        return b;
    }

    public final void a(int i)
    {
        g = i;
    }

    public final void a(String s, int i)
    {
        c = s;
        d = i;
    }

    public final boolean a(String s)
    {
        Contact contact = MMCore.f().h().c(s);
        boolean flag;
        if(contact == null || contact.o() == 0 || !contact.l())
        {
            Log.a("MicroMsg.PluginPreference", "plugin do not exist");
            flag = false;
        } else
        {
            a = contact.s();
            b = contact.z();
            setKey((new StringBuilder()).append("settings_plugins_list_#").append(a).toString());
            flag = true;
        }
        return flag;
    }

    public final String b()
    {
        return a;
    }

    public final void b(int i)
    {
        e = i;
    }

    public final void c()
    {
        if(f != null)
        {
            android.graphics.Bitmap bitmap = AvatarLogic.i(a);
            if(bitmap == null)
            {
                f.setImageResource(0x7f020184);
            } else
            {
                f.setImageBitmap(bitmap);
                f.setBackgroundColor(0);
            }
        }
    }

    protected final void onBindView(View view)
    {
        super.onBindView(view);
        f = (ImageView)view.findViewById(0x7f070177);
        f.setAlpha(g);
        TextView textview = (TextView)view.findViewById(0x7f07017b);
        if(textview != null)
        {
            textview.setVisibility(e);
            textview.setText(c);
            if(d != -1)
                textview.setBackgroundDrawable(h.a(d));
        }
        c();
    }

    protected final View onCreateView(ViewGroup viewgroup)
    {
        View view = super.onCreateView(viewgroup);
        LayoutInflater layoutinflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(0x7f070117);
        viewgroup1.removeAllViews();
        layoutinflater.inflate(0x7f030083, viewgroup1);
        return view;
    }

    private String a;
    private String b;
    private String c;
    private int d;
    private int e;
    private ImageView f;
    private int g;
    private MMActivity h;
}
