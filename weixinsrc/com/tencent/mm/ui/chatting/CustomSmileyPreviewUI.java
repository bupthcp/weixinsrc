// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelemoji.EmojiInfoStorage;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.MMActivity;

// Referenced classes of package com.tencent.mm.ui.chatting:
//            EmojiView

public class CustomSmileyPreviewUI extends MMActivity
{

    public CustomSmileyPreviewUI()
    {
    }

    protected final int a()
    {
        return 0x7f030048;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        String s = Util.h(getIntent().getStringExtra("custom_smiley_preview_md5"));
        ((EmojiView)findViewById(0x7f070116)).a(MMCore.f().l().d(s));
        b(new _cls1());
    }

    public void onPause()
    {
        super.onPause();
        EmojiView.b(false);
    }

    protected void onResume()
    {
        super.onResume();
        EmojiView.b(true);
        EmojiView.a(false);
    }

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private CustomSmileyPreviewUI a;

        _cls1()
        {
            a = CustomSmileyPreviewUI.this;
            super();
        }
    }

}
