// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, EmojiUploadInfoResp

public class UploadEmojiResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public UploadEmojiResponse()
    {
        f = new LinkedList();
    }

    public static UploadEmojiResponse a(byte abyte0[])
    {
        a a1;
        int i;
        UploadEmojiResponse uploademojiresponse;
        a1 = new a(abyte0, a);
        i = a(a1);
        uploademojiresponse = new UploadEmojiResponse();
_L6:
        if(i <= 0)
            break MISSING_BLOCK_LABEL_432;
        i;
        JVM INSTR tableswitch 1 3: default 56
    //                   1 76
    //                   2 182
    //                   3 201;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_201;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        boolean flag = false;
_L7:
        if(!flag)
            a1.g();
        i = a(a1);
        if(true) goto _L6; else goto _L5
_L5:
        LinkedList linkedlist1 = a1.a(1);
        for(int k = 0; k < linkedlist1.size(); k++)
        {
            byte abyte2[] = (byte[])linkedlist1.get(k);
            BaseResponse baseresponse = new BaseResponse();
            a a3 = new a(abyte2, a);
            for(boolean flag2 = true; flag2; flag2 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a3, baseresponse, a(a3)));
            uploademojiresponse.b = baseresponse;
            uploademojiresponse.c = true;
        }

        flag = true;
          goto _L7
_L3:
        uploademojiresponse.d = a1.a();
        uploademojiresponse.e = true;
        flag = true;
          goto _L7
        LinkedList linkedlist = a1.a(3);
        int j = 0;
label0:
        do
        {
label1:
            {
                if(j >= linkedlist.size())
                    break label0;
                byte abyte1[] = (byte[])linkedlist.get(j);
                EmojiUploadInfoResp emojiuploadinforesp = new EmojiUploadInfoResp();
                a a2 = new a(abyte1, a);
                boolean flag1 = true;
                do
                    if(flag1)
                    {
                        switch(a(a2))
                        {
                        default:
                            flag1 = false;
                            break;

                        case 1: // '\001'
                            emojiuploadinforesp.a(a2.a());
                            flag1 = true;
                            break;

                        case 2: // '\002'
                            emojiuploadinforesp.b(a2.a());
                            flag1 = true;
                            break;

                        case 3: // '\003'
                            emojiuploadinforesp.c(a2.a());
                            flag1 = true;
                            break;

                        case 4: // '\004'
                            emojiuploadinforesp.a(a2.b());
                            flag1 = true;
                            break;

                        case 5: // '\005'
                            emojiuploadinforesp.d(a2.a());
                            flag1 = true;
                            break;
                        }
                    } else
                    {
                        if(!uploademojiresponse.g)
                            uploademojiresponse.g = true;
                        uploademojiresponse.f.add(emojiuploadinforesp);
                        break label1;
                    }
                while(true);
            }
            j++;
        } while(true);
        flag = true;
          goto _L7
        return uploademojiresponse.e();
    }

    private UploadEmojiResponse e()
    {
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" EmojiItemCount:").append(e).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(2, d) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.a(3, 8, f));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, 8, f);
    }

    public final byte[] b()
    {
        e();
        return super.b();
    }

    public final BaseResponse c()
    {
        return b;
    }

    public final LinkedList d()
    {
        return f;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("EmojiItemCount = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("EmojiItem = ").append(f).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private LinkedList f;
    private boolean g;
}
