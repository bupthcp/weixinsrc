// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.widget.*;
import com.tencent.mm.platformtools.Log;

public class SecurityImage extends LinearLayout
{

    public SecurityImage(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = null;
        b = null;
        c = null;
        d = null;
        e = null;
        f = null;
    }

    static AlertDialog a(SecurityImage securityimage, AlertDialog alertdialog)
    {
        securityimage.f = alertdialog;
        return alertdialog;
    }

    private void a(Bitmap bitmap, String s)
    {
        a = s;
        if(bitmap != null)
            c.setImageBitmap(bitmap);
        else
            Log.a("MicroMsg.SecurityImage", "setSecImg failed, decode failed");
    }

    static void a(SecurityImage securityimage)
    {
        securityimage.a(false);
    }

    private void a(boolean flag)
    {
        byte byte0 = 0;
        ImageView imageview = c;
        char c1;
        ImageView imageview1;
        int i;
        ProgressBar progressbar;
        if(flag)
            c1 = '\377';
        else
            c1 = '(';
        imageview.setAlpha(c1);
        imageview1 = c;
        if(flag)
            i = byte0;
        else
            i = 0xffaaaaaa;
        imageview1.setBackgroundColor(i);
        progressbar = b;
        if(flag)
            byte0 = 4;
        progressbar.setVisibility(byte0);
    }

    static ISecurityModel b(SecurityImage securityimage)
    {
        return securityimage.g;
    }

    static AlertDialog c(SecurityImage securityimage)
    {
        return securityimage.f;
    }

    public final String a()
    {
        return a;
    }

    public final void a(ISecurityModel isecuritymodel)
    {
        if(g != null)
            g.a(null);
        g = isecuritymodel;
        g.a(this);
    }

    protected final void a(boolean flag, Bitmap bitmap)
    {
        a(true);
        if(flag)
        {
            a(bitmap, ((String) (null)));
            e.clearComposingText();
            e.setText("");
        }
    }

    public final void a(byte abyte0[], String s)
    {
        b = (ProgressBar)findViewById(0x7f070230);
        c = (ImageView)findViewById(0x7f07022f);
        d = (Button)findViewById(0x7f070231);
        e = (EditText)findViewById(0x7f070232);
        d.setOnClickListener(new _cls1());
        if(g != null)
            g.b();
        b(abyte0, s);
    }

    public final String b()
    {
        String s;
        if(e == null)
            s = "";
        else
            s = e.getText().toString().trim();
        return s;
    }

    public final void b(byte abyte0[], String s)
    {
        a(true);
        a = s;
        if(abyte0 != null)
            a(BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length), s);
    }

    public final void c()
    {
        if(f != null)
        {
            f.dismiss();
            f = null;
        }
    }

    private String a;
    private ProgressBar b;
    private ImageView c;
    private Button d;
    private EditText e;
    private AlertDialog f;
    private ISecurityModel g;

    private class ISecurityModel
    {

        public abstract void a();

        public void a(SecurityImage securityimage)
        {
            e = securityimage;
        }

        protected abstract void b();

        protected SecurityImage e;

        public ISecurityModel()
        {
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            SecurityImage.a(a);
            if(SecurityImage.b(a) != null)
                SecurityImage.b(a).a();
        }

        private SecurityImage a;

        _cls1()
        {
            a = SecurityImage.this;
            super();
        }
    }

}
