// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   WallpaperChooser.java

package com.android.launcher2;

import android.app.*;
import android.os.Bundle;

// Referenced classes of package com.android.launcher2:
//            WallpaperChooserDialogFragment

public class WallpaperChooser extends Activity
{

    public WallpaperChooser()
    {
    }

    public void onCreate(Bundle icicle)
    {
        super.onCreate(icicle);
        setContentView(0x7f030015);
        android.app.Fragment fragmentView = getFragmentManager().findFragmentById(0x7f060035);
        if(fragmentView == null)
        {
            DialogFragment fragment = WallpaperChooserDialogFragment.newInstance();
            fragment.show(getFragmentManager(), "dialog");
        }
    }

    private static final String TAG = "Launcher.WallpaperChooser";
}
