// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import java.util.Locale;

// Referenced classes of package com.tencent.mm.platformtools:
//            SystemProperty, Util

public final class LocaleUtil
{

    private LocaleUtil()
    {
    }

    public static String a()
    {
        String s = Util.h(SystemProperty.a("language_key"));
        if(s.length() <= 0 || s.equals("language_default"))
            s = a("zh_CN");
        return s;
    }

    public static String a(SharedPreferences sharedpreferences)
    {
        String s = Util.h(sharedpreferences.getString("language_key", null));
        if(s.length() > 0 && !s.equals("language_default"))
        {
            SystemProperty.a("language_key", s);
        } else
        {
            s = a("language_default");
            SystemProperty.a("language_key", s);
        }
        return s;
    }

    private static String a(String s)
    {
        String s1 = Locale.getDefault().getLanguage().trim();
        if(!s1.equals("en")) goto _L2; else goto _L1
_L1:
        s = s1;
_L4:
        return s;
_L2:
        String s2 = (new StringBuilder()).append(Locale.getDefault().getLanguage().trim()).append("_").append(Locale.getDefault().getCountry().trim()).toString();
        if(s2.equals("zh_TW") || s2.equals("zh_HK"))
            s = "zh_TW";
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static void a(Context context, Locale locale)
    {
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        if(!configuration.locale.equals(locale))
        {
            android.util.DisplayMetrics displaymetrics = resources.getDisplayMetrics();
            configuration.locale = locale;
            resources.updateConfiguration(configuration, displaymetrics);
            Resources.getSystem().updateConfiguration(configuration, displaymetrics);
        }
    }
}
