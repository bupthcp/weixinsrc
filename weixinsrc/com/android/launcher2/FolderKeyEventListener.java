// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   FocusHelper.java

package com.android.launcher2;

import android.view.KeyEvent;
import android.view.View;

// Referenced classes of package com.android.launcher2:
//            FocusHelper

class FolderKeyEventListener
    implements android.view.View.OnKeyListener
{

    FolderKeyEventListener()
    {
    }

    public boolean onKey(View v, int keyCode, KeyEvent event)
    {
        return FocusHelper.handleFolderKeyEvent(v, keyCode, event);
    }
}
