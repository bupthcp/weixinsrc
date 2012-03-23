// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.*;
import b.a.e;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelemoji.*;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.*;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.tencent.mm.ui.chatting:
//            DotView, SmileyGrid, SmileyManager

public class SmileyPanel extends LinearLayout
{

    public SmileyPanel(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        i = false;
        p = 0x7f070291;
        u = false;
        v = 0;
        a = (MMActivity)context;
        inflate(context, 0x7f0300f2, this);
        g = (RadioGroup)findViewById(0x7f070290);
        l = (RadioButton)findViewById(0x7f070291);
        m = (RadioButton)findViewById(0x7f070292);
        n = (RadioButton)findViewById(0x7f070293);
        o = (RadioButton)findViewById(0x7f070294);
        w = new ArtEmojiUpdater(new _cls1());
        w.a();
        g.setOnCheckedChangeListener(new _cls2());
        h = (DotView)findViewById(0x7f07028f);
        b();
    }

    static int a(SmileyPanel smileypanel, int i1)
    {
        smileypanel.q = i1;
        return i1;
    }

    static MMFlipper a(SmileyPanel smileypanel)
    {
        return smileypanel.f;
    }

    static void a(SmileyPanel smileypanel, ArrayList arraylist)
    {
        SmileyGrid smileygrid;
        for(Iterator iterator = arraylist.iterator(); iterator.hasNext(); smileypanel.f.addView(smileygrid, new android.widget.LinearLayout.LayoutParams(-1, -1)))
            smileygrid = (SmileyGrid)iterator.next();

        if(arraylist.size() <= 1)
        {
            smileypanel.h.setVisibility(4);
        } else
        {
            smileypanel.h.setVisibility(0);
            smileypanel.h.a(arraylist.size());
            smileypanel.h.b(0);
        }
    }

    static int b(SmileyPanel smileypanel)
    {
        return smileypanel.p;
    }

    static int b(SmileyPanel smileypanel, int i1)
    {
        smileypanel.r = i1;
        return i1;
    }

    private void b()
    {
        f = (MMFlipper)findViewById(0x7f07028e);
        if(a.getResources().getConfiguration().orientation == 2)
        {
            View view1 = findViewById(0x7f07028d);
            android.widget.LinearLayout.LayoutParams layoutparams1 = (android.widget.LinearLayout.LayoutParams)view1.getLayoutParams();
            layoutparams1.height = b.a.e.a(a, A);
            view1.setLayoutParams(layoutparams1);
        } else
        {
            View view = findViewById(0x7f07028d);
            android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)view.getLayoutParams();
            layoutparams.height = b.a.e.a(a, z);
            view.setLayoutParams(layoutparams);
        }
        f.removeAllViews();
        f.a(new _cls3());
        f.a(new _cls4());
    }

    static int c(SmileyPanel smileypanel, int i1)
    {
        smileypanel.s = i1;
        return i1;
    }

    static ArrayList c(SmileyPanel smileypanel)
    {
        return smileypanel.b;
    }

    private void c()
    {
        int i1;
        i1 = 0;
        e = new ArrayList();
        if(j != 0 && k != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j1 = b.a.e.a(a, 73F);
        int k1 = j / j1;
        int l1 = k1 * (k / j1);
        int i2 = MMCore.f().l().c(EmojiInfo.a);
        if(MMCore.f().c())
            i2 += MMCore.f().l().c(EmojiInfo.g);
        int j2 = i2 + 1;
        int k2;
        for(k2 = i1; j2 > 0; k2++)
            j2 -= l1;

        for(; i1 < k2; i1++)
        {
            SmileyGrid smileygrid1 = (SmileyGrid)inflate(a, 0x7f0300ee, null);
            smileygrid1.a(3, i1, i2, l1, k2, k1);
            e.add(smileygrid1);
        }

        if(e != null)
        {
            Iterator iterator = e.iterator();
            while(iterator.hasNext()) 
            {
                SmileyGrid smileygrid = (SmileyGrid)iterator.next();
                smileygrid.a(x);
                smileygrid.a(y);
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    static int d(SmileyPanel smileypanel, int i1)
    {
        smileypanel.t = i1;
        return i1;
    }

    private void d()
    {
        int i1;
        i1 = 0;
        d = new ArrayList();
        if(j != 0 && k != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j1 = b.a.e.a(a, 73F);
        int k1 = j / j1;
        int l1 = k1 * (k / j1);
        int i2 = MMCore.f().l().c(EmojiInfo.b);
        int j2 = i2;
        int k2;
        for(k2 = i1; j2 > 0; k2++)
            j2 -= l1;

        for(; i1 < k2; i1++)
        {
            SmileyGrid smileygrid = (SmileyGrid)inflate(a, 0x7f0300ee, null);
            smileygrid.a(2, i1, i2, l1, k2, k1);
            d.add(smileygrid);
        }

        if(d != null)
        {
            Iterator iterator = d.iterator();
            while(iterator.hasNext()) 
                ((SmileyGrid)iterator.next()).a(x);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    static void d(SmileyPanel smileypanel)
    {
        smileypanel.b = new ArrayList();
        if(smileypanel.j != 0 && smileypanel.k != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i1 = b.a.e.a(smileypanel.a, 35F);
        int j1 = smileypanel.j / i1;
        int k1 = j1 * (smileypanel.k / i1);
        int l1 = SmileyManager.a(smileypanel.a).length;
        int i2 = l1;
        int j2;
        for(j2 = 0; i2 > 0; j2++)
            i2 -= k1 + -1;

        for(int k2 = 0; k2 < j2; k2++)
        {
            SmileyGrid smileygrid = (SmileyGrid)inflate(smileypanel.a, 0x7f0300ee, null);
            smileygrid.a(0, k2, l1, k1, j2, j1);
            smileypanel.b.add(smileygrid);
        }

        if(smileypanel.b != null)
        {
            Iterator iterator = smileypanel.b.iterator();
            while(iterator.hasNext()) 
                ((SmileyGrid)iterator.next()).a(smileypanel.x);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    static int e(SmileyPanel smileypanel, int i1)
    {
        smileypanel.v = i1;
        return i1;
    }

    static RadioButton e(SmileyPanel smileypanel)
    {
        return smileypanel.l;
    }

    static int f(SmileyPanel smileypanel, int i1)
    {
        smileypanel.p = i1;
        return i1;
    }

    static RadioButton f(SmileyPanel smileypanel)
    {
        return smileypanel.m;
    }

    static int g(SmileyPanel smileypanel, int i1)
    {
        smileypanel.k = i1;
        return i1;
    }

    static RadioButton g(SmileyPanel smileypanel)
    {
        return smileypanel.n;
    }

    static int h(SmileyPanel smileypanel, int i1)
    {
        smileypanel.j = i1;
        return i1;
    }

    static RadioButton h(SmileyPanel smileypanel)
    {
        return smileypanel.o;
    }

    static int i(SmileyPanel smileypanel)
    {
        return smileypanel.q;
    }

    static ArrayList j(SmileyPanel smileypanel)
    {
        return smileypanel.c;
    }

    static void k(SmileyPanel smileypanel)
    {
        int i1;
        i1 = 0;
        smileypanel.c = new ArrayList();
        if(smileypanel.j != 0 && smileypanel.k != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j1 = b.a.e.a(smileypanel.a, 35F);
        int k1 = smileypanel.j / j1;
        int l1 = k1 * (smileypanel.k / j1);
        int i2 = EmojiManager.b(smileypanel.a).length;
        int j2 = i2;
        int k2;
        for(k2 = i1; j2 > 0; k2++)
            j2 -= l1 + -1;

        for(; i1 < k2; i1++)
        {
            SmileyGrid smileygrid = (SmileyGrid)inflate(smileypanel.a, 0x7f0300ee, null);
            smileygrid.a(1, i1, i2, l1, k2, k1);
            smileypanel.c.add(smileygrid);
        }

        if(smileypanel.c != null)
        {
            Iterator iterator = smileypanel.c.iterator();
            while(iterator.hasNext()) 
                ((SmileyGrid)iterator.next()).a(smileypanel.x);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    static int l(SmileyPanel smileypanel)
    {
        return smileypanel.r;
    }

    static ArrayList m(SmileyPanel smileypanel)
    {
        return smileypanel.e;
    }

    static void n(SmileyPanel smileypanel)
    {
        smileypanel.c();
    }

    static int o(SmileyPanel smileypanel)
    {
        return smileypanel.s;
    }

    static ArrayList p(SmileyPanel smileypanel)
    {
        return smileypanel.d;
    }

    static void q(SmileyPanel smileypanel)
    {
        smileypanel.d();
    }

    static int r(SmileyPanel smileypanel)
    {
        return smileypanel.t;
    }

    static boolean s(SmileyPanel smileypanel)
    {
        return smileypanel.i;
    }

    static boolean t(SmileyPanel smileypanel)
    {
        smileypanel.i = true;
        return true;
    }

    static void u(SmileyPanel smileypanel)
    {
        int i1;
        int j1;
        i1 = 0;
        smileypanel.b = null;
        smileypanel.c = null;
        smileypanel.e = null;
        smileypanel.d = null;
        j1 = smileypanel.g.getCheckedRadioButtonId();
        smileypanel.g.check(-1);
        if(smileypanel.u)
            break MISSING_BLOCK_LABEL_228;
        Integer integer = (Integer)MMCore.f().f().a(0xfe3f2d3c);
        int k1;
        Integer integer2;
        if(integer == null)
            k1 = i1;
        else
            k1 = integer.intValue();
        smileypanel.v = k1;
        smileypanel.v;
        JVM INSTR tableswitch 0 3: default 108
    //                   0 175
    //                   1 186
    //                   2 208
    //                   3 197;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        Integer integer1 = (Integer)MMCore.f().f().a(0xfe3f2d3d);
        if(integer1 != null)
            i1 = integer1.intValue();
        integer2 = Integer.valueOf(i1);
        smileypanel.f.a(integer2.intValue());
        smileypanel.h.b(integer2.intValue());
        smileypanel.u = true;
_L6:
        return;
_L2:
        smileypanel.l.setChecked(true);
          goto _L1
_L3:
        smileypanel.m.setChecked(true);
          goto _L1
_L5:
        smileypanel.n.setChecked(true);
          goto _L1
_L4:
        smileypanel.o.setChecked(true);
          goto _L1
        smileypanel.g.check(j1);
          goto _L6
    }

    static DotView v(SmileyPanel smileypanel)
    {
        return smileypanel.h;
    }

    public final void a()
    {
        MMCore.f().f().a(0xfe3f2d3c, Integer.valueOf(v));
        MMCore.f().f().a(0xfe3f2d3d, Integer.valueOf(f.b()));
    }

    public final void a(int i1)
    {
        if(k != 0 && j != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        i1;
        JVM INSTR tableswitch 2 3: default 40
    //                   2 43
    //                   3 91;
           goto _L1 _L3 _L4
_L3:
        d();
_L5:
        int j1 = f.b();
        int k1 = g.getCheckedRadioButtonId();
        g.check(-1);
        g.check(k1);
        f.a(j1);
          goto _L1
_L4:
        c();
          goto _L5
    }

    public final void a(SmileyGrid.OnSmileyLongClickListener onsmileylongclicklistener)
    {
        y = onsmileylongclicklistener;
    }

    public final void a(SmileyGrid.OnSmileySelectedListener onsmileyselectedlistener)
    {
        x = onsmileyselectedlistener;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        if(configuration.orientation == 1 || configuration.orientation == 2)
        {
            i = false;
            b();
        }
    }

    private static int A = 110;
    private static int z = 177;
    private MMActivity a;
    private ArrayList b;
    private ArrayList c;
    private ArrayList d;
    private ArrayList e;
    private MMFlipper f;
    private RadioGroup g;
    private DotView h;
    private boolean i;
    private int j;
    private int k;
    private RadioButton l;
    private RadioButton m;
    private RadioButton n;
    private RadioButton o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private boolean u;
    private int v;
    private ArtEmojiUpdater w;
    private SmileyGrid.OnSmileySelectedListener x;
    private SmileyGrid.OnSmileyLongClickListener y;


    private class _cls1
        implements com.tencent.mm.modelemoji.ArtEmojiUpdater.OnArtEmojiUpdatedListener
    {

        public final void a()
        {
            a.a(2);
        }

        private SmileyPanel a;

        _cls1()
        {
            a = SmileyPanel.this;
            super();
        }
    }


    private class _cls2
        implements android.widget.RadioGroup.OnCheckedChangeListener
    {

        public void onCheckedChanged(RadioGroup radiogroup, int i1)
        {
            if(SmileyPanel.a(a) != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            SmileyPanel.b(a);
            JVM INSTR tableswitch 2131165841 2131165844: default 48
        //                       2131165841 122
        //                       2131165842 143
        //                       2131165843 164
        //                       2131165844 185;
               goto _L3 _L4 _L5 _L6 _L7
_L3:
            SmileyPanel.a(a).removeAllViews();
            SmileyPanel.a(a).a();
            i1;
            JVM INSTR tableswitch 2131165841 2131165844: default 100
        //                       2131165841 206
        //                       2131165842 350
        //                       2131165843 494
        //                       2131165844 638;
               goto _L8 _L9 _L10 _L11 _L12
_L8:
            break; /* Loop/switch isn't completed */
_L12:
            break MISSING_BLOCK_LABEL_638;
_L13:
            SmileyPanel.f(a, i1);
            SmileyPanel.a(a).invalidate();
              goto _L1
_L4:
            SmileyPanel.a(a, SmileyPanel.a(a).b());
              goto _L3
_L5:
            SmileyPanel.b(a, SmileyPanel.a(a).b());
              goto _L3
_L6:
            SmileyPanel.c(a, SmileyPanel.a(a).b());
              goto _L3
_L7:
            SmileyPanel.d(a, SmileyPanel.a(a).b());
              goto _L3
_L9:
            if(SmileyPanel.c(a) == null)
                SmileyPanel.d(a);
            com.tencent.mm.ui.chatting.SmileyPanel.e(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#c0c0c0"));
            SmileyPanel.f(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#000000"));
            SmileyPanel.g(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#000000"));
            SmileyPanel.h(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#000000"));
            SmileyPanel.a(a, SmileyPanel.c(a));
            SmileyPanel.a(a).a(SmileyPanel.i(a));
            com.tencent.mm.ui.chatting.SmileyPanel.e(a, 0);
              goto _L13
_L10:
            if(SmileyPanel.j(a) == null)
                SmileyPanel.k(a);
            com.tencent.mm.ui.chatting.SmileyPanel.e(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#000000"));
            SmileyPanel.f(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#c0c0c0"));
            SmileyPanel.g(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#000000"));
            SmileyPanel.h(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#000000"));
            SmileyPanel.a(a, SmileyPanel.j(a));
            SmileyPanel.a(a).a(SmileyPanel.l(a));
            com.tencent.mm.ui.chatting.SmileyPanel.e(a, 1);
              goto _L13
_L11:
            if(SmileyPanel.m(a) == null)
                SmileyPanel.n(a);
            com.tencent.mm.ui.chatting.SmileyPanel.e(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#000000"));
            SmileyPanel.f(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#000000"));
            SmileyPanel.g(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#c0c0c0"));
            SmileyPanel.h(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#000000"));
            SmileyPanel.a(a, SmileyPanel.m(a));
            SmileyPanel.a(a).a(SmileyPanel.o(a));
            com.tencent.mm.ui.chatting.SmileyPanel.e(a, 3);
              goto _L13
            if(SmileyPanel.p(a) == null)
                SmileyPanel.q(a);
            com.tencent.mm.ui.chatting.SmileyPanel.e(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#000000"));
            SmileyPanel.f(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#000000"));
            SmileyPanel.g(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#000000"));
            SmileyPanel.h(a).setShadowLayer(1F, 1.2F, 1.2F, Color.parseColor("#c0c0c0"));
            SmileyPanel.a(a, SmileyPanel.p(a));
            SmileyPanel.a(a).a(SmileyPanel.r(a));
            com.tencent.mm.ui.chatting.SmileyPanel.e(a, 2);
              goto _L13
        }

        private SmileyPanel a;

        _cls2()
        {
            a = SmileyPanel.this;
            super();
        }
    }


    private class _cls3
        implements com.tencent.mm.ui.MMFlipper.OnMeasureListener
    {

        public final void a(int i1, int j1)
        {
            Log.e("MicroMsg.SmileyPanel", (new StringBuilder()).append("onMeasure width:").append(i1).append(" height:").append(j1).append(" isMeasured:").append(SmileyPanel.s(a)).toString());
            if(!SmileyPanel.s(a) && j1 != 0 && i1 != 0)
            {
                SmileyPanel.t(a);
                SmileyPanel.g(a, j1);
                SmileyPanel.h(a, i1);
                SmileyPanel.u(a);
            }
        }

        private SmileyPanel a;

        _cls3()
        {
            a = SmileyPanel.this;
            super();
        }
    }


    private class _cls4
        implements com.tencent.mm.ui.MMFlipper.OnScreenChangedListener
    {

        public final void a(int i1)
        {
            SmileyPanel.v(a).b(i1);
        }

        private SmileyPanel a;

        _cls4()
        {
            a = SmileyPanel.this;
            super();
        }
    }

}
