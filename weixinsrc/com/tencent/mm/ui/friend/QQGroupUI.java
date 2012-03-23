// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.friend;

import android.app.ProgressDialog;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListView;
import android.widget.Toast;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelfriend.NetSceneGetQQGroup;
import com.tencent.mm.modelfriend.QQGroupStorage;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

public class QQGroupUI extends MMActivity
    implements IOnSceneEnd
{

    public QQGroupUI()
    {
        c = null;
        d = null;
    }

    static QQGroupAdapter a(QQGroupUI qqgroupui)
    {
        return qqgroupui.b;
    }

    static ListView b(QQGroupUI qqgroupui)
    {
        return qqgroupui.a;
    }

    protected final int a()
    {
        return 0x7f0300a7;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.QQGroupUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(((NetSceneGetQQGroup)netscenebase).f() == 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(c != null)
        {
            c.dismiss();
            c = null;
        }
        if(i != 0 || j != 0)
            Toast.makeText(this, 0x7f0a0303, 0).show();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        Log.d("MicroMsg.QQGroupUI", (new StringBuilder()).append("onConfigurationChanged: orientation = ").append(configuration.orientation).toString());
        super.onConfigurationChanged(configuration);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a0301);
        MMCore.g().a(31, this);
        a = (ListView)findViewById(0x7f0701b8);
        b = new QQGroupAdapter(this);
        a.setAdapter(b);
        a.setOnItemClickListener(new _cls1());
        d = findViewById(0x7f0701b9);
        d.setOnClickListener(new _cls2());
        boolean flag;
        boolean flag1;
        if(Util.a((Integer)MMCore.f().f().a(9)) != 0)
            flag = true;
        else
            flag = false;
        if(!flag)
        {
            d.setVisibility(0);
            a.setVisibility(8);
        } else
        {
            d.setVisibility(8);
            a.setVisibility(0);
        }
        b(new _cls3());
        a(new _cls4());
        if(Util.a((Integer)MMCore.f().f().a(9)) != 0)
            flag1 = true;
        else
            flag1 = false;
        if(flag1)
        {
            NetSceneGetQQGroup netscenegetqqgroup = new NetSceneGetQQGroup(0, 0);
            MMCore.g().b(netscenegetqqgroup);
            c = MMAlert.a(c(), getString(0x7f0a0010), getString(0x7f0a0302), true, new _cls5(netscenegetqqgroup));
        }
    }

    public void onDestroy()
    {
        MMCore.g().b(31, this);
        b.n();
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        Log.e("MicroMsg.QQGroupUI", "qq group onKeyDown");
        return super.onKeyDown(i, keyevent);
    }

    public void onPause()
    {
        MMCore.f().s().b(b);
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
        MMCore.f().s().a(b);
    }

    private ListView a;
    private QQGroupAdapter b;
    private ProgressDialog c;
    private View d;

    private class QQGroupAdapter extends MListAdapter
    {

        public final volatile Object a(Object obj, Cursor cursor)
        {
            QQGroup qqgroup = (QQGroup)obj;
            if(qqgroup == null)
                qqgroup = new QQGroup();
            qqgroup.a(cursor);
            return qqgroup;
        }

        protected final void a()
        {
            b();
        }

        public final void b()
        {
            a(MMCore.f().s().b());
            super.notifyDataSetChanged();
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            QQGroup qqgroup = (QQGroup)getItem(i);
            class ViewHolder
            {

                TextView a;
                TextView b;
                private QQGroupAdapter c;

                ViewHolder()
                {
                    c = QQGroupAdapter.this;
                    super();
                }
            }

            ViewHolder viewholder1;
            if(view == null)
            {
                ViewHolder viewholder = new ViewHolder();
                view = View.inflate(d, 0x7f0300a8, null);
                viewholder.a = (TextView)view.findViewById(0x7f0701ba);
                viewholder.b = (TextView)view.findViewById(0x7f0701bb);
                view.setTag(viewholder);
                viewholder1 = viewholder;
            } else
            {
                viewholder1 = (ViewHolder)view.getTag();
            }
            viewholder1.a.setText(qqgroup.g());
            if(qqgroup.d() == 0)
            {
                if(qqgroup.c() == 0)
                {
                    viewholder1.b.setText(0x7f0a0305);
                } else
                {
                    TextView textview1 = viewholder1.b;
                    QQGroupUI qqgroupui1 = a;
                    Object aobj1[] = new Object[2];
                    aobj1[0] = Integer.valueOf(qqgroup.c());
                    aobj1[1] = Integer.valueOf(qqgroup.d());
                    textview1.setText(qqgroupui1.getString(0x7f0a0304, aobj1));
                }
            } else
            {
                TextView textview = viewholder1.b;
                QQGroupUI qqgroupui = a;
                Object aobj[] = new Object[2];
                aobj[0] = Integer.valueOf(qqgroup.c());
                aobj[1] = Integer.valueOf(qqgroup.d());
                textview.setText(qqgroupui.getString(0x7f0a0304, aobj));
            }
            return view;
        }

        private QQGroupUI a;

        public QQGroupAdapter(Context context)
        {
            a = QQGroupUI.this;
            super(context, new QQGroup());
        }
    }


    private class _cls1
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            QQGroup qqgroup = (QQGroup)QQGroupUI.a(a).getItem(i);
            Intent intent = new Intent(a, com/tencent/mm/ui/friend/QQFriendUI);
            intent.putExtra("qqgroup_id", qqgroup.b());
            intent.putExtra("qqgroup_name", qqgroup.g());
            intent.putExtra("qqgroup_sendmessage", a.getIntent().getBooleanExtra("qqgroup_sendmessage", false));
            a.startActivity(intent);
        }

        private QQGroupUI a;

        _cls1()
        {
            a = QQGroupUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            MMWizardActivity.a(a, new Intent(a, com/tencent/mm/ui/bindqq/BindQQUI));
        }

        private QQGroupUI a;

        _cls2()
        {
            a = QQGroupUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private QQGroupUI a;

        _cls3()
        {
            a = QQGroupUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            b.a.b.a(com.tencent.mm.ui.friend.QQGroupUI.b(a));
        }

        private QQGroupUI a;

        _cls4()
        {
            a = QQGroupUI.this;
            super();
        }
    }


    private class _cls5
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneGetQQGroup a;
        private QQGroupUI b;

        _cls5(NetSceneGetQQGroup netscenegetqqgroup)
        {
            b = QQGroupUI.this;
            a = netscenegetqqgroup;
            super();
        }
    }

}
