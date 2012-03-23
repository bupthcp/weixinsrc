// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   LauncherApplication.java

package com.android.launcher2;

import android.app.Application;
import android.content.*;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.os.Handler;
import android.util.DisplayMetrics;
import java.lang.ref.WeakReference;

// Referenced classes of package com.android.launcher2:
//            IconCache, LauncherModel, LauncherProvider, LauncherSettings, 
//            Launcher

public class LauncherApplication extends Application
{

    public LauncherApplication()
    {
    }

    public void onCreate()
    {
        super.onCreate();
        int screenSize = getResources().getConfiguration().screenLayout & 0xf;
        sIsScreenLarge = screenSize == 3 || screenSize == 4;
        sScreenDensity = getResources().getDisplayMetrics().density;
        mIconCache = new IconCache(this);
        mModel = new LauncherModel(this, mIconCache);
        IntentFilter filter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        filter.addAction("android.intent.action.PACKAGE_REMOVED");
        filter.addAction("android.intent.action.PACKAGE_CHANGED");
        filter.addDataScheme("package");
        registerReceiver(mModel, filter);
        filter = new IntentFilter();
        filter.addAction("android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE");
        filter.addAction("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE");
        filter.addAction("android.intent.action.LOCALE_CHANGED");
        filter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        registerReceiver(mModel, filter);
        filter = new IntentFilter();
        filter.addAction("android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED");
        registerReceiver(mModel, filter);
        filter = new IntentFilter();
        filter.addAction("android.search.action.SEARCHABLES_CHANGED");
        registerReceiver(mModel, filter);
        ContentResolver resolver = getContentResolver();
        resolver.registerContentObserver(LauncherSettings.Favorites.CONTENT_URI, true, mFavoritesObserver);
    }

    public void onTerminate()
    {
        super.onTerminate();
        unregisterReceiver(mModel);
        ContentResolver resolver = getContentResolver();
        resolver.unregisterContentObserver(mFavoritesObserver);
    }

    LauncherModel setLauncher(Launcher launcher)
    {
        mModel.initialize(launcher);
        return mModel;
    }

    IconCache getIconCache()
    {
        return mIconCache;
    }

    LauncherModel getModel()
    {
        return mModel;
    }

    void setLauncherProvider(LauncherProvider provider)
    {
        mLauncherProvider = new WeakReference(provider);
    }

    LauncherProvider getLauncherProvider()
    {
        return (LauncherProvider)mLauncherProvider.get();
    }

    public static boolean isScreenLarge()
    {
        return sIsScreenLarge;
    }

    public static boolean isScreenLandscape(Context context)
    {
        return context.getResources().getConfiguration().orientation == 2;
    }

    public static float getScreenDensity()
    {
        return sScreenDensity;
    }

    public LauncherModel mModel;
    public IconCache mIconCache;
    private static boolean sIsScreenLarge;
    private static float sScreenDensity;
    WeakReference mLauncherProvider;
    private final ContentObserver mFavoritesObserver = new ContentObserver(new Handler()) {

        public void onChange(boolean selfChange)
        {
            mModel.startLoader(LauncherApplication.this, false);
        }

        final LauncherApplication this$0;

            
            {
                this$0 = LauncherApplication.this;
                super($anonymous0);
            }
    }
;
}
