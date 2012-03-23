// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.*;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelmulti.NetSceneGetUpdatePack;
import com.tencent.mm.modelsimple.NetSceneGetUpdateInfo;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.OpLogStorage;
import java.io.File;

public class Updater extends LinearLayout
    implements IOnSceneEnd, IOnSceneProgressEnd
{

    public Updater(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = null;
        b = null;
        c = null;
        d = null;
        e = null;
        f = null;
        g = null;
        i = null;
        j = true;
    }

    static Button a(Updater updater)
    {
        return updater.d;
    }

    static NetSceneGetUpdatePack a(Updater updater, NetSceneGetUpdatePack netscenegetupdatepack)
    {
        updater.g = netscenegetupdatepack;
        return netscenegetupdatepack;
    }

    public static Updater a(Context context, int k, android.content.DialogInterface.OnCancelListener oncancellistener, boolean flag)
    {
        MMCore.e().a(16, Long.valueOf(Util.c()));
        ((NotificationManager)context.getSystemService("notification")).cancel(34);
        Updater updater = (Updater)View.inflate(context, 0x7f0300f8, null);
        updater.c();
        updater.j = flag;
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
        builder.setTitle(k);
        builder.setCancelable(true);
        builder.setOnCancelListener(new _cls2(context, updater, oncancellistener));
        builder.setView(updater);
        updater.f = builder.create();
        updater.h = false;
        return updater;
    }

    public static Updater a(Context context, android.content.DialogInterface.OnCancelListener oncancellistener)
    {
        Object obj = null;
        MMCore.e().a(16, Long.valueOf(Util.c()));
        ((NotificationManager)context.getSystemService("notification")).cancel(34);
        Updater updater = (Updater)View.inflate(context, 0x7f0300f8, ((android.view.ViewGroup) (obj)));
        updater.c();
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
        builder.setTitle(0x7f0a0090);
        builder.setCancelable(true);
        if(oncancellistener != null)
            obj = new _cls1(context, updater, oncancellistener);
        builder.setOnCancelListener(((android.content.DialogInterface.OnCancelListener) (obj)));
        builder.setView(updater);
        updater.f = builder.create();
        updater.f.show();
        updater.h = true;
        return updater;
    }

    public static void a(int k)
    {
        if(MMCore.f().b())
        {
            Log.d("MicroMsg.Updater", (new StringBuilder()).append("reportUpdateStat : opCode = ").append(k).toString());
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpUpdateStat(k));
        }
    }

    private void a(int k, int l)
    {
        Context context = getContext();
        String s = context.getString(0x7f0a002f);
        String s1;
        Intent intent;
        PendingIntent pendingintent;
        if(k < l)
        {
            s1 = (new StringBuilder()).append(context.getString(0x7f0a002d)).append(String.valueOf((k * 100) / l)).append("%").toString();
            intent = new Intent(getContext(), context.getClass());
            intent.addFlags(0x20000000);
            if(i == null)
                i = new Notification(0x7f040019, null, System.currentTimeMillis());
        } else
        {
            s1 = context.getString(0x7f0a002e);
            intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.fromFile(new File(g.d())), "application/vnd.android.package-archive");
            intent.addFlags(0x20000000);
            i = new Notification(0x7f0202d6, null, System.currentTimeMillis());
            Notification notification = i;
            notification.flags = 0x10 | notification.flags;
        }
        pendingintent = PendingIntent.getActivity(context, 0, intent, 0x8000000);
        i.setLatestEventInfo(context, s, s1, pendingintent);
        ((NotificationManager)context.getSystemService("notification")).notify(99, i);
    }

    static IOnUpdateEnd b(Updater updater)
    {
        return updater.e;
    }

    static NetSceneGetUpdatePack c(Updater updater)
    {
        return updater.g;
    }

    private void c()
    {
        MMCore.g().a(11, this);
        MMCore.g().a(12, this);
    }

    static Button d(Updater updater)
    {
        return updater.c;
    }

    static AlertDialog e(Updater updater)
    {
        return updater.f;
    }

    public final void a()
    {
        b();
    }

    public final void a(int k, int l, NetSceneBase netscenebase)
    {
        if(netscenebase.b() == 12 && c != null)
        {
            int i1;
            if(l <= 0)
                i1 = 0;
            else
                i1 = (k * 100) / l;
            c.setText((new StringBuilder()).append(getContext().getString(0x7f0a00d4)).append(i1).append("%").toString());
            a(k, l);
        }
    }

    public final void a(int k, int l, String s, NetSceneBase netscenebase)
    {
        if(k != 0 || l != 0) goto _L2; else goto _L1
_L1:
        Log.d("MicroMsg.Updater", (new StringBuilder()).append("isShow ").append(h).toString());
        if(!h)
            f.show();
        netscenebase.b();
        JVM INSTR tableswitch 11 12: default 76
    //                   11 77
    //                   12 195;
           goto _L3 _L4 _L5
_L3:
        return;
_L4:
        NetSceneGetUpdateInfo netscenegetupdateinfo = (NetSceneGetUpdateInfo)netscenebase;
        TextView textview = (TextView)findViewById(0x7f07029c);
        Context context = getContext();
        Object aobj[] = new Object[2];
        aobj[0] = netscenegetupdateinfo.i();
        aobj[1] = Util.b(netscenegetupdateinfo.g());
        textview.setText(context.getString(0x7f0a0091, aobj));
        a.setVisibility(8);
        b.setVisibility(0);
        MMCore.f().f().a(30, Boolean.valueOf(true));
        MMCore.f().f().a(31, Boolean.valueOf(true));
        continue; /* Loop/switch isn't completed */
_L5:
        a(100, 100);
        a.setVisibility(8);
        b();
        if(f != null)
            f.dismiss();
        NetSceneGetUpdatePack netscenegetupdatepack = (NetSceneGetUpdatePack)netscenebase;
        IOnUpdateEnd ionupdateend = e;
        String s1 = netscenegetupdatepack.d();
        getContext();
        ionupdateend.a(Util.g(s1));
        continue; /* Loop/switch isn't completed */
_L2:
        switch(netscenebase.b())
        {
        default:
            break;

        case 11: // '\013'
            break; /* Loop/switch isn't completed */

        case 12: // '\f'
            break;
        }
        break MISSING_BLOCK_LABEL_380;
_L7:
        b();
        if(true) goto _L3; else goto _L6
_L6:
        findViewById(0x7f070299).setVisibility(8);
        if(k == 4 && l == -18)
        {
            findViewById(0x7f070299).setVisibility(8);
            ((TextView)findViewById(0x7f07029a)).setText(0x7f0a00d2);
        } else
        {
            ((TextView)findViewById(0x7f07029a)).setText(0x7f0a00d5);
        }
        b();
          goto _L7
        b();
          goto _L7
    }

    public final void a(int k, IOnUpdateEnd ionupdateend)
    {
        Log.c("MicroMsg.Updater", (new StringBuilder()).append("begin update routine, type=").append(k).toString());
        e = ionupdateend;
        a = (LinearLayout)findViewById(0x7f070298);
        b = (ScrollView)findViewById(0x7f07029b);
        NetSceneGetUpdateInfo netscenegetupdateinfo = new NetSceneGetUpdateInfo(k);
        MMCore.g().b(netscenegetupdateinfo);
        c = (Button)findViewById(0x7f07029d);
        d = (Button)findViewById(0x7f07029e);
        if(j)
            d.setText(0x7f0a00da);
        else
            d.setText(0x7f0a00d9);
        c.setOnClickListener(new _cls3(netscenegetupdateinfo, k));
        d.setOnClickListener(new _cls4(ionupdateend));
    }

    public final void b()
    {
        MMCore.g().b(11, this);
        MMCore.g().b(12, this);
        if(g != null)
            MMCore.g().a(g);
    }

    private LinearLayout a;
    private ScrollView b;
    private Button c;
    private Button d;
    private IOnUpdateEnd e;
    private AlertDialog f;
    private NetSceneGetUpdatePack g;
    private boolean h;
    private Notification i;
    private boolean j;

    private class _cls2
        implements android.content.DialogInterface.OnCancelListener
    {

        public final void onCancel(DialogInterface dialoginterface)
        {
            ((NotificationManager)a.getSystemService("notification")).cancel(99);
            Updater.a(2);
            b.a();
            c.onCancel(dialoginterface);
        }

        private Context a;
        private Updater b;
        private android.content.DialogInterface.OnCancelListener c;

        _cls2(Context context, Updater updater, android.content.DialogInterface.OnCancelListener oncancellistener)
        {
            a = context;
            b = updater;
            c = oncancellistener;
            super();
        }
    }


    private class _cls1
        implements android.content.DialogInterface.OnCancelListener
    {

        public final void onCancel(DialogInterface dialoginterface)
        {
            ((NotificationManager)a.getSystemService("notification")).cancel(99);
            Updater.a(2);
            b.a();
            c.onCancel(dialoginterface);
        }

        private Context a;
        private Updater b;
        private android.content.DialogInterface.OnCancelListener c;

        _cls1(Context context, Updater updater, android.content.DialogInterface.OnCancelListener oncancellistener)
        {
            a = context;
            b = updater;
            c = oncancellistener;
            super();
        }
    }


    private class IOnUpdateEnd
    {

        public abstract void a();

        public abstract void a(Intent intent);
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Updater.a(c).setVisibility(8);
            c.getContext();
            if((1 & ChannelUtil.b) == 0) goto _L2; else goto _L1
_L1:
            Log.a("MicroMsg.Updater", "package has set external update mode");
            Uri uri = Uri.parse("market://details?id=com.tencent.mm");
            Intent intent = (new Intent("android.intent.action.VIEW", uri)).addFlags(0x10000000);
            if(uri == null || intent == null || !Util.a(c.getContext(), intent))
            {
                Log.a("MicroMsg.Updater", "parse market uri failed, jump to weixin.qq.com");
                Intent intent1 = (new Intent("android.intent.action.VIEW", Uri.parse("http://weixin.qq.com"))).addFlags(0x10000000);
                Updater.b(c).a(intent1);
            } else
            {
                Log.c("MicroMsg.Updater", "parse market uri ok");
                Updater.b(c).a(intent);
            }
_L5:
            return;
_L2:
            String s;
            String s1;
            s = a.h();
            s1 = (new StringBuilder()).append(ConstantsStorage.e).append(s).append(".apk").toString();
            if(!FileOperation.c(s1))
                break MISSING_BLOCK_LABEL_319;
            if(!MD5.a(FileOperation.a(s1, 0, -1)).equalsIgnoreCase(s)) goto _L4; else goto _L3
_L3:
            Log.d("MicroMsg.NetSceneGetUpdatePack", "getReadyPack update pack ok");
_L6:
            if(s1 == null)
            {
                Updater.a(1);
                Updater.a(c, new NetSceneGetUpdatePack(a.g(), a.h(), b, c));
                MMCore.g().b(Updater.c(c));
                Updater.d(c).setText(0x7f0a00d4);
            } else
            {
                Updater.a(8);
                Updater.b(c).a(Util.g(s1));
            }
            Updater.d(c).setEnabled(false);
            if(true) goto _L5; else goto _L4
_L4:
            Log.a("MicroMsg.NetSceneGetUpdatePack", "getReadyPack: update pack MD5 not same");
            FileOperation.d(s1);
            s1 = null;
              goto _L6
        }

        private NetSceneGetUpdateInfo a;
        private int b;
        private Updater c;

        _cls3(NetSceneGetUpdateInfo netscenegetupdateinfo, int k)
        {
            c = Updater.this;
            a = netscenegetupdateinfo;
            b = k;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Updater.e(b).dismiss();
            b.b();
            a.a();
        }

        private IOnUpdateEnd a;
        private Updater b;

        _cls4(IOnUpdateEnd ionupdateend)
        {
            b = Updater.this;
            a = ionupdateend;
            super();
        }
    }

}
