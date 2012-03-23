// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import android.content.Context;
import android.content.res.Resources;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.tencent.mm.platformtools:
//            Log

public final class SmileyUtil
{

    private SmileyUtil()
    {
    }

    public static int a(char c)
    {
        int i;
        if(c >= '\uE001' && c <= '\uE05A')
            i = c - 57345;
        else
        if(c >= '\uE101' && c <= '\uE15A')
            i = (c + 90) - 57601;
        else
        if(c >= '\uE201' && c <= '\uE253')
            i = (c + 180) - 57857;
        else
        if(c >= '\uE301' && c <= '\uE34D')
            i = (c + 263) - 58113;
        else
        if(c >= '\uE401' && c <= '\uE44C')
            i = (c + 340) - 58369;
        else
        if(c >= '\uE501' && c <= '\uE537')
            i = (c + 416) - 58625;
        else
            i = -1;
        return i;
    }

    public static void a(Context context)
    {
        int i = 0;
        if(context != null) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.SmileyUtil", "setQQSmileyFailed, null context");
_L4:
        return;
_L2:
        if(a == null)
        {
            String as[] = context.getResources().getStringArray(0x7f060010);
            String as1[] = context.getResources().getStringArray(0x7f060011);
            String as2[] = context.getResources().getStringArray(0x7f060012);
            String as3[] = context.getResources().getStringArray(0x7f060013);
            String as4[] = context.getResources().getStringArray(0x7f060014);
            StringBuilder stringbuilder = new StringBuilder();
            int j = as.length;
            for(int k = i; k < j; k++)
            {
                stringbuilder.append(Pattern.quote(as[k]));
                stringbuilder.append("|");
            }

            int l = as1.length;
            for(int i1 = i; i1 < l; i1++)
            {
                stringbuilder.append(Pattern.quote(as1[i1]));
                stringbuilder.append("|");
            }

            int j1 = as2.length;
            for(int k1 = i; k1 < j1; k1++)
            {
                stringbuilder.append(Pattern.quote(as2[k1]));
                stringbuilder.append("|");
            }

            int l1 = as3.length;
            for(int i2 = i; i2 < l1; i2++)
            {
                stringbuilder.append(Pattern.quote(as3[i2]));
                stringbuilder.append("|");
            }

            for(int j2 = as4.length; i < j2; i++)
            {
                stringbuilder.append(Pattern.quote(as4[i]));
                stringbuilder.append("|");
            }

            a = Pattern.compile(stringbuilder.toString());
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static boolean a(String s)
    {
        boolean flag = false;
        char ac[] = s.trim().toCharArray();
        int i = ((flag) ? 1 : 0);
        do
        {
label0:
            {
                if(i < ac.length)
                {
                    if(a(ac[i]) < 0)
                        break label0;
                    flag = true;
                }
                return flag;
            }
            i++;
        } while(true);
    }

    public static boolean b(String s)
    {
        boolean flag = false;
        if(a != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        Matcher matcher = a.matcher(s);
        if(matcher != null)
            flag = matcher.matches();
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static Pattern a;
}
