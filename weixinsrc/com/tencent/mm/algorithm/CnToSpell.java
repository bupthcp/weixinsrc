// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.algorithm;


// Referenced classes of package com.tencent.mm.algorithm:
//            SpellMap

public class CnToSpell
{

    public CnToSpell()
    {
        a = null;
        a = new SpellMap();
    }

    public final String a(String s)
    {
        if(s != null && !"".equals(s.trim()))
        {
            char ac[] = s.toCharArray();
            StringBuffer stringbuffer = new StringBuffer();
            int i = 0;
            for(int j = ac.length; i < j; i++)
            {
                String s1 = a.a(ac[i]);
                if(s1 != null)
                    stringbuffer.append(s1);
            }

            s = stringbuffer.toString();
        }
        return s;
    }

    public final String b(String s)
    {
        if(s != null && !"".equals(s.trim()))
        {
            char ac[] = s.toCharArray();
            StringBuffer stringbuffer = new StringBuffer();
            int i = ac.length;
            for(int j = 0; j < i; j++)
            {
                if(Character.isSpace(ac[j]))
                    continue;
                String s1 = a.a(ac[j]);
                if(s1 != null && s1.length() > 0)
                    stringbuffer.append(s1.charAt(0));
            }

            s = stringbuffer.toString().toUpperCase();
        }
        return s;
    }

    private SpellMap a;
}
