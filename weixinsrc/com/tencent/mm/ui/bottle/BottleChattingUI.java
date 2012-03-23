// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.content.Intent;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.storage.ContactStorage;
import com.tencent.mm.ui.chatting.ChatFooter;
import com.tencent.mm.ui.chatting.ChattingUI;

// Referenced classes of package com.tencent.mm.ui.bottle:
//            BottleConversationUI

public class BottleChattingUI extends ChattingUI
{

    public BottleChattingUI()
    {
    }

    protected final void b()
    {
        f = getIntent().getStringExtra("Chat_User");
        g = MMCore.f().h().c(f);
        super.b();
        b.a(new _cls1());
    }

    public final String o()
    {
        return f;
    }

    public void onPause()
    {
        BottleConversationUI.b();
        super.onPause();
    }

    protected final String p()
    {
        return ContactStorageLogic.u(ConfigStorageLogic.b());
    }

    protected final void q()
    {
        Object aobj[] = new Object[1];
        aobj[0] = Util.h(g.M());
        d(getString(0x7f0a03d7, aobj).trim());
    }

    protected final boolean r()
    {
        return true;
    }

    protected final void s()
    {
        c(0x7f0201c5, new _cls2());
    }

    protected final void t()
    {
        finish();
    }

    private String f;
    private Contact g;

    private class _cls1
        implements com.tencent.mm.ui.chatting.ChatFooter.OnVideoRequest
    {

        private BottleChattingUI a;

        _cls1()
        {
            a = BottleChattingUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent();
            intent.setClass(a, com/tencent/mm/ui/contact/ContactInfoUI);
            intent.putExtra("Contact_User", a.o());
            a.startActivity(intent);
        }

        private BottleChattingUI a;

        _cls2()
        {
            a = BottleChattingUI.this;
            super();
        }
    }

}
