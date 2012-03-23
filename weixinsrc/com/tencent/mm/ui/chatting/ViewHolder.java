// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import com.tencent.mm.ui.AnimImageView;

// Referenced classes of package com.tencent.mm.ui.chatting:
//            EmojiView

class ViewHolder
{

    ViewHolder()
    {
    }

    public final ViewHolder a(View view, boolean flag)
    {
        c = (ImageView)view.findViewById(0x7f0700a8);
        e = (ImageView)view.findViewById(0x7f0700a3);
        b = (TextView)view.findViewById(0x7f07009e);
        m = (TextView)view.findViewById(0x7f0700a2);
        h = (TextView)view.findViewById(0x7f0700a6);
        l = (TextView)view.findViewById(0x7f0700a4);
        C = (TextView)view.findViewById(0x7f0700a5);
        n = (TextView)view.findViewById(0x7f0700a7);
        d = (ImageView)view.findViewById(0x7f07009f);
        int i1;
        if(flag)
            i1 = 12;
        else
            i1 = 13;
        B = i1;
        return this;
    }

    public final ViewHolder a(boolean flag, View view)
    {
        b = (TextView)view.findViewById(0x7f07009e);
        c = (ImageView)view.findViewById(0x7f0700a9);
        d = (ImageView)view.findViewById(0x7f07009f);
        if(flag)
        {
            h = (TextView)view.findViewById(0x7f0700a0);
            B = 1;
        } else
        {
            a = (ImageView)view.findViewById(0x7f0700bc);
            f = (ProgressBar)view.findViewById(0x7f0700bd);
            g = (TextView)view.findViewById(0x7f0700be);
            h = (TextView)view.findViewById(0x7f0700a0);
            B = 3;
        }
        return this;
    }

    public final ViewHolder b(boolean flag, View view)
    {
        b = (TextView)view.findViewById(0x7f07009e);
        z = (EmojiView)view.findViewById(0x7f0700a9);
        d = (ImageView)view.findViewById(0x7f07009f);
        if(flag)
        {
            h = (TextView)view.findViewById(0x7f0700a0);
            B = 14;
        } else
        {
            f = (ProgressBar)view.findViewById(0x7f0700bd);
            h = (TextView)view.findViewById(0x7f0700a0);
            a = (ImageView)view.findViewById(0x7f0700bc);
            B = 15;
        }
        if(c != null)
            ((ViewGroup)c.getParent()).setBackgroundDrawable(null);
        return this;
    }

    public final ViewHolder c(boolean flag, View view)
    {
        b = (TextView)view.findViewById(0x7f07009e);
        h = (TextView)view.findViewById(0x7f0700a0);
        d = (ImageView)view.findViewById(0x7f07009f);
        k = (TextView)view.findViewById(0x7f0700ba);
        a = (ImageView)view.findViewById(0x7f0700bc);
        j = (TextView)view.findViewById(0x7f0700a1);
        q = view.findViewById(0x7f0700b9);
        r = view.findViewById(0x7f0700b7);
        p = (AnimImageView)view.findViewById(0x7f0700b8);
        o = (AnimImageView)view.findViewById(0x7f0700bb);
        o.a(1);
        if(flag)
        {
            B = 6;
            o.a(true);
            p.a(true);
            p.a(0);
        } else
        {
            a = (ImageView)view.findViewById(0x7f0700bc);
            o.a(false);
            B = 7;
        }
        return this;
    }

    public final ViewHolder d(boolean flag, View view)
    {
        b = (TextView)view.findViewById(0x7f07009e);
        h = (TextView)view.findViewById(0x7f0700a0);
        d = (ImageView)view.findViewById(0x7f07009f);
        j = (TextView)view.findViewById(0x7f0700a1);
        if(flag)
        {
            B = 2;
        } else
        {
            a = (ImageView)view.findViewById(0x7f0700bc);
            f = (ProgressBar)view.findViewById(0x7f0700bd);
            B = 4;
        }
        return this;
    }

    public final ViewHolder e(boolean flag, View view)
    {
        b = (TextView)view.findViewById(0x7f07009e);
        c = (ImageView)view.findViewById(0x7f0700a9);
        d = (ImageView)view.findViewById(0x7f07009f);
        h = (TextView)view.findViewById(0x7f0700a0);
        t = (TextView)view.findViewById(0x7f0700b0);
        u = (TextView)view.findViewById(0x7f0700b1);
        s = (ImageView)view.findViewById(0x7f0700b2);
        w = (ImageView)view.findViewById(0x7f0700b6);
        v = (ImageView)view.findViewById(0x7f0700b5);
        x = (ProgressBar)view.findViewById(0x7f0700b4);
        y = view.findViewById(0x7f0700b3);
        A = view.findViewById(0x7f0700af);
        int i1;
        if(flag)
            i1 = 10;
        else
            i1 = 11;
        B = i1;
        return this;
    }

    View A;
    int B;
    private TextView C;
    ImageView a;
    TextView b;
    ImageView c;
    ImageView d;
    ImageView e;
    ProgressBar f;
    TextView g;
    TextView h;
    TextView i;
    TextView j;
    TextView k;
    TextView l;
    TextView m;
    TextView n;
    AnimImageView o;
    AnimImageView p;
    View q;
    View r;
    ImageView s;
    TextView t;
    TextView u;
    ImageView v;
    ImageView w;
    ProgressBar x;
    View y;
    EmojiView z;
}
