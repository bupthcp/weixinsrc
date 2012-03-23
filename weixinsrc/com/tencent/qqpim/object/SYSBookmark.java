// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.object;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.zip.CRC32;

// Referenced classes of package com.tencent.qqpim.object:
//            SYSEntity, Record

public class SYSBookmark extends SYSEntity
{

    public SYSBookmark()
    {
        currentIndex = Integer.valueOf(0);
        values = new ArrayList();
        _Id = new String();
    }

    public int getCheckSum()
    {
        int i;
        CRC32 crc32;
        StringBuilder stringbuilder;
        i = 0;
        crc32 = new CRC32();
        stringbuilder = new StringBuilder();
        if(values != null) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        int j;
        StringBuilder stringbuilder1;
        j = i;
        stringbuilder1 = stringbuilder;
_L4:
        if(j < values.size())
            break MISSING_BLOCK_LABEL_72;
        byte abyte0[] = stringbuilder1.toString().getBytes("UTF-8");
        crc32.update(abyte0);
        i = (int)crc32.getValue();
        continue; /* Loop/switch isn't completed */
        if((Record)values.get(j) != null)
            stringbuilder1 = stringbuilder1.append(values.get(2));
        j++;
        if(true) goto _L4; else goto _L3
_L3:
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        if(true) goto _L1; else goto _L5
_L5:
    }

    public com.tencent.qqpim.interfaces.IEntity.ENUM_ENTITY_TYPE getEntityType()
    {
        return com.tencent.qqpim.interfaces.IEntity.ENUM_ENTITY_TYPE.VBOOKMARK;
    }

    public static final String FROM_SYSTEM = "SYSTEM";
    public static final String TAG_FROM = "BROWSERSOURCE";
    public static final String TAG_TITLE = "TITLE";
    public static final String TAG_URI = "URL";
}
