// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.view.KeyEvent;
import com.tencent.mm.ui.IPreferenceScreen;
import com.tencent.mm.ui.MMPreference;

// Referenced classes of package com.tencent.mm.ui.bottle:
//            BottleWizardStep1, BottleSettingLogic

public class BottleWizardStep2 extends MMPreference
{

    public BottleWizardStep2()
    {
    }

    static void a(BottleWizardStep2 bottlewizardstep2)
    {
        bottlewizardstep2.o();
    }

    private void o()
    {
        Intent intent = (new Intent()).setClass(this, com/tencent/mm/ui/bottle/BottleWizardStep1);
        intent.addFlags(0x4000000);
        startActivity(intent);
        n();
        finish();
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        String s = preference.getKey();
        boolean flag;
        if(s.equals("settings_district"))
            flag = a.d();
        else
        if(s.equals("settings_signature"))
            flag = a.c();
        else
            flag = false;
        return flag;
    }

    public final int d_()
    {
        return 0x7f050001;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a0189);
        a = new BottleSettingLogic(this, q());
        b(new _cls1());
        a(0x7f0a001a, new _cls2());
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag;
        if(i == 4)
        {
            o();
            flag = true;
        } else
        {
            flag = super.onKeyDown(i, keyevent);
        }
        return flag;
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        a.b();
    }

    private BottleSettingLogic a;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            BottleWizardStep2.a(a);
        }

        private BottleWizardStep2 a;

        _cls1()
        {
            a = BottleWizardStep2.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            BottleSettingLogic.a();
            if(Util.a((Integer)MMCore.f().f().a(12290), 0) <= 0)
                MMAlert.a(a.c(), a.getString(0x7f0a03ed), a.getString(0x7f0a0010));
            else
            if(Util.h((String)MMCore.f().f().a(12293)).equals("") || Util.h((String)MMCore.f().f().a(12292)).equals(""))
            {
                MMAlert.a(a.c(), a.getString(0x7f0a03ee), a.getString(0x7f0a0010));
            } else
            {
                Intent intent = (new Intent()).setClass(a, com/tencent/mm/ui/bottle/BottleBeachUI);
                intent.addFlags(0x4000000);
                a.startActivity(intent);
                a.finish();
            }
        }

        private BottleWizardStep2 a;

        _cls2()
        {
            a = BottleWizardStep2.this;
            super();
        }
    }

}
