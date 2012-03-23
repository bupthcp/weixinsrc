// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.tencent.mm.platformtools.LocaleUtil;

// Referenced classes of package com.tencent.mm.ui.chatting:
//            SmileyData

class SmileyManager
{

    private SmileyManager(Context context)
    {
        b = null;
        c = null;
        d = null;
        e = null;
        f = null;
        b = context.getResources().getStringArray(0x7f060010);
        c = context.getResources().getStringArray(0x7f060011);
        d = context.getResources().getStringArray(0x7f060012);
        e = context.getResources().getStringArray(0x7f060013);
        f = context.getResources().getStringArray(0x7f060014);
        g = com.tencent.mm.ui.MappingDrawable.Factory.a(context, 0x7f0202af, 16);
    }

    public static Drawable a(Context context, int i)
    {
        return b(context).g.a(i);
    }

    public static SmileyData a(Context context, String s)
    {
        int i;
        SmileyData smileydata;
        int j;
        i = b(context).d.length;
        smileydata = new SmileyData();
        j = 0;
_L1:
        if(j >= i)
            break MISSING_BLOCK_LABEL_207;
        smileydata.a = j;
        if(s.startsWith(b(context).d[j]))
            smileydata.b = b(context).d[j];
        else
        if(s.startsWith(b(context).f[j]))
            smileydata.b = b(context).f[j];
        else
        if(s.startsWith(b(context).e[j]))
            smileydata.b = b(context).e[j];
        else
        if(s.startsWith(b(context).c[j]))
        {
            smileydata.b = b(context).c[j];
        } else
        {
label0:
            {
                if(!s.startsWith(b(context).b[j]))
                    break label0;
                smileydata.b = b(context).b[j];
            }
        }
_L2:
        return smileydata;
        j++;
          goto _L1
        smileydata = null;
          goto _L2
    }

    public static void a()
    {
        a = null;
    }

    public static String[] a(Context context)
    {
        String as[];
        if(LocaleUtil.a().equals("en"))
            as = b(context).f;
        else
        if(LocaleUtil.a().equals("zh_TW"))
            as = b(context).e;
        else
            as = b(context).d;
        return as;
    }

    private static SmileyManager b(Context context)
    {
        if(a == null)
            a = new SmileyManager(context);
        return a;
    }

    private static SmileyManager a = null;
    private String b[];
    private String c[];
    private String d[];
    private String e[];
    private String f[];
    private com.tencent.mm.ui.MappingDrawable.Factory g;

}
