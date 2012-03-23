// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.facebook;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.ui.MMActivity;

public class ShowNonWeixinFriendUI extends MMActivity
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged
{

    public ShowNonWeixinFriendUI()
    {
        a = 0L;
        b = "";
    }

    private void b()
    {
        ImageView imageview = (ImageView)findViewById(0x7f07011b);
        TextView textview = (TextView)findViewById(0x7f07011c);
        TextView textview1 = (TextView)findViewById(0x7f07011d);
        imageview.setBackgroundDrawable(a(0x7f020102));
        imageview.setImageBitmap(AvatarLogic.b((new StringBuilder()).append("").append(a).toString()));
        textview.setText(b);
        Object aobj[] = new Object[1];
        aobj[0] = b;
        textview1.setText(getString(0x7f0a030b, aobj));
        b(((android.view.View.OnClickListener) (new _cls1())));
    }

    protected final int a()
    {
        return 0x7f03004e;
    }

    public final void b(String s)
    {
        b();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a030a);
        a = getIntent().getLongExtra("Contact_KFacebookId", 0L);
        b = getIntent().getStringExtra("Contact_KFacebookName");
        b();
    }

    protected void onPause()
    {
        super.onPause();
        MMCore.f().y().b(this);
    }

    protected void onResume()
    {
        super.onResume();
        MMCore.f().y().a(this);
    }

    private long a;
    private String b;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private ShowNonWeixinFriendUI a;

        _cls1()
        {
            a = ShowNonWeixinFriendUI.this;
            super();
        }
    }

}
