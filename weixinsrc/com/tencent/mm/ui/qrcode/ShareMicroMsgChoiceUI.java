// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.qrcode;

import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.RoleStorage;
import com.tencent.mm.ui.*;

// Referenced classes of package com.tencent.mm.ui.qrcode:
//            ShowQRCodeStep1UI

public class ShareMicroMsgChoiceUI extends MMPreference
{

    public ShareMicroMsgChoiceUI()
    {
    }

    public final int a()
    {
        return 0x7f0300e6;
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        String s = preference.getKey();
        if(!s.equals("share_micromsg_qqwb")) goto _L2; else goto _L1
_L1:
        if(Util.a((Integer)MMCore.f().f().a(9)) != 0)
        {
            Intent intent3 = new Intent(this, com/tencent/mm/ui/qrcode/ShowQRCodeStep1UI);
            intent3.putExtra("show_to", 1);
            startActivity(intent3);
        } else
        {
            MMAlert.a(this, 0x7f0a0347, 0x7f0a0010);
        }
_L4:
        return false;
_L2:
        if(s.equals("share_micromsg_qzone"))
        {
            if(Util.a((Integer)MMCore.f().f().a(9)) != 0)
            {
                Intent intent2 = new Intent(this, com/tencent/mm/ui/qrcode/ShowQRCodeStep1UI);
                intent2.putExtra("show_to", 2);
                startActivity(intent2);
            } else
            {
                MMAlert.a(this, 0x7f0a0347, 0x7f0a0010);
            }
        } else
        if(s.equals("share_micromsg_to_sina"))
        {
            Intent intent = new Intent(this, com/tencent/mm/ui/qrcode/ShowQRCodeStep1UI);
            intent.putExtra("show_to", 3);
            startActivity(intent);
        } else
        if(s.equals("share_micromsg_to_fuckbook"))
        {
            Intent intent1 = new Intent(this, com/tencent/mm/ui/qrcode/ShowQRCodeStep1UI);
            intent1.putExtra("show_to", 4);
            startActivity(intent1);
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
        return 0x7f05002c;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a033a);
        a = q();
        b(new _cls1());
        ((IconPreference)a.a("share_micromsg_to_sina")).a(a(0x7f020297));
        com.tencent.mm.storage.RoleInfo roleinfo = MMCore.f().m().a("@t.qq.com");
        boolean flag;
        IconPreference iconpreference;
        IconPreference iconpreference1;
        IconPreference iconpreference2;
        if(Util.a((Integer)MMCore.f().f().a(9)) != 0)
            flag = true;
        else
            flag = false;
        iconpreference = (IconPreference)a.a("share_micromsg_qqwb");
        if(roleinfo == null || !flag)
            a.b(iconpreference);
        else
            iconpreference.a(a(0x7f020294));
        iconpreference1 = (IconPreference)a.a("share_micromsg_qzone");
        if(!flag)
            a.b(iconpreference1);
        else
            iconpreference1.a(a(0x7f02026f));
        iconpreference2 = (IconPreference)a.a("share_micromsg_to_fuckbook");
        if(ConfigStorageLogic.l())
            iconpreference2.a(a(0x7f020296));
        else
            a.b(iconpreference2);
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

        private ShareMicroMsgChoiceUI a;

        _cls1()
        {
            a = ShareMicroMsgChoiceUI.this;
            super();
        }
    }

}
