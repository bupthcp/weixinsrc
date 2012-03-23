// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.ui;

import android.os.Bundle;
import android.widget.ListView;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.ui.MMActivity;

public class AlbumCommentsUI extends MMActivity
    implements IOnSceneEnd
{

    public AlbumCommentsUI()
    {
    }

    protected final int a()
    {
        return 0x7f030007;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = (ListView)findViewById(0x7f07001c);
    }

    private ListView a;
}
