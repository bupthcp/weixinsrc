// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.object;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.zip.CRC32;

// Referenced classes of package com.tencent.qqpim.object:
//            SYSEntity, Record

public class SYSSms extends SYSEntity
{

    public SYSSms()
    {
    }

    public int getCheckSum()
    {
        int i;
        CRC32 crc32;
        int j;
        StringBuilder stringbuilder1;
        i = 0;
        crc32 = new CRC32();
        StringBuilder stringbuilder = new StringBuilder();
        j = i;
        stringbuilder1 = stringbuilder;
_L3:
        if(j < values.size()) goto _L2; else goto _L1
_L1:
        byte abyte0[] = stringbuilder1.toString().getBytes("UTF-8");
        crc32.update(abyte0);
        i = (int)crc32.getValue();
_L4:
        return i;
_L2:
        Record record = (Record)values.get(j);
        if(record != null)
            stringbuilder1 = stringbuilder1.append(record.get(1)).append(record.get(2));
        j++;
          goto _L3
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
          goto _L4
    }

    public com.tencent.qqpim.interfaces.IEntity.ENUM_ENTITY_TYPE getEntityType()
    {
        return com.tencent.qqpim.interfaces.IEntity.ENUM_ENTITY_TYPE.VMESSAGE;
    }

    public static final String TAG_FOLDER = "FOLDER";
    public static final String TAG_INFORMATION = "INFORMATION";
    public static final String TAG_SENDER_RECEIVER = "SENDER";
    public static final String TAG_SEND_DATE = "SENDDATE";
    public static final String TAG_SEND_RECEIVER_NAME = "SENDNAME";
}
