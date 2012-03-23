// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.masssend.ui;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelvoice.VoicePlayer;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.plugin.masssend.model.MasSendInfo;
import com.tencent.mm.plugin.masssend.model.MasSendInfoStorage;
import com.tencent.mm.ui.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.plugin.masssend.ui:
//            MassSendHistoryAdapter

public class MassSendHistoryUI extends MMActivity
    implements com.tencent.mm.modelvoice.SceneVoice.Player.OnCompletionListener, com.tencent.mm.modelvoice.SceneVoice.Player.OnErrorListener, com.tencent.mm.platformtools.SensorController.SensorEventCallBack
{

    public MassSendHistoryUI()
    {
        f = true;
    }

    static com.tencent.mm.modelvoice.SceneVoice.Player a(MassSendHistoryUI masssendhistoryui)
    {
        return masssendhistoryui.e;
    }

    static boolean a(MassSendHistoryUI masssendhistoryui, String s)
    {
        return masssendhistoryui.a(s);
    }

    private boolean a(String s)
    {
        boolean flag = false;
        boolean flag1;
        MasSendInfo massendinfo;
        if(s != null)
            flag1 = true;
        else
            flag1 = flag;
        Assert.assertTrue(flag1);
        massendinfo = MMCore.f().u().a(s);
        if(!MMCore.f().c() && !Util.i(massendinfo.f()))
        {
            com.tencent.mm.ui.MMToast.ToastSdcard.a(this, 1);
        } else
        {
            if(e == null)
                e = new com.tencent.mm.modelvoice.SceneVoice.Player();
            e.b();
            if(e.a(massendinfo.f(), f))
            {
                VoicePlayer.a(this, f);
                e.a(this);
                e.a(this);
                flag = true;
            } else
            {
                Toast.makeText(this, getString(0x7f0a0155), flag).show();
            }
        }
        return flag;
    }

    static MassSendHistoryAdapter b(MassSendHistoryUI masssendhistoryui)
    {
        return masssendhistoryui.b;
    }

    static MMPullDownView c(MassSendHistoryUI masssendhistoryui)
    {
        return masssendhistoryui.d;
    }

    static ListView d(MassSendHistoryUI masssendhistoryui)
    {
        return masssendhistoryui.a;
    }

    static View e(MassSendHistoryUI masssendhistoryui)
    {
        return masssendhistoryui.h;
    }

    protected final int a()
    {
        return 0x7f030068;
    }

    public final void a(boolean flag)
    {
        if(e != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(!e.a())
        {
            e.a(true);
            VoicePlayer.a(this, true);
            f = true;
        } else
        {
            e.a(flag);
            VoicePlayer.a(this, flag);
            f = flag;
            if(!flag)
                if(a(b.e()))
                    b.b(b.e());
                else
                    b.b("");
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    protected final void b()
    {
        a.setKeepScreenOn(false);
    }

    public final void l_()
    {
        e.b();
        b.b("");
        b();
        Util.a(this, 0x7f0a000a);
    }

    public final void m_()
    {
        e.b();
        b.b("");
        b();
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        if(menuitem.getItemId() != 1) goto _L2; else goto _L1
_L1:
        MasSendInfo massendinfo = (MasSendInfo)b.getItem(menuitem.getGroupId());
        if(massendinfo != null) goto _L4; else goto _L3
_L3:
        boolean flag = false;
_L6:
        return flag;
_L4:
        MMCore.f().u().c(massendinfo.c());
_L2:
        flag = true;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a0426);
        if(g == null)
            g = new SensorController(getApplicationContext());
        a = (ListView)findViewById(0x7f070159);
        a.setTranscriptMode(0);
        d = (MMPullDownView)findViewById(0x7f070158);
        d.a(a);
        d.a(new _cls2());
        b = new MassSendHistoryAdapter(this);
        b.a(new _cls3());
        h = findViewById(0x7f07015a);
        a.setAdapter(b);
        a.setOnItemClickListener(new _cls4());
        a.setOnTouchListener(new _cls5());
        c = (Button)findViewById(0x7f07015b);
        c.setOnClickListener(new _cls6());
        b(new _cls7());
        a(0x7f0a0013, new _cls8());
        registerForContextMenu(a);
        e = new com.tencent.mm.modelvoice.SceneVoice.Player();
        e.a(this);
        e.a(this);
        b.a(new _cls1());
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        Log.e("MicroMsg.MassSendHistoryUI", "onCreateContextMenu");
        super.onCreateContextMenu(contextmenu, view, contextmenuinfo);
        android.widget.AdapterView.AdapterContextMenuInfo adaptercontextmenuinfo = (android.widget.AdapterView.AdapterContextMenuInfo)contextmenuinfo;
        contextmenu.setHeaderTitle(((MasSendInfo)b.getItem(adaptercontextmenuinfo.position)).h());
        contextmenu.add(adaptercontextmenuinfo.position, 1, 0, getString(0x7f0a013c));
    }

    protected void onDestroy()
    {
        b.n();
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag;
        if(i == 4)
        {
            Intent intent = new Intent(this, com/tencent/mm/ui/MainTabUI);
            intent.addFlags(0x4000000);
            startActivity(intent);
            finish();
            flag = true;
        } else
        {
            flag = super.onKeyDown(i, keyevent);
        }
        return flag;
    }

    protected void onPause()
    {
        super.onPause();
        MMCore.f().u().b(b);
        try
        {
            unregisterReceiver(g);
        }
        catch(Exception exception)
        {
            Log.e("MicroMsg.MassSendHistoryUI", "sensor receiver has already unregistered");
        }
        g.a();
    }

    protected void onResume()
    {
        super.onResume();
        MMCore.f().u().a(b);
        b.a_(null);
        a.setSelection(-1 + b.getCount());
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.HEADSET_PLUG");
        registerReceiver(g, intentfilter);
        g.a(this);
    }

    private static SensorController g;
    private ListView a;
    private MassSendHistoryAdapter b;
    private Button c;
    private MMPullDownView d;
    private com.tencent.mm.modelvoice.SceneVoice.Player e;
    private boolean f;
    private View h;

    private class _cls2
        implements com.tencent.mm.ui.MMPullDownView.OnLoadDataListener
    {

        public final void a()
        {
            if(MassSendHistoryUI.b(a).c())
            {
                MassSendHistoryUI.d(a).setSelectionFromTop(0, MassSendHistoryUI.c(a).a());
            } else
            {
                int i = MassSendHistoryUI.b(a).d();
                Log.e("MicroMsg.MassSendHistoryUI", (new StringBuilder()).append("onLoadData add count:").append(i).toString());
                MassSendHistoryUI.b(a).a_(null);
                MassSendHistoryUI.d(a).setSelectionFromTop(i, MassSendHistoryUI.c(a).a());
            }
        }

        private MassSendHistoryUI a;

        _cls2()
        {
            a = MassSendHistoryUI.this;
            super();
        }
    }


    private class _cls3
        implements com.tencent.mm.ui.MListAdapter.CallBack
    {

        public final void a()
        {
            MassSendHistoryUI.c(a).a(MassSendHistoryUI.b(a).c());
            if(MassSendHistoryUI.b(a).getCount() == 0)
            {
                MassSendHistoryUI.c(a).setVisibility(8);
                MassSendHistoryUI.e(a).setVisibility(0);
            } else
            {
                MassSendHistoryUI.c(a).setVisibility(0);
                MassSendHistoryUI.e(a).setVisibility(8);
            }
        }

        public final void b()
        {
        }

        private MassSendHistoryUI a;

        _cls3()
        {
            a = MassSendHistoryUI.this;
            super();
        }
    }


    private class _cls4
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            Log.e("MicroMsg.MassSendHistoryUI", "onItemClick");
        }

        private MassSendHistoryUI a;

        _cls4()
        {
            a = MassSendHistoryUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            Log.e("MicroMsg.MassSendHistoryUI", "onTouch");
            return false;
        }

        private MassSendHistoryUI a;

        _cls5()
        {
            a = MassSendHistoryUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent(a, com/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI);
            a.startActivity(intent);
        }

        private MassSendHistoryUI a;

        _cls6()
        {
            a = MassSendHistoryUI.this;
            super();
        }
    }


    private class _cls7
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent(a, com/tencent/mm/ui/MainTabUI);
            intent.addFlags(0x4000000);
            a.startActivity(intent);
            a.finish();
        }

        private MassSendHistoryUI a;

        _cls7()
        {
            a = MassSendHistoryUI.this;
            super();
        }
    }


    private class _cls8
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI);
            intent.putExtra("Contact_User", "masssendapp");
            a.startActivity(intent);
        }

        private MassSendHistoryUI a;

        _cls8()
        {
            a = MassSendHistoryUI.this;
            super();
        }
    }


    private class _cls1
        implements MassSendHistoryAdapter.OnVoicePlayListener
    {

        public final String a(String s)
        {
            if(MMCore.f().c()) goto _L2; else goto _L1
_L1:
            String s1;
            com.tencent.mm.ui.MMToast.ToastSdcard.a(a, 1);
            s1 = "";
_L4:
            return s1;
_L2:
            s1 = Util.h(s);
            if(MassSendHistoryUI.a(a).a() && s1.equals(MassSendHistoryUI.b(a).e()))
            {
                a.b();
                MassSendHistoryUI.a(a).b();
                s1 = "";
            } else
            if(!MassSendHistoryUI.a(a, s1))
                s1 = "";
            if(true) goto _L4; else goto _L3
_L3:
        }

        private MassSendHistoryUI a;

        _cls1()
        {
            a = MassSendHistoryUI.this;
            super();
        }
    }

}
