// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.ui;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.tencent.mm.plugin.album.ui:
//            IAlbumEvent

class AlbumClickListeners
{

    public AlbumClickListeners(Context context, IAlbumEvent ialbumevent)
    {
        c = context;
        d = ialbumevent;
        a = new HashMap();
        b = new HashMap();
    }

    static Context a(AlbumClickListeners albumclicklisteners)
    {
        return albumclicklisteners.c;
    }

    public final android.view.View.OnClickListener a(int i)
    {
        if(!b.containsKey(Integer.valueOf(i)))
            b.put(Integer.valueOf(i), new ClickLikeListener(i));
        return (android.view.View.OnClickListener)b.get(Integer.valueOf(i));
    }

    public final android.view.View.OnClickListener a(String s)
    {
        if(!a.containsKey(s))
            a.put(s, new ClickAvatarListener(s));
        return (android.view.View.OnClickListener)a.get(s);
    }

    private Map a;
    private Map b;
    private Context c;
    private IAlbumEvent d;

    private class ClickLikeListener
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
        }

        private int a;
        private AlbumClickListeners b;

        public ClickLikeListener(int i)
        {
            b = AlbumClickListeners.this;
            super();
            a = i;
        }
    }


    private class ClickAvatarListener
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(a != null && !a.equals(""))
            {
                Log.d("AvatarClickListeners", (new StringBuilder()).append("userName").append(a).toString());
                Intent intent = new Intent();
                intent.setClass(AlbumClickListeners.a(b), com/tencent/mm/ui/contact/ContactInfoUI);
                intent.putExtra("Contact_User", a);
                AlbumClickListeners.a(b).startActivity(intent);
            }
        }

        private String a;
        private AlbumClickListeners b;

        public ClickAvatarListener(String s)
        {
            b = AlbumClickListeners.this;
            super();
            a = s;
        }
    }

}
