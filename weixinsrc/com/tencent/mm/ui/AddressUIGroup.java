// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.platformtools.Log;

// Referenced classes of package com.tencent.mm.ui:
//            MMUIGroup, AddressUI

public class AddressUIGroup extends MMUIGroup
{

    public AddressUIGroup()
    {
    }

    protected final void a()
    {
        Intent intent = new Intent(this, com/tencent/mm/ui/AddressUI);
        intent.putExtra("key_group", 2);
        a(intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = this;
    }

    protected void onDestroy()
    {
        super.onDestroy();
        Log.e("MicroMsg.AddressUIGroup", "on destroy");
        a = null;
    }

    public static AddressUIGroup a;
}
