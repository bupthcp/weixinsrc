// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.widget.GridView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelpackage.*;
import com.tencent.mm.platformtools.MTimerHandler;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.MMActivity;
import java.util.*;

public class SettingsSelectBgUI extends MMActivity
    implements IOnSceneEnd
{

    public SettingsSelectBgUI()
    {
        d = new ArrayList();
        g = new MTimerHandler(new _cls1(), true);
    }

    static NetSceneDownloadPackage a(SettingsSelectBgUI settingsselectbgui, NetSceneDownloadPackage netscenedownloadpackage)
    {
        settingsselectbgui.c = netscenedownloadpackage;
        return netscenedownloadpackage;
    }

    static void a(int i, List list)
    {
        Iterator iterator = list.iterator();
        do
        {
            if(!iterator.hasNext())
                break;
            NetSceneDownloadPackage netscenedownloadpackage = (NetSceneDownloadPackage)iterator.next();
            if(netscenedownloadpackage.f() != i)
                continue;
            MMCore.f().T().f(netscenedownloadpackage.f(), 1);
            list.remove(netscenedownloadpackage);
            break;
        } while(true);
    }

    static void a(SettingsSelectBgUI settingsselectbgui)
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)settingsselectbgui.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        int i;
        if(displaymetrics.widthPixels < displaymetrics.heightPixels)
            i = displaymetrics.widthPixels;
        else
            i = displaymetrics.heightPixels;
        settingsselectbgui.a = settingsselectbgui. new BgAdapter(settingsselectbgui, (i + -60) / 3);
        settingsselectbgui.b = (GridView)settingsselectbgui.findViewById(0x7f07024f);
        MMCore.f().T().a(settingsselectbgui.a);
        settingsselectbgui.b.setAdapter(settingsselectbgui.a);
        settingsselectbgui.b.setOnItemClickListener(settingsselectbgui. new _cls3());
    }

    static void a(SettingsSelectBgUI settingsselectbgui, int i)
    {
        MMCore.f().f().a(0x10504, Integer.valueOf(i));
        if(settingsselectbgui.e)
        {
            MMCore.f().f().a(12311, Integer.valueOf(i));
            MMCore.f().T().a(1);
        } else
        {
            ChattingBgInfoStorage chattingbginfostorage = MMCore.f().V();
            ChattingBgInfo chattingbginfo = chattingbginfostorage.a(settingsselectbgui.f);
            if(chattingbginfo == null)
            {
                ChattingBgInfo chattingbginfo1 = new ChattingBgInfo();
                chattingbginfo1.a(settingsselectbgui.f);
                chattingbginfo1.a(i);
                chattingbginfostorage.a(chattingbginfo1);
            } else
            {
                chattingbginfo.a(i);
                chattingbginfostorage.b(chattingbginfo);
            }
        }
    }

    static void a(SettingsSelectBgUI settingsselectbgui, List list)
    {
        settingsselectbgui.a(list);
    }

    private void a(List list)
    {
        if(list.size() > 0)
        {
            c = (NetSceneDownloadPackage)list.remove(0);
            MMCore.g().b(c);
        } else
        {
            c = null;
        }
    }

    static BgAdapter b(SettingsSelectBgUI settingsselectbgui)
    {
        return settingsselectbgui.a;
    }

    static boolean c(SettingsSelectBgUI settingsselectbgui)
    {
        return settingsselectbgui.e;
    }

    static NetSceneDownloadPackage d(SettingsSelectBgUI settingsselectbgui)
    {
        return settingsselectbgui.c;
    }

    static List e(SettingsSelectBgUI settingsselectbgui)
    {
        return settingsselectbgui.d;
    }

    static String f(SettingsSelectBgUI settingsselectbgui)
    {
        return settingsselectbgui.f;
    }

    protected final int a()
    {
        return 0x7f0300df;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        int k = netscenebase.b();
        if(k == 64 || k == 65)
        {
            if(k == 65)
                a(d);
            if(i != 0 || j == 0);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a021e);
        b(new _cls2());
        e = getIntent().getBooleanExtra("isApplyToAll", true);
        f = getIntent().getStringExtra("username");
        g.a(20L);
        MMCore.g().a(64, this);
        MMCore.g().a(65, this);
        if(MMCore.f().c())
        {
            NetSceneGetPackageList netscenegetpackagelist = new NetSceneGetPackageList(1);
            MMCore.g().b(netscenegetpackagelist);
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if(c != null)
        {
            MMCore.g().a(c);
            MMCore.f().T().f(c.f(), 1);
        }
        List list = d;
        NetSceneDownloadPackage netscenedownloadpackage;
        for(Iterator iterator = list.iterator(); iterator.hasNext(); MMCore.f().T().f(netscenedownloadpackage.f(), 1))
            netscenedownloadpackage = (NetSceneDownloadPackage)iterator.next();

        list.clear();
        MMCore.g().b(64, this);
        MMCore.g().b(65, this);
    }

    private BgAdapter a;
    private GridView b;
    private NetSceneDownloadPackage c;
    private List d;
    private boolean e;
    private String f;
    private MTimerHandler g;

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            boolean flag;
            if(a.findViewById(0x7f07024f).getWidth() <= 0)
            {
                flag = true;
            } else
            {
                SettingsSelectBgUI.a(a);
                flag = false;
            }
            return flag;
        }

        private SettingsSelectBgUI a;

        _cls1()
        {
            a = SettingsSelectBgUI.this;
            super();
        }
    }


    private class BgAdapter extends MListAdapter
    {

        public final volatile Object a(Object obj, Cursor cursor)
        {
            PackageInfo packageinfo = (PackageInfo)obj;
            if(packageinfo == null)
                packageinfo = new PackageInfo();
            packageinfo.a(cursor);
            return packageinfo;
        }

        protected final void a()
        {
            b();
        }

        public final void b()
        {
            a(MMCore.f().T().b(1));
            super.notifyDataSetChanged();
        }

        public int getCount()
        {
            return 2 + k().getCount();
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            ViewHolder viewholder;
            int j;
            ChattingBgInfo chattingbginfo;
            android.graphics.Bitmap bitmap3;
            if(view == null)
            {
                view = View.inflate(a, 0x7f0300e0, null);
                view.setLayoutParams(new android.widget.AbsListView.LayoutParams(b, b));
                ViewHolder viewholder1 = new ViewHolder();
                viewholder1.a = (LinearLayout)view.findViewById(0x7f070251);
                viewholder1.b = (LinearLayout)view.findViewById(0x7f070253);
                viewholder1.c = (LinearLayout)view.findViewById(0x7f070254);
                viewholder1.d = (LinearLayout)view.findViewById(0x7f070255);
                viewholder1.e = (LinearLayout)view.findViewById(0x7f070256);
                view.setTag(viewholder1);
                viewholder = viewholder1;
            } else
            {
                viewholder = (ViewHolder)view.getTag();
            }
            j = Util.a((Integer)MMCore.f().f().a(12311), -2);
            chattingbginfo = MMCore.f().V().a(SettingsSelectBgUI.f(f));
            if(i != 0) goto _L2; else goto _L1
_L1:
            if(SettingsSelectBgUI.c(f) && j == -2 || !SettingsSelectBgUI.c(f) && j == -2 && chattingbginfo == null || chattingbginfo != null && chattingbginfo.d() == -2)
                viewholder.a("using");
            else
                viewholder.a("downloaded");
            bitmap3 = Util.a(BitmapFactory.decodeResource(a.getResources(), 0x7f0200ca), 10F);
            ((ImageView)view.findViewById(0x7f070250)).setImageBitmap(bitmap3);
_L4:
            return view;
_L2:
            if(i != 1)
                break; /* Loop/switch isn't completed */
            android.graphics.Bitmap bitmap2;
            if(SettingsSelectBgUI.c(f) && j == 0 || !SettingsSelectBgUI.c(f) && j == 0 && chattingbginfo == null || chattingbginfo != null && chattingbginfo.d() == 0)
                viewholder.a("using");
            else
                viewholder.a("downloaded");
            bitmap2 = Util.a(BitmapFactory.decodeResource(a.getResources(), 0x7f0200c9), 10F);
            ((ImageView)view.findViewById(0x7f070250)).setImageBitmap(bitmap2);
            if(true) goto _L4; else goto _L3
_L3:
            PackageInfo packageinfo;
            packageinfo = (PackageInfo)getItem(i + -2);
            PackageInfoStorage packageinfostorage = MMCore.f().T();
            android.graphics.Bitmap bitmap;
            android.graphics.Bitmap bitmap1;
            if(!MMCore.f().c())
                bitmap = BitmapFactory.decodeResource(f.getResources(), 0x7f0201f1);
            else
                bitmap = BitmapFactory.decodeFile((new StringBuilder()).append(packageinfostorage.a()).append(PackageInfoStorage.b(packageinfo.b(), packageinfo.e())).toString());
            if(bitmap == null) goto _L4; else goto _L5
_L5:
            bitmap1 = Util.a(bitmap, 10F);
            ((ImageView)view.findViewById(0x7f070250)).setImageBitmap(bitmap1);
            switch(packageinfo.f())
            {
            case 1: // '\001'
                if(!SettingsSelectBgUI.c(f) && chattingbginfo != null && chattingbginfo.d() != packageinfo.b())
                    viewholder.a("downloaded");
                else
                    viewholder.a("using");
                break;

            case 3: // '\003'
                viewholder.a("downloading");
                break;

            case 2: // '\002'
                if(!SettingsSelectBgUI.c(f) && chattingbginfo != null && chattingbginfo.d() == packageinfo.b())
                    viewholder.a("using");
                else
                    viewholder.a("downloaded");
                break;

            case 5: // '\005'
                viewholder.a("undownloaded");
                break;

            case 4: // '\004'
                viewholder.a("canceling");
                break;
            }
            if(true) goto _L4; else goto _L6
_L6:
        }

        private Context a;
        private int b;
        private SettingsSelectBgUI f;

        public BgAdapter(Context context, int i)
        {
            f = SettingsSelectBgUI.this;
            super(context, new PackageInfo());
            a = context;
            b = i;
        }
    }


    private class _cls3
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            if(i != 0) goto _L2; else goto _L1
_L1:
            SettingsSelectBgUI.a(a, -2);
            SettingsSelectBgUI.b(a).b();
            if(!SettingsSelectBgUI.c(a))
            {
                a.setResult(-1);
                a.finish();
            }
_L4:
            return;
_L2:
            if(i == 1)
            {
                SettingsSelectBgUI.a(a, 0);
                SettingsSelectBgUI.b(a).b();
                if(!SettingsSelectBgUI.c(a))
                {
                    a.setResult(-1);
                    a.finish();
                }
            } else
            if(!MMCore.f().c())
            {
                Toast.makeText(a, 0x7f0a0227, 1).show();
            } else
            {
                PackageInfo packageinfo = (PackageInfo)adapterview.getItemAtPosition(i + -2);
                if(packageinfo == null)
                    Log.a("MicroMsg.SettingsSelectBgUI", (new StringBuilder()).append("onItemClick fail, info is null, position = ").append(i).toString());
                else
                    switch(packageinfo.f())
                    {
                    default:
                        break;

                    case 1: // '\001'
                    case 2: // '\002'
                        SettingsSelectBgUI.a(a, packageinfo.b());
                        class _cls1 extends Handler
                        {

                            public void handleMessage(Message message)
                            {
                                a.f(b, 1);
                            }

                            private PackageInfoStorage a;
                            private int b;
                            private _cls3 c;

                _cls1(PackageInfoStorage packageinfostorage, int i)
                {
                    c = _cls3.this;
                    a = packageinfostorage;
                    b = i;
                    super();
                }
                        }

                        PackageInfoStorage packageinfostorage;
                        if(SettingsSelectBgUI.c(a))
                        {
                            packageinfo.f(1);
                            MMCore.f().T().c(packageinfo);
                        } else
                        {
                            SettingsSelectBgUI.b(a).b();
                        }
                        if(!SettingsSelectBgUI.c(a))
                        {
                            a.setResult(-1);
                            a.finish();
                        }
                        break;

                    case 5: // '\005'
                        if(SettingsSelectBgUI.d(a) == null)
                        {
                            SettingsSelectBgUI.a(a, new NetSceneDownloadPackage(packageinfo.b()));
                            MMCore.g().b(SettingsSelectBgUI.d(a));
                        } else
                        {
                            SettingsSelectBgUI.e(a).add(new NetSceneDownloadPackage(packageinfo.b()));
                        }
                        break;

                    case 3: // '\003'
                        if(SettingsSelectBgUI.d(a) != null && SettingsSelectBgUI.d(a).f() == packageinfo.b())
                        {
                            MMCore.g().a(SettingsSelectBgUI.d(a));
                            MMCore.f().T().f(SettingsSelectBgUI.d(a).f(), 1);
                            SettingsSelectBgUI.a(a, SettingsSelectBgUI.e(a));
                        }
                        SettingsSelectBgUI.a(packageinfo.b(), SettingsSelectBgUI.e(a));
                        packageinfostorage = MMCore.f().T();
                        packageinfo.f(4);
                        packageinfostorage.b(packageinfo);
                        (new _cls1(packageinfostorage, packageinfo.b())).sendEmptyMessageDelayed(0, 1000L);
                        break;

                    case 4: // '\004'
                        MMCore.f().T().f(packageinfo.b(), 1);
                        break;
                    }
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private SettingsSelectBgUI a;

        _cls3()
        {
            a = SettingsSelectBgUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private SettingsSelectBgUI a;

        _cls2()
        {
            a = SettingsSelectBgUI.this;
            super();
        }
    }

}
