// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.skin;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.ListView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modeltheme.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.ui.*;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.tencent.mm.ui.skin:
//            SkinAdapter

public class SkinSelectUI extends MMActivity
    implements IOnSceneEnd
{

    public SkinSelectUI()
    {
    }

    static void a(SkinSelectUI skinselectui)
    {
        skinselectui.d();
        MMCore.g().b(55, skinselectui);
        MMCore.g().b(54, skinselectui);
        skinselectui.onCreate(null);
    }

    static SkinAdapter b(SkinSelectUI skinselectui)
    {
        return skinselectui.b;
    }

    private void b()
    {
        if(c != null)
        {
            Log.d("MicroMsg.SkinSelectUI", "already getting theme list now");
        } else
        {
            NetSceneGetThemeList netscenegetthemelist = new NetSceneGetThemeList();
            MMCore.g().b(netscenegetthemelist);
            c = MMAlert.a(this, null, getString(0x7f0a035a), true, new _cls4(netscenegetthemelist));
        }
    }

    static void c(SkinSelectUI skinselectui)
    {
        skinselectui.b();
    }

    protected final int a()
    {
        return 0x7f0300ed;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.SkinSelectUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(netscenebase.b() == 55 && c != null)
        {
            c.dismiss();
            c = null;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a0196);
        MMCore.g().a(55, this);
        MMCore.g().a(54, this);
        a = (ListView)findViewById(0x7f070286);
        b = new SkinAdapter(this);
        a.setAdapter(b);
        a.setOnItemClickListener(new _cls1());
        a(getString(0x7f0a035b), new _cls2());
        b(new _cls3());
    }

    public void onDestroy()
    {
        MMCore.g().b(55, this);
        MMCore.g().b(54, this);
        b.n();
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag;
        if(i == 4)
        {
            MainTabUI.a().finish();
            startActivity(new Intent(this, com/tencent/mm/ui/MainTabUI));
            finish();
            flag = true;
        } else
        {
            flag = super.onKeyDown(i, keyevent);
        }
        return flag;
    }

    public void onPause()
    {
        MMCore.f().Q().b(b);
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
        MMCore.f().Q().a(b);
        List list = MMCore.f().Q().b();
        if(list == null)
        {
            b();
        } else
        {
            Iterator iterator = list.iterator();
            while(iterator.hasNext()) 
            {
                ThemeInfo themeinfo = (ThemeInfo)iterator.next();
                String s = themeinfo.i();
                try
                {
                    createPackageContext(s, 2);
                    themeinfo.f(1002);
                }
                catch(Exception exception)
                {
                    if(MMCore.f().Q().d(themeinfo.c()) && themeinfo.f() == themeinfo.e())
                        themeinfo.f(1003);
                }
                themeinfo.a(16);
                MMCore.f().Q().b(themeinfo);
            }
        }
        b.a_(null);
        return;
    }

    private ListView a;
    private SkinAdapter b;
    private ProgressDialog c;

    private class _cls4
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneGetThemeList a;
        private SkinSelectUI b;

        _cls4(NetSceneGetThemeList netscenegetthemelist)
        {
            b = SkinSelectUI.this;
            a = netscenegetthemelist;
            super();
        }
    }


    private class _cls1
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            if(i != 0) goto _L2; else goto _L1
_L1:
            String s1 = a.e();
            if(s1 != null && !s1.equals(""))
            {
                a.c("");
                SkinSelectUI.a(a);
                SkinSelectUI.b(a).notifyDataSetChanged();
            }
_L4:
            return;
_L2:
            ThemeInfo themeinfo = (ThemeInfo)SkinSelectUI.b(a).getItem(i + -1);
            switch(themeinfo.g())
            {
            case 1001: 
                a.finish();
                break;

            case 1003: 
                Util.a(MMCore.f().Q().a(themeinfo.c()), a);
                break;

            case 1004: 
                themeinfo.f(1005);
                themeinfo.a(16);
                MMCore.f().Q().b(themeinfo);
                break;

            case 1002: 
                String s = a.e();
                if(!themeinfo.i().equals(s))
                {
                    a.c(themeinfo.i());
                    SkinSelectUI.a(a);
                    SkinSelectUI.b(a).notifyDataSetChanged();
                }
                break;

            case 1006: 
                NetSceneDownloadTheme netscenedownloadtheme = new NetSceneDownloadTheme(themeinfo.c());
                MMCore.g().b(netscenedownloadtheme);
                break;
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private SkinSelectUI a;

        _cls1()
        {
            a = SkinSelectUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            SkinSelectUI.c(a);
        }

        private SkinSelectUI a;

        _cls2()
        {
            a = SkinSelectUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            MainTabUI.a().finish();
            Intent intent = new Intent(a, com/tencent/mm/ui/MainTabUI);
            a.startActivity(intent);
            a.finish();
        }

        private SkinSelectUI a;

        _cls3()
        {
            a = SkinSelectUI.this;
            super();
        }
    }

}
