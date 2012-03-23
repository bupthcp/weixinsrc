// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a;


public abstract class o
{

    protected o(int i, int j)
    {
        a = i;
        b = j;
    }

    public abstract byte[] a();

    public abstract byte[] a(int i, byte abyte0[]);

    public final int c()
    {
        return a;
    }

    public final int d()
    {
        return b;
    }

    public String toString()
    {
        StringBuilder stringbuilder;
        byte abyte1[];
        int i;
        byte abyte0[] = new byte[a];
        stringbuilder = new StringBuilder(b * (1 + a));
        abyte1 = abyte0;
        i = 0;
_L2:
        if(i >= b)
            return stringbuilder.toString();
        abyte1 = a(i, abyte1);
        int j = 0;
        do
        {
label0:
            {
                if(j < a)
                    break label0;
                stringbuilder.append('\n');
                i++;
            }
            if(true)
                continue;
            int k = 0xff & abyte1[j];
            char c1;
            if(k < 64)
                c1 = '#';
            else
            if(k < 128)
                c1 = '+';
            else
            if(k < 192)
                c1 = '.';
            else
                c1 = ' ';
            stringbuilder.append(c1);
            j++;
        } while(true);
        if(true) goto _L2; else goto _L1
_L1:
    }

    private final int a;
    private final int b;
}
