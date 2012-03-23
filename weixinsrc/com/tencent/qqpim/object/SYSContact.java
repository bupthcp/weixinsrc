// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.object;

import com.tencent.qqpim.dao.QueryAccount;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.zip.CRC32;

// Referenced classes of package com.tencent.qqpim.object:
//            SYSEntity, Record

public class SYSContact extends SYSEntity
{

    public SYSContact()
    {
        contactAccount = new QueryAccount();
    }

    public String getAccountName()
    {
        return contactAccount.name;
    }

    public String getAccountType()
    {
        return contactAccount.type;
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
        lengthVcard += 16 * stringbuilder1.length();
        byte abyte0[] = stringbuilder1.toString().getBytes("UTF-8");
        crc32.update(abyte0);
        i = (int)crc32.getValue();
_L4:
        return i;
_L2:
        Record record = (Record)values.get(j);
        if(record != null)
            if(record.get(i).equals("PHOTO"))
            {
                if(record.getBinaryData() != null)
                    stringbuilder1 = stringbuilder1.append(record.get(1)).append(new String(record.getBinaryData()));
            } else
            {
                stringbuilder1 = stringbuilder1.append(record.get(1)).append(record.get(2));
            }
        j++;
          goto _L3
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
          goto _L4
    }

    public com.tencent.qqpim.interfaces.IEntity.ENUM_ENTITY_TYPE getEntityType()
    {
        return com.tencent.qqpim.interfaces.IEntity.ENUM_ENTITY_TYPE.VCARD;
    }

    public void initData()
    {
        moveToFirst();
        int i = 0;
        do
        {
            Record record;
            String s;
            do
            {
                do
                {
                    if(isAfterLast() || i >= 3)
                        return;
                    record = getCurrentValue();
                    moveToNext();
                } while(record == null);
                s = record.get(0);
            } while(s == null);
            if(s.endsWith("X-FOCUS"))
            {
                i++;
                String s1 = record.get(2);
                if(s1 != null && s1.length() > 0 && s1.equals("1"))
                    contactAccount.starred = 1;
            } else
            if(s.equals("ACCOUNTNAME"))
            {
                contactAccount.name = record.get(2);
                i++;
            } else
            if(s.equals("ACCOUNTTYPE"))
            {
                contactAccount.type = record.get(2);
                i++;
            }
        } while(true);
    }

    public boolean isStarred()
    {
        boolean flag = true;
        if(contactAccount.starred != flag)
            flag = false;
        return flag;
    }

    public static final String LABEL_AIM = "AIM";
    public static final String LABEL_CAR = "CAR";
    public static final String LABEL_CELL = "CELL";
    public static final String LABEL_CELL_WORK = "CELL;WORK";
    public static final String LABEL_FAX = "FAX";
    public static final String LABEL_FAX_HOME = "FAX;HOME";
    public static final String LABEL_FAX_WORK = "FAX;WORK";
    public static final String LABEL_GTALK = "GTALK";
    public static final String LABEL_HOME = "HOME";
    public static final String LABEL_HOME_FAX = "HOME;FAX";
    public static final String LABEL_ICQ = "ICQ";
    public static final String LABEL_JABBER = "JABBER";
    public static final String LABEL_MEDIA = "MEDIA";
    public static final String LABEL_MSN = "MSN";
    public static final String LABEL_OTHER = "OTHER";
    public static final String LABEL_PAGER = "PAGER";
    public static final String LABEL_PAGER_WORK = "PAGER;WORK";
    public static final String LABEL_PREF = "PREF";
    public static final String LABEL_QQ = "QQ";
    public static final String LABEL_RADIO = "RADIO";
    public static final String LABEL_SKYPE = "SKYPE";
    public static final String LABEL_WORK = "WORK";
    public static final String LABEL_WORK_FAX = "WORK;FAX";
    public static final String LABEL_X_ASSISTANT = "X-ASSISTANT";
    public static final String LABEL_X_CALLBACK = "X-CALLBACK";
    public static final String LABEL_X_COMPANY = "X-COMPANY";
    public static final String LABEL_X_ISDN = "X-ISDN";
    public static final String LABEL_X_MAIN = "X-MAIN";
    public static final String LABEL_X_MMS = "X-MMS";
    public static final String LABEL_X_NETMEETING = "X-NETMEETING";
    public static final String LABEL_X_TELEX = "X-TELEX";
    public static final String LABEL_X_TTY = "X-TTY";
    public static final String LABEL_YAHOO = "YAHOO";
    public static final String TAG_ACCOUNTNAME = "ACCOUNTNAME";
    public static final String TAG_ACCOUNTTYPE = "ACCOUNTTYPE";
    public static final String TAG_ADR = "ADR";
    public static final String TAG_BDAY = "BDAY";
    public static final String TAG_CATEGORIES = "CATEGORIES";
    public static final String TAG_EMAIL = "EMAIL";
    public static final String TAG_FN = "FN";
    public static final String TAG_N = "N";
    public static final String TAG_NICKNAME = "NICKNAME";
    public static final String TAG_NOTE = "NOTE";
    public static final String TAG_ORG = "ORG";
    public static final String TAG_PHOTO = "PHOTO";
    public static final String TAG_RINGTONE = "RINGTONE";
    public static final String TAG_TEL = "TEL";
    public static final String TAG_TITLE = "TITLE";
    public static final String TAG_URL = "URL";
    public static final String TAG_X_FOCUS = "X-FOCUS";
    public static final String TAG_X_TC_IM = "X-TC-IM";
    public static long lengthVcard = 0L;
    private QueryAccount contactAccount;

}
