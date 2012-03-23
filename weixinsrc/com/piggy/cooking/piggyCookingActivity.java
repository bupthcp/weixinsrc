// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   piggyCookingActivity.java

package com.piggy.cooking;

import android.os.Bundle;
import android.view.Window;
import com.phonegap.DroidGap;

public class piggyCookingActivity extends DroidGap
{

    public piggyCookingActivity()
    {
    }

    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        getWindow().clearFlags(2048);
        getWindow().setFlags(1024, 1024);
        super.setIntegerProperty("loadUrlTimeoutValue", 60000);
        super.setIntegerProperty("splashscreen", 0x7f020001);
        super.loadUrl("file:///android_asset/www/index.html");
    }
}
