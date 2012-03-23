// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelemoji.EmojiInfo;
import com.tencent.mm.modelemoji.EmojiInfoStorage;
import com.tencent.mm.ui.EmojiManager;
import com.tencent.mm.ui.MMActivity;

public class ArtSmileySelectUI extends MMActivity
{

    public ArtSmileySelectUI()
    {
    }

    static SmileyListAdapter a(ArtSmileySelectUI artsmileyselectui)
    {
        return artsmileyselectui.c;
    }

    static int b(ArtSmileySelectUI artsmileyselectui)
    {
        return artsmileyselectui.a;
    }

    protected final int a()
    {
        return 0x7f030015;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        String s = getIntent().getStringExtra("art_smiley_select_group_md5");
        e = MMCore.f().l().d(s);
        if(e != null)
            try
            {
                a = Integer.parseInt(e.o());
                d(EmojiManager.a(this, e));
            }
            catch(Exception exception)
            {
                a = EmojiInfo.c;
            }
        b = (ListView)findViewById(0x7f07003d);
        d = (TextView)findViewById(0x7f07003e);
        c = new SmileyListAdapter(this);
        b.setAdapter(c);
        a(getString(0x7f0a001c), new _cls1());
        b.setOnItemClickListener(new _cls2());
        b.setOnItemLongClickListener(new _cls3());
    }

    protected void onResume()
    {
        super.onResume();
        if(c.getCount() <= 0 || e == null)
        {
            b.setVisibility(8);
            d.setVisibility(0);
        } else
        {
            d.setVisibility(8);
            b.setVisibility(0);
            c.notifyDataSetChanged();
        }
    }

    private int a;
    private ListView b;
    private SmileyListAdapter c;
    private TextView d;
    private EmojiInfo e;

    private class SmileyListAdapter extends BaseAdapter
    {

        public final EmojiInfo a(int i)
        {
            return (EmojiInfo)b.get(i);
        }

        public final void a()
        {
            b = (ArrayList)MMCore.f().l().a(ArtSmileySelectUI.b(c));
            notifyDataSetChanged();
        }

        public int getCount()
        {
            return b.size();
        }

        public volatile Object getItem(int i)
        {
            return a(i);
        }

        public long getItemId(int i)
        {
            return 0L;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            class ViewHolder
            {

                TextView a;
                private SmileyListAdapter b;

                ViewHolder()
                {
                    b = SmileyListAdapter.this;
                    super();
                }
            }

            ViewHolder viewholder;
            android.text.SpannableString spannablestring;
            if(view == null)
            {
                viewholder = new ViewHolder();
                view = View.inflate(a, 0x7f030016, null);
                viewholder.a = (TextView)view.findViewById(0x7f07003f);
                view.setTag(viewholder);
            } else
            {
                viewholder = (ViewHolder)view.getTag();
            }
            spannablestring = SpanUtil.b(c, ((EmojiInfo)b.get(i)).o(), (int)viewholder.a.getTextSize());
            viewholder.a.setText(spannablestring);
            return view;
        }

        private final Context a;
        private ArrayList b;
        private ArtSmileySelectUI c;

        public SmileyListAdapter(Context context)
        {
            c = ArtSmileySelectUI.this;
            super();
            a = context;
            b = (ArrayList)MMCore.f().l().a(ArtSmileySelectUI.b(ArtSmileySelectUI.this));
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.setResult(0);
            a.finish();
        }

        private ArtSmileySelectUI a;

        _cls1()
        {
            a = ArtSmileySelectUI.this;
            super();
        }
    }


    private class _cls2
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            String s = ArtSmileySelectUI.a(a).a(i).o();
            a.setResult(-1, (new Intent()).putExtra("art_smiley_slelct_data", s));
            a.finish();
        }

        private ArtSmileySelectUI a;

        _cls2()
        {
            a = ArtSmileySelectUI.this;
            super();
        }
    }


    private class _cls3
        implements android.widget.AdapterView.OnItemLongClickListener
    {

        public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
        {
            class _cls1
                implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
            {

                public final void a(int j)
                {
                    if(ArtSmileySelectUI.b(b.a) != EmojiInfo.c) goto _L2; else goto _L1
_L1:
                    j;
                    JVM INSTR tableswitch 0 2: default 44
                //                               0 45
                //                               1 102
                //                               2 148;
                       goto _L3 _L4 _L5 _L6
_L3:
                    return;
_L4:
                    b.a.setResult(-1, (new Intent()).putExtra("art_smiley_slelct_data", ArtSmileySelectUI.a(b.a).a(a).o()));
                    b.a.finish();
                    continue; /* Loop/switch isn't completed */
_L5:
                    MMCore.f().l().e(ArtSmileySelectUI.a(b.a).a(a).f());
                    ArtSmileySelectUI.a(b.a).a();
                    continue; /* Loop/switch isn't completed */
_L6:
                    b.a.setResult(0);
                    b.a.finish();
                    continue; /* Loop/switch isn't completed */
_L2:
                    if(j == 0)
                    {
                        b.a.setResult(-1, (new Intent()).putExtra("art_smiley_slelct_data", ArtSmileySelectUI.a(b.a).a(a).o()));
                        b.a.finish();
                    }
                    if(j == 1)
                    {
                        b.a.setResult(0);
                        b.a.finish();
                    }
                    if(true) goto _L3; else goto _L7
_L7:
                }

                private int a;
                private _cls3 b;

                _cls1(int i)
                {
                    b = _cls3.this;
                    a = i;
                    super();
                }
            }

            String s;
            ArtSmileySelectUI artsmileyselectui;
            String as[];
            if(ArtSmileySelectUI.b(a) == EmojiInfo.c)
                s = a.getString(0x7f0a0018);
            else
                s = null;
            artsmileyselectui = a;
            as = new String[1];
            as[0] = a.getString(0x7f0a0011);
            MMAlert.a(artsmileyselectui, null, as, s, new _cls1(i), null);
            return true;
        }

        final ArtSmileySelectUI a;

        _cls3()
        {
            a = ArtSmileySelectUI.this;
            super();
        }
    }

}
