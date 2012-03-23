// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.tencent.mm.platformtools.Log;

// Referenced classes of package com.tencent.mm.ui:
//            MMUIGroup, FindMoreFriendsUI

public class FindFriendUIGroup extends MMUIGroup
{

    public FindFriendUIGroup()
    {
    }

    protected final void a()
    {
        a(new Intent(this, com/tencent/mm/ui/FindMoreFriendsUI));
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        Log.d("MicroMsg.FindFriendUIGroup", (new StringBuilder()).append("onConfigurationChanged: orientation = ").append(configuration.orientation).toString());
        super.onConfigurationChanged(configuration);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = this;
    }

    protected void onDestroy()
    {
        super.onDestroy();
        Log.e("MicroMsg.FindFriendUIGroup", "on destroy");
        a = null;
    }

    public static FindFriendUIGroup a;
}
