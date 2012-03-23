// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.webkit.WebSettings;
import android.webkit.WebView;

// Referenced classes of package b.a:
//            ab, ac

public final class ae
{

    private ae()
    {
    }

    public static void a(WebView webview)
    {
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 5)
            (new ab()).a(webview);
        else
            (new ac()).a(webview);
    }

    public static void b(WebView webview)
    {
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 8)
            webview.getSettings().setLayoutAlgorithm(android.webkit.WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
    }

    private static final int a = 5;
    private static final int b = 8;
}
