// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.nearbyfriends;

import android.app.AlertDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import com.tencent.mm.ui.MMActivity;

public class NearbyFriendsIntroUI extends MMActivity
{

    public NearbyFriendsIntroUI()
    {
        b = null;
    }

    static AlertDialog a(NearbyFriendsIntroUI nearbyfriendsintroui)
    {
        return nearbyfriendsintroui.b;
    }

    static AlertDialog a(NearbyFriendsIntroUI nearbyfriendsintroui, AlertDialog alertdialog)
    {
        nearbyfriendsintroui.b = alertdialog;
        return alertdialog;
    }

    static View b(NearbyFriendsIntroUI nearbyfriendsintroui)
    {
        return nearbyfriendsintroui.d;
    }

    static CheckBox c(NearbyFriendsIntroUI nearbyfriendsintroui)
    {
        return nearbyfriendsintroui.c;
    }

    protected final int a()
    {
        return 0x7f03009c;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a03b2);
        d = View.inflate(this, 0x7f03005a, null);
        c = (CheckBox)d.findViewById(0x7f070137);
        c.setChecked(false);
        a = (Button)findViewById(0x7f0701a0);
        a.setOnClickListener(new _cls1());
        b(new _cls2());
    }

    private Button a;
    private AlertDialog b;
    private CheckBox c;
    private View d;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    boolean flag = true;
                    MMCore.f().f().a(4103, Boolean.valueOf(flag));
                    ConfigStorage configstorage = MMCore.f().f();
                    SelfPersonCard selfpersoncard;
                    if(NearbyFriendsIntroUI.c(a.a).isChecked())
                        flag = false;
                    configstorage.a(4104, Boolean.valueOf(flag));
                    selfpersoncard = SelfPersonCard.b();
                    if(selfpersoncard == null)
                    {
                        a.a.startActivity(new Intent(a.a, com/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI));
                    } else
                    {
                        String s = Util.h(selfpersoncard.f());
                        String s1 = Util.h(selfpersoncard.e());
                        int j = selfpersoncard.d();
                        if(s.equals("") || s1.equals("") || j == 0)
                            a.a.startActivity(new Intent(a.a, com/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI));
                        else
                            a.a.startActivity(new Intent(a.a, com/tencent/mm/ui/nearbyfriends/NearbyFriendsUI));
                    }
                    a.a.finish();
                }

                private _cls1 a;

                _cls1()
                {
                    a = _cls1.this;
                    super();
                }
            }

            if(NearbyFriendsIntroUI.a(a) == null)
                NearbyFriendsIntroUI.a(a, MMAlert.a(a.c(), a.getString(0x7f0a0010), NearbyFriendsIntroUI.b(a), new _cls1(), null));
            else
                NearbyFriendsIntroUI.a(a).show();
        }

        final NearbyFriendsIntroUI a;

        _cls1()
        {
            a = NearbyFriendsIntroUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private NearbyFriendsIntroUI a;

        _cls2()
        {
            a = NearbyFriendsIntroUI.this;
            super();
        }
    }

}
