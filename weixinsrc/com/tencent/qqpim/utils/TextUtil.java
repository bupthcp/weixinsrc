// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;

public class TextUtil
{

    public TextUtil()
    {
    }

    public static String emptyIfNull(String s)
    {
        if(s == null)
            s = "";
        return s;
    }

    public static byte[] getMD5FromString(String s)
    {
        int i;
        byte abyte0[];
        i = 0;
        abyte0 = null;
        if(s == null || s.length() != 16) goto _L2; else goto _L1
_L1:
        char ac[];
        abyte0 = new byte[16];
        ac = new char[16];
        s.getChars(i, 16, ac, i);
_L5:
        if(i < 16) goto _L3; else goto _L2
_L2:
        return abyte0;
_L3:
        abyte0[i] = (byte)ac[i];
        i++;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public static String getStringFromMD5(byte abyte0[])
    {
        String s = "";
        if(abyte0 == null || abyte0.length != 16) goto _L2; else goto _L1
_L1:
        char ac[];
        int i;
        ac = new char[16];
        i = 0;
_L6:
        if(i < 16) goto _L4; else goto _L3
_L3:
        s = String.valueOf(ac);
_L2:
        return s;
_L4:
        ac[i] = (char)abyte0[i];
        i++;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static CharSequence highLightString(String s, int i, int j, int k)
    {
        SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder(s);
        ForegroundColorSpan foregroundcolorspan = new ForegroundColorSpan(k);
        if(i + j <= s.length())
            spannablestringbuilder.setSpan(foregroundcolorspan, i, i + j, 33);
        return spannablestringbuilder;
    }

    public static String htmlStrConvert(String s)
    {
        if(s != null) goto _L2; else goto _L1
_L1:
        String s1 = null;
_L4:
        return s1;
_L2:
        int i;
        StringBuffer stringbuffer;
        int j;
        i = s.length();
        stringbuffer = new StringBuffer();
        j = 0;
_L11:
label0:
        {
            if(j < i)
                break label0;
            s1 = stringbuffer.toString();
        }
        if(true) goto _L4; else goto _L3
_L3:
        char c = s.charAt(j);
        c;
        JVM INSTR lookupswitch 5: default 100
    //                   32: 153
    //                   34: 113
    //                   38: 123
    //                   60: 133
    //                   62: 143;
           goto _L5 _L6 _L7 _L8 _L9 _L10
_L6:
        break MISSING_BLOCK_LABEL_153;
_L5:
        stringbuffer.append(c);
_L12:
        j++;
          goto _L11
_L7:
        stringbuffer.append("&quot;");
          goto _L12
_L8:
        stringbuffer.append("&amp;");
          goto _L12
_L9:
        stringbuffer.append("&lt;");
          goto _L12
_L10:
        stringbuffer.append("&gt;");
          goto _L12
        stringbuffer.append("&nbsp;");
          goto _L12
    }

    public static boolean isNullOrEmpty(String s)
    {
        boolean flag;
        if(s != null && !"".equals(s.trim()))
            flag = false;
        else
            flag = true;
        return flag;
    }

    public static boolean isNumeric(String s)
    {
        int i = s.length();
_L2:
        boolean flag;
        if(--i < 0)
        {
            flag = true;
        } else
        {
            char c = s.charAt(i);
            if(c >= '0' && c <= '9')
                continue; /* Loop/switch isn't completed */
            flag = false;
        }
        return flag;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static String replaceRt(String s)
    {
        if(s == null) goto _L2; else goto _L1
_L1:
        StringBuilder stringbuilder;
        int i;
        int j;
        stringbuilder = new StringBuilder();
        i = s.length();
        j = 0;
_L6:
        if(j < i) goto _L4; else goto _L3
_L3:
        s = stringbuilder.toString();
_L2:
        return s;
_L4:
        char c = s.charAt(j);
        if(c != '\r')
            break; /* Loop/switch isn't completed */
        byte byte0;
        if(j < i + -1 && s.charAt(j + 1) == '\n')
            byte0 = 2;
        else
            byte0 = 1;
        stringbuilder.append('\n');
        j = byte0 + j;
        if(true) goto _L6; else goto _L5
_L5:
        if(c == '\n')
        {
            if(j < i + -1 && s.charAt(j + 1) == '\r')
                byte0 = 2;
            else
                byte0 = 1;
            stringbuilder.append('\n');
        } else
        if(c == '\u2029' || c == '\f')
        {
            stringbuilder.append('\n');
            byte0 = 1;
        } else
        {
            stringbuilder.append(c);
            byte0 = 1;
        }
        break MISSING_BLOCK_LABEL_75;
        if(true) goto _L6; else goto _L7
_L7:
    }

    public static String replaceRt2Space(String s)
    {
        if(s == null) goto _L2; else goto _L1
_L1:
        StringBuilder stringbuilder;
        int i;
        int j;
        stringbuilder = new StringBuilder();
        i = s.length();
        j = 0;
_L6:
        if(j < i) goto _L4; else goto _L3
_L3:
        s = stringbuilder.toString();
_L2:
        return s;
_L4:
        char c = s.charAt(j);
        if(c != '\r')
            break; /* Loop/switch isn't completed */
        byte byte0;
        if(j < i + -1 && s.charAt(j + 1) == '\n')
            byte0 = 2;
        else
            byte0 = 1;
        stringbuilder.append(' ');
        j = byte0 + j;
        if(true) goto _L6; else goto _L5
_L5:
        if(c == '\n')
        {
            if(j < i + -1 && s.charAt(j + 1) == '\r')
                byte0 = 2;
            else
                byte0 = 1;
            stringbuilder.append(' ');
        } else
        if(c == '\u2029' || c == '\f')
        {
            stringbuilder.append(' ');
            byte0 = 1;
        } else
        {
            stringbuilder.append(c);
            byte0 = 1;
        }
        break MISSING_BLOCK_LABEL_75;
        if(true) goto _L6; else goto _L7
_L7:
    }

    private static final String DEBUG_TAG = "TextuUtil";
}
