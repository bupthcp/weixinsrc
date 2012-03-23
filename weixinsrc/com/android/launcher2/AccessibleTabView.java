// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AccessibleTabView.java

package com.android.launcher2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.android.launcher2:
//            FocusHelper

public class AccessibleTabView extends TextView
{

    public AccessibleTabView(Context context)
    {
        super(context);
    }

    public AccessibleTabView(Context context, AttributeSet attrs)
    {
        super(context, attrs);
    }

    public AccessibleTabView(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
    }

    public boolean onKeyDown(int keyCode, KeyEvent event)
    {
        return FocusHelper.handleTabKeyEvent(this, keyCode, event) || super.onKeyDown(keyCode, event);
    }

    public boolean onKeyUp(int keyCode, KeyEvent event)
    {
        return FocusHelper.handleTabKeyEvent(this, keyCode, event) || super.onKeyUp(keyCode, event);
    }
}
