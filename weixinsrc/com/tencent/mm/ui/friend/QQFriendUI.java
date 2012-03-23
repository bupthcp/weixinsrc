// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.friend;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelfriend.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

// Referenced classes of package com.tencent.mm.ui.friend:
//            QQFriendAdapter

public class QQFriendUI extends MMActivity
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged, IOnSceneEnd
{

    public QQFriendUI()
    {
        c = null;
    }

    static QQFriendAdapter a(QQFriendUI qqfriendui)
    {
        return qqfriendui.a;
    }

    static String a(QQFriendUI qqfriendui, String s)
    {
        qqfriendui.d = s;
        return s;
    }

    protected final int a()
    {
        return 0x7f0300a5;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.QQFriendUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(((NetSceneGetQQGroup)netscenebase).f() == 1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(c != null)
        {
            c.dismiss();
            c = null;
        }
        if(i != 0 || j != 0)
            Toast.makeText(this, 0x7f0a0308, 0).show();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final void b()
    {
        if(a != null)
            a.b(d);
    }

    public final void b(String s)
    {
        a.notifyDataSetChanged();
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        Log.d("MicroMsg.QQFriendUI", (new StringBuilder()).append("onConfigurationChanged: orientation = ").append(configuration.orientation).toString());
        super.onConfigurationChanged(configuration);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MMCore.g().a(31, this);
        String s = getIntent().getStringExtra("qqgroup_name");
        b = getIntent().getIntExtra("qqgroup_id", -1);
        int i = b;
        QQGroup qqgroup = MMCore.f().s().a(i);
        boolean flag;
        ListView listview;
        View view;
        EditText edittext;
        Button button;
        if(qqgroup != null && qqgroup.e() == 1)
            flag = true;
        else
            flag = false;
        if(flag)
        {
            NetSceneGetQQGroup netscenegetqqgroup = new NetSceneGetQQGroup(1, b);
            MMCore.g().b(netscenegetqqgroup);
            c = MMAlert.a(c(), getString(0x7f0a0010), getString(0x7f0a0307), true, new _cls1(netscenegetqqgroup));
        }
        d(s);
        listview = (ListView)findViewById(0x7f0701b3);
        view = View.inflate(this, 0x7f0300ce, null);
        edittext = (EditText)view.findViewById(0x7f07022c);
        button = (Button)view.findViewById(0x7f07022d);
        edittext.setCompoundDrawablesWithIntrinsicBounds(0x7f02026b, 0, 0, 0);
        edittext.addTextChangedListener(new _cls2(button));
        button.setOnClickListener(new _cls3(edittext));
        listview.addHeaderView(view);
        a = new QQFriendAdapter(this, b);
        listview.setAdapter(a);
        listview.setOnItemClickListener(new _cls4());
        b(new _cls5());
        a(new _cls6(listview));
    }

    public void onDestroy()
    {
        MMCore.g().b(31, this);
        a.n();
        MMCore.f().v().a();
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        Log.e("MicroMsg.QQFriendUI", "qq friend onKeyDown");
        return super.onKeyDown(i, keyevent);
    }

    public void onPause()
    {
        MMCore.f().q().b(a);
        MMCore.f().y().b(this);
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
        MMCore.f().q().a(a);
        MMCore.f().y().a(this);
        a.a_(null);
    }

    private QQFriendAdapter a;
    private int b;
    private ProgressDialog c;
    private String d;

    private class _cls1
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneGetQQGroup a;
        private QQFriendUI b;

        _cls1(NetSceneGetQQGroup netscenegetqqgroup)
        {
            b = QQFriendUI.this;
            a = netscenegetqqgroup;
            super();
        }
    }


    private class _cls2
        implements TextWatcher
    {

        public void afterTextChanged(Editable editable)
        {
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
            QQFriendUI.a(b, Util.a(charsequence.toString()));
            b.b();
            Button button = a;
            int l;
            if(charsequence.toString().length() > 0)
                l = 0;
            else
                l = 8;
            button.setVisibility(l);
        }

        private Button a;
        private QQFriendUI b;

        _cls2(Button button)
        {
            b = QQFriendUI.this;
            a = button;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.setText("");
        }

        private EditText a;
        private QQFriendUI b;

        _cls3(EditText edittext)
        {
            b = QQFriendUI.this;
            a = edittext;
            super();
        }
    }


    private class _cls4
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            if(i != 0) goto _L2; else goto _L1
_L1:
            return;
_L2:
            int j = i + -1;
            QQList qqlist = (QQList)QQFriendUI.a(a).getItem(j);
            if(a.getIntent().getBooleanExtra("qqgroup_sendmessage", false))
            {
                QMsgExtension.a((new StringBuilder()).append(qqlist.c()).append("@qqim").toString(), qqlist.i());
                Intent intent2 = new Intent(a, com/tencent/mm/ui/chatting/ChattingUI);
                intent2.putExtra("Chat_User", (new StringBuilder()).append(qqlist.c()).append("@qqim").toString());
                a.startActivity(intent2);
            } else
            if(qqlist.d() == 1 || qqlist.d() == 2)
            {
                Intent intent = new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI);
                intent.putExtra("Contact_User", qqlist.e());
                intent.putExtra("Contact_Nick", qqlist.f());
                intent.putExtra("Contact_Uin", qqlist.c());
                intent.putExtra("Contact_QQNick", qqlist.i());
                intent.putExtra("Contact_Scene", 12);
                a.startActivity(intent);
            } else
            if(qqlist.d() == 0)
            {
                Intent intent1 = new Intent(a, com/tencent/mm/ui/friend/InviteFriendUI);
                intent1.putExtra("friend_type", 0);
                intent1.putExtra("friend_user_name", qqlist.e());
                intent1.putExtra("friend_num", (new StringBuilder()).append(qqlist.c()).append("").toString());
                intent1.putExtra("friend_nick", qqlist.i());
                intent1.putExtra("friend_weixin_nick", qqlist.f());
                intent1.putExtra("friend_scene", 12);
                a.startActivity(intent1);
            }
            if(true) goto _L1; else goto _L3
_L3:
        }

        private QQFriendUI a;

        _cls4()
        {
            a = QQFriendUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private QQFriendUI a;

        _cls5()
        {
            a = QQFriendUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            b.a.b.a(a);
        }

        private ListView a;
        private QQFriendUI b;

        _cls6(ListView listview)
        {
            b = QQFriendUI.this;
            a = listview;
            super();
        }
    }

}
