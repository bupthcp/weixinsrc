// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.app.ProgressDialog;
import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelsimple.NetSceneLbsFind;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

public class LbsUserFooterInfoPreference extends Preference
    implements IOnSceneEnd
{

    public LbsUserFooterInfoPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = null;
        a = (MMActivity)context;
    }

    public LbsUserFooterInfoPreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        d = null;
        a = (MMActivity)context;
    }

    static ProgressDialog a(LbsUserFooterInfoPreference lbsuserfooterinfopreference, ProgressDialog progressdialog)
    {
        lbsuserfooterinfopreference.d = progressdialog;
        return progressdialog;
    }

    static NetSceneLbsFind a(LbsUserFooterInfoPreference lbsuserfooterinfopreference, NetSceneLbsFind netscenelbsfind)
    {
        lbsuserfooterinfopreference.b = netscenelbsfind;
        return netscenelbsfind;
    }

    static MMActivity a(LbsUserFooterInfoPreference lbsuserfooterinfopreference)
    {
        return lbsuserfooterinfopreference.a;
    }

    static NetSceneLbsFind b(LbsUserFooterInfoPreference lbsuserfooterinfopreference)
    {
        return lbsuserfooterinfopreference.b;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        if(b != null || ((NetSceneLbsFind)netscenebase).f() != 2) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(d != null)
        {
            d.dismiss();
            d = null;
        }
        if(i == 0 && j == 0)
        {
            if(((NetSceneLbsFind)netscenebase).f() == 2)
            {
                MMAlert.a(getContext(), 0x7f0a03c8, 0x7f0a0010, new _cls2());
                b = null;
            }
        } else
        if(((NetSceneLbsFind)netscenebase).f() == 2)
        {
            Toast.makeText(a, 0x7f0a03c9, 1).show();
            b = null;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final boolean a()
    {
        MMCore.g().a(43, this);
        return true;
    }

    public final boolean b()
    {
        MMCore.g().b(43, this);
        return true;
    }

    public void onBindView(View view)
    {
        c = (Button)view.findViewById(0x7f0700c5);
        c.setOnClickListener(new _cls1());
        super.onBindView(view);
    }

    private MMActivity a;
    private NetSceneLbsFind b;
    private Button c;
    private ProgressDialog d;

    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
        }

        private LbsUserFooterInfoPreference a;

        _cls2()
        {
            a = LbsUserFooterInfoPreference.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            class _cls1
                implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
            {

                public final void a(int i)
                {
                    i;
                    JVM INSTR tableswitch 0 0: default 20
                //                               0 21;
                       goto _L1 _L2
_L1:
                    return;
_L2:
                    LbsUserFooterInfoPreference.a(a.a, new NetSceneLbsFind(2, 0F, 0F, 0, 0, "", ""));
                    MMCore.g().b(LbsUserFooterInfoPreference.b(a.a));
                    class _cls1
                        implements android.content.DialogInterface.OnCancelListener
                    {

                        public void onCancel(DialogInterface dialoginterface)
                        {
                            MMCore.g().a(LbsUserFooterInfoPreference.b(a.a.a));
                        }

                        private _cls1 a;

                            _cls1()
                            {
                                a = _cls1.this;
                                super();
                            }
                    }

                    LbsUserFooterInfoPreference.a(a.a, MMAlert.a(LbsUserFooterInfoPreference.a(a.a), LbsUserFooterInfoPreference.a(a.a).getString(0x7f0a0010), LbsUserFooterInfoPreference.a(a.a).getString(0x7f0a03ca), true, new _cls1()));
                    if(true) goto _L1; else goto _L3
_L3:
                }

                final _cls1 a;

                _cls1()
                {
                    a = _cls1.this;
                    super();
                }
            }

            MMAlert.a(a.getContext(), LbsUserFooterInfoPreference.a(a).getString(0x7f0a03c7), null, LbsUserFooterInfoPreference.a(a).getString(0x7f0a03c6), new _cls1());
        }

        final LbsUserFooterInfoPreference a;

        _cls1()
        {
            a = LbsUserFooterInfoPreference.this;
            super();
        }
    }

}
