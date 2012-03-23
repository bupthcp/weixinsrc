// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.login;

import android.content.Context;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.MMToast;

public class RegAccountToast
{

    public RegAccountToast(Context context)
    {
        a = null;
        c = context;
        a = new MMToast(context);
        b = null;
    }

    private void a(int i)
    {
        a(c.getString(i));
    }

    private void a(String s)
    {
        if(!s.equals(b))
        {
            a.a();
            a.a(2);
            a.setText(s);
            b = s;
            a.c();
        }
    }

    private void b()
    {
        String s = c.getString(0x7f0a00b2);
        if(!s.equals(b))
        {
            a.a();
            a.a(1);
            a.setText(s);
            b = s;
            a.c();
        }
    }

    public final void a()
    {
        a.b();
        b = null;
    }

    public final void a(CharSequence charsequence)
    {
        if(charsequence.length() != 0) goto _L2; else goto _L1
_L1:
        b();
_L4:
        return;
_L2:
        if(!Util.b(charsequence.charAt(0)))
        {
            a(0x7f0a00b3);
            continue; /* Loop/switch isn't completed */
        }
        int i = -1 + charsequence.length();
        do
        {
            if(i <= 0)
                break;
            char c1 = charsequence.charAt(i);
            if(!Util.b(c1) && c1 != '-' && c1 != '_' && !Util.c(c1))
            {
                if(Character.isSpace(c1))
                    a(0x7f0a00b5);
                else
                if(Util.a(c1))
                {
                    a(0x7f0a00b4);
                } else
                {
                    Context context = c;
                    Object aobj[] = new Object[1];
                    aobj[0] = Character.valueOf(c1);
                    a(context.getString(0x7f0a00b6, aobj));
                }
                continue; /* Loop/switch isn't completed */
            }
            i--;
        } while(true);
        b();
        if(true) goto _L4; else goto _L3
_L3:
    }

    private MMToast a;
    private String b;
    private Context c;
}
