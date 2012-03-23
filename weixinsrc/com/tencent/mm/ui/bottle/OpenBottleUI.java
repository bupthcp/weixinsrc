// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.*;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.*;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelvoice.VoicePlayer;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.chatting.SpanUtil;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.bottle:
//            BottleBeachUI, ThrowBottleAnimUI, BottleChattingUI

public class OpenBottleUI extends FrameLayout
    implements android.view.View.OnClickListener, com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged, com.tencent.mm.modelvoice.SceneVoice.Player.OnCompletionListener, com.tencent.mm.modelvoice.SceneVoice.Player.OnErrorListener, com.tencent.mm.platformtools.SensorController.SensorEventCallBack, com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public OpenBottleUI(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        o = true;
        a = (BottleBeachUI)context;
        MMCore.f().y().a(this);
        MMCore.f().h().a(this);
        n = new SpanUtil(context, null);
        if(i == null)
            i = new SensorController(context.getApplicationContext());
    }

    static ThrowBottleAnimUI a(OpenBottleUI openbottleui)
    {
        return openbottleui.j;
    }

    private void a(MsgInfo msginfo)
    {
        boolean flag;
        if(msginfo != null && msginfo.k())
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        if(!MMCore.f().c() && !Util.i(msginfo.j()))
        {
            com.tencent.mm.ui.MMToast.ToastSdcard.a(a, 1);
        } else
        {
            if(k == null)
                k = new com.tencent.mm.modelvoice.SceneVoice.Player();
            MMEntryLock.a("keep_app_silent");
            MsgInfoStorageLogic.e(msginfo);
            k.b();
            if(k.a(msginfo.j(), o))
            {
                VoicePlayer.a(a, o);
                k.a(this);
                k.a(this);
                e.setBackgroundResource(0x7f040003);
                ((AnimationDrawable)e.getBackground()).start();
            } else
            {
                Toast.makeText(a, a.getString(0x7f0a0155), 0).show();
            }
        }
    }

    static BottleBeachUI b(OpenBottleUI openbottleui)
    {
        return openbottleui.a;
    }

    private void h()
    {
        Contact contact = MMCore.f().h().c(m);
        if(contact != null)
        {
            TextView textview = g;
            BottleBeachUI bottlebeachui = a;
            Object aobj[] = new Object[1];
            aobj[0] = (new StringBuilder()).append(ContactStorageLogic.L(contact.L())).append(contact.M()).toString();
            textview.setText(bottlebeachui.getString(0x7f0a03dc, aobj));
            TextView textview1 = g;
            int i1;
            if(contact.p() == 1)
                i1 = 0x7f02013a;
            else
                i1 = 0x7f020139;
            textview1.setCompoundDrawablesWithIntrinsicBounds(i1, 0, 0, 0);
            h.setText(SpanUtil.a(a, contact.K(), (int)h.getTextSize()));
        }
        b(m);
    }

    private void i()
    {
        MMEntryLock.b("keep_app_silent");
        if(e.getBackground() instanceof AnimationDrawable)
        {
            ((AnimationDrawable)e.getBackground()).stop();
            e.setBackgroundResource(0x7f020040);
        }
        if(k != null)
            k.b();
    }

    public final void a()
    {
        if(l != null && l.k())
        {
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("android.intent.action.HEADSET_PLUG");
            a.registerReceiver(i, intentfilter);
            i.a(this);
        }
    }

    public final void a(boolean flag)
    {
        if(l.k() && k != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(!k.a())
        {
            k.a(true);
            VoicePlayer.a(a, true);
            o = true;
        } else
        {
            k.a(flag);
            VoicePlayer.a(a, flag);
            o = flag;
            if(!flag)
                a(l);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final void a_(String s)
    {
        if(!Util.i(m) && ContactStorageLogic.u(m).equals(ContactStorageLogic.u(s)))
            h();
    }

    public final void b()
    {
        if(l != null && l.k())
            d();
        if(k != null)
        {
            if(k.a())
                i();
            k.a(true);
        }
        VoicePlayer.a(a, true);
    }

    public final void b(String s)
    {
        if(!Util.i(m) && ContactStorageLogic.u(m).equals(ContactStorageLogic.u(s)))
            ((ImageView)findViewById(0x7f07006d)).setImageBitmap(AvatarLogic.i(m));
    }

    public final void c()
    {
        if(l != null && l.k())
            d();
        a = null;
        if(j != null)
        {
            j.a();
            j = null;
        }
        i = null;
        MMCore.f().y().b(this);
        MMCore.f().h().b(this);
    }

    public final void c(String s)
    {
        if(j == null)
        {
            j = (ThrowBottleAnimUI)a.findViewById(0x7f070065);
            j.a(new _cls1());
        }
        if(b == null)
        {
            b = (TextView)findViewById(0x7f070070);
            c = (LinearLayout)findViewById(0x7f070071);
            d = (FrameLayout)findViewById(0x7f070072);
            e = (ImageView)findViewById(0x7f070073);
            f = (TextView)findViewById(0x7f070074);
            g = (TextView)findViewById(0x7f07006e);
            h = (TextView)findViewById(0x7f07006f);
            d.setOnClickListener(this);
        }
        m = s;
        Log.d("MM.Bottle_OpenBottleUI", s);
        l = MMCore.f().i().c(s);
        if(l.k())
        {
            b.setVisibility(8);
            c.setVisibility(0);
            float f1 = MsgInfoStorageLogic.a(l);
            FrameLayout framelayout = d;
            int i1 = (int)f1;
            int j1;
            TextView textview;
            BottleBeachUI bottlebeachui;
            Object aobj[];
            IntentFilter intentfilter;
            if(i1 <= 2)
                j1 = 100;
            else
            if(i1 < 10)
                j1 = 100 + 8 * (i1 + -2);
            else
            if(i1 < 60)
                j1 = 100 + 8 * (7 + i1 / 10);
            else
                j1 = 204;
            framelayout.setMinimumWidth((int)((float)j1 * MMActivity.k()));
            textview = f;
            bottlebeachui = a;
            aobj = new Object[1];
            aobj[0] = Integer.valueOf(i1);
            textview.setText(bottlebeachui.getString(0x7f0a009b, aobj));
            intentfilter = new IntentFilter();
            intentfilter.addAction("android.intent.action.HEADSET_PLUG");
            a.registerReceiver(i, intentfilter);
            i.a(this);
        } else
        {
            b.setVisibility(0);
            c.setVisibility(8);
            MsgInfo msginfo = l;
            b.setText(msginfo.i());
            n.a(b);
        }
        h();
    }

    public final void d()
    {
        try
        {
            a.unregisterReceiver(i);
        }
        catch(Exception exception)
        {
            Log.e("MM.Bottle_OpenBottleUI", "sensor receiver has already unregistered");
        }
        i.a();
    }

    public final boolean g()
    {
        boolean flag;
        if(k != null && k.a() && !o)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final void l_()
    {
        Log.e("MM.Bottle_OpenBottleUI", "voice play completion");
        i();
        Util.a(a, 0x7f0a000a);
    }

    public final void m_()
    {
        Log.e("MM.Bottle_OpenBottleUI", "voice play error");
        i();
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131165298 2131165302: default 40
    //                   2131165298 158
    //                   2131165299 40
    //                   2131165300 40
    //                   2131165301 41
    //                   2131165302 108;
           goto _L1 _L2 _L1 _L1 _L3 _L4
_L1:
        return;
_L3:
        j.a(l.k());
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpDeleteBottle(m, 1));
        MsgInfoStorageLogic.d(m);
        MMCore.f().j().a(m);
        d();
_L5:
        i();
        continue; /* Loop/switch isn't completed */
_L4:
        a.i(0);
        Intent intent = new Intent(a, com/tencent/mm/ui/bottle/BottleChattingUI);
        intent.putExtra("Chat_User", m);
        a.startActivity(intent);
        d();
        if(true) goto _L5; else goto _L2
_L2:
        if(k != null && k.a()) goto _L5; else goto _L6
_L6:
        a(l);
        if(true) goto _L1; else goto _L7
_L7:
    }

    private static SensorController i;
    private BottleBeachUI a;
    private TextView b;
    private LinearLayout c;
    private FrameLayout d;
    private ImageView e;
    private TextView f;
    private TextView g;
    private TextView h;
    private ThrowBottleAnimUI j;
    private com.tencent.mm.modelvoice.SceneVoice.Player k;
    private MsgInfo l;
    private String m;
    private SpanUtil n;
    private boolean o;

    private class _cls1
        implements ThrowBottleAnimUI.OnThrowAnimEndListener
    {

        public final void a()
        {
            OpenBottleUI.a(a).setVisibility(8);
            OpenBottleUI.b(a).i(0);
        }

        private OpenBottleUI a;

        _cls1()
        {
            a = OpenBottleUI.this;
            super();
        }
    }

}
