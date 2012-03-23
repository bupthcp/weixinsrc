// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelbottle.BottleLogic;
import com.tencent.mm.modelbottle.NetSceneGetBottleCount;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConversationStorage;
import com.tencent.mm.storage.OpLogStorage;
import com.tencent.mm.ui.MMActivity;

// Referenced classes of package com.tencent.mm.ui.bottle:
//            ThrowBottleUI, PickBottleUI, OpenBottleUI, BottleToast, 
//            BottleDialog, BottleConversationUI, PickedBottleImageView, BottlePersonalInfoUI, 
//            BallonImageView, LightHouseImageView, MoonImageView

public class BottleBeachUI extends MMActivity
    implements android.view.View.OnClickListener, IOnSceneEnd, com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public BottleBeachUI()
    {
        k = 0;
        l = true;
        s = true;
    }

    static BallonImageView a(BottleBeachUI bottlebeachui)
    {
        return bottlebeachui.f;
    }

    private void a(int i1, int j1, int k1, int l1)
    {
        if(b == null)
            b = (FrameLayout)findViewById(0x7f070063);
        a.setVisibility(i1);
        if(i1 == 0)
        {
            p();
            j.setVisibility(8);
            n();
        }
        if(j1 == 0 && c == null)
        {
            c = (ThrowBottleUI)View.inflate(this, 0x7f030021, null);
            b.addView(c);
            c.b();
        }
        if(c != null)
            c.setVisibility(j1);
        if(k1 == 0 && d == null)
        {
            d = (PickBottleUI)View.inflate(this, 0x7f030020, null);
            b.addView(d);
            d.a();
        }
        if(d != null)
            d.setVisibility(k1);
        if(k1 == 0)
            d.c();
        if(l1 == 0 && e == null)
        {
            e = (OpenBottleUI)View.inflate(this, 0x7f03001f, null);
            b.addView(e);
            OpenBottleUI openbottleui = e;
            ((Button)openbottleui.findViewById(0x7f070075)).setOnClickListener(openbottleui);
            ((Button)openbottleui.findViewById(0x7f070076)).setOnClickListener(openbottleui);
        }
        if(e != null)
            e.setVisibility(l1);
    }

    static int b(BottleBeachUI bottlebeachui)
    {
        return bottlebeachui.k;
    }

    static boolean c(BottleBeachUI bottlebeachui)
    {
        return bottlebeachui.s;
    }

    static void d(BottleBeachUI bottlebeachui)
    {
        bottlebeachui.o();
    }

    private void j(int i1)
    {
        String s1;
        if(i1 > 0)
            s1 = c().getString(i1);
        else
            s1 = null;
        if(q == null)
            q = new BottleToast(this);
        q.cancel();
        if(s1 != null)
        {
            q.setDuration(0);
            q.setText(s1);
            q.show();
        }
    }

    private void o()
    {
        boolean flag = false;
        byte byte0;
        if(s)
            getWindow().setFlags(1024, 1024);
        else
            getWindow().clearFlags(1024);
        if(s)
            byte0 = 8;
        else
            byte0 = flag;
        c(byte0);
        if(!s)
            flag = true;
        s = flag;
    }

    private void p()
    {
        if(p == null)
            p = (TextView)findViewById(0x7f070062);
        int i1 = BottleLogic.c();
        p.setText((new StringBuilder()).append("").append(i1).toString());
        TextView textview = p;
        int j1;
        if(i1 > 0)
            j1 = 0;
        else
            j1 = 8;
        textview.setVisibility(j1);
    }

    protected final int a()
    {
        return 0x7f03001d;
    }

    public final void a(int i1, int j1, String s1, NetSceneBase netscenebase)
    {
        Log.d("MM.UI.BottleUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i1).append(" errCode = ").append(j1).append(" errMsg = ").append(s1).toString());
        if(j1 != -2002 || k != 0) goto _L2; else goto _L1
_L1:
        h(0x7f0a03e7);
_L4:
        return;
_L2:
        switch(netscenebase.b())
        {
        default:
            j(0x7f0a03d9);
            break;

        case 47: // '/'
            p();
            break;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a_(String s1)
    {
        p();
    }

    public final void b()
    {
        l = false;
    }

    protected final int h()
    {
        return 1;
    }

    public final void h(int i1)
    {
        if(r == null)
            r = new BottleDialog(this);
        r.a(getString(i1));
        r.show();
    }

    public final void i(int i1)
    {
        k = i1;
        j(0);
        if(s)
            o();
        i1;
        JVM INSTR tableswitch 0 3: default 52
    //                   0 65
    //                   1 84
    //                   2 98
    //                   3 112;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        a(8, 8, 8, 8);
_L7:
        return;
_L2:
        l = true;
        a(0, 8, 8, 8);
        continue; /* Loop/switch isn't completed */
_L3:
        a(8, 0, 8, 8);
        continue; /* Loop/switch isn't completed */
_L4:
        a(8, 8, 0, 8);
        continue; /* Loop/switch isn't completed */
_L5:
        a(8, 8, 8, 0);
        if(true) goto _L7; else goto _L6
_L6:
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 6: default 64
    //                   2131165279: 65
    //                   2131165280: 88
    //                   2131165281: 111
    //                   2131165286: 161
    //                   2131165303: 195
    //                   2131165577: 234;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        return;
_L2:
        if(BottleLogic.a() > 0)
            i(1);
        else
            h(0x7f0a03df);
        continue; /* Loop/switch isn't completed */
_L3:
        if(BottleLogic.b() > 0)
            i(2);
        else
            h(0x7f0a03e0);
        continue; /* Loop/switch isn't completed */
_L4:
        if(!s)
            o();
        Intent intent1 = new Intent();
        intent1.setClass(this, com/tencent/mm/ui/bottle/BottleConversationUI);
        intent1.putExtra("conversation_from", "from_beach");
        startActivity(intent1);
        continue; /* Loop/switch isn't completed */
_L5:
        if(k == 3)
            e.d();
        i(0);
        a(0, 8, 8, 8);
        continue; /* Loop/switch isn't completed */
_L6:
        String s1 = ((PickedBottleImageView)view).a();
        if(s1 != null)
        {
            i(3);
            e.c(s1);
        } else
        {
            i(0);
        }
        continue; /* Loop/switch isn't completed */
_L7:
        Intent intent = (new Intent()).setClass(this, com/tencent/mm/ui/bottle/BottlePersonalInfoUI);
        intent.putExtra("is_allow_set", false);
        startActivity(intent);
        if(true) goto _L1; else goto _L8
_L8:
    }

    public void onCreate(Bundle bundle)
    {
        byte byte0 = 8;
        super.onCreate(bundle);
        if(!ConfigStorageLogic.h())
        {
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch(11, 1));
            MMCore.g().b(new NetSceneSync(5));
        }
        d(0x7f0a03cb);
        a(getString(0x7f0a0013), this);
        b(new _cls2());
        boolean flag = Util.a();
        int i1;
        byte byte1;
        if(f == null)
        {
            FrameLayout framelayout = (FrameLayout)findViewById(0x7f070059);
            ((FrameLayout)framelayout.getParent()).removeView(framelayout);
            ((FrameLayout)getWindow().getDecorView()).addView(framelayout, 0);
            BallonImageView ballonimageview;
            LightHouseImageView lighthouseimageview;
            MoonImageView moonimageview;
            int j1;
            if(flag)
                j1 = 0x7f02002c;
            else
                j1 = 0x7f020037;
            framelayout.setBackgroundResource(j1);
            framelayout.setVisibility(0);
            f = (BallonImageView)findViewById(0x7f07005a);
            g = (LightHouseImageView)findViewById(0x7f07005d);
            h = (ImageView)findViewById(0x7f07005b);
            i = (MoonImageView)findViewById(0x7f07005c);
        }
        ballonimageview = f;
        if(flag)
            i1 = 0;
        else
            i1 = byte0;
        ballonimageview.setVisibility(i1);
        lighthouseimageview = g;
        if(flag)
            byte1 = byte0;
        else
            byte1 = 0;
        lighthouseimageview.setVisibility(byte1);
        i.a(h);
        moonimageview = i;
        if(!flag)
            byte0 = 0;
        moonimageview.setVisibility(byte0);
        a = (FrameLayout)findViewById(0x7f07005e);
        a.setOnClickListener(new _cls3());
        m = (ImageView)findViewById(0x7f07005f);
        n = (ImageView)findViewById(0x7f070060);
        o = (ImageView)findViewById(0x7f070061);
        m.setOnClickListener(this);
        n.setOnClickListener(this);
        o.setOnClickListener(this);
        j = (ImageView)findViewById(0x7f070066);
        j.setOnClickListener(this);
        MMCore.g().a(47, this);
        MMCore.g().b(new NetSceneGetBottleCount());
    }

    public void onDestroy()
    {
        if(c != null)
        {
            c.a();
            c = null;
        }
        if(d != null)
        {
            d.b();
            d = null;
        }
        if(q != null)
        {
            q.cancel();
            q.a();
            q = null;
        }
        if(e != null)
        {
            e.c();
            e = null;
        }
        f = null;
        g = null;
        i = null;
        if(r != null)
        {
            r.dismiss();
            r = null;
        }
        MMCore.g().b(47, this);
        super.onDestroy();
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        boolean flag = true;
        if(i1 != 4) goto _L2; else goto _L1
_L1:
        if(l)
            if(k == 0)
                finish();
            else
                i(0);
_L4:
        return flag;
_L2:
        if(k == 3)
        {
            Log.e("MM.UI.BottleUI", "on key dwon");
            AudioManager audiomanager = (AudioManager)getSystemService("audio");
            int j1 = audiomanager.getStreamMaxVolume(0);
            if(i1 == 25 && e.g())
            {
                int i2 = audiomanager.getStreamVolume(0);
                Log.e("MM.UI.BottleUI", (new StringBuilder()).append("volume current:").append(i2).append(" max:").append(j1).toString());
                int j2 = j1 / 7;
                if(j2 == 0)
                    j2 = ((flag) ? 1 : 0);
                audiomanager.setStreamVolume(0, i2 - j2, 5);
                Log.e("MM.UI.BottleUI", (new StringBuilder()).append("volume current:").append(i2).append(" max:").append(j1).toString());
                continue; /* Loop/switch isn't completed */
            }
            if(i1 == 24 && e.g())
            {
                int k1 = audiomanager.getStreamVolume(0);
                Log.e("MM.UI.BottleUI", (new StringBuilder()).append("volume current:").append(k1).append(" max:").append(j1).toString());
                int l1 = j1 / 7;
                if(l1 == 0)
                    l1 = ((flag) ? 1 : 0);
                audiomanager.setStreamVolume(0, l1 + k1, 5);
                Log.e("MM.UI.BottleUI", (new StringBuilder()).append("volume current:").append(k1).append(" max:").append(j1).toString());
                continue; /* Loop/switch isn't completed */
            }
        }
        flag = super.onKeyDown(i1, keyevent);
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected void onPause()
    {
        super.onPause();
        if(k == 1 && c != null)
            c.c();
        if(k == 3 && e != null)
            e.b();
        if(MMCore.f().b())
            MMCore.f().j().b(this);
    }

    protected void onResume()
    {
        super.onResume();
        p();
        f().postDelayed(new _cls1(), 1000L);
        if(k == 3 && e != null)
            e.a();
        MMCore.f().j().a(this);
    }

    private FrameLayout a;
    private FrameLayout b;
    private ThrowBottleUI c;
    private PickBottleUI d;
    private OpenBottleUI e;
    private BallonImageView f;
    private LightHouseImageView g;
    private ImageView h;
    private MoonImageView i;
    private ImageView j;
    private int k;
    private boolean l;
    private ImageView m;
    private ImageView n;
    private ImageView o;
    private TextView p;
    private BottleToast q;
    private BottleDialog r;
    private boolean s;

    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private BottleBeachUI a;

        _cls2()
        {
            a = BottleBeachUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            BottleBeachUI.d(a);
        }

        private BottleBeachUI a;

        _cls3()
        {
            a = BottleBeachUI.this;
            super();
        }
    }


    private class _cls1
        implements Runnable
    {

        public void run()
        {
            if(BottleBeachUI.a(a) != null && BottleBeachUI.b(a) == 0 && BottleBeachUI.c(a))
                BottleBeachUI.d(a);
        }

        private BottleBeachUI a;

        _cls1()
        {
            a = BottleBeachUI.this;
            super();
        }
    }

}
