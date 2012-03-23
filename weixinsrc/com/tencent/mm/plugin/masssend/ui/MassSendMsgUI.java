// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.masssend.ui;

import android.app.ProgressDialog;
import android.content.Intent;
import android.media.ToneGenerator;
import android.os.Bundle;
import android.os.Vibrator;
import android.view.*;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelvideo.ImportVideo;
import com.tencent.mm.network.NetService;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.plugin.masssend.model.*;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;
import com.tencent.mm.ui.chatting.ChatFooter;
import com.tencent.mm.ui.tools.CropImageUI;
import com.tencent.mm.ui.video.VideoRecorderUI;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.tencent.mm.plugin.masssend.ui:
//            MassSendHistoryUI

public class MassSendMsgUI extends MMActivity
    implements IOnSceneEnd
{

    public MassSendMsgUI()
    {
        g = null;
        i = -1L;
        m = false;
    }

    static long a(MassSendMsgUI masssendmsgui, long l1)
    {
        masssendmsgui.i = l1;
        return l1;
    }

    static Toast a(MassSendMsgUI masssendmsgui, Toast toast)
    {
        masssendmsgui.j = toast;
        return toast;
    }

    static MassVoiceRecorder a(MassSendMsgUI masssendmsgui)
    {
        return masssendmsgui.h;
    }

    private void a(Intent intent)
    {
        ImportVideo importvideo = new ImportVideo();
        g = MMAlert.a(this, getString(0x7f0a0010), getString(0x7f0a0026), true, new _cls25(importvideo));
        importvideo.a(this, intent, new _cls26());
    }

    static void a(MassSendMsgUI masssendmsgui, Intent intent)
    {
        masssendmsgui.a(intent);
    }

    static void a(MassSendMsgUI masssendmsgui, String s)
    {
        masssendmsgui.a(s);
    }

    private void a(String s)
    {
        MasSendInfo massendinfo = new MasSendInfo();
        massendinfo.d(b);
        massendinfo.b(a.size());
        massendinfo.b(s);
        massendinfo.c(1);
        NetSceneMasSend netscenemassend = new NetSceneMasSend(massendinfo, m);
        MMCore.g().b(netscenemassend);
        g = MMAlert.a(c(), getString(0x7f0a0010), getString(0x7f0a031d), true, new _cls20(netscenemassend));
    }

    static ChatFooter b(MassSendMsgUI masssendmsgui)
    {
        return masssendmsgui.c;
    }

    private String b()
    {
        String s;
        if(a == null)
        {
            s = "";
        } else
        {
            StringBuilder stringbuilder = new StringBuilder();
            int i1 = 0;
            while(i1 < a.size()) 
            {
                String s1 = ContactStorageLogic.e((String)a.get(i1));
                if(i1 == -1 + a.size())
                    stringbuilder.append(s1);
                else
                    stringbuilder.append((new StringBuilder()).append(s1).append(", ").toString());
                i1++;
            }
            s = stringbuilder.toString();
        }
        return s;
    }

    static long c(MassSendMsgUI masssendmsgui)
    {
        return masssendmsgui.i;
    }

    static Toast d(MassSendMsgUI masssendmsgui)
    {
        return masssendmsgui.j;
    }

    static void e(MassSendMsgUI masssendmsgui)
    {
        MasSendInfo massendinfo = new MasSendInfo();
        massendinfo.d(masssendmsgui.b);
        massendinfo.b(masssendmsgui.a.size());
        massendinfo.b(masssendmsgui.h.b());
        massendinfo.c(34);
        massendinfo.d(masssendmsgui.h.f());
        NetSceneMasSend netscenemassend = new NetSceneMasSend(massendinfo, masssendmsgui.m);
        MMCore.g().b(netscenemassend);
        masssendmsgui.g = MMAlert.a(masssendmsgui.c(), masssendmsgui.getString(0x7f0a0010), masssendmsgui.getString(0x7f0a031d), true, masssendmsgui. new _cls19(netscenemassend));
    }

    static MTimerHandler f(MassSendMsgUI masssendmsgui)
    {
        return masssendmsgui.n;
    }

    static MTimerHandler g(MassSendMsgUI masssendmsgui)
    {
        return masssendmsgui.o;
    }

    static ToneGenerator h(MassSendMsgUI masssendmsgui)
    {
        return masssendmsgui.l;
    }

    static Vibrator i(MassSendMsgUI masssendmsgui)
    {
        return masssendmsgui.k;
    }

    static View j(MassSendMsgUI masssendmsgui)
    {
        return masssendmsgui.g();
    }

    static com.tencent.mm.modelvoice.SceneVoice.Recorder.OnPartListener k(MassSendMsgUI masssendmsgui)
    {
        return masssendmsgui.q;
    }

    static com.tencent.mm.modelvoice.SceneVoice.Recorder.OnErrorListener l(MassSendMsgUI masssendmsgui)
    {
        return masssendmsgui.p;
    }

    static ProgressDialog m(MassSendMsgUI masssendmsgui)
    {
        return masssendmsgui.g;
    }

    static ProgressDialog n(MassSendMsgUI masssendmsgui)
    {
        masssendmsgui.g = null;
        return null;
    }

    static String o(MassSendMsgUI masssendmsgui)
    {
        return masssendmsgui.b;
    }

    static List p(MassSendMsgUI masssendmsgui)
    {
        return masssendmsgui.a;
    }

    static boolean q(MassSendMsgUI masssendmsgui)
    {
        return masssendmsgui.m;
    }

    protected final int a()
    {
        return 0x7f03006d;
    }

    public final void a(int i1, int j1, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.MassSendMsgUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i1).append(" errCode = ").append(j1).append(" errMsg = ").append(s).toString());
        if(g != null)
        {
            g.dismiss();
            g = null;
        }
        if(i1 != 0 || j1 != 0) goto _L2; else goto _L1
_L1:
        Intent intent = new Intent(this, com/tencent/mm/plugin/masssend/ui/MassSendHistoryUI);
        intent.addFlags(0x4000000);
        startActivity(intent);
        finish();
_L4:
        return;
_L2:
        if(com.tencent.mm.ui.MMErrorProcessor.CertainError.a(c(), i1, j1, 3)) goto _L4; else goto _L3
_L3:
        switch(j1)
        {
        default:
            Toast.makeText(this, 0x7f0a031f, 0).show();
            break;

        case -71: 
            int k1 = ((NetSceneMasSend)netscenebase).d();
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(k1);
            MMAlert.a(this, getString(0x7f0a042c, aobj), getString(0x7f0a0010), new _cls27());
            break;

        case -34: 
            Toast.makeText(this, 0x7f0a0434, 0).show();
            break;
        }
        if(true) goto _L4; else goto _L5
_L5:
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        Log.c("MicroMsg.MassSendMsgUI", (new StringBuilder()).append("onAcvityResult requestCode:").append(i1).toString());
        if(j1 == -1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        switch(i1)
        {
        default:
            Log.a("MicroMsg.MassSendMsgUI", "onActivityResult: not found this requestCode");
            break;

        case 1: // '\001'
            if(intent != null)
            {
                d = Util.a(this, intent, MMCore.f().M());
                Intent intent2 = new Intent(this, com/tencent/mm/ui/tools/CropImageUI);
                intent2.putExtra("CropImage_bCrop", false);
                intent2.putExtra("CropImage_bPrev", true);
                intent2.putExtra("CropImage_ImgPath", d);
                startActivityForResult(intent2, 4);
            }
            break;

        case 2: // '\002'
            d = CameraUtil.a(getApplicationContext(), intent, MMCore.f().M());
            if(d != null)
            {
                Intent intent1 = new Intent(this, com/tencent/mm/ui/tools/CropImageUI);
                intent1.putExtra("CropImage_bCrop", false);
                intent1.putExtra("CropImage_bPrev", true);
                intent1.putExtra("CropImage_ImgPath", d);
                startActivityForResult(intent1, 4);
            }
            break;

        case 4: // '\004'
            String s1 = intent.getStringExtra("CropImage_ImgPath");
            if(s1 != null)
            {
                MMCore.f().u();
                MasSendInfo massendinfo1 = MasSendInfoStorage.a(s1, b, a.size());
                if(massendinfo1 != null)
                {
                    NetSceneMasSend netscenemassend1 = new NetSceneMasSend(massendinfo1, m);
                    MMCore.g().b(netscenemassend1);
                    g = MMAlert.a(c(), getString(0x7f0a0010), getString(0x7f0a031d), true, new _cls22(netscenemassend1));
                }
            }
            break;

        case 3: // '\003'
            a(intent.getStringExtra("art_smiley_slelct_data"));
            break;

        case 5: // '\005'
            String s = intent.getStringExtra("VideoRecorder_FileName");
            int k1 = intent.getIntExtra("VideoRecorder_VideoLength", 0);
            MasSendInfo massendinfo = new MasSendInfo();
            massendinfo.d(b);
            massendinfo.b(a.size());
            massendinfo.b(s);
            massendinfo.d(k1);
            massendinfo.c(43);
            NetSceneMasSend netscenemassend = new NetSceneMasSend(massendinfo, m);
            MMCore.g().b(netscenemassend);
            g = MMAlert.a(c(), getString(0x7f0a0010), getString(0x7f0a031d), true, new _cls21(netscenemassend));
            break;

        case 6: // '\006'
            if(!NetService.b(this))
                MMAlert.a(this, 0x7f0a0331, 0x7f0a0010, new _cls23(intent), new _cls24());
            else
                a(intent);
            break;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        boolean flag;
        flag = false;
        super.onContextItemSelected(menuitem);
        menuitem.getItemId();
        JVM INSTR tableswitch 1 7: default 56
    //                   1 60
    //                   2 70
    //                   3 56
    //                   4 56
    //                   5 56
    //                   6 80
    //                   7 116;
           goto _L1 _L2 _L3 _L1 _L1 _L1 _L4 _L5
_L1:
        flag = true;
_L7:
        return flag;
_L2:
        c.r();
        continue; /* Loop/switch isn't completed */
_L3:
        c.q();
        continue; /* Loop/switch isn't completed */
_L4:
        Intent intent1 = new Intent("android.intent.action.GET_CONTENT");
        intent1.setType("video/*");
        startActivityForResult(Intent.createChooser(intent1, null), 6);
        continue; /* Loop/switch isn't completed */
_L5:
        Intent intent = new Intent(this, com/tencent/mm/ui/video/VideoRecorderUI);
        intent.putExtra("VideoRecorder_NeedResult", true);
        intent.putExtra("VideoRecorder_ToUser", b);
        startActivityForResult(intent, 5);
        if(true) goto _L7; else goto _L6
_L6:
    }

    public void onCreate(Bundle bundle)
    {
        String s;
        super.onCreate(bundle);
        MMCore.g().a(85, this);
        m = getIntent().getBooleanExtra("mass_send_again", false);
        b = getIntent().getStringExtra("mass_send_contact_list");
        s = b;
        a = new ArrayList();
        if(s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        h = new MassVoiceRecorder();
        h.a(p);
        h.a(q);
        d(0x7f0a042b);
        e = (TextView)findViewById(0x7f07016a);
        f = (TextView)findViewById(0x7f070169);
        e.setText(b());
        TextView textview = f;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(a.size());
        textview.setText(getString(0x7f0a0431, aobj));
        l = new ToneGenerator(1, 60);
        k = (Vibrator)getSystemService("vibrator");
        c = (ChatFooter)findViewById(0x7f070095);
        c = (ChatFooter)findViewById(0x7f070095);
        c.a(findViewById(0x7f070198));
        c.a(new _cls6());
        c.a(new _cls7());
        c.a(new _cls8());
        c.a(new _cls9());
        c.a(new _cls10());
        c.a(new _cls11());
        c.b(new _cls12());
        c.a(new _cls13());
        c.a(new _cls14());
        c.b(new _cls15());
        c.a(new _cls16());
        c.a(new _cls17());
        c.a(new _cls18());
        b(new _cls5());
        return;
_L2:
        String as[] = s.split(";");
        if(as != null && as.length > 0)
            a = Util.a(as);
        if(true) goto _L1; else goto _L3
_L3:
    }

    protected void onDestroy()
    {
        MMCore.g().b(85, this);
        l.release();
        super.onDestroy();
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        boolean flag = true;
        if(keyevent.getKeyCode() != 4 || keyevent.getAction() != 0) goto _L2; else goto _L1
_L1:
        if(!c.m()) goto _L4; else goto _L3
_L3:
        c.l();
_L6:
        return flag;
_L4:
        if(c.o())
        {
            c.n();
            continue; /* Loop/switch isn't completed */
        }
_L2:
        flag = super.onKeyDown(i1, keyevent);
        if(true) goto _L6; else goto _L5
_L5:
    }

    protected void onPause()
    {
        c.e();
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
    }

    private List a;
    private String b;
    private ChatFooter c;
    private String d;
    private TextView e;
    private TextView f;
    private ProgressDialog g;
    private MassVoiceRecorder h;
    private long i;
    private Toast j;
    private Vibrator k;
    private ToneGenerator l;
    private boolean m;
    private final MTimerHandler n = new MTimerHandler(new _cls1(), true);
    private final MTimerHandler o = new MTimerHandler(new _cls2(), true);
    private final com.tencent.mm.modelvoice.SceneVoice.Recorder.OnErrorListener p = new _cls3();
    private final com.tencent.mm.modelvoice.SceneVoice.Recorder.OnPartListener q = new _cls4();

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            MassSendMsgUI.b(a).b(MassSendMsgUI.a(a).h());
            return true;
        }

        private MassSendMsgUI a;

        _cls1()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls2
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            boolean flag = false;
            if(MassSendMsgUI.c(a) == -1L)
                MassSendMsgUI.a(a, Util.e());
            long l1 = Util.f(MassSendMsgUI.c(a));
            if(l1 >= 50000L && l1 <= 60000L)
            {
                if(MassSendMsgUI.d(a) == null)
                {
                    MassSendMsgUI masssendmsgui1 = a;
                    MassSendMsgUI masssendmsgui2 = a;
                    MassSendMsgUI masssendmsgui3 = a;
                    Object aobj1[] = new Object[1];
                    aobj1[flag] = Integer.valueOf((int)((60000L - l1) / 1000L));
                    MassSendMsgUI.a(masssendmsgui1, Toast.makeText(masssendmsgui2, masssendmsgui3.getString(0x7f0a0153, aobj1), flag));
                } else
                {
                    Toast toast = MassSendMsgUI.d(a);
                    MassSendMsgUI masssendmsgui = a;
                    Object aobj[] = new Object[1];
                    aobj[flag] = Integer.valueOf((int)((60000L - l1) / 1000L));
                    toast.setText(masssendmsgui.getString(0x7f0a0153, aobj));
                }
                MassSendMsgUI.d(a).show();
            }
            if(l1 >= 60000L)
            {
                Log.e("MicroMsg.MassSendMsgUI", "record stop on countdown");
                if(MassSendMsgUI.a(a).c())
                    MassSendMsgUI.e(a);
                MassSendMsgUI.b(a).e();
                Util.a(a, 0x7f0a000b);
            } else
            {
                flag = true;
            }
            return flag;
        }

        private MassSendMsgUI a;

        _cls2()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls3
        implements com.tencent.mm.modelvoice.SceneVoice.Recorder.OnErrorListener
    {

        public final void a()
        {
            MassSendMsgUI.a(a).e();
            MassSendMsgUI.f(a).a();
            MassSendMsgUI.g(a).a();
            MMEntryLock.b("keep_app_silent");
            MassSendMsgUI.b(a).e();
            Log.e("MicroMsg.MassSendMsgUI", "record stop on error");
            Toast.makeText(a, a.getString(0x7f0a0154), 0).show();
        }

        private MassSendMsgUI a;

        _cls3()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls4
        implements com.tencent.mm.modelvoice.SceneVoice.Recorder.OnPartListener
    {

        public final void a()
        {
            MassSendMsgUI.b(a).d();
        }

        private MassSendMsgUI a;

        _cls4()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls25
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            a.a();
        }

        private ImportVideo a;
        private MassSendMsgUI b;

        _cls25(ImportVideo importvideo)
        {
            b = MassSendMsgUI.this;
            a = importvideo;
            super();
        }
    }


    private class _cls26
        implements com.tencent.mm.modelvideo.ImportVideo.OnImportFinishListener
    {

        public final void a(int i1, String s, String s1, int j1)
        {
            if(i1 != -50002) goto _L2; else goto _L1
_L1:
            Toast.makeText(a, a.getString(0x7f0a0330), 0).show();
            if(MassSendMsgUI.m(a) == null)
            {
                MassSendMsgUI.m(a).dismiss();
                MassSendMsgUI.n(a);
            }
_L4:
            return;
_L2:
            if(i1 < 0)
            {
                Toast.makeText(a, a.getString(0x7f0a032f), 0).show();
                if(MassSendMsgUI.m(a) == null)
                {
                    MassSendMsgUI.m(a).dismiss();
                    MassSendMsgUI.n(a);
                }
            } else
            {
                MasSendInfo massendinfo = new MasSendInfo();
                massendinfo.d(MassSendMsgUI.o(a));
                massendinfo.b(MassSendMsgUI.p(a).size());
                massendinfo.b(s);
                massendinfo.d(j1);
                massendinfo.p();
                massendinfo.c(43);
                NetSceneMasSend netscenemassend = new NetSceneMasSend(massendinfo, MassSendMsgUI.q(a));
                MMCore.g().b(netscenemassend);
                class _cls1
                    implements android.content.DialogInterface.OnCancelListener
                {

                    public void onCancel(DialogInterface dialoginterface)
                    {
                        MMCore.g().a(a);
                    }

                    private NetSceneMasSend a;
                    private _cls26 b;

                _cls1(NetSceneMasSend netscenemassend)
                {
                    b = _cls26.this;
                    a = netscenemassend;
                    super();
                }
                }

                if(MassSendMsgUI.m(a) != null && MassSendMsgUI.m(a).isShowing())
                    MassSendMsgUI.m(a).setOnCancelListener(new _cls1(netscenemassend));
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private MassSendMsgUI a;

        _cls26()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls20
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneMasSend a;
        private MassSendMsgUI b;

        _cls20(NetSceneMasSend netscenemassend)
        {
            b = MassSendMsgUI.this;
            a = netscenemassend;
            super();
        }
    }


    private class MassVoiceRecorder extends com.tencent.mm.modelvoice.SceneVoice.Recorder
    {

        public final boolean a()
        {
            return super.i();
        }

        public final String b()
        {
            return a;
        }

        public final boolean c()
        {
            a = super.b();
            boolean flag = super.c();
            super.e();
            return flag;
        }

        public final void d()
        {
            c();
            VoiceLogic.h(a);
        }

        private String a;
        private MassSendMsgUI b;

        MassVoiceRecorder()
        {
            b = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls19
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneMasSend a;
        private MassSendMsgUI b;

        _cls19(NetSceneMasSend netscenemassend)
        {
            b = MassSendMsgUI.this;
            a = netscenemassend;
            super();
        }
    }


    private class _cls27
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            a.finish();
        }

        private MassSendMsgUI a;

        _cls27()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls22
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneMasSend a;
        private MassSendMsgUI b;

        _cls22(NetSceneMasSend netscenemassend)
        {
            b = MassSendMsgUI.this;
            a = netscenemassend;
            super();
        }
    }


    private class _cls21
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneMasSend a;
        private MassSendMsgUI b;

        _cls21(NetSceneMasSend netscenemassend)
        {
            b = MassSendMsgUI.this;
            a = netscenemassend;
            super();
        }
    }


    private class _cls23
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            MassSendMsgUI.a(b, a);
        }

        private Intent a;
        private MassSendMsgUI b;

        _cls23(Intent intent)
        {
            b = MassSendMsgUI.this;
            a = intent;
            super();
        }
    }


    private class _cls24
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
        }

        private MassSendMsgUI a;

        _cls24()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnCreateContextMenuListener
    {

        public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
        {
            contextmenu.setHeaderTitle(0x7f0a014a);
            contextmenu.add(0, 1, 0, a.getString(0x7f0a014b));
            contextmenu.add(0, 2, 0, a.getString(0x7f0a014c));
        }

        private MassSendMsgUI a;

        _cls6()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls7
        implements com.tencent.mm.ui.chatting.ChatFooter.OnChooseListener
    {

        public final boolean a(View view)
        {
            a.openContextMenu(view);
            return true;
        }

        private MassSendMsgUI a;

        _cls7()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls8
        implements com.tencent.mm.ui.chatting.ChatFooter.OnSendRequest
    {

        public final boolean a(String s)
        {
            boolean flag;
            if(s == null || s.length() <= 0)
            {
                flag = false;
            } else
            {
                MassSendMsgUI.a(a, s);
                flag = true;
            }
            return flag;
        }

        private MassSendMsgUI a;

        _cls8()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls9
        implements com.tencent.mm.ui.chatting.ChatFooter.OnVoiceRcdStartRequest
    {

        public final boolean a()
        {
            MassSendMsgUI.h(a).startTone(24);
            class _cls1
                implements Runnable
            {

                public void run()
                {
                    MassSendMsgUI.h(a.a).stopTone();
                }

                private _cls9 a;

                _cls1()
                {
                    a = _cls9.this;
                    super();
                }
            }

            (new Handler()).postDelayed(new _cls1(), 200L);
            MassSendMsgUI.i(a).vibrate(50L);
            MassSendMsgUI.b(a).l();
            MassSendMsgUI.f(a).a(100L);
            MassSendMsgUI.g(a).a(200L);
            MassSendMsgUI.b(a).a(MassSendMsgUI.j(a).getHeight() - MassSendMsgUI.b(a).getHeight());
            MassSendMsgUI.a(a).a();
            MassSendMsgUI.a(a).a(MassSendMsgUI.k(a));
            MassSendMsgUI.a(a).a(MassSendMsgUI.l(a));
            return false;
        }

        final MassSendMsgUI a;

        _cls9()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls10
        implements com.tencent.mm.ui.chatting.ChatFooter.OnVoiceRcdStopRequest
    {

        public final boolean b()
        {
            MassSendMsgUI.f(a).a();
            MassSendMsgUI.g(a).a();
            MassSendMsgUI.a(a, -1L);
            if(MassSendMsgUI.a(a).c())
            {
                MassSendMsgUI.e(a);
                MassSendMsgUI.b(a).e();
            } else
            {
                MassSendMsgUI.b(a).b();
            }
            return false;
        }

        private MassSendMsgUI a;

        _cls10()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls11
        implements com.tencent.mm.ui.chatting.ChatFooter.OnVoiceRcdCancelRequest
    {

        public final boolean e()
        {
            MassSendMsgUI.f(a).a();
            MassSendMsgUI.g(a).a();
            MassSendMsgUI.a(a, -1L);
            MassSendMsgUI.b(a).e();
            MassSendMsgUI.a(a).d();
            return false;
        }

        private MassSendMsgUI a;

        _cls11()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls12
        implements android.view.View.OnCreateContextMenuListener
    {

        public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
        {
            contextmenu.setHeaderTitle(0x7f0a0147);
            contextmenu.add(0, 6, 0, a.getString(0x7f0a0148));
            contextmenu.add(0, 7, 0, a.getString(0x7f0a0149));
        }

        private MassSendMsgUI a;

        _cls12()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls13
        implements com.tencent.mm.ui.chatting.ChatFooter.OnSelectImageListener
    {

        public final boolean a()
        {
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType("image/*");
            Intent intent1 = Intent.createChooser(intent, null);
            a.startActivityForResult(intent1, 1);
            return false;
        }

        private MassSendMsgUI a;

        _cls13()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls14
        implements com.tencent.mm.ui.chatting.ChatFooter.OnArtSmileySelectListener
    {

        public final void a(String s)
        {
            Intent intent = new Intent(a, com/tencent/mm/ui/chatting/ArtSmileySelectUI);
            intent.putExtra("art_smiley_select_group_md5", s);
            a.startActivityForResult(intent, 3);
        }

        private MassSendMsgUI a;

        _cls14()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls15
        implements com.tencent.mm.ui.chatting.ChatFooter.OnSelectImageListener
    {

        public final boolean a()
        {
            File file = new File(ConstantsStorage.c);
            if(file.exists() || file.mkdir()) goto _L2; else goto _L1
_L1:
            Toast.makeText(a, a.getString(0x7f0a014d), 1).show();
_L4:
            return false;
_L2:
            if(!CameraUtil.a(a, ConstantsStorage.c, (new StringBuilder()).append("microMsg.").append(System.currentTimeMillis()).append(".jpg").toString(), 2))
                Toast.makeText(a, a.getString(0x7f0a00c5), 1).show();
            if(true) goto _L4; else goto _L3
_L3:
        }

        private MassSendMsgUI a;

        _cls15()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls16
        implements com.tencent.mm.ui.chatting.ChatFooter.OnSendCustomEmojiListener
    {

        public final void a(EmojiInfo emojiinfo)
        {
            Toast.makeText(a, a.getString(0x7f0a042f), 0).show();
        }

        private MassSendMsgUI a;

        _cls16()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls17
        implements com.tencent.mm.ui.chatting.ChatFooter.OnAddCustomEmojiListener
    {

        public final void a()
        {
            Toast.makeText(a, a.getString(0x7f0a042f), 0).show();
        }

        private MassSendMsgUI a;

        _cls17()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls18
        implements com.tencent.mm.ui.chatting.ChatFooter.OnSendCardRequest
    {

        public final void a()
        {
            Toast.makeText(a, a.getString(0x7f0a0430), 0).show();
        }

        private MassSendMsgUI a;

        _cls18()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private MassSendMsgUI a;

        _cls5()
        {
            a = MassSendMsgUI.this;
            super();
        }
    }

}
