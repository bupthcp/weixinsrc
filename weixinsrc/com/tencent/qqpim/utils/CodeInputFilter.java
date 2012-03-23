// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import android.text.InputFilter;
import android.text.Spanned;

public class CodeInputFilter
    implements InputFilter
{

    public CodeInputFilter()
    {
    }

    private boolean isFormatOk(char c)
    {
        boolean flag;
        if(c >= '!' && c <= '~')
            flag = true;
        else
            flag = false;
        return flag;
    }

    public CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int k, int l)
    {
        char ac[] = new char[j - i];
        int i1 = i;
        do
        {
            if(i >= j)
            {
                char c;
                Object obj;
                if(i1 == i)
                    obj = null;
                else
                    obj = "";
                return ((CharSequence) (obj));
            }
            c = charsequence.charAt(i);
            if(isFormatOk(c))
            {
                ac[i1] = c;
                i1++;
            }
            i++;
        } while(true);
    }
}
