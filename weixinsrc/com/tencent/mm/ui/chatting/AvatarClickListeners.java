// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

class AvatarClickListeners
{

    public AvatarClickListeners(Context context)
    {
        b = context;
    }

    static Context a(AvatarClickListeners avatarclicklisteners)
    {
        return avatarclicklisteners.b;
    }

    public final ClickListener a(String s)
    {
        if(!a.containsKey(s))
            a.put(s, new ClickListener(s));
        return (ClickListener)a.get(s);
    }

    private final Map a = new HashMap();
    private final Context b;

    private class ClickListener
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(a != null && !a.equals(""))
            {
                Intent intent = new Intent();
                intent.setClass(AvatarClickListeners.a(b), com/tencent/mm/ui/contact/ContactInfoUI);
                intent.putExtra("Contact_User", a);
                AvatarClickListeners.a(b).startActivity(intent);
            }
        }

        private final String a;
        private AvatarClickListeners b;

        public ClickListener(String s)
        {
            b = AvatarClickListeners.this;
            super();
            a = s;
        }
    }

}
