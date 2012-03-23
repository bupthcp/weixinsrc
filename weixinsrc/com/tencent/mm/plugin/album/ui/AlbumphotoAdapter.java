// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.ui;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.plugin.album.model.AlbumInfo;
import com.tencent.mm.plugin.album.model.AlbumInfoStorage;
import com.tencent.mm.ui.MListAdapter;

// Referenced classes of package com.tencent.mm.plugin.album.ui:
//            AlbumClickListeners, IAlbumEvent

public class AlbumphotoAdapter extends MListAdapter
{

    public AlbumphotoAdapter(Context context, IAlbumEvent ialbumevent)
    {
        super(context, new AlbumInfo());
        a = "";
        g = ialbumevent;
        b = 1;
        c();
    }

    public AlbumphotoAdapter(Context context, IAlbumEvent ialbumevent, String s)
    {
        super(context, new AlbumInfo());
        a = "";
        g = ialbumevent;
        a = s;
        b = 2;
        c();
    }

    private void c()
    {
        i = new AlbumClickListeners(d, g);
        f = MMCore.f().M();
        h = LocaleUtil.a(d.getSharedPreferences("com.tencent.mm_preferences", 0));
        Log.d("MicroMsg.AlbumphotoAdapter", (new StringBuilder()).append("AlbumDayAdapter : userName : ").append(a).append(" country: ").append(h).toString());
    }

    public final volatile Object a(Object obj, Cursor cursor)
    {
        AlbumInfo albuminfo = (AlbumInfo)obj;
        if(albuminfo == null)
        {
            albuminfo = new AlbumInfo();
            Log.d("MicroMsg.AlbumphotoAdapter", "new AlbumInfo");
        }
        albuminfo.a(cursor);
        return albuminfo;
    }

    protected final void a()
    {
        n();
        b();
    }

    public final void b()
    {
        if(b != 1) goto _L2; else goto _L1
_L1:
        a(MMCore.f().J().b());
_L4:
        notifyDataSetChanged();
        return;
_L2:
        if(b == 2)
            a(MMCore.f().J().c(a));
        if(true) goto _L4; else goto _L3
_L3:
    }

    public View getView(int j, View view, ViewGroup viewgroup)
    {
        AlbumInfo albuminfo = (AlbumInfo)getItem(j);
        ViewHolder viewholder1;
        String s;
        String s1;
        if(view == null)
        {
            ViewHolder viewholder = new ViewHolder();
            view = View.inflate(d, 0x7f03000e, null);
            viewholder.d = (LinearLayout)view.findViewById(0x7f07001e);
            viewholder.c = (LinearLayout)view.findViewById(0x7f070033);
            viewholder.b = (ImageView)view.findViewById(0x7f070032);
            viewholder.a = (ImageView)view.findViewById(0x7f070034);
            viewholder.f = (TextView)view.findViewById(0x7f070036);
            viewholder.e = (TextView)view.findViewById(0x7f070035);
            viewholder.g = (TextView)view.findViewById(0x7f070023);
            viewholder.h = (ImageView)view.findViewById(0x7f070038);
            view.setTag(viewholder);
            viewholder1 = viewholder;
        } else
        {
            viewholder1 = (ViewHolder)view.getTag();
        }
        s = (new StringBuilder()).append(f).append("albumb_").append(MD5.a(albuminfo.b().getBytes())).toString();
        viewholder1.h.setBackgroundResource(0x7f020013);
        if(MMCore.f().c())
        {
            viewholder1.b.setImageBitmap(AvatarLogic.i(albuminfo.c()));
            android.graphics.Bitmap bitmap = AlbumInfoStorage.d(s);
            TextView textview;
            StringBuilder stringbuilder;
            if(bitmap == null)
            {
                viewholder1.d.setVisibility(0);
                viewholder1.c.setVisibility(8);
                g.a(albuminfo.b());
            } else
            {
                viewholder1.a.setImageBitmap(bitmap);
                viewholder1.d.setVisibility(8);
                viewholder1.c.setVisibility(0);
            }
        }
        viewholder1.e.setText((new StringBuilder()).append("").append(Util.a(d, 1000L * albuminfo.d(), true)).toString());
        textview = viewholder1.f;
        stringbuilder = (new StringBuilder()).append("");
        if(h.equals("zh_TW") || h.equals("zh_HK"))
            s1 = albuminfo.g();
        else
        if(h.equals("en"))
        {
            s1 = albuminfo.h();
        } else
        {
            h.equals("zh_CN");
            s1 = albuminfo.f();
        }
        textview.setText(stringbuilder.append(s1).toString());
        viewholder1.b.setOnClickListener(i.a(albuminfo.c()));
        viewholder1.h.setOnClickListener(i.a(j));
        return view;
    }

    private String a;
    private int b;
    private String f;
    private IAlbumEvent g;
    private String h;
    private AlbumClickListeners i;

    private class ViewHolder
    {

        ImageView a;
        ImageView b;
        LinearLayout c;
        LinearLayout d;
        TextView e;
        TextView f;
        TextView g;
        ImageView h;

        ViewHolder()
        {
        }
    }

}
