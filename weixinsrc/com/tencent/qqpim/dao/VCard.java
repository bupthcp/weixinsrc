// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import com.tencent.qqpim.interfaces.IEntity;
import com.tencent.qqpim.interfaces.IVcard;
import com.tencent.qqpim.object.*;
import com.tencent.qqpim.utils.QQPimUtils;
import java.io.*;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class VCard
    implements IVcard
{

    public VCard()
    {
    }

    private String[] parseVcardLabel(String s, AtomicBoolean atomicboolean)
    {
        if(s != null && s.length() != 0) goto _L2; else goto _L1
_L1:
        String as[];
        as = new String[1];
        as[0] = "OTHER";
_L4:
        return as;
_L2:
        String as1[] = s.split(";");
        ArrayList arraylist = new ArrayList();
        if(atomicboolean != null)
            atomicboolean.set(false);
        int i = 0;
        boolean flag = false;
        do
        {
label0:
            {
                if(i < as1.length)
                    break label0;
                if(atomicboolean != null)
                    atomicboolean.set(flag);
                as = (String[])arraylist.toArray(new String[0]);
            }
            if(true)
                continue;
            if(as1[i].equals("PREF"))
                flag = true;
            else
            if(as1[i].contains("X-CUSTOM="))
            {
                String s1 = as1[i].substring(9, as1[i].length());
                try
                {
                    arraylist.add(new String(Base64.decodeBase64(s1.getBytes("UTF-8"))));
                }
                catch(Exception exception) { }
            } else
            if(!as1[i].contains("CHARSET="))
                arraylist.add(as1[i]);
            i++;
        } while(true);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public byte[] composeVcard(IEntity ientity)
    {
        byte abyte0[] = null;
        if(ientity != null) goto _L2; else goto _L1
_L1:
        return abyte0;
_L2:
        if(ientity.getEntityType() != com.tencent.qqpim.interfaces.IEntity.ENUM_ENTITY_TYPE.VCARD) goto _L4; else goto _L3
_L3:
        StringBuffer stringbuffer3;
        stringbuffer3 = (new StringBuffer("BEGIN:VCARD\r\n")).append("VERSION:2.1\r\n");
        ientity.moveToFirst();
_L8:
        if(!ientity.isAfterLast()) goto _L6; else goto _L5
_L5:
        Object obj = stringbuffer3.append("END:VCARD\r\n");
_L9:
        if(obj == null) goto _L1; else goto _L7
_L7:
        byte abyte1[] = ((StringBuffer) (obj)).toString().getBytes("UTF-8");
        abyte0 = abyte1;
          goto _L1
_L6:
        StringBuffer stringbuffer4 = new StringBuffer();
        Record record3 = ientity.getCurrentValue();
        String s3 = record3.get(0);
        if(s3.equals("FN") || s3.equals("NICKNAME") || s3.equals("TITLE") || s3.equals("N") || s3.equals("URL") || s3.equals("X-FOCUS"))
            stringbuffer4 = stringbuffer4.append(s3).append(":").append(record3.get(2)).append("\r\n");
        else
        if(s3.equals("PHOTO"))
        {
            byte abyte2[] = record3.getBinaryData();
            if(abyte2 != null)
            {
                byte abyte3[] = Base64.encodeBase64(abyte2);
                stringbuffer4 = stringbuffer4.append("PHOTO;ENCODING=BASE64:").append(new String(abyte3)).append("\r\n\r\n");
            }
        } else
        if(s3.equals("NOTE"))
            stringbuffer4 = stringbuffer4.append("NOTE;ENCODING=BASE64:").append(QQPimUtils.getBase64CodeFromString(record3.get(2))).append("\r\n\r\n");
        else
        if(s3.equals("EMAIL"))
        {
            String s9 = record3.get(1);
            StringBuffer stringbuffer8;
            if(s9.contains("HOME") || s9.contains("WORK") || s9.contains("CELL"))
                stringbuffer8 = stringbuffer4.append("EMAIL;").append(s9);
            else
            if(s9.contains("OTHER") || s9.equals(""))
                stringbuffer8 = stringbuffer4.append("EMAIL").append(s9.replace("OTHER", ""));
            else
                stringbuffer8 = stringbuffer4.append("EMAIL;X-CUSTOM=").append(QQPimUtils.getBase64CodeFromString(s9));
            stringbuffer4 = stringbuffer8.append(":").append(record3.get(2)).append("\r\n");
        } else
        if(s3.equals("TEL"))
        {
            String s8 = record3.get(1);
            StringBuffer stringbuffer7;
            if(s8.contains("FAX;WORK") || s8.contains("FAX;HOME") || s8.contains("CELL;WORK") || s8.contains("PAGER;WORK") || s8.contains("HOME") || s8.contains("WORK") || s8.contains("CELL") || s8.contains("PAGER") || s8.contains("CAR") || s8.contains("X-CALLBACK") || s8.contains("X-COMPANY") || s8.contains("X-ISDN") || s8.contains("X-MAIN") || s8.contains("FAX") || s8.contains("RADIO") || s8.contains("X-TELEX") || s8.contains("X-TTY") || s8.contains("X-ASSISTANT") || s8.contains("MEDIA"))
                stringbuffer7 = stringbuffer4.append("TEL;").append(s8);
            else
            if(s8.contains("OTHER") || s8.equals(""))
                stringbuffer7 = stringbuffer4.append("TEL").append(s8.replace("OTHER", ""));
            else
                stringbuffer7 = stringbuffer4.append("TEL;X-CUSTOM=").append(QQPimUtils.getBase64CodeFromString(s8));
            if(record3.isPref())
                stringbuffer7.append(";PREF");
            stringbuffer4 = stringbuffer7.append(":").append(record3.get(2)).append("\r\n");
        } else
        if(s3.equals("ADR"))
        {
            String s7 = record3.get(1);
            StringBuffer stringbuffer6;
            if(s7.contains("HOME") || s7.contains("WORK"))
                stringbuffer6 = stringbuffer4.append("ADR;").append(s7);
            else
            if(s7.equals("OTHER") || s7.equals(""))
                stringbuffer6 = stringbuffer4.append("ADR").append(s7.replace("OTHER", ""));
            else
                stringbuffer6 = stringbuffer4.append("ADR;X-CUSTOM=").append(QQPimUtils.getBase64CodeFromString(s7));
            stringbuffer4 = stringbuffer6.append(":").append(record3.get(2)).append("\r\n");
        } else
        if(s3.equals("ORG"))
        {
            String s6 = record3.get(1);
            StringBuffer stringbuffer5;
            if(s6.contains("WORK"))
                stringbuffer5 = stringbuffer4.append("ORG;").append(s6);
            else
            if(s6.contains("OTHER") || s6.equals(""))
                stringbuffer5 = stringbuffer4.append("ORG").append(s6.replace("OTHER", ""));
            else
                stringbuffer5 = stringbuffer4.append("ORG;X-CUSTOM=").append(QQPimUtils.getBase64CodeFromString(s6));
            stringbuffer4 = stringbuffer5.append(":").append(record3.get(2)).append("\r\n");
        } else
        if(s3.equals("X-TC-IM"))
        {
            String s5 = record3.get(1);
            if(s5.contains("AIM") || s5.contains("MSN") || s5.contains("YAHOO") || s5.contains("SKYPE") || s5.contains("GTALK") || s5.contains("QQ") || s5.contains("ICQ") || s5.contains("JABBER"))
                stringbuffer4 = stringbuffer4.append("X-TC-IM;").append(s5).append(":").append(record3.get(2)).append("\r\n");
            else
                stringbuffer4 = stringbuffer4.append("X-TC-IM;X-CUSTOM=").append(QQPimUtils.getBase64CodeFromString(s5)).append(":").append(record3.get(2)).append("\r\n");
        } else
        if(s3.equals("BDAY"))
        {
            String s4 = QQPimUtils.timeStrTrans(record3.get(2));
            stringbuffer4 = stringbuffer4.append(s3).append(":").append(s4).append("\r\n");
        } else
        if(s3.equals("CATEGORIES"))
            stringbuffer4 = stringbuffer4.append(s3).append(":").append(record3.get(2)).append("\r\n");
        if(!stringbuffer4.equals(""))
            stringbuffer3.append(stringbuffer4);
        ientity.moveToNext();
          goto _L8
_L4:
        StringBuffer stringbuffer2;
        if(ientity.getEntityType() != com.tencent.qqpim.interfaces.IEntity.ENUM_ENTITY_TYPE.VBOOKMARK)
            break MISSING_BLOCK_LABEL_1538;
        stringbuffer2 = (new StringBuffer("BEGIN:VBKM\r\n")).append("VERSION:1.0\r\n");
        ientity.moveToFirst();
_L10:
label0:
        {
            if(!ientity.isAfterLast())
                break label0;
            obj = stringbuffer2.append("END:VBKM\r\n");
        }
          goto _L9
        Record record2 = ientity.getCurrentValue();
        if(record2 != null)
        {
            String s2 = record2.get(0);
            if(s2.equals("URL") || s2.equals("TITLE"))
                stringbuffer2 = stringbuffer2.append(s2).append(";ENCODING=BASE64").append(":").append(QQPimUtils.getBase64CodeFromString(record2.get(2))).append("\r\n\r\n");
            else
                stringbuffer2 = stringbuffer2.append(s2).append(":").append(record2.get(2)).append("\r\n");
            ientity.moveToNext();
        }
          goto _L10
        StringBuffer stringbuffer1;
        if(ientity.getEntityType() != com.tencent.qqpim.interfaces.IEntity.ENUM_ENTITY_TYPE.VCALLLOG)
            break MISSING_BLOCK_LABEL_1700;
        stringbuffer1 = (new StringBuffer("BEGIN:VCALLLOG\r\n")).append("VERSION:1.0\r\n");
        ientity.moveToFirst();
_L11:
label1:
        {
            if(!ientity.isAfterLast())
                break label1;
            obj = stringbuffer1.append("END:VCALLLOG\r\n");
        }
          goto _L9
        Record record1 = ientity.getCurrentValue();
        if(record1 != null)
        {
            String s1 = record1.get(0);
            if(s1.equals("N"))
                stringbuffer1 = stringbuffer1.append(s1).append(";CHARSET=UTF-8;ENCODING=BASE64:").append(QQPimUtils.getBase64CodeFromString(record1.get(2))).append("\r\n\r\n");
            else
                stringbuffer1 = stringbuffer1.append(s1).append(":").append(record1.get(2)).append("\r\n");
            ientity.moveToNext();
        }
          goto _L11
        StringBuffer stringbuffer;
        if(ientity.getEntityType() != com.tencent.qqpim.interfaces.IEntity.ENUM_ENTITY_TYPE.VMESSAGE)
            break MISSING_BLOCK_LABEL_1873;
        stringbuffer = (new StringBuffer("BEGIN:VMESSAGE\r\n")).append("VERSION:1.0\r\n");
        ientity.moveToFirst();
_L12:
label2:
        {
            if(!ientity.isAfterLast())
                break label2;
            obj = stringbuffer.append("END:VMESSAGE\r\n");
        }
          goto _L9
        Record record = ientity.getCurrentValue();
        if(record != null)
        {
            String s = record.get(0);
            if(s.equals("INFORMATION"))
                stringbuffer = stringbuffer.append(s).append(";ENCODING=BASE64").append(":").append(QQPimUtils.getBase64CodeFromString(record.get(2))).append("\r\n\r\n");
            else
                stringbuffer = stringbuffer.append(s).append(":").append(record.get(2)).append("\r\n");
            ientity.moveToNext();
        }
          goto _L12
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
          goto _L1
        obj = abyte0;
          goto _L9
    }

    public IEntity parseVcard(byte abyte0[])
    {
        BufferedReader bufferedreader;
        String s;
        bufferedreader = new BufferedReader(new StringReader(new String(abyte0, "UTF-8")), abyte0.length);
        s = bufferedreader.readLine();
        if(s.length() != 0) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L5:
        return ((IEntity) (obj));
_L2:
        String s1;
        if(vCardBeginPattern.matcher(s).matches())
            obj = new SYSContact();
        else
        if(callogBeginPattern.matcher(s).matches())
            obj = new SYSCallLog();
        else
        if(messageBeginPattern.matcher(s).matches())
        {
            obj = new SYSSms();
        } else
        {
label0:
            {
                if(!bookmarkBeginPattern.matcher(s).matches())
                    break label0;
                obj = new SYSBookmark();
            }
        }
        QQPimUtils.writeToLog("VCARDSTRUCT", (new StringBuilder("line:")).append(s).toString());
_L7:
        s1 = bufferedreader.readLine();
        if(s1 != null) goto _L4; else goto _L3
_L3:
        bufferedreader.close();
          goto _L5
        obj = null;
          goto _L5
_L4:
        QQPimUtils.writeToLog("VCARDSTRUCT", (new StringBuilder("line:")).append(s1).toString());
        if(s1.contains("VERSION")) goto _L7; else goto _L6
_L6:
        Record record;
        boolean flag;
        String as[];
        StringBuilder stringbuilder;
        int k;
        StringBuilder stringbuilder1;
        String s3;
        int i = s1.indexOf(";");
        int j = s1.indexOf(":");
        new String();
        String s2;
        AtomicBoolean atomicboolean;
        if(i == -1 || j < i)
        {
            s2 = s1.substring(0, j);
            i = j + -1;
        } else
        {
            s2 = s1.substring(0, i);
        }
        if(s2.equals("END")) goto _L3; else goto _L8
_L8:
        record = new Record();
        record.put(0, s2);
        flag = false;
        atomicboolean = new AtomicBoolean();
        as = parseVcardLabel(s1.substring(i + 1, j), atomicboolean);
        record.setPref(atomicboolean.get());
        stringbuilder = new StringBuilder();
        k = 0;
_L15:
        if(k < as.length) goto _L10; else goto _L9
_L9:
        record.put(1, stringbuilder.toString());
        stringbuilder1 = new StringBuilder(s1.substring(j + 1));
        if(!flag)
            break MISSING_BLOCK_LABEL_626;
_L16:
        s3 = bufferedreader.readLine();
        if(!s3.equals("")) goto _L12; else goto _L11
_L11:
        if(!record.get(0).equals("PHOTO")) goto _L14; else goto _L13
_L13:
        record.putBinaryData(Base64.decodeBase64(stringbuilder1.toString().getBytes("UTF-8")));
_L17:
        ((IEntity) (obj)).putValue(record);
          goto _L7
_L10:
        if(as[k].toUpperCase().contains("ENCODING=BASE64"))
            flag = true;
        else
        if(stringbuilder.length() > 0)
            stringbuilder.append((new StringBuilder(";")).append(as[k]).toString());
        else
            stringbuilder.append(as[k]);
        k++;
          goto _L15
_L12:
        QQPimUtils.writeToLog("VCARDSTRUCT", (new StringBuilder("content:")).append(s3).toString());
        stringbuilder1.append(s3);
          goto _L16
_L14:
        record.put(2, new String(Base64.decodeBase64(stringbuilder1.toString().getBytes("UTF-8"))));
          goto _L17
        Exception exception;
        exception;
        obj = null;
          goto _L5
        record.put(2, stringbuilder1.toString());
          goto _L17
    }

    static final Pattern bookmarkBeginPattern = Pattern.compile("BEGIN:VBKM", 2);
    static final Pattern callogBeginPattern = Pattern.compile("BEGIN:VCALLLOG", 2);
    static final Pattern messageBeginPattern = Pattern.compile("BEGIN:VMESSAGE", 2);
    static final Pattern vCardBeginPattern = Pattern.compile("BEGIN:VCARD", 2);

}
