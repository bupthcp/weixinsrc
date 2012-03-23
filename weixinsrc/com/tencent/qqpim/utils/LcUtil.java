// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;


// Referenced classes of package com.tencent.qqpim.utils:
//            MD5Util, Cryptor

public class LcUtil
{

    public LcUtil()
    {
    }

    public static byte[] int2byte(int i)
    {
        byte abyte0[] = new byte[4];
        abyte0[3] = (byte)(i & 0xff);
        abyte0[2] = (byte)(0xff & i >> 8);
        abyte0[1] = (byte)(0xff & i >> 16);
        abyte0[0] = (byte)(i >>> 24);
        return abyte0;
    }

    public static byte[] lcCreateKey(long l, byte abyte0[])
    {
        byte abyte1[] = MD5Util.encrypt((new StringBuilder(String.valueOf(l))).append(new String(abyte0)).append("E1D84CC825147ECD").toString());
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        do
        {
            if(i >= 8)
                return (new String(stringbuffer)).getBytes();
            byte byte0 = abyte1[i];
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(byte0 & 0xff);
            stringbuffer.append(String.format("%1$02X", aobj));
            i++;
        } while(true);
    }

    public static byte[] long2byte(long l)
    {
        byte abyte0[] = new byte[4];
        abyte0[3] = (byte)(int)(l & 255L);
        abyte0[2] = (byte)(int)(255L & l >> 8);
        abyte0[1] = (byte)(int)(255L & l >> 16);
        abyte0[0] = (byte)(int)(255L & l >> 24);
        return abyte0;
    }

    public byte[] getConf()
    {
        byte abyte0[] = null;
        if(iUpdateFileBuf != null)
        {
            int i = -17 + iUpdateFileBuf.length;
            abyte0 = new byte[i];
            System.arraycopy(iUpdateFileBuf, 17, abyte0, 0, i);
        }
        return abyte0;
    }

    public byte[] getConfVer()
    {
        byte abyte0[] = new byte[4];
        if(iUpdateFileBuf != null)
            System.arraycopy(iUpdateFileBuf, 0, abyte0, 0, 4);
        return abyte0;
    }

    public short getShortValueFromBuf(byte abyte0[], int i)
    {
        return Short.parseShort((new StringBuilder(String.valueOf(parseHexByte2String(abyte0[i])))).append(parseHexByte2String(abyte0[i + 1])).toString(), 16);
    }

    public String getUpdateDesText()
    {
        String s = null;
        if(iUpdateFileBuf != null && iUpdateFileBuf.length > 0)
        {
            short word0 = getShortValueFromBuf(iUpdateFileBuf, 0);
            byte abyte0[] = new byte[word0];
            System.arraycopy(iUpdateFileBuf, 2, abyte0, 0, word0);
            s = new String(abyte0);
        }
        return s;
    }

    public String getUpdateUrl()
    {
        String s = null;
        if(iUpdateFileBuf != null && iUpdateFileBuf.length > 0)
        {
            int i = 4 + (0 + getShortValueFromBuf(iUpdateFileBuf, 0));
            short word0 = getShortValueFromBuf(iUpdateFileBuf, i);
            int j = i + 2;
            byte abyte0[] = new byte[word0];
            System.arraycopy(iUpdateFileBuf, j, abyte0, 0, word0);
            s = new String(abyte0);
        }
        return s;
    }

    public byte[] makeCheckUpdateRequestPackge(byte abyte0[], long l, int i)
    {
        iUpdateFileBuf = null;
        iQQNum = l;
        byte abyte1[] = new byte[64];
        abyte1[0] = 2;
        abyte1[1] = 3;
        abyte1[2] = 0;
        abyte1[3] = 0;
        abyte1[4] = 5;
        System.arraycopy(long2byte(l), 0, abyte1, 5, 4);
        System.arraycopy(abyte0, 0, abyte1, 9, 16);
        abyte1[25] = 3;
        System.arraycopy(int2byte(i), 0, abyte1, 26, 4);
        abyte1[30] = 3;
        iPostBuf = new byte[31];
        System.arraycopy(abyte1, 0, iPostBuf, 0, 31);
        return iPostBuf;
    }

    public byte[] makeGetConfRequestPackge(byte abyte0[], long l, int i)
    {
        iUpdateFileBuf = null;
        iQQNum = l;
        byte abyte1[] = new byte[64];
        abyte1[0] = 2;
        abyte1[1] = 3;
        abyte1[2] = 0;
        abyte1[3] = 0;
        abyte1[4] = 18;
        System.arraycopy(long2byte(l), 0, abyte1, 5, 4);
        System.arraycopy(abyte0, 0, abyte1, 9, 16);
        abyte1[25] = 3;
        System.arraycopy(int2byte(i), 0, abyte1, 26, 4);
        abyte1[30] = 3;
        iPostBuf = new byte[31];
        System.arraycopy(abyte1, 0, iPostBuf, 0, 31);
        return iPostBuf;
    }

    public String parseHexByte2String(byte byte0)
    {
        String s;
        if(byte0 > 15 && byte0 <= 255)
            s = Integer.toHexString(byte0);
        else
        if(byte0 >= 0 && byte0 <= 15)
            s = (new StringBuilder("0")).append(Integer.toHexString(byte0)).toString();
        else
            s = Integer.toHexString(byte0).substring(6);
        return s;
    }

    public int sloveCheckUpdateResponPackge(byte abyte0[], byte abyte1[])
    {
        int i;
        int j;
        i = 1;
        j = 0;
        iUpdateFileBuf = null;
        if(abyte1.length < 13 || 2 != abyte1[j] || abyte1[9] != 0) goto _L2; else goto _L1
_L1:
        short word0 = getShortValueFromBuf(abyte1, 10);
        if(word0 != 0) goto _L4; else goto _L3
_L3:
        j = i;
_L6:
        return j;
_L4:
        byte abyte2[] = lcCreateKey(iQQNum, abyte0);
        iUpdateFileBuf = new byte[word0];
        iUpdateFileBuf = (new Cryptor()).decrypt(abyte1, 12, word0, abyte2);
        if(iUpdateFileBuf == null) goto _L6; else goto _L5
_L5:
        byte abyte3[] = iUpdateFileBuf;
        int k = 2 + getShortValueFromBuf(iUpdateFileBuf, j);
        int l = k + 1;
        byte byte0 = abyte3[k];
        int i1 = l + 1;
        short word1 = getShortValueFromBuf(iUpdateFileBuf, i1);
        if(word1 + (i1 + 2) == iUpdateFileBuf.length && word1 > 0)
        {
            if(i == byte0)
                i = 2;
            else
                i = 3;
            continue; /* Loop/switch isn't completed */
        }
_L2:
        i = j;
        if(true) goto _L3; else goto _L7
_L7:
    }

    public int sloveGetConfResponPackge(byte abyte0[], byte abyte1[])
    {
        byte byte0 = 2;
        iUpdateFileBuf = null;
        if(abyte1.length >= 13 && byte0 == abyte1[0] && abyte1[9] == 0)
        {
            short word0 = getShortValueFromBuf(abyte1, 10);
            if(word0 == 0)
            {
                byte0 = 1;
            } else
            {
                byte abyte2[] = lcCreateKey(iQQNum, abyte0);
                Cryptor cryptor = new Cryptor();
                iUpdateFileBuf = new byte[word0];
                iUpdateFileBuf = cryptor.decrypt(abyte1, 12, word0, abyte2);
            }
        } else
        {
            byte0 = 0;
        }
        return byte0;
    }

    public static final int ERROR = 0;
    public static final int MUSTUPDATE = 2;
    public static final int NONEED = 1;
    public static final int SHOULDUPDATE = 3;
    byte iPostBuf[];
    long iQQNum;
    byte iUpdateFileBuf[];
}
