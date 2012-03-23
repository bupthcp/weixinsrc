// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.GridView;
import b.a.e;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.ui.MMActivity;

public class SmileyGrid extends GridView
{

    public SmileyGrid(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        f = 0;
        g = 0;
        k = new _cls1();
        l = new _cls2();
        d = (MMActivity)context;
        b = 0;
        c = new SmileyAdapter();
        setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        setBackgroundResource(0);
        setStretchMode(2);
        a();
        setAdapter(c);
        setOnItemClickListener(l);
        setOnItemLongClickListener(k);
    }

    static int a(SmileyGrid smileygrid)
    {
        return smileygrid.b;
    }

    private void a()
    {
        b;
        JVM INSTR tableswitch 0 3: default 36
    //                   0 45
    //                   1 45
    //                   2 61
    //                   3 61;
           goto _L1 _L2 _L2 _L3 _L3
_L1:
        setColumnWidth(a);
        return;
_L2:
        a = b.a.e.a(d, 35F);
        continue; /* Loop/switch isn't completed */
_L3:
        a = b.a.e.a(d, 73F);
        if(true) goto _L1; else goto _L4
_L4:
    }

    static SmileyAdapter b(SmileyGrid smileygrid)
    {
        return smileygrid.c;
    }

    static int c(SmileyGrid smileygrid)
    {
        return smileygrid.h;
    }

    static int d(SmileyGrid smileygrid)
    {
        return smileygrid.g;
    }

    static int e(SmileyGrid smileygrid)
    {
        return smileygrid.f;
    }

    static int f(SmileyGrid smileygrid)
    {
        return smileygrid.e;
    }

    static OnSmileyLongClickListener g(SmileyGrid smileygrid)
    {
        return smileygrid.j;
    }

    static OnSmileySelectedListener h(SmileyGrid smileygrid)
    {
        return smileygrid.i;
    }

    static MMActivity i(SmileyGrid smileygrid)
    {
        return smileygrid.d;
    }

    public final void a(int i1, int j1, int k1, int l1, int i2, int j2)
    {
        b = i1;
        h = j1;
        e = k1;
        f = l1;
        g = i2;
        a();
        setNumColumns(j2);
        Log.e("MicroMsg.SmileyGrid", (new StringBuilder()).append("type:").append(i1).append(" itemsPerPage:").append(l1).append(" totalPage:").append(i2).append(" curPage:").append(h).toString());
        c.a();
    }

    public final void a(OnSmileyLongClickListener onsmileylongclicklistener)
    {
        j = onsmileylongclicklistener;
    }

    public final void a(OnSmileySelectedListener onsmileyselectedlistener)
    {
        i = onsmileyselectedlistener;
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        super.onSizeChanged(i1, j1, k1, l1);
        Log.e("MicroMsg.SmileyGrid", (new StringBuilder()).append("on grid size changed:").append(b).toString());
    }

    private int a;
    private int b;
    private SmileyAdapter c;
    private MMActivity d;
    private int e;
    private int f;
    private int g;
    private int h;
    private OnSmileySelectedListener i;
    private OnSmileyLongClickListener j;
    private android.widget.AdapterView.OnItemLongClickListener k;
    private android.widget.AdapterView.OnItemClickListener l;

    private class _cls1
        implements android.widget.AdapterView.OnItemLongClickListener
    {

        public boolean onItemLongClick(AdapterView adapterview, View view, int i1, long l1)
        {
            SmileyGrid.a(a);
            JVM INSTR tableswitch 3 3: default 24
        //                       3 26;
               goto _L1 _L2
_L1:
            return true;
_L2:
            if((i1 != -1 + SmileyGrid.b(a).getCount() || SmileyGrid.c(a) != -1 + SmileyGrid.d(a)) && i1 + SmileyGrid.c(a) * com.tencent.mm.ui.chatting.SmileyGrid.e(a) < SmileyGrid.f(a) && SmileyGrid.g(a) != null)
                SmileyGrid.g(a).a(SmileyGrid.b(a).a(i1 + SmileyGrid.c(a) * com.tencent.mm.ui.chatting.SmileyGrid.e(a)));
            if(true) goto _L1; else goto _L3
_L3:
        }

        private SmileyGrid a;

        _cls1()
        {
            a = SmileyGrid.this;
            super();
        }

        private class OnSmileyLongClickListener
        {

            public abstract void a(EmojiInfo emojiinfo);
        }

    }


    private class _cls2
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i1, long l1)
        {
            SmileyGrid.a(a);
            JVM INSTR tableswitch 0 3: default 36
        //                       0 37
        //                       1 37
        //                       2 295
        //                       3 148;
               goto _L1 _L2 _L2 _L3 _L4
_L1:
            return;
_L2:
            if(i1 == -1 + SmileyGrid.b(a).getCount())
                SmileyGrid.h(a).a(4, -1, "");
            else
            if(i1 + SmileyGrid.c(a) * (-1 + com.tencent.mm.ui.chatting.SmileyGrid.e(a)) < SmileyGrid.f(a))
                SmileyGrid.h(a).a(SmileyGrid.a(a), i1 + SmileyGrid.c(a) * (-1 + com.tencent.mm.ui.chatting.SmileyGrid.e(a)), "");
            continue; /* Loop/switch isn't completed */
_L4:
            if(i1 == -1 + SmileyGrid.b(a).getCount() && SmileyGrid.c(a) == -1 + SmileyGrid.d(a))
                SmileyGrid.h(a).a(5, -1, "");
            else
            if(i1 + SmileyGrid.c(a) * com.tencent.mm.ui.chatting.SmileyGrid.e(a) < SmileyGrid.f(a))
                SmileyGrid.h(a).a(3, i1 + SmileyGrid.c(a) * com.tencent.mm.ui.chatting.SmileyGrid.e(a), SmileyGrid.b(a).a(i1 + SmileyGrid.c(a) * com.tencent.mm.ui.chatting.SmileyGrid.e(a)).f());
            continue; /* Loop/switch isn't completed */
_L3:
            if(i1 + SmileyGrid.c(a) * com.tencent.mm.ui.chatting.SmileyGrid.e(a) < SmileyGrid.f(a))
                SmileyGrid.h(a).a(2, i1 + SmileyGrid.c(a) * com.tencent.mm.ui.chatting.SmileyGrid.e(a), SmileyGrid.b(a).a(i1 + SmileyGrid.c(a) * com.tencent.mm.ui.chatting.SmileyGrid.e(a)).f());
            if(true) goto _L1; else goto _L5
_L5:
        }

        private SmileyGrid a;

        _cls2()
        {
            a = SmileyGrid.this;
            super();
        }

        private class OnSmileySelectedListener
        {

            public abstract void a(int i1, int j1, String s);
        }

    }


    private class SmileyAdapter extends BaseAdapter
    {

        public final EmojiInfo a(int i1)
        {
            EmojiInfo emojiinfo;
            if(SmileyGrid.a(c) == 3)
                emojiinfo = (EmojiInfo)a.get(i1);
            else
            if(SmileyGrid.a(c) == 2)
                emojiinfo = (EmojiInfo)b.get(i1);
            else
                emojiinfo = null;
            return emojiinfo;
        }

        public final void a()
        {
            if(SmileyGrid.a(c) == 3)
                if(!MMCore.f().c())
                    a = (ArrayList)MMCore.f().l().a(EmojiInfo.a);
                else
                    a = (ArrayList)MMCore.f().l().a();
            if(SmileyGrid.a(c) == 2)
                b = (ArrayList)MMCore.f().l().a(EmojiInfo.b);
            super.notifyDataSetChanged();
        }

        public int getCount()
        {
            int i1;
            if(SmileyGrid.a(c) == 0 && SmileyGrid.a(c) == 1)
                i1 = com.tencent.mm.ui.chatting.SmileyGrid.e(c);
            else
            if(SmileyGrid.a(c) == 3)
            {
                if(SmileyGrid.c(c) == -1 + SmileyGrid.d(c))
                    i1 = (1 + SmileyGrid.f(c)) - SmileyGrid.c(c) * com.tencent.mm.ui.chatting.SmileyGrid.e(c);
                else
                    i1 = com.tencent.mm.ui.chatting.SmileyGrid.e(c);
            } else
            if(SmileyGrid.a(c) == 2)
            {
                if(SmileyGrid.c(c) == -1 + SmileyGrid.d(c))
                    i1 = SmileyGrid.f(c) - SmileyGrid.c(c) * com.tencent.mm.ui.chatting.SmileyGrid.e(c);
                else
                    i1 = com.tencent.mm.ui.chatting.SmileyGrid.e(c);
            } else
            {
                i1 = com.tencent.mm.ui.chatting.SmileyGrid.e(c);
            }
            return i1;
        }

        public volatile Object getItem(int i1)
        {
            return a(i1);
        }

        public long getItemId(int i1)
        {
            return 0L;
        }

        public View getView(int i1, View view, ViewGroup viewgroup)
        {
            SmileyGrid.a(c);
            JVM INSTR tableswitch 0 3: default 36
        //                       0 86
        //                       1 86
        //                       2 145
        //                       3 145;
               goto _L1 _L2 _L2 _L3 _L3
_L1:
            class ViewHolder
            {

                ImageView a;
                TextView b;
                View c;
                private SmileyAdapter d;

                public ViewHolder()
                {
                    d = SmileyAdapter.this;
                    super();
                }
            }

            ViewHolder viewholder1 = (ViewHolder)view.getTag();
            SmileyGrid.a(c);
            JVM INSTR tableswitch 0 3: default 84
        //                       0 229
        //                       1 407
        //                       2 776
        //                       3 615;
               goto _L4 _L5 _L6 _L7 _L8
_L4:
            break; /* Loop/switch isn't completed */
_L7:
            break MISSING_BLOCK_LABEL_776;
_L9:
            return view;
_L2:
            if(view == null)
            {
                ViewHolder viewholder2 = new ViewHolder();
                view = View.inflate(SmileyGrid.i(c), 0x7f0300f0, null);
                viewholder2.a = (ImageView)view.findViewById(0x7f070289);
                view.setTag(viewholder2);
            } else
            {
                view.getTag();
            }
              goto _L1
_L3:
            if(view == null)
            {
                ViewHolder viewholder = new ViewHolder();
                view = View.inflate(SmileyGrid.i(c), 0x7f0300ef, null);
                viewholder.c = view.findViewById(0x7f070288);
                viewholder.a = (ImageView)view.findViewById(0x7f070289);
                viewholder.b = (TextView)view.findViewById(0x7f07028a);
                view.setTag(viewholder);
            } else
            {
                view.getTag();
            }
              goto _L1
_L5:
            if(i1 == -1 + getCount())
                viewholder1.a.setImageDrawable(SmileyGrid.i(c).a(0x7f020105));
            else
            if(SmileyGrid.c(c) == -1 + SmileyGrid.d(c))
            {
                if(i1 < SmileyGrid.f(c) - (-1 + com.tencent.mm.ui.chatting.SmileyGrid.e(c)) * SmileyGrid.c(c))
                    viewholder1.a.setImageDrawable(SmileyManager.a(SmileyGrid.i(c), i1 + (-1 + com.tencent.mm.ui.chatting.SmileyGrid.e(c)) * SmileyGrid.c(c)));
                else
                    viewholder1.a.setImageDrawable(null);
            } else
            {
                viewholder1.a.setImageDrawable(SmileyManager.a(SmileyGrid.i(c), i1 + (-1 + com.tencent.mm.ui.chatting.SmileyGrid.e(c)) * SmileyGrid.c(c)));
            }
              goto _L9
_L6:
            if(i1 == -1 + getCount())
                viewholder1.a.setImageDrawable(SmileyGrid.i(c).a(0x7f020105));
            else
            if(SmileyGrid.c(c) == -1 + SmileyGrid.d(c))
            {
                if(i1 < SmileyGrid.f(c) - (-1 + com.tencent.mm.ui.chatting.SmileyGrid.e(c)) * SmileyGrid.c(c))
                {
                    int k1 = EmojiManager.a(SmileyGrid.i(c))[i1 + (-1 + com.tencent.mm.ui.chatting.SmileyGrid.e(c)) * SmileyGrid.c(c)];
                    viewholder1.a.setImageDrawable(EmojiManager.a(SmileyGrid.i(c), k1));
                } else
                {
                    viewholder1.a.setImageDrawable(null);
                }
            } else
            {
                int j1 = EmojiManager.a(SmileyGrid.i(c))[i1 + (-1 + com.tencent.mm.ui.chatting.SmileyGrid.e(c)) * SmileyGrid.c(c)];
                viewholder1.a.setImageDrawable(EmojiManager.a(SmileyGrid.i(c), j1));
            }
              goto _L9
_L8:
            viewholder1.c.setBackgroundResource(0x7f0202a3);
            viewholder1.b.setVisibility(8);
            if(i1 == -1 + getCount() && SmileyGrid.c(c) == -1 + SmileyGrid.d(c))
            {
                viewholder1.a.setImageDrawable(SmileyGrid.i(c).a(0x7f02029c));
            } else
            {
                android.graphics.Bitmap bitmap = ((EmojiInfo)a.get(i1 + SmileyGrid.c(c) * com.tencent.mm.ui.chatting.SmileyGrid.e(c))).a(SmileyGrid.i(c));
                viewholder1.a.setImageDrawable(new BitmapDrawable(SmileyGrid.i(c).getResources(), bitmap));
                viewholder1.a.getWidth();
                viewholder1.a.getHeight();
            }
              goto _L9
            viewholder1.c.setBackgroundResource(0x7f0202a2);
            viewholder1.b.setVisibility(0);
            EmojiInfo emojiinfo = (EmojiInfo)b.get(i1 + SmileyGrid.c(c) * com.tencent.mm.ui.chatting.SmileyGrid.e(c));
            viewholder1.a.setImageDrawable(EmojiManager.b(SmileyGrid.i(c), emojiinfo));
            viewholder1.b.setText(EmojiManager.a(SmileyGrid.i(c), emojiinfo));
              goto _L9
        }

        private ArrayList a;
        private ArrayList b;
        private SmileyGrid c;

        public SmileyAdapter()
        {
            c = SmileyGrid.this;
            super();
        }
    }

}
