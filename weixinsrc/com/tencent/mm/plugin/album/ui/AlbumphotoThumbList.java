// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;

// Referenced classes of package com.tencent.mm.plugin.album.ui:
//            MMHorList

public class AlbumphotoThumbList extends LinearLayout
{

    public AlbumphotoThumbList(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = context;
        a = (MMHorList)LayoutInflater.from(context).inflate(0x7f03000f, this, true).findViewById(0x7f070039);
        a.setOnItemClickListener(new _cls1());
    }

    private MMHorList a;
    private Context b;

    private class _cls1
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
        }

        private AlbumphotoThumbList a;

        _cls1()
        {
            a = AlbumphotoThumbList.this;
            super();
        }
    }

}
