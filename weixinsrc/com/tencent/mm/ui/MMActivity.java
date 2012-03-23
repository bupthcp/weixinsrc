// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.Activity;
import android.content.*;
import android.content.res.*;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Bundle;
import android.view.*;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.tencent.mm.booter.CoreServiceHelper;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.LocaleUtil;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.chatting.SpanUtil;
import com.tencent.mm.ui.skin.MMSkinFactory;
import java.util.Locale;

// Referenced classes of package com.tencent.mm.ui:
//            Controller, MMImageButton, MMAppMgr

public abstract class MMActivity extends Activity
{

    public MMActivity()
    {
        a = null;
    }

    public static void a(float f1)
    {
        b = f1;
    }

    public static float k()
    {
        return b;
    }

    protected abstract int a();

    public final Drawable a(int i1)
    {
        Drawable drawable;
        if(f != null)
            drawable = f.a(i1);
        else
            drawable = getResources().getDrawable(i1);
        return drawable;
    }

    public final MMImageButton a(int i1, android.view.View.OnClickListener onclicklistener)
    {
        return a.a(i1, onclicklistener);
    }

    public final MMImageButton a(String s, android.view.View.OnClickListener onclicklistener)
    {
        return a.a(s, onclicklistener);
    }

    public final void a(android.view.View.OnClickListener onclicklistener)
    {
        a.a(onclicklistener);
    }

    protected final void a(Class class1)
    {
        Intent intent = new Intent();
        intent.setClass(this, class1);
        startActivity(intent);
    }

    protected final void a(Class class1, Intent intent)
    {
        intent.setClass(this, class1);
        startActivity(intent);
    }

    public final void a_(boolean flag)
    {
        boolean flag1 = true;
        View view = d;
        boolean flag2;
        View view1;
        if(!flag)
            flag2 = flag1;
        else
            flag2 = false;
        view.setFocusable(flag2);
        view1 = d;
        if(flag)
            flag1 = false;
        view1.setFocusableInTouchMode(flag1);
        if(!flag)
        {
            d.setVisibility(0);
            d.requestFocus();
        } else
        {
            d.setVisibility(8);
        }
    }

    public final ColorStateList b(int i1)
    {
        ColorStateList colorstatelist;
        if(f != null)
            colorstatelist = f.b(i1);
        else
            colorstatelist = getResources().getColorStateList(i1);
        return colorstatelist;
    }

    public final MMImageButton b(int i1, android.view.View.OnClickListener onclicklistener)
    {
        return a.b(i1, onclicklistener);
    }

    public final MMImageButton b(android.view.View.OnClickListener onclicklistener)
    {
        MMImageButton mmimagebutton = b(getResources().getString(0x7f0a0014), onclicklistener);
        mmimagebutton.setBackgroundDrawable(a(0x7f0201c2));
        return mmimagebutton;
    }

    public final MMImageButton b(String s, android.view.View.OnClickListener onclicklistener)
    {
        return a.b(s, onclicklistener);
    }

    public final void b(boolean flag)
    {
        a.a(flag);
    }

    public final Context c()
    {
        if(getParent() != null)
            this = getParent();
        return this;
    }

    public MMImageButton c(int i1, android.view.View.OnClickListener onclicklistener)
    {
        return a.a(Integer.valueOf(i1), onclicklistener);
    }

    public final void c(int i1)
    {
        a.c(i1);
    }

    public final void c(String s)
    {
        if(f != null)
            f.a(s);
    }

    public final void d()
    {
        if(f != null)
            f.b();
    }

    public final void d(int i1)
    {
        a.d(i1);
    }

    public final void d(String s)
    {
        a.a(s);
    }

    public final String e()
    {
        return f.c();
    }

    public final void e(int i1)
    {
        a.e(i1);
    }

    protected final View f()
    {
        return c;
    }

    public final void f(int i1)
    {
        a.a(i1);
    }

    protected final View g()
    {
        return h;
    }

    public final void g(int i1)
    {
        a.b(i1);
    }

    protected int h()
    {
        return -1;
    }

    protected boolean i()
    {
        return false;
    }

    protected int j()
    {
        return 0x7f030093; //mm_title
    }

    public final void l()
    {
        a.b();
    }

    public final View m()
    {
        return a.a();
    }

    public final void n()
    {
        InputMethodManager inputmethodmanager = (InputMethodManager)getSystemService("input_method");
        if(inputmethodmanager != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        View view = getCurrentFocus();
        if(view != null)
        {
            android.os.IBinder ibinder = view.getWindowToken();
            if(ibinder != null)
                inputmethodmanager.hideSoftInputFromWindow(ibinder, 0);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
    }

    public void onCreate(Bundle bundle)
    {
        String s;
        super.onCreate(bundle);
        s = LocaleUtil.a(getSharedPreferences("com.tencent.mm_preferences", 0));
        if(!s.equals("zh_TW") && !s.equals("zh_HK")) goto _L2; else goto _L1
_L1:
        LocaleUtil.a(this, Locale.TAIWAN);
_L4:
        i = (AudioManager)getSystemService("audio");
        j = i.getStreamMaxVolume(3);
        g = (LayoutInflater)getSystemService("layout_inflater");
        if(f == null)
        {
            f = new MMSkinFactory(this);
            if(f.c() != null && !f.c().equals(""))
                g.setFactory(f);
        }
        h = g.inflate(0x7f030070, null);//mm_activity
        e = (LinearLayout)h.findViewById(0x7f07016f);//mm_root_view
        d = h.findViewById(0x7f070170);//mm_trans_layer
        int i1 = j();
        if(i1 != -1)
            e.addView(g.inflate(i1, null), -1, -2);
        int j1 = a();
        if(j1 != -1)
        {
            c = g.inflate(j1, null);
            e.addView(c, -1, -1);
            setContentView(h);
        }
        a = new Controller(this);
        ScrollView scrollview = (ScrollView)findViewById(0x7f070219);//mm_body_sv
        if(scrollview != null)
            scrollview.setOnTouchListener(new _cls1());
        if(!i())
        {
            if(MMCore.c() == null)
                MMCore.a(getApplicationContext());
            if(MMCore.q() == null)
            {
                CoreServiceHelper.b(getApplicationContext());
                Log.a("MicroMsg.MMActivity", "service not binded in non-standalone mode");
                finish();
            }
        }
        return;
_L2:
        if(s.equals("en"))
            LocaleUtil.a(this, Locale.ENGLISH);
        else
        if(s.equals("zh_CN"))
            LocaleUtil.a(this, Locale.CHINA);
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected void onDestroy()
    {
        SpanUtil.a();
        if(f != null)
        {
            f.a();
            f = null;
        }
        super.onDestroy();
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        boolean flag = true;
        if(i1 == 25)
        {
            int l1 = i.getStreamVolume(3);
            int i2 = j / 7;
            if(i2 == 0)
                i2 = ((flag) ? 1 : 0);
            i.setStreamVolume(3, l1 - i2, 5);
        } else
        if(i1 == 24)
        {
            int j1 = i.getStreamVolume(3);
            int k1 = j / 7;
            if(k1 == 0)
                k1 = ((flag) ? 1 : 0);
            i.setStreamVolume(3, k1 + j1, 5);
        } else
        {
            flag = super.onKeyDown(i1, keyevent);
        }
        return flag;
    }

    protected void onPause()
    {
        super.onPause();
        if(!i())
            MMAppMgr.a(false);
    }

    protected void onResume()
    {
        super.onResume();
        if(!i())
            MMAppMgr.a(true);
        if(!(this instanceof ChattingUI))
            MMAppMgr.a("");
    }

    public void onStart()
    {
        if(h() == -1)
            if(getSharedPreferences("com.tencent.mm_preferences", 0).getBoolean("settings_landscape_mode", false))
                setRequestedOrientation(-1);
            else
                setRequestedOrientation(1);
        super.onStart();
    }

    private static float b = 1F;
    private Controller a;
    private View c;
    private View d;
    private LinearLayout e;
    private MMSkinFactory f;
    private LayoutInflater g;
    private View h;
    private AudioManager i;
    private int j;


    private class _cls1
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            a.n();
            return false;
        }

        private MMActivity a;

        _cls1()
        {
            a = MMActivity.this;
            super();
        }
    }

}
