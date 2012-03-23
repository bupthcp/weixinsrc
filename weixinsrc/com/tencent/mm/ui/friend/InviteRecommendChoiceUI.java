// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.friend;

import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.widget.Toast;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.RoleStorage;
import com.tencent.mm.ui.*;

// Referenced classes of package com.tencent.mm.ui.friend:
//            RecommendFriendUI

public class InviteRecommendChoiceUI extends MMPreference
{

    public InviteRecommendChoiceUI()
    {
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        String s = preference.getKey();
        if(!s.equals("settings_invite_qq_friends")) goto _L2; else goto _L1
_L1:
        Intent intent = new Intent(this, com/tencent/mm/ui/friend/RecommendFriendUI);
        intent.putExtra("recommend_type", Integer.toString(0));
        startActivity(intent);
_L4:
        return false;
_L2:
        if(s.equals("settings_recommend_by_mail"))
        {
            Intent intent1 = new Intent(this, com/tencent/mm/ui/friend/RecommendFriendUI);
            intent1.putExtra("recommend_type", Integer.toString(2));
            startActivity(intent1);
        } else
        if(s.equals("settings_recommend_by_mb"))
        {
            Intent intent2 = new Intent(this, com/tencent/mm/ui/friend/RecommendFriendUI);
            intent2.putExtra("recommend_type", Integer.toString(1));
            startActivity(intent2);
        } else
        if(s.equals("settings_invite_mobile_friends"))
        {
            Intent intent3 = new Intent("android.intent.action.VIEW");
            Object aobj[] = new Object[1];
            aobj[0] = MMCore.f().f().a(2);
            intent3.putExtra("sms_body", getString(0x7f0a00c6, aobj));
            intent3.setType("vnd.android-dir/mms-sms");
            if(Util.a(this, intent3))
                startActivity(intent3);
            else
                Toast.makeText(this, 0x7f0a00c4, 1).show();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected final boolean b()
    {
        return false;
    }

    public final int d_()
    {
        return 0x7f05001a;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a02a7);
        a = q();
        b(new _cls1());
        IconPreference iconpreference = (IconPreference)a.a("settings_invite_qq_friends");
        IconPreference iconpreference1;
        IconPreference iconpreference2;
        if(ConfigStorageLogic.a() == 0)
            a.b(iconpreference);
        else
            iconpreference.a(a(0x7f020124));
        iconpreference1 = (IconPreference)a.a("settings_recommend_by_mail");
        if(ConfigStorageLogic.a() == 0)
            a.b(iconpreference1);
        else
            iconpreference1.a(a(0x7f02014d));
        iconpreference2 = (IconPreference)a.a("settings_recommend_by_mb");
        if(MMCore.f().m().a("@t.qq.com") == null)
            a.b(iconpreference2);
        else
            iconpreference2.a(a(0x7f020298));
        ((IconPreference)a.a("settings_invite_mobile_friends")).a(a(0x7f02014e));
    }

    private IPreferenceScreen a;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private InviteRecommendChoiceUI a;

        _cls1()
        {
            a = InviteRecommendChoiceUI.this;
            super();
        }
    }

}
