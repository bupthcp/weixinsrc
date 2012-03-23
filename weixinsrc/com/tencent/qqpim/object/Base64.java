// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.object;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;

public class Base64
{

    public Base64()
    {
        this(false);
    }

    public Base64(int i)
    {
        this(i, CHUNK_SEPARATOR);
    }

    public Base64(int i, byte abyte0[])
    {
        this(i, abyte0, false);
    }

    public Base64(int i, byte abyte0[], boolean flag)
    {
        if(abyte0 == null)
        {
            abyte0 = CHUNK_SEPARATOR;
            i = 0;
        }
        int j;
        if(i > 0)
            j = 4 * (i / 4);
        else
            j = 0;
        lineLength = j;
        lineSeparator = new byte[abyte0.length];
        System.arraycopy(abyte0, 0, lineSeparator, 0, abyte0.length);
        if(i > 0)
            encodeSize = 4 + abyte0.length;
        else
            encodeSize = 4;
        decodeSize = -1 + encodeSize;
        if(containsBase64Byte(abyte0))
        {
            String s = newStringUtf8(abyte0);
            throw new IllegalArgumentException((new StringBuilder("lineSeperator must not contain base64 characters: [")).append(s).append("]").toString());
        }
        byte abyte1[];
        if(flag)
            abyte1 = URL_SAFE_ENCODE_TABLE;
        else
            abyte1 = STANDARD_ENCODE_TABLE;
        encodeTable = abyte1;
    }

    public Base64(boolean flag)
    {
        this(76, CHUNK_SEPARATOR, flag);
    }

    private static boolean containsBase64Byte(byte abyte0[])
    {
        boolean flag;
        int i;
        flag = false;
        i = ((flag) ? 1 : 0);
_L5:
        if(i < abyte0.length) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        if(!isBase64(abyte0[i]))
            break; /* Loop/switch isn't completed */
        flag = true;
        if(true) goto _L1; else goto _L3
_L3:
        i++;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public static byte[] decodeBase64(String s)
    {
        return (new Base64()).decode(s);
    }

    public static byte[] decodeBase64(byte abyte0[])
    {
        return (new Base64()).decode(abyte0);
    }

    public static BigInteger decodeInteger(byte abyte0[])
    {
        return new BigInteger(1, decodeBase64(abyte0));
    }

    static byte[] discardWhitespace(byte abyte0[])
    {
        byte abyte1[] = new byte[abyte0.length];
        int i = 0;
        int j = 0;
        do
        {
            if(i >= abyte0.length)
            {
                byte abyte2[] = new byte[j];
                System.arraycopy(abyte1, 0, abyte2, 0, j);
                return abyte2;
            }
            switch(abyte0[i])
            {
            default:
                int k = j + 1;
                abyte1[j] = abyte0[i];
                j = k;
                // fall through

            case 9: // '\t'
            case 10: // '\n'
            case 13: // '\r'
            case 32: // ' '
                i++;
                break;
            }
        } while(true);
    }

    public static byte[] encodeBase64(byte abyte0[])
    {
        return encodeBase64(abyte0, false);
    }

    public static byte[] encodeBase64(byte abyte0[], boolean flag)
    {
        return encodeBase64(abyte0, flag, false);
    }

    public static byte[] encodeBase64(byte abyte0[], boolean flag, boolean flag1)
    {
        return encodeBase64(abyte0, flag, flag1, 0x7fffffff);
    }

    public static byte[] encodeBase64(byte abyte0[], boolean flag, boolean flag1, int i)
    {
        if(abyte0 != null && abyte0.length != 0)
        {
            long l = getEncodeLength(abyte0, 76, CHUNK_SEPARATOR);
            if(l > (long)i)
                throw new IllegalArgumentException((new StringBuilder("Input array too big, the output array would be bigger (")).append(l).append(") than the specified maxium size of ").append(i).toString());
            Base64 base64;
            if(flag)
                base64 = new Base64(flag1);
            else
                base64 = new Base64(0, CHUNK_SEPARATOR, flag1);
            abyte0 = base64.encode(abyte0);
        }
        return abyte0;
    }

    public static byte[] encodeBase64Chunked(byte abyte0[])
    {
        return encodeBase64(abyte0, true);
    }

    public static String encodeBase64String(byte abyte0[])
    {
        return newStringUtf8(encodeBase64(abyte0, true));
    }

    public static byte[] encodeBase64URLSafe(byte abyte0[])
    {
        return encodeBase64(abyte0, false, true);
    }

    public static String encodeBase64URLSafeString(byte abyte0[])
    {
        return newStringUtf8(encodeBase64(abyte0, false, true));
    }

    public static byte[] encodeInteger(BigInteger biginteger)
    {
        byte abyte0[];
        if(biginteger == null)
            abyte0 = null;
        else
            abyte0 = encodeBase64(toIntegerBytes(biginteger), false);
        return abyte0;
    }

    public static byte[] getBytesUtf8(String s)
    {
        byte abyte0[] = null;
        if(s != null) goto _L2; else goto _L1
_L1:
        return abyte0;
_L2:
        byte abyte1[] = s.getBytes("UTF-8");
        abyte0 = abyte1;
        continue; /* Loop/switch isn't completed */
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static long getEncodeLength(byte abyte0[], int i, byte abyte1[])
    {
        int j;
        long l;
        j = 4 * (i / 4);
        l = (4 * abyte0.length) / 3;
        long l1 = l % 4L;
        if(l1 != 0L)
            l += 4L - l1;
        if(j <= 0) goto _L2; else goto _L1
_L1:
        long l2;
        boolean flag;
        if(l % (long)j == 0L)
            flag = true;
        else
            flag = false;
        l += (l / (long)j) * (long)abyte1.length;
        if(flag) goto _L2; else goto _L3
_L3:
        l2 = l + (long)abyte1.length;
_L5:
        return l2;
_L2:
        l2 = l;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public static boolean isArrayByteBase64(byte abyte0[])
    {
        boolean flag;
        int i;
        flag = false;
        i = ((flag) ? 1 : 0);
_L6:
        if(i < abyte0.length) goto _L2; else goto _L1
_L1:
        flag = true;
_L4:
        return flag;
_L2:
        if(!isBase64(abyte0[i]) && !isWhiteSpace(abyte0[i])) goto _L4; else goto _L3
_L3:
        i++;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static boolean isBase64(byte byte0)
    {
        boolean flag;
        if(byte0 != 61 && (byte0 < 0 || byte0 >= DECODE_TABLE.length || DECODE_TABLE[byte0] == -1))
            flag = false;
        else
            flag = true;
        return flag;
    }

    private static boolean isWhiteSpace(byte byte0)
    {
        byte0;
        JVM INSTR lookupswitch 4: default 44
    //                   9: 48
    //                   10: 48
    //                   13: 48
    //                   32: 48;
           goto _L1 _L2 _L2 _L2 _L2
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = true;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static String newStringUtf8(byte abyte0[])
    {
        String s = null;
        if(abyte0 != null) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        String s1 = new String(abyte0, "UTF-8");
        s = s1;
        continue; /* Loop/switch isn't completed */
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private void reset()
    {
        buffer = null;
        pos = 0;
        readPos = 0;
        currentLinePos = 0;
        modulus = 0;
        eof = false;
    }

    private void resizeBuffer()
    {
        if(buffer == null)
        {
            buffer = new byte[8192];
            pos = 0;
            readPos = 0;
        } else
        {
            byte abyte0[] = new byte[2 * buffer.length];
            System.arraycopy(buffer, 0, abyte0, 0, buffer.length);
            buffer = abyte0;
        }
    }

    static byte[] toIntegerBytes(BigInteger biginteger)
    {
        int i = (7 + biginteger.bitLength() >> 3) << 3;
        byte abyte0[] = biginteger.toByteArray();
        byte abyte2[];
        if(biginteger.bitLength() % 8 != 0 && 1 + biginteger.bitLength() / 8 == i / 8)
        {
            abyte2 = abyte0;
        } else
        {
            int j = 0;
            int k = abyte0.length;
            if(biginteger.bitLength() % 8 == 0)
            {
                j = 1;
                k--;
            }
            int l = i / 8 - k;
            byte abyte1[] = new byte[i / 8];
            System.arraycopy(abyte0, j, abyte1, l, k);
            abyte2 = abyte1;
        }
        return abyte2;
    }

    int avail()
    {
        int i;
        if(buffer != null)
            i = pos - readPos;
        else
            i = 0;
        return i;
    }

    public Object decode(Object obj)
    {
        byte abyte0[];
        if(obj instanceof byte[])
            abyte0 = decode((byte[])obj);
        else
        if(obj instanceof String)
            abyte0 = decode((String)obj);
        else
            abyte0 = null;
        return abyte0;
    }

    void decode(byte abyte0[], int i, int j)
    {
        if(!eof) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int k;
        if(j < 0)
            eof = true;
        k = 0;
_L4:
        if(k < j)
        {
label0:
            {
                if(buffer == null || buffer.length - pos < decodeSize)
                    resizeBuffer();
                l = i + 1;
                byte0 = abyte0[i];
                if(byte0 != 61)
                    break label0;
                eof = true;
            }
        }
        if(eof && modulus != 0)
        {
            x = x << 6;
            int l;
            byte byte0;
            byte byte1;
            int i1;
            byte abyte1[];
            int j1;
            byte abyte2[];
            int k1;
            byte abyte3[];
            int l1;
            switch(modulus)
            {
            case 2: // '\002'
                x = x << 6;
                byte abyte6[] = buffer;
                int k2 = pos;
                pos = k2 + 1;
                abyte6[k2] = (byte)(0xff & x >> 16);
                break;

            case 3: // '\003'
                byte abyte4[] = buffer;
                int i2 = pos;
                pos = i2 + 1;
                abyte4[i2] = (byte)(0xff & x >> 16);
                byte abyte5[] = buffer;
                int j2 = pos;
                pos = j2 + 1;
                abyte5[j2] = (byte)(0xff & x >> 8);
                break;
            }
            continue; /* Loop/switch isn't completed */
        }
        if(true) goto _L1; else goto _L3
_L3:
        if(byte0 >= 0 && byte0 < DECODE_TABLE.length)
        {
            byte1 = DECODE_TABLE[byte0];
            if(byte1 >= 0)
            {
                i1 = 1 + modulus;
                modulus = i1;
                modulus = i1 % 4;
                x = byte1 + (x << 6);
                if(modulus == 0)
                {
                    abyte1 = buffer;
                    j1 = pos;
                    pos = j1 + 1;
                    abyte1[j1] = (byte)(0xff & x >> 16);
                    abyte2 = buffer;
                    k1 = pos;
                    pos = k1 + 1;
                    abyte2[k1] = (byte)(0xff & x >> 8);
                    abyte3 = buffer;
                    l1 = pos;
                    pos = l1 + 1;
                    abyte3[l1] = (byte)(0xff & x);
                }
            }
        }
        k++;
        i = l;
          goto _L4
        if(true) goto _L6; else goto _L5
_L5:
        break MISSING_BLOCK_LABEL_443;
_L6:
        break; /* Loop/switch isn't completed */
    }

    public byte[] decode(String s)
    {
        return decode(getBytesUtf8(s));
    }

    public byte[] decode(byte abyte0[])
    {
        reset();
        if(abyte0 != null && abyte0.length != 0)
        {
            byte abyte1[] = new byte[(3 * abyte0.length) / 4];
            setInitialBuffer(abyte1, 0, abyte1.length);
            decode(abyte0, 0, abyte0.length);
            decode(abyte0, 0, -1);
            abyte0 = new byte[pos];
            readResults(abyte0, 0, abyte0.length);
        }
        return abyte0;
    }

    public Object encode(Object obj)
    {
        byte abyte0[];
        if(!(obj instanceof byte[]))
            abyte0 = null;
        else
            abyte0 = encode((byte[])obj);
        return abyte0;
    }

    void encode(byte abyte0[], int i, int j)
    {
        if(!eof) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(j >= 0) goto _L4; else goto _L3
_L3:
        eof = true;
        if(buffer == null || buffer.length - pos < encodeSize)
            resizeBuffer();
        modulus;
        JVM INSTR tableswitch 1 2: default 72
    //                   1 124
    //                   2 269;
           goto _L5 _L6 _L7
_L5:
        if(lineLength > 0 && pos > 0)
        {
            System.arraycopy(lineSeparator, 0, buffer, pos, lineSeparator.length);
            pos = pos + lineSeparator.length;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        byte abyte9[] = buffer;
        int k3 = pos;
        pos = k3 + 1;
        abyte9[k3] = encodeTable[0x3f & x >> 2];
        byte abyte10[] = buffer;
        int l3 = pos;
        pos = l3 + 1;
        abyte10[l3] = encodeTable[0x3f & x << 4];
        if(encodeTable == STANDARD_ENCODE_TABLE)
        {
            byte abyte11[] = buffer;
            int i4 = pos;
            pos = i4 + 1;
            abyte11[i4] = 61;
            byte abyte12[] = buffer;
            int j4 = pos;
            pos = j4 + 1;
            abyte12[j4] = 61;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        byte abyte5[] = buffer;
        int k2 = pos;
        pos = k2 + 1;
        abyte5[k2] = encodeTable[0x3f & x >> 10];
        byte abyte6[] = buffer;
        int l2 = pos;
        pos = l2 + 1;
        abyte6[l2] = encodeTable[0x3f & x >> 4];
        byte abyte7[] = buffer;
        int i3 = pos;
        pos = i3 + 1;
        abyte7[i3] = encodeTable[0x3f & x << 2];
        if(encodeTable == STANDARD_ENCODE_TABLE)
        {
            byte abyte8[] = buffer;
            int j3 = pos;
            pos = j3 + 1;
            abyte8[j3] = 61;
        }
        if(true) goto _L5; else goto _L4
_L4:
        int k = 0;
        while(k < j) 
        {
            if(buffer == null || buffer.length - pos < encodeSize)
                resizeBuffer();
            int l = 1 + modulus;
            modulus = l;
            modulus = l % 3;
            int i1 = i + 1;
            int j1 = abyte0[i];
            if(j1 < 0)
                j1 += 256;
            x = j1 + (x << 8);
            if(modulus == 0)
            {
                byte abyte1[] = buffer;
                int k1 = pos;
                pos = k1 + 1;
                abyte1[k1] = encodeTable[0x3f & x >> 18];
                byte abyte2[] = buffer;
                int l1 = pos;
                pos = l1 + 1;
                abyte2[l1] = encodeTable[0x3f & x >> 12];
                byte abyte3[] = buffer;
                int i2 = pos;
                pos = i2 + 1;
                abyte3[i2] = encodeTable[0x3f & x >> 6];
                byte abyte4[] = buffer;
                int j2 = pos;
                pos = j2 + 1;
                abyte4[j2] = encodeTable[0x3f & x];
                currentLinePos = 4 + currentLinePos;
                if(lineLength > 0 && lineLength <= currentLinePos)
                {
                    System.arraycopy(lineSeparator, 0, buffer, pos, lineSeparator.length);
                    pos = pos + lineSeparator.length;
                    currentLinePos = 0;
                }
            }
            k++;
            i = i1;
        }
        if(true) goto _L1; else goto _L8
_L8:
    }

    public byte[] encode(byte abyte0[])
    {
        reset();
        byte abyte1[];
        if(abyte0 == null || abyte0.length == 0)
        {
            abyte1 = abyte0;
        } else
        {
            byte abyte2[] = new byte[(int)getEncodeLength(abyte0, lineLength, lineSeparator)];
            setInitialBuffer(abyte2, 0, abyte2.length);
            encode(abyte0, 0, abyte0.length);
            encode(abyte0, 0, -1);
            if(buffer != abyte2)
                readResults(abyte2, 0, abyte2.length);
            if(isUrlSafe() && pos < abyte2.length)
            {
                abyte1 = new byte[pos];
                System.arraycopy(abyte2, 0, abyte1, 0, pos);
            } else
            {
                abyte1 = abyte2;
            }
        }
        return abyte1;
    }

    public String encodeToString(byte abyte0[])
    {
        return newStringUtf8(encode(abyte0));
    }

    boolean hasData()
    {
        boolean flag;
        if(buffer != null)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean isUrlSafe()
    {
        boolean flag;
        if(encodeTable == URL_SAFE_ENCODE_TABLE)
            flag = true;
        else
            flag = false;
        return flag;
    }

    int readResults(byte abyte0[], int i, int j)
    {
        if(buffer == null) goto _L2; else goto _L1
_L1:
        int k;
label0:
        {
            k = Math.min(avail(), j);
            if(buffer != abyte0)
            {
                System.arraycopy(buffer, readPos, abyte0, i, k);
                readPos = k + readPos;
                if(readPos < pos)
                    break label0;
            }
            buffer = null;
        }
_L4:
        return k;
_L2:
        if(eof)
            k = -1;
        else
            k = 0;
        if(true) goto _L4; else goto _L3
_L3:
    }

    void setInitialBuffer(byte abyte0[], int i, int j)
    {
        if(abyte0 != null && abyte0.length == j)
        {
            buffer = abyte0;
            pos = i;
            readPos = i;
        }
    }

    static final byte CHUNK_SEPARATOR[];
    static final int CHUNK_SIZE = 76;
    private static final byte DECODE_TABLE[];
    private static final int DEFAULT_BUFFER_RESIZE_FACTOR = 2;
    private static final int DEFAULT_BUFFER_SIZE = 8192;
    private static final int MASK_6BITS = 63;
    private static final int MASK_8BITS = 255;
    private static final byte PAD = 61;
    private static final byte STANDARD_ENCODE_TABLE[];
    private static final byte URL_SAFE_ENCODE_TABLE[];
    public static final String UTF_8 = "UTF-8";
    private byte buffer[];
    private int currentLinePos;
    private final int decodeSize;
    private final int encodeSize;
    private final byte encodeTable[];
    private boolean eof;
    private final int lineLength;
    private final byte lineSeparator[];
    private int modulus;
    private int pos;
    private int readPos;
    private int x;

    static 
    {
        byte abyte0[] = new byte[2];
        abyte0[0] = 13;
        abyte0[1] = 10;
        CHUNK_SEPARATOR = abyte0;
        byte abyte1[] = new byte[64];
        abyte1[0] = 65;
        abyte1[1] = 66;
        abyte1[2] = 67;
        abyte1[3] = 68;
        abyte1[4] = 69;
        abyte1[5] = 70;
        abyte1[6] = 71;
        abyte1[7] = 72;
        abyte1[8] = 73;
        abyte1[9] = 74;
        abyte1[10] = 75;
        abyte1[11] = 76;
        abyte1[12] = 77;
        abyte1[13] = 78;
        abyte1[14] = 79;
        abyte1[15] = 80;
        abyte1[16] = 81;
        abyte1[17] = 82;
        abyte1[18] = 83;
        abyte1[19] = 84;
        abyte1[20] = 85;
        abyte1[21] = 86;
        abyte1[22] = 87;
        abyte1[23] = 88;
        abyte1[24] = 89;
        abyte1[25] = 90;
        abyte1[26] = 97;
        abyte1[27] = 98;
        abyte1[28] = 99;
        abyte1[29] = 100;
        abyte1[30] = 101;
        abyte1[31] = 102;
        abyte1[32] = 103;
        abyte1[33] = 104;
        abyte1[34] = 105;
        abyte1[35] = 106;
        abyte1[36] = 107;
        abyte1[37] = 108;
        abyte1[38] = 109;
        abyte1[39] = 110;
        abyte1[40] = 111;
        abyte1[41] = 112;
        abyte1[42] = 113;
        abyte1[43] = 114;
        abyte1[44] = 115;
        abyte1[45] = 116;
        abyte1[46] = 117;
        abyte1[47] = 118;
        abyte1[48] = 119;
        abyte1[49] = 120;
        abyte1[50] = 121;
        abyte1[51] = 122;
        abyte1[52] = 48;
        abyte1[53] = 49;
        abyte1[54] = 50;
        abyte1[55] = 51;
        abyte1[56] = 52;
        abyte1[57] = 53;
        abyte1[58] = 54;
        abyte1[59] = 55;
        abyte1[60] = 56;
        abyte1[61] = 57;
        abyte1[62] = 43;
        abyte1[63] = 47;
        STANDARD_ENCODE_TABLE = abyte1;
        byte abyte2[] = new byte[64];
        abyte2[0] = 65;
        abyte2[1] = 66;
        abyte2[2] = 67;
        abyte2[3] = 68;
        abyte2[4] = 69;
        abyte2[5] = 70;
        abyte2[6] = 71;
        abyte2[7] = 72;
        abyte2[8] = 73;
        abyte2[9] = 74;
        abyte2[10] = 75;
        abyte2[11] = 76;
        abyte2[12] = 77;
        abyte2[13] = 78;
        abyte2[14] = 79;
        abyte2[15] = 80;
        abyte2[16] = 81;
        abyte2[17] = 82;
        abyte2[18] = 83;
        abyte2[19] = 84;
        abyte2[20] = 85;
        abyte2[21] = 86;
        abyte2[22] = 87;
        abyte2[23] = 88;
        abyte2[24] = 89;
        abyte2[25] = 90;
        abyte2[26] = 97;
        abyte2[27] = 98;
        abyte2[28] = 99;
        abyte2[29] = 100;
        abyte2[30] = 101;
        abyte2[31] = 102;
        abyte2[32] = 103;
        abyte2[33] = 104;
        abyte2[34] = 105;
        abyte2[35] = 106;
        abyte2[36] = 107;
        abyte2[37] = 108;
        abyte2[38] = 109;
        abyte2[39] = 110;
        abyte2[40] = 111;
        abyte2[41] = 112;
        abyte2[42] = 113;
        abyte2[43] = 114;
        abyte2[44] = 115;
        abyte2[45] = 116;
        abyte2[46] = 117;
        abyte2[47] = 118;
        abyte2[48] = 119;
        abyte2[49] = 120;
        abyte2[50] = 121;
        abyte2[51] = 122;
        abyte2[52] = 48;
        abyte2[53] = 49;
        abyte2[54] = 50;
        abyte2[55] = 51;
        abyte2[56] = 52;
        abyte2[57] = 53;
        abyte2[58] = 54;
        abyte2[59] = 55;
        abyte2[60] = 56;
        abyte2[61] = 57;
        abyte2[62] = 45;
        abyte2[63] = 95;
        URL_SAFE_ENCODE_TABLE = abyte2;
        byte abyte3[] = new byte[123];
        abyte3[0] = -1;
        abyte3[1] = -1;
        abyte3[2] = -1;
        abyte3[3] = -1;
        abyte3[4] = -1;
        abyte3[5] = -1;
        abyte3[6] = -1;
        abyte3[7] = -1;
        abyte3[8] = -1;
        abyte3[9] = -1;
        abyte3[10] = -1;
        abyte3[11] = -1;
        abyte3[12] = -1;
        abyte3[13] = -1;
        abyte3[14] = -1;
        abyte3[15] = -1;
        abyte3[16] = -1;
        abyte3[17] = -1;
        abyte3[18] = -1;
        abyte3[19] = -1;
        abyte3[20] = -1;
        abyte3[21] = -1;
        abyte3[22] = -1;
        abyte3[23] = -1;
        abyte3[24] = -1;
        abyte3[25] = -1;
        abyte3[26] = -1;
        abyte3[27] = -1;
        abyte3[28] = -1;
        abyte3[29] = -1;
        abyte3[30] = -1;
        abyte3[31] = -1;
        abyte3[32] = -1;
        abyte3[33] = -1;
        abyte3[34] = -1;
        abyte3[35] = -1;
        abyte3[36] = -1;
        abyte3[37] = -1;
        abyte3[38] = -1;
        abyte3[39] = -1;
        abyte3[40] = -1;
        abyte3[41] = -1;
        abyte3[42] = -1;
        abyte3[43] = 62;
        abyte3[44] = -1;
        abyte3[45] = 62;
        abyte3[46] = -1;
        abyte3[47] = 63;
        abyte3[48] = 52;
        abyte3[49] = 53;
        abyte3[50] = 54;
        abyte3[51] = 55;
        abyte3[52] = 56;
        abyte3[53] = 57;
        abyte3[54] = 58;
        abyte3[55] = 59;
        abyte3[56] = 60;
        abyte3[57] = 61;
        abyte3[58] = -1;
        abyte3[59] = -1;
        abyte3[60] = -1;
        abyte3[61] = -1;
        abyte3[62] = -1;
        abyte3[63] = -1;
        abyte3[64] = -1;
        abyte3[66] = 1;
        abyte3[67] = 2;
        abyte3[68] = 3;
        abyte3[69] = 4;
        abyte3[70] = 5;
        abyte3[71] = 6;
        abyte3[72] = 7;
        abyte3[73] = 8;
        abyte3[74] = 9;
        abyte3[75] = 10;
        abyte3[76] = 11;
        abyte3[77] = 12;
        abyte3[78] = 13;
        abyte3[79] = 14;
        abyte3[80] = 15;
        abyte3[81] = 16;
        abyte3[82] = 17;
        abyte3[83] = 18;
        abyte3[84] = 19;
        abyte3[85] = 20;
        abyte3[86] = 21;
        abyte3[87] = 22;
        abyte3[88] = 23;
        abyte3[89] = 24;
        abyte3[90] = 25;
        abyte3[91] = -1;
        abyte3[92] = -1;
        abyte3[93] = -1;
        abyte3[94] = -1;
        abyte3[95] = 63;
        abyte3[96] = -1;
        abyte3[97] = 26;
        abyte3[98] = 27;
        abyte3[99] = 28;
        abyte3[100] = 29;
        abyte3[101] = 30;
        abyte3[102] = 31;
        abyte3[103] = 32;
        abyte3[104] = 33;
        abyte3[105] = 34;
        abyte3[106] = 35;
        abyte3[107] = 36;
        abyte3[108] = 37;
        abyte3[109] = 38;
        abyte3[110] = 39;
        abyte3[111] = 40;
        abyte3[112] = 41;
        abyte3[113] = 42;
        abyte3[114] = 43;
        abyte3[115] = 44;
        abyte3[116] = 45;
        abyte3[117] = 46;
        abyte3[118] = 47;
        abyte3[119] = 48;
        abyte3[120] = 49;
        abyte3[121] = 50;
        abyte3[122] = 51;
        DECODE_TABLE = abyte3;
    }
}
