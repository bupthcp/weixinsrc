// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.ui;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.plugin.album.model.*;
import com.tencent.mm.ui.*;
import java.util.Map;

class AlbumCommentAdapter extends MListAdapter
{

    static View a(AlbumCommentAdapter albumcommentadapter)
    {
        return albumcommentadapter.f;
    }

    static View a(AlbumCommentAdapter albumcommentadapter, View view)
    {
        albumcommentadapter.f = view;
        return view;
    }

    static Context b(AlbumCommentAdapter albumcommentadapter)
    {
        return albumcommentadapter.d;
    }

    static Context c(AlbumCommentAdapter albumcommentadapter)
    {
        return albumcommentadapter.d;
    }

    static Context d(AlbumCommentAdapter albumcommentadapter)
    {
        return albumcommentadapter.d;
    }

    static Context e(AlbumCommentAdapter albumcommentadapter)
    {
        return albumcommentadapter.d;
    }

    static void f(AlbumCommentAdapter albumcommentadapter)
    {
        String s = ((EditText)albumcommentadapter.f.findViewById(0x7f07001a)).getText().toString();
        if(s != null && s.length() != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        NetSceneAlbumPhotoComment netscenealbumphotocomment = new NetSceneAlbumPhotoComment(s, ((AlbumComment)albumcommentadapter.c).d(), ((AlbumComment)albumcommentadapter.c).c(), ((AlbumComment)albumcommentadapter.c).b(), ((AlbumComment)albumcommentadapter.c).g(), ((AlbumComment)albumcommentadapter.c).f(), ((AlbumComment)albumcommentadapter.c).e());
        if(MMCore.g().b(netscenealbumphotocomment))
            MMAlert.a(albumcommentadapter.d, "sending", null, true, albumcommentadapter. new _cls2());
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final volatile Object a(Object obj, Cursor cursor)
    {
        AlbumComment albumcomment = (AlbumComment)obj;
        albumcomment.a(cursor.getInt(0));
        albumcomment.a(cursor.getString(1));
        albumcomment.b(cursor.getString(2));
        albumcomment.c(cursor.getString(3));
        albumcomment.b(cursor.getInt(4));
        albumcomment.c(cursor.getInt(5));
        albumcomment.d(cursor.getInt(6));
        albumcomment.e(cursor.getInt(7));
        albumcomment.d(cursor.getString(8));
        albumcomment.f(cursor.getInt(9));
        albumcomment.e(cursor.getString(10));
        albumcomment.g(cursor.getInt(11));
        return null;
    }

    protected final void a()
    {
        n();
        b();
    }

    public final void b()
    {
        a(MMCore.f().U().a());
        notifyDataSetChanged();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ViewHolder viewholder;
        if(view == null || !(view.getTag() instanceof ViewHolder))
        {
            viewholder = new ViewHolder();
            view = View.inflate(d, 0x7f030005, null);
            viewholder.c = (TextView)view.findViewById(0x7f070010);
            viewholder.f = (TextView)view.findViewById(0x7f070015);
            viewholder.g = (TextView)view.findViewById(0x7f070016);
            viewholder.h = (TextView)view.findViewById(0x7f070017);
            viewholder.a = (ImageView)view.findViewById(0x7f070011);
            viewholder.d = (ImageView)view.findViewById(0x7f070012);
            viewholder.e = (ImageView)view.findViewById(0x7f070014);
            viewholder.i = (ImageView)view.findViewById(0x7f070018);
            viewholder.j = (Button)view.findViewById(0x7f070019);
            view.setTag(viewholder);
        } else
        {
            ViewHolder viewholder1 = (ViewHolder)view.getTag();
            if(viewholder1.b != null)
                viewholder1.b.recycle();
            viewholder = viewholder1;
        }
        c = getItem(i);
        viewholder.c.setText((new StringBuilder()).append(((AlbumComment)c).c()).append(b[((AlbumComment)c).e()]).toString());
        if(((Boolean)a.get(Integer.valueOf(((AlbumComment)c).a()))).booleanValue())
        {
            view.findViewById(0x7f070013).setVisibility(8);
            viewholder.d.setImageResource(0x7f0201b0);
        } else
        {
            view.findViewById(0x7f070013).setVisibility(0);
            AvatarDrawable avatardrawable = (AvatarDrawable)viewholder.e.getDrawable();
            AvatarDrawable avatardrawable2;
            AvatarDrawable avatardrawable3;
            AvatarDrawable avatardrawable5;
            if(avatardrawable == null)
            {
                AvatarDrawable avatardrawable1 = new AvatarDrawable(viewholder.e, AvatarDrawable.a(), AvatarDrawable.a());
                viewholder.e.setImageDrawable(avatardrawable1);
                avatardrawable2 = avatardrawable1;
            } else
            {
                avatardrawable2 = avatardrawable;
            }
            avatardrawable2.a(((AlbumComment)c).c());
            viewholder.f.setText(((AlbumComment)c).g());
            viewholder.g.setText(((AlbumComment)c).f());
            viewholder.h.setText(((AlbumComment)c).h());
            avatardrawable3 = (AvatarDrawable)viewholder.e.getDrawable();
            if(avatardrawable3 == null)
            {
                AvatarDrawable avatardrawable4 = new AvatarDrawable(viewholder.e, AvatarDrawable.a(), AvatarDrawable.a());
                viewholder.e.setImageDrawable(avatardrawable4);
                avatardrawable5 = avatardrawable4;
            } else
            {
                avatardrawable5 = avatardrawable3;
            }
            avatardrawable5.a(((AlbumComment)c).b());
            viewholder.j.setOnClickListener(new _cls1(i));
        }
        return view;
    }

    private Map a;
    private String b[];
    private View f;

    private class _cls2
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
        }

        private AlbumCommentAdapter a;

        _cls2()
        {
            a = AlbumCommentAdapter.this;
            super();
        }
    }


    private class ViewHolder
    {

        ImageView a;
        Bitmap b;
        TextView c;
        ImageView d;
        ImageView e;
        TextView f;
        TextView g;
        TextView h;
        ImageView i;
        Button j;

        ViewHolder()
        {
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            AlbumComment albumcomment = (AlbumComment)a.getItem(b);
            if(AlbumCommentAdapter.a(a) == null)
                AlbumCommentAdapter.a(a, View.inflate(AlbumCommentAdapter.b(a), 0x7f030006, null));
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    AlbumCommentAdapter.f(a.a);
                }

                private _cls1 a;

                _cls1()
                {
                    a = _cls1.this;
                    super();
                }
            }

            MMAlert.a(AlbumCommentAdapter.c(a), (new StringBuilder()).append("todo:").append(albumcomment.c()).toString(), AlbumCommentAdapter.a(a), AlbumCommentAdapter.d(a).getString(0x7f0a0011), AlbumCommentAdapter.e(a).getString(0x7f0a0015), new _cls1());
        }

        final AlbumCommentAdapter a;
        private int b;

        _cls1(int i)
        {
            a = AlbumCommentAdapter.this;
            b = i;
            super();
        }
    }

}
