// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   FocusHelper.java

package com.android.launcher2;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.KeyEvent;
import android.view.View;

// Referenced classes of package com.android.launcher2:
//            FocusHelper

class HotseatIconKeyEventListener
    implements android.view.View.OnKeyListener
{

    HotseatIconKeyEventListener()
    {
    }

    public boolean onKey(View v, int keyCode, KeyEvent event)
    {
        Configuration configuration = v.getResources().getConfiguration();
        return FocusHelper.handleHotseatButtonKeyEvent(v, keyCode, event, configuration.orientation);
    }
}
