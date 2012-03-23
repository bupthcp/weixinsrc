// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.object;

import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;

public class Tool
{

    public Tool()
    {
    }

    public static String combineString(String s)
    {
        if(s != null) goto _L2; else goto _L1
_L1:
        String s1 = null;
_L4:
        return s1;
_L2:
        int i;
        StringBuilder stringbuilder;
        int j;
        i = s.length();
        stringbuilder = new StringBuilder();
        j = 0;
_L9:
label0:
        {
            if(j < i)
                break label0;
            s1 = stringbuilder.toString();
        }
        if(true) goto _L4; else goto _L3
_L3:
        char c = s.charAt(j);
        if(c != '\\') goto _L6; else goto _L5
_L5:
        if(j + 1 >= i) goto _L8; else goto _L7
_L7:
        char c1;
        int j1;
        c1 = s.charAt(j + 1);
        j1 = 0;
_L10:
        int k;
        StringBuilder stringbuilder1;
        if(chNeedEscapeChars == null)
            break MISSING_BLOCK_LABEL_222;
        int l;
        if(j1 >= chNeedEscapeChars.length)
        {
            k = j;
            stringbuilder1 = stringbuilder;
        } else
        {
label1:
            {
                if(c1 != chNeedEscapeChars[j1])
                    break label1;
                if(c1 == 'r')
                    stringbuilder.append('\r');
                else
                if(c1 == 'n')
                    stringbuilder.append('\n');
                else
                    stringbuilder.append(c1);
                k = j + 1;
                stringbuilder1 = stringbuilder;
            }
        }
_L11:
        l = k + 1;
        stringbuilder = stringbuilder1;
        j = l;
          goto _L9
        j1++;
          goto _L10
_L8:
        stringbuilder.append(c);
        k = j;
        stringbuilder1 = stringbuilder;
          goto _L11
_L6:
        if(c == ';')
            break MISSING_BLOCK_LABEL_222;
        StringBuilder stringbuilder2 = stringbuilder.append(c);
        int i1 = j;
        stringbuilder1 = stringbuilder2;
        k = i1;
          goto _L11
        k = j;
        stringbuilder1 = stringbuilder;
          goto _L11
    }

    public static int getIndexOfStringArray(String as[], String s)
    {
        if(s != null) goto _L2; else goto _L1
_L1:
        int i = -1;
_L4:
        return i;
_L2:
        i = 0;
_L6:
        if(i < as.length)
            continue; /* Loop/switch isn't completed */
        i = -1;
        if(true) goto _L4; else goto _L3
_L3:
        if(as[i].equals(s)) goto _L4; else goto _L5
_L5:
        i++;
          goto _L6
    }

    public static String[] parseLabelForV1(String s)
    {
        String as[];
        StringBuilder stringbuilder;
        int i;
        boolean flag;
        boolean flag1;
        boolean flag2;
        as = s.split(";");
        stringbuilder = new StringBuilder();
        i = 0;
        flag = false;
        flag1 = false;
        flag2 = false;
_L3:
        if(i >= as.length)
        {
            String as1[] = new String[1];
            Integer integer;
            if(flag1 || flag || flag2)
            {
                if(flag2)
                {
                    if(flag1)
                        as1[0] = "FAX;WORK";
                    else
                        as1[0] = "FAX;HOME";
                } else
                if(flag1)
                    as1[0] = "WORK";
                else
                    as1[0] = "HOME";
            } else
            {
                as1[0] = stringbuilder.toString();
            }
            return as1;
        }
        integer = (Integer)labelMap.get(as[i]);
        if(integer != null) goto _L2; else goto _L1
_L1:
        stringbuilder.append(as[i]);
_L5:
        i++;
          goto _L3
_L2:
        switch(integer.intValue())
        {
        case 0: // '\0'
            flag2 = true;
            break;

        case 1: // '\001'
            flag1 = true;
            break;

        case 2: // '\002'
            flag = true;
            break;
        }
        if(true) goto _L5; else goto _L4
_L4:
    }

    public static String readLine(String s)
    {
        int i = s.indexOf("\r\n");
        String s1;
        if(i < 0)
            s1 = null;
        else
            s1 = s.substring(0, i);
        return s1;
    }

    public static String readLine(StringBuilder stringbuilder)
    {
        return stringbuilder.substring(0, stringbuilder.indexOf("\r\n"));
    }

    public static byte[] trides_crypt(byte abyte0[], byte abyte1[])
    {
        byte abyte2[];
        int i;
        abyte2 = null;
        i = 0;
        byte abyte3[];
        int j;
        abyte3 = new byte[24];
        j = abyte1.length;
        if(abyte1.length % 8 == 0) goto _L2; else goto _L1
_L1:
        int k = 8 + (abyte1.length - abyte1.length % 8);
_L6:
        if(k == 0) goto _L4; else goto _L3
_L3:
        byte abyte4[] = new byte[k];
_L5:
        if(i >= k)
        {
            System.arraycopy(abyte1, 0, abyte4, 0, abyte1.length);
            DESedeKeySpec desedekeyspec;
            javax.crypto.SecretKey secretkey;
            Cipher cipher;
            if(abyte0.length == 16)
            {
                System.arraycopy(abyte0, 0, abyte3, 0, abyte0.length);
                System.arraycopy(abyte0, 0, abyte3, 16, 8);
            } else
            {
                System.arraycopy(abyte0, 0, abyte3, 0, 24);
            }
            desedekeyspec = new DESedeKeySpec(abyte3);
            secretkey = SecretKeyFactory.getInstance("DESede").generateSecret(desedekeyspec);
            cipher = Cipher.getInstance("DESede/ECB/NoPadding");
            cipher.init(1, secretkey);
            abyte2 = cipher.doFinal(abyte4);
            break MISSING_BLOCK_LABEL_181;
        }
        abyte4[i] = 0;
        i++;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        break MISSING_BLOCK_LABEL_181;
_L4:
        abyte4 = abyte2;
        if(true) goto _L5; else goto _L2
_L2:
        k = j;
          goto _L6
        return abyte2;
    }

    public static byte[] trides_decrypt(byte abyte0[], byte abyte1[])
    {
        byte abyte2[];
        int i;
        abyte2 = null;
        i = 0;
        byte abyte3[];
        int j;
        abyte3 = new byte[24];
        j = abyte1.length;
        if(abyte1.length % 8 == 0) goto _L2; else goto _L1
_L1:
        int k = 8 + (abyte1.length - abyte1.length % 8);
_L6:
        if(k == 0) goto _L4; else goto _L3
_L3:
        byte abyte4[] = new byte[k];
_L5:
        if(i >= k)
        {
            System.arraycopy(abyte1, 0, abyte4, 0, abyte1.length);
            DESedeKeySpec desedekeyspec;
            javax.crypto.SecretKey secretkey;
            Cipher cipher;
            if(abyte0.length == 16)
            {
                System.arraycopy(abyte0, 0, abyte3, 0, abyte0.length);
                System.arraycopy(abyte0, 0, abyte3, 16, 8);
            } else
            {
                System.arraycopy(abyte0, 0, abyte3, 0, 24);
            }
            desedekeyspec = new DESedeKeySpec(abyte3);
            secretkey = SecretKeyFactory.getInstance("DESede").generateSecret(desedekeyspec);
            cipher = Cipher.getInstance("DESede/ECB/NoPadding");
            cipher.init(2, secretkey);
            abyte2 = cipher.doFinal(abyte4);
            break MISSING_BLOCK_LABEL_181;
        }
        abyte4[i] = 0;
        i++;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        break MISSING_BLOCK_LABEL_181;
_L4:
        abyte4 = abyte2;
        if(true) goto _L5; else goto _L2
_L2:
        k = j;
          goto _L6
        return abyte2;
    }

    static final String TriDes = "DESede/ECB/NoPadding";
    static final char chDivider = 59;
    static final char chNeedEscapeChars[];
    private static final String labelList[];
    private static final Map labelMap;

    static 
    {
        labelMap = new HashMap();
        String as[] = new String[3];
        as[0] = "FAX";
        as[1] = "WORK";
        as[2] = "HOME";
        labelList = as;
        int i = 0;
        do
        {
            if(i >= 3)
            {
                char ac[] = new char[4];
                chNeedEscapeChars = ac;
                ac[0] = '\\';
                chNeedEscapeChars[1] = ';';
                chNeedEscapeChars[2] = 'r';
                chNeedEscapeChars[3] = 'n';
                return;
            }
            labelMap.put(labelList[i], Integer.valueOf(i));
            i++;
        } while(true);
    }
}
