// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.ui;

import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.plugin.album.model.AlbumInfo;
import com.tencent.mm.ui.MListAdapter;

public class ThumbphotoAdapter extends MListAdapter
{

    public final volatile Object a(Object obj, Cursor cursor)
    {
        AlbumInfo albuminfo = (AlbumInfo)obj;
        if(albuminfo == null)
        {
            albuminfo = new AlbumInfo();
            Log.d("MicroMsg.ThumbphotoAdapter", "new AlbumInfo");
        }
        albuminfo.a(cursor);
        return albuminfo;
    }

    protected final void a()
    {
        n();
        notifyDataSetChanged();
    }

    public final void b()
    {
        notifyDataSetChanged();
    }

    public int getCount()
    {
        return k().getCount();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        getItem(i);
        if(view == null)
            view = View.inflate(d, 0x7f0300f4, null);
        view.findViewById(0x7f070295);
        return view;
    }
}
