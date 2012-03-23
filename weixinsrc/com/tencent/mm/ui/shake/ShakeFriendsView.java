// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.shake;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelshake.ShakeItemStorage;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;

// Referenced classes of package com.tencent.mm.ui.shake:
//            ShakeReportUI, ShakeFriendAdapter

public class ShakeFriendsView extends LinearLayout
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged
{

    public ShakeFriendsView(ShakeReportUI shakereportui)
    {
        super(shakereportui);
        d = shakereportui;
        View.inflate(shakereportui, 0x7f03009b, this);
        int i = Util.a((Integer)MMCore.f().f().a(12290), 0);
        b = (ListView)findViewById(0x7f07019f);
        c = d.getLayoutInflater().inflate(0x7f0300e1, null);
        c.findViewById(0x7f070257).setOnClickListener(new _cls1());
        b.addFooterView(c);
        c.findViewById(0x7f070257).setVisibility(8);
        a = new ShakeFriendAdapter(d);
        b.setAdapter(a);
        b.setOnItemClickListener(new _cls2(i));
        c();
    }

    static ShakeFriendAdapter a(ShakeFriendsView shakefriendsview)
    {
        return shakefriendsview.a;
    }

    static ShakeReportUI b(ShakeFriendsView shakefriendsview)
    {
        return shakefriendsview.d;
    }

    protected final void a()
    {
        MMCore.f().y().b(this);
        MMCore.f().I().b(a);
        Log.c("MicroMsg.ShakeFriendsView", "onPause");
    }

    protected final void a(boolean flag)
    {
        a.a(flag);
        if(c != null)
        {
            View view = c.findViewById(0x7f070257);
            int i;
            if(flag)
                i = 0;
            else
                i = 8;
            view.setVisibility(i);
        }
    }

    protected final void b()
    {
        a.n();
    }

    public final void b(String s)
    {
        a.notifyDataSetChanged();
    }

    protected final void c()
    {
        MMCore.f().y().a(this);
        MMCore.f().I().a(a);
        a.a();
        Log.c("MicroMsg.ShakeFriendsView", "onResume");
    }

    public final void d()
    {
        b.setSelection(0);
    }

    public final int e()
    {
        return b.getCount();
    }

    private ShakeFriendAdapter a;
    private ListView b;
    private View c;
    private ShakeReportUI d;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.a(false);
        }

        private ShakeFriendsView a;

        _cls1()
        {
            a = ShakeFriendsView.this;
            super();
        }
    }


    private class _cls2
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            ShakeItem shakeitem = (ShakeItem)ShakeFriendsView.a(b).getItem(i);
            String s = shakeitem.c();
            MMCore.f().I().c(s);
            Contact contact = MMCore.f().h().c(s);
            Log.d("MicroMsg.ShakeFriendsView", (new StringBuilder()).append("listView onTtemClick username:").append(s).append(" display:").append(shakeitem.d()).append(" position:").append(i).append(" contactName").append(contact.s()).toString());
            Log.d("MicroMsg.ShakeFriendsView", (new StringBuilder()).append("isContact:").append(contact.l()).append("  contact:").append(contact).toString());
            if(contact.l())
            {
                Intent intent = new Intent(ShakeFriendsView.b(b), com/tencent/mm/ui/contact/ContactInfoUI);
                intent.putExtra("Contact_User", s);
                if(s != null && s.length() > 0)
                    ShakeFriendsView.b(b).startActivity(intent);
            } else
            {
                Log.d("MicroMsg.ShakeFriendsView", (new StringBuilder()).append("listView onTtemClick username:").append(s).append(" display:").append(shakeitem.d()).append(" position:").append(i).append(" contactName").append(contact.s()).toString());
                Intent intent1 = new Intent(ShakeFriendsView.b(b), com/tencent/mm/ui/contact/ContactInfoUI);
                intent1.putExtra("Contact_User", shakeitem.c());
                intent1.putExtra("Contact_Nick", shakeitem.d());
                intent1.putExtra("Contact_Distance", shakeitem.h());
                intent1.putExtra("Contact_Signature", shakeitem.g());
                intent1.putExtra("Contact_Province", shakeitem.e());
                intent1.putExtra("Contact_City", shakeitem.f());
                intent1.putExtra("Contact_Sex", shakeitem.i());
                intent1.putExtra("Contact_IsLBSFriend", true);
                intent1.putExtra("Contact_VUser_Info", shakeitem.o());
                intent1.putExtra("Contact_VUser_Info_Flag", shakeitem.n());
                byte byte0;
                if(a == shakeitem.i())
                    byte0 = 23;
                else
                    byte0 = 24;
                intent1.putExtra("Contact_Scene", byte0);
                ShakeFriendsView.b(b).startActivity(intent1);
            }
        }

        private int a;
        private ShakeFriendsView b;

        _cls2(int i)
        {
            b = ShakeFriendsView.this;
            a = i;
            super();
        }
    }

}
