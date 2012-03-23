// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.Activity;
import android.content.*;
import android.os.Bundle;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import java.util.HashMap;
import java.util.Map;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity

public abstract class MMWizardActivity extends MMActivity
{

    public MMWizardActivity()
    {
    }

    public static void a(Context context, Intent intent)
    {
        String s = null;
        Assert.assertTrue((new StringBuilder()).append("startWizardActivity: Param context should be a Activity :").append(context.toString()).toString(), context instanceof Activity);
        Intent intent1 = ((Activity)context).getIntent();
        String s1;
        Exception exception;
        String s2;
        if(intent1 != null)
        {
            s = intent1.getStringExtra("WizardRootClass");
            s1 = intent1.getStringExtra("WizardTransactionId");
        } else
        {
            s1 = s;
        }
        if(!Util.i(s))
            break MISSING_BLOCK_LABEL_77;
        s2 = intent.getComponent().getClassName();
        s = s2;
_L2:
        Assert.assertFalse((new StringBuilder()).append("startWizardActivity: ERROR in Get Root Class :[").append(s).append("]").toString(), Util.i(s));
        intent.putExtra("WizardRootClass", s);
        if(s1 != null)
            intent.putExtra("WizardTransactionId", s1);
        context.startActivity(intent);
        return;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static void a(Context context, Intent intent, Intent intent1)
    {
        String s = (new StringBuilder()).append("trans.").append(Util.e()).append(".").append(intent1.hashCode()).toString();
        a.put(s, intent1);
        intent.putExtra("WizardTransactionId", s);
        a(context, intent);
    }

    private void b()
    {
        String s = getIntent().getStringExtra("WizardTransactionId");
        Intent intent = (Intent)a.get(s);
        a.remove(s);
        if(intent != null)
        {
            Log.d("MicroMsg.MMWizardActivity", (new StringBuilder()).append("doing post exit for transaction=").append(s).append(", intent=").append(intent).toString());
            startActivity(intent);
        }
    }

    public void finish()
    {
        String s = getIntent().getStringExtra("WizardRootClass");
        if(getComponentName().getClassName().equals(s))
        {
            Log.d("MicroMsg.MMWizardActivity", "root wizard activity");
            b();
        }
        super.finish();
    }

    protected final void o()
    {
        String s;
        Class class1;
        s = getIntent().getExtras().getString("WizardRootClass");
        Assert.assertFalse((new StringBuilder()).append("finishWizard: ERROR in Get Root Class :[").append(s).append("]").toString(), Util.i(s));
        class1 = null;
        Class class2 = Class.forName(s);
        class1 = class2;
_L2:
        String s1 = (new StringBuilder()).append("finishWizard: ERROR in Get Root Class :[").append(s).append("]").toString();
        boolean flag;
        Intent intent;
        if(class1 != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(s1, flag);
        intent = new Intent(this, class1);
        intent.putExtra("WizardRootClass", getIntent().getStringExtra("WizardRootClass"));
        intent.putExtra("WizardTransactionId", getIntent().getStringExtra("WizardTransactionId"));
        intent.putExtra("WizardRootKillSelf", true);
        intent.addFlags(0x4000000);
        startActivity(intent);
        return;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Assert.assertFalse("MMWizardActivity Should Start By startWizardActivity or startWizardNextStep", Util.i(getIntent().getExtras().getString("WizardRootClass")));
        if(getIntent().getExtras().getBoolean("WizardRootKillSelf", false))
        {
            super.finish();
            Log.c("MicroMsg.MMWizardActivity", (new StringBuilder()).append("finish wizard, root=").append(getComponentName().getClassName()).toString());
            b();
        }
    }

    private static final Map a = new HashMap();

}
