// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.facebook.sdk;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;

// Referenced classes of package com.tencent.mm.ui.facebook.sdk:
//            Util, FbDialog, FacebookError, DialogError

public class Facebook
{

    public Facebook(String s)
    {
        d = null;
        e = 0L;
        k = null;
        if(s == null)
        {
            throw new IllegalArgumentException("You must specify your application ID when instantiating a Facebook object. See README for details.");
        } else
        {
            f = s;
            return;
        }
    }

    static DialogListener a(Facebook facebook)
    {
        return facebook.j;
    }

    private void a(Activity activity, String as[])
    {
        Bundle bundle = new Bundle();
        if(as.length > 0)
            bundle.putString("scope", TextUtils.join(",", as));
        CookieSyncManager.createInstance(activity);
        _cls1 _lcls1 = new _cls1();
        String s = (new StringBuilder()).append(a).append("oauth").toString();
        bundle.putString("display", "touch");
        bundle.putString("redirect_uri", "fbconnect://success");
        String s1;
        if("oauth".equals("oauth"))
        {
            bundle.putString("type", "user_agent");
            bundle.putString("client_id", f);
        } else
        {
            bundle.putString("app_id", f);
        }
        if(a())
            bundle.putString("access_token", d);
        s1 = (new StringBuilder()).append(s).append("?").append(Util.a(bundle)).toString();
        if(activity.checkCallingOrSelfPermission("android.permission.INTERNET") != 0)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
            builder.setTitle("Error");
            builder.setMessage("Application requires permission to access the Internet");
            builder.create().show();
        } else
        {
            k = new FbDialog(activity, s1, _lcls1);
            k.show();
        }
    }

    public final String a(Context context)
    {
        Util.a(context);
        Bundle bundle = new Bundle();
        bundle.putString("method", "auth.expireSession");
        if(!bundle.containsKey("method"))
        {
            throw new IllegalArgumentException("API method must be specified. (parameters must contain key \"method\" and value). See http://developers.facebook.com/docs/reference/rest/");
        } else
        {
            String s = a(((String) (null)), bundle, "GET");
            d = null;
            e = 0L;
            return s;
        }
    }

    public final String a(String s, Bundle bundle, String s1)
    {
        bundle.putString("format", "json");
        if(a())
            bundle.putString("access_token", d);
        String s2;
        if(s != null)
            s2 = (new StringBuilder()).append(b).append(s).toString();
        else
            s2 = c;
        return Util.a(s2, s1, bundle);
    }

    public final void a(int l, int i1, Intent intent)
    {
        if(l != i) goto _L2; else goto _L1
_L1:
        if(i1 != -1) goto _L4; else goto _L3
_L3:
        String s = intent.getStringExtra("error");
        if(s == null)
            s = intent.getStringExtra("error_type");
        if(s != null)
        {
            if(s.equals("service_disabled") || s.equals("AndroidAuthKillSwitchException"))
                a(g, h);
            else
            if(s.equals("access_denied") || s.equals("OAuthAccessDeniedException"))
            {
                j.a();
            } else
            {
                String s1 = intent.getStringExtra("error_description");
                if(s1 != null)
                    s = (new StringBuilder()).append(s).append(":").append(s1).toString();
                (new StringBuilder()).append("Login failed: ").append(s).toString();
                j.a(new FacebookError(s));
            }
        } else
        {
            d = intent.getStringExtra("access_token");
            b(intent.getStringExtra("expires_in"));
            if(a())
            {
                (new StringBuilder()).append("Login Success! access_token=").append(d).append(" expires=").append(e).toString();
                j.a(intent.getExtras());
            } else
            {
                j.a(new FacebookError("Failed to receive access token."));
            }
        }
_L2:
        return;
_L4:
        if(i1 == 0)
            if(intent != null)
            {
                (new StringBuilder()).append("Login failed: ").append(intent.getStringExtra("error")).toString();
                j.a(new DialogError(intent.getStringExtra("error"), intent.getIntExtra("error_code", -1), intent.getStringExtra("failing_url")));
            } else
            {
                j.a();
            }
        if(true) goto _L2; else goto _L5
_L5:
    }

    public final void a(Activity activity, String as[], DialogListener dialoglistener)
    {
        j = dialoglistener;
        a(activity, as);
    }

    public final void a(String s)
    {
        d = s;
    }

    public final boolean a()
    {
        boolean flag;
        if(d != null && (e == 0L || System.currentTimeMillis() < e))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String b()
    {
        return d;
    }

    public final String b(Context context)
    {
        Util.a(context);
        d = null;
        e = 0L;
        return null;
    }

    public final void b(String s)
    {
        if(s != null)
        {
            long l;
            if(s.equals("0"))
                l = 0L;
            else
                l = System.currentTimeMillis() + 1000L * Long.parseLong(s);
            e = l;
        }
    }

    public final long c()
    {
        return e;
    }

    private static String a = "https://m.facebook.com/dialog/";
    private static String b = "https://graph.facebook.com/";
    private static String c = "https://api.facebook.com/restserver.php";
    private String d;
    private long e;
    private String f;
    private Activity g;
    private String h[];
    private int i;
    private DialogListener j;
    private FbDialog k;


    private class _cls1
        implements DialogListener
    {

        public final void a()
        {
            Facebook.a(a).a();
        }

        public final void a(Bundle bundle)
        {
            CookieSyncManager.getInstance().sync();
            a.a(bundle.getString("access_token"));
            a.b(bundle.getString("expires_in"));
            if(a.a())
            {
                (new StringBuilder()).append("Login Success! access_token=").append(a.b()).append(" expires=").append(a.c()).toString();
                Facebook.a(a).a(bundle);
            } else
            {
                Facebook.a(a).a(new FacebookError("Failed to receive access token."));
            }
        }

        public final void a(DialogError dialogerror)
        {
            (new StringBuilder()).append("Login failed: ").append(dialogerror).toString();
            Facebook.a(a).a(dialogerror);
        }

        public final void a(FacebookError facebookerror)
        {
            (new StringBuilder()).append("Login failed: ").append(facebookerror).toString();
            Facebook.a(a).a(facebookerror);
        }

        private Facebook a;

        _cls1()
        {
            a = Facebook.this;
            super();
        }
    }


    private class DialogListener
    {

        public abstract void a();

        public abstract void a(Bundle bundle);

        public abstract void a(DialogError dialogerror);

        public abstract void a(FacebookError facebookerror);
    }

}
