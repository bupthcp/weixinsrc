// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import com.tencent.qqpim.interfaces.IEntity;
import com.tencent.qqpim.interfaces.IPhoneLookup;
import com.tencent.qqpim.issue.IssueSettings;
import com.tencent.qqpim.object.Record;
import com.tencent.qqpim.object.SYSContact;
import com.tencent.qqpim.utils.QQPimUtils;
import java.text.*;
import java.util.*;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.tencent.qqpim.dao:
//            SYSContactDao, SYSContactGroupDao, QueryAccount

public class SYSContactDaoV2 extends SYSContactDao
    implements IPhoneLookup
{

    public SYSContactDaoV2(Context context)
    {
        super(context);
        cursor = null;
        groupDao = null;
        groupDao = SYSContactGroupDao.getInstance(context);
    }

    private boolean clearEntity(IEntity ientity)
    {
        boolean flag;
        flag = false;
        QQPimUtils.writeToLog("SYSContactDaoV2", "clearEntity enter");
        if(ientity == null) goto _L2; else goto _L1
_L1:
        int i;
        ContentResolver contentresolver = contentResolver;
        Uri uri = android.provider.ContactsContract.Data.CONTENT_URI;
        String as[] = new String[1];
        as[0] = ientity.getId();
        i = contentresolver.delete(uri, "raw_contact_id=?", as);
        if(i > 0) goto _L2; else goto _L3
_L3:
        QQPimUtils.writeToLog("SYSContactDaoV2", "clearEntity enter");
        return flag;
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("clearEntity Throwable ")).append(throwable.getMessage()).toString());
_L2:
        flag = true;
        if(true) goto _L3; else goto _L4
_L4:
    }

    private void closeCursor()
    {
        if(cursor != null)
            cursor.close();
_L1:
        return;
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("close Cursor  Throwable ")).append(throwable.getMessage()).toString());
          goto _L1
    }

    private void getEmail(Cursor cursor1, SYSContact syscontact)
    {
        Record record;
        String s;
        int i;
        record = new Record();
        record.put(0, "EMAIL");
        s = cursor1.getString(cursor1.getColumnIndex("data1"));
        record.put(2, s);
        i = cursor1.getInt(cursor1.getColumnIndex("data2"));
        if(i != 1) goto _L2; else goto _L1
_L1:
        s = "HOME";
_L5:
        record.put(1, s);
        syscontact.putValue(record);
          goto _L3
_L7:
        if(i != 0) goto _L5; else goto _L4
_L4:
        String s1 = cursor1.getString(cursor1.getColumnIndex("data3"));
        s = s1;
          goto _L5
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getEmail Throwable ")).append(throwable.getMessage()).toString());
_L3:
        return;
_L2:
        if(i == 4)
        {
            s = "CELL";
        } else
        {
            if(i != 2)
                continue; /* Loop/switch isn't completed */
            s = "WORK";
        }
          goto _L5
        if(i != 3) goto _L7; else goto _L6
_L6:
        s = "OTHER";
          goto _L5
    }

    private void getEvent(Cursor cursor1, SYSContact syscontact)
    {
        if(cursor1.getInt(cursor1.getColumnIndex("data2")) == 3)
        {
            int i = cursor1.getColumnIndex("data1");
            if(!cursor1.isNull(i))
            {
                Record record = new Record();
                record.put(0, "BDAY");
                record.put(2, cursor1.getString(i));
                syscontact.putValue(record);
            }
        }
_L1:
        return;
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getEvent Throwable ")).append(throwable.getMessage()).toString());
          goto _L1
    }

    private int getGroupMemberShip(Cursor cursor1, StringBuffer stringbuffer)
    {
        int i = -1;
        int j;
        j = cursor1.getInt(cursor1.getColumnIndex("data1"));
        String s = groupDao.getGroupNameByGroupId(j);
        if(s == null)
            break MISSING_BLOCK_LABEL_92;
        if(stringbuffer.length() > 0)
            stringbuffer.append(",");
        stringbuffer.append(s);
        i = j;
        break MISSING_BLOCK_LABEL_92;
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getGroupMemberShip Throwable ")).append(throwable.getMessage()).toString());
        return i;
    }

    private void getHuaweiU8550QQ(Cursor cursor1, SYSContact syscontact)
    {
        try
        {
            Record record = new Record();
            record.put(0, "X-TC-IM");
            record.put(1, "QQ");
            int i = cursor1.getColumnIndex("data8");
            if(i >= 0)
            {
                record.put(2, cursor1.getString(i));
                syscontact.putValue(record);
            }
        }
        catch(Throwable throwable)
        {
            QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getEmail Throwable ")).append(throwable.getMessage()).toString());
        }
    }

    private void getIM(Cursor cursor1, SYSContact syscontact)
    {
        String s = null;
        Record record;
        int i;
        record = new Record();
        record.put(0, "X-TC-IM");
        i = cursor1.getInt(cursor1.getColumnIndex("data5"));
        if(i != 0) goto _L2; else goto _L1
_L1:
        s = "AIM";
_L5:
        record.put(1, s);
        record.put(2, cursor1.getString(cursor1.getColumnIndex("data1")));
        syscontact.putValue(record);
          goto _L3
_L8:
        if(i != -1) goto _L5; else goto _L4
_L4:
        int j = cursor1.getColumnIndex("data6");
        if(cursor1.isNull(j)) goto _L5; else goto _L6
_L6:
        String s1 = cursor1.getString(j);
        s = s1;
          goto _L5
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getEmail Throwable ")).append(throwable.getMessage()).toString());
_L3:
        return;
_L2:
        if(i == 5)
            s = "GTALK";
        else
        if(i == 6)
            s = "ICQ";
        else
        if(i == 7)
            s = "JABBER";
        else
        if(i == 1)
            s = "MSN";
        else
        if(i == 8)
            s = "X-NETMEETING";
        else
        if(i == 4)
        {
            s = "QQ";
        } else
        {
            if(i != 3)
                continue; /* Loop/switch isn't completed */
            s = "SKYPE";
        }
          goto _L5
        if(i != 2) goto _L8; else goto _L7
_L7:
        s = "YAHOO";
          goto _L5
    }

    private void getName(Cursor cursor1, SYSContact syscontact)
    {
        String s = cursor1.getString(cursor1.getColumnIndex("data1"));
        if(s != null && !s.equals(""))
        {
            Record record1 = new Record();
            record1.put(0, "FN");
            record1.put(2, s);
            syscontact.putValue(record1);
        }
        Name name = new Name();
        int i = cursor1.getColumnIndex("data2");
        if(!cursor1.isNull(i))
            name.FIRSTNAME = cursor1.getString(i);
        int j = cursor1.getColumnIndex("data5");
        if(!cursor1.isNull(j))
            name.MIDDLENAME = cursor1.getString(j);
        int k = cursor1.getColumnIndex("data3");
        if(!cursor1.isNull(k))
            name.LASTNAME = cursor1.getString(k);
        int l = cursor1.getColumnIndex("data4");
        if(!cursor1.isNull(l))
            name.PREFIX = cursor1.getString(l);
        int i1 = cursor1.getColumnIndex("data6");
        if(!cursor1.isNull(i1))
            name.SUFFIX = cursor1.getString(i1);
        Record record = new Record();
        record.put(0, "N");
        record.put(2, name.getStructedName());
        syscontact.putValue(record);
_L1:
        return;
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getName Throwable ")).append(throwable.getMessage()).toString());
          goto _L1
    }

    private void getNickName(Cursor cursor1, SYSContact syscontact)
    {
        Record record = new Record();
        record.put(0, "NICKNAME");
        record.put(2, cursor1.getString(cursor1.getColumnIndex("data1")));
        syscontact.putValue(record);
_L1:
        return;
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getNickName Throwable ")).append(throwable.getMessage()).toString());
          goto _L1
    }

    private void getNote(Cursor cursor1, SYSContact syscontact)
    {
        Record record = new Record();
        record.put(0, "NOTE");
        record.put(2, cursor1.getString(cursor1.getColumnIndex("data1")));
        syscontact.putValue(record);
_L1:
        return;
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getEmail Throwable ")).append(throwable.getMessage()).toString());
          goto _L1
    }

    private ContentProviderOperation getOperationFromAddress(Record record, int i, int j)
    {
        int k;
        android.content.ContentProviderOperation.Builder builder1;
        android.content.ContentProviderOperation.Builder builder2;
        String as[];
        int l;
        int i1;
        int j1;
        k = 0;
        android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        String s;
        android.content.ContentProviderOperation.Builder builder3;
        Address address;
        android.content.ContentProviderOperation.Builder builder4;
        if(j == 100)
            builder = builder.withValueBackReference("raw_contact_id", i);
        else
        if(j == 101)
            builder = builder.withValue("raw_contact_id", Integer.valueOf(i));
        builder1 = builder.withValue("mimetype", "vnd.android.cursor.item/postal-address_v2");
        s = record.get(1);
        if(s == null)
            break MISSING_BLOCK_LABEL_444;
        as = s.split(";");
        l = k;
        i1 = k;
        j1 = k;
_L3:
        if(i1 == 0 && l < as.length) goto _L2; else goto _L1
_L1:
        if(j1 == 0)
        {
            builder4 = builder1.withValue("data3", s);
            k = j1;
            builder2 = builder4;
        } else
        {
            k = j1;
            builder2 = builder1;
        }
_L4:
        builder3 = builder2.withValue("data2", Integer.valueOf(k));
        address = new Address(record.get(2));
        if(address.CITY != null)
            builder3 = builder3.withValue("data7", address.CITY);
        if(address.COUNTRY != null)
            builder3 = builder3.withValue("data10", address.COUNTRY);
        if(address.NEIGHBORHOOD != null)
            builder3 = builder3.withValue("data6", address.NEIGHBORHOOD);
        if(address.POBOX != null)
            builder3 = builder3.withValue("data5", address.POBOX);
        if(address.POSTCODE != null)
            builder3 = builder3.withValue("data9", address.POSTCODE);
        if(address.REGION != null)
            builder3 = builder3.withValue("data8", address.REGION);
        if(address.STREET != null)
            builder3 = builder3.withValue("data4", address.STREET);
        return builder3.build();
_L2:
        int k1;
        int l1;
        boolean flag;
        if(as[l].equals("WORK"))
        {
            l1 = 1;
            k1 = 2;
        } else
        if(as[l].equals("HOME"))
        {
            l1 = 1;
            k1 = 1;
        } else
        if(as[l].equals("OTHER") || as[l].length() == 0)
        {
            k1 = 3;
            l1 = 1;
        } else
        {
            k1 = j1;
            l1 = k;
        }
        l++;
        flag = l1;
        j1 = k1;
        i1 = ((flag) ? 1 : 0);
          goto _L3
        builder2 = builder1;
          goto _L4
    }

    private ContentProviderOperation getOperationFromEmail(Record record, int i, int j)
    {
        int k;
        android.content.ContentProviderOperation.Builder builder1;
        android.content.ContentProviderOperation.Builder builder2;
        String as[];
        int l;
        int i1;
        int j1;
        k = 0;
        android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        String s;
        android.content.ContentProviderOperation.Builder builder3;
        if(j == 100)
            builder = builder.withValueBackReference("raw_contact_id", i);
        else
        if(j == 101)
            builder = builder.withValue("raw_contact_id", Integer.valueOf(i));
        builder1 = builder.withValue("mimetype", "vnd.android.cursor.item/email_v2").withValue("data1", record.get(2));
        s = record.get(1);
        if(s == null)
            break MISSING_BLOCK_LABEL_303;
        as = s.split(";");
        l = k;
        i1 = k;
        j1 = k;
_L3:
        if(i1 == 0 && l < as.length) goto _L2; else goto _L1
_L1:
        if(j1 == 0)
        {
            builder3 = builder1.withValue("data3", s);
            k = j1;
            builder2 = builder3;
        } else
        {
            k = j1;
            builder2 = builder1;
        }
_L4:
        return builder2.withValue("data2", Integer.valueOf(k)).build();
_L2:
        int k1;
        int l1;
        boolean flag;
        if(as[l].equals("HOME"))
        {
            l1 = 1;
            k1 = 1;
        } else
        if(as[l].equals("WORK"))
        {
            l1 = 1;
            k1 = 2;
        } else
        if(as[l].equals("CELL"))
        {
            k1 = 4;
            l1 = 1;
        } else
        if(as[l].equals("OTHER") || as[l].equals(""))
        {
            k1 = 3;
            l1 = 1;
        } else
        {
            k1 = j1;
            l1 = k;
        }
        l++;
        flag = l1;
        j1 = k1;
        i1 = ((flag) ? 1 : 0);
          goto _L3
        builder2 = builder1;
          goto _L4
    }

    private ContentProviderOperation getOperationFromEvent(Record record, int i, int j)
    {
        android.content.ContentProviderOperation.Builder builder;
        android.content.ContentProviderOperation.Builder builder1;
        builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        String s;
        SimpleDateFormat simpledateformat;
        Date date;
        String s1;
        Date date1;
        if(j == 100)
            builder = builder.withValueBackReference("raw_contact_id", i);
        else
        if(j == 101)
            builder = builder.withValue("raw_contact_id", Integer.valueOf(i));
        if(!IssueSettings.birthdayDisplayError) goto _L2; else goto _L1
_L1:
        s = record.get(2);
        simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        date = null;
        date1 = simpledateformat.parse(s);
        date = date1;
_L6:
        s1 = (new StringBuilder(String.valueOf(date.getTime() + (long)TimeZone.getDefault().getRawOffset()))).toString();
        builder1 = builder.withValue("mimetype", "vnd.android.cursor.item/contact_event").withValue("data2", Integer.valueOf(3)).withValue("data1", s1);
_L4:
        return builder1.build();
_L2:
        builder1 = builder.withValue("mimetype", "vnd.android.cursor.item/contact_event").withValue("data2", Integer.valueOf(3)).withValue("data1", record.get(2));
        if(true) goto _L4; else goto _L3
_L3:
        ParseException parseexception;
        parseexception;
        if(true) goto _L6; else goto _L5
_L5:
    }

    private ContentProviderOperation getOperationFromIM(Record record, int i, int j)
    {
        android.content.ContentProviderOperation.Builder builder1;
        byte byte0;
        android.content.ContentProviderOperation.Builder builder2;
        String as[];
        boolean flag;
        int k;
        android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        String s;
        if(j == 100)
            builder = builder.withValueBackReference("raw_contact_id", i);
        else
        if(j == 101)
            builder = builder.withValue("raw_contact_id", Integer.valueOf(i));
        builder1 = builder.withValue("mimetype", "vnd.android.cursor.item/im").withValue("data2", Integer.valueOf(3));
        s = record.get(1);
        byte0 = -1;
        if(s == null)
            break MISSING_BLOCK_LABEL_384;
        as = s.split(";");
        flag = false;
        k = 0;
_L3:
        if(!flag && k < as.length) goto _L2; else goto _L1
_L1:
        if(byte0 != -1)
            break MISSING_BLOCK_LABEL_384;
        builder2 = builder1.withValue("data6", s);
_L4:
        android.content.ContentProviderOperation.Builder builder3;
        if(byte0 == 4 && QQPimUtils.getPhoneType() == com.tencent.qqpim.utils.QQPimUtils.PHONETYPE.HUAWEI_U8500)
            builder3 = getOperationFromQQ_ForHuaweiU8550(j, i, record.get(2));
        else
            builder3 = builder2.withValue("data5", Integer.valueOf(byte0)).withValue("data1", record.get(2));
        return builder3.build();
_L2:
        flag = true;
        if(as[k].equals("QQ"))
            byte0 = 4;
        else
        if(as[k].equals("MSN"))
            byte0 = 1;
        else
        if(as[k].equals("AIM"))
            byte0 = 0;
        else
        if(as[k].equals("GTALK"))
            byte0 = 5;
        else
        if(as[k].equals("ICQ"))
            byte0 = 6;
        else
        if(as[k].equals("SKYPE"))
            byte0 = 3;
        else
        if(as[k].equals("JABBER"))
            byte0 = 7;
        else
        if(as[k].equals("YAHOO"))
            byte0 = 2;
        else
        if(as[k].equals("X-NETMEETING"))
            byte0 = 8;
        else
            flag = false;
        k++;
          goto _L3
        builder2 = builder1;
          goto _L4
    }

    private ContentProviderOperation getOperationFromName(Record record, Record record1, int i, int j)
    {
        android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        if(j != 100) goto _L2; else goto _L1
_L1:
        builder = builder.withValueBackReference("raw_contact_id", i);
_L4:
        android.content.ContentProviderOperation.Builder builder1 = builder.withValue("mimetype", "vnd.android.cursor.item/name");
        if(record != null)
            builder1 = builder1.withValue("data1", record.get(2));
        if(record1 != null)
        {
            Name name = new Name(record1.get(2));
            if(name.FIRSTNAME != null && !name.FIRSTNAME.equals(""))
                builder1.withValue("data2", name.FIRSTNAME);
            if(name.MIDDLENAME != null && !name.MIDDLENAME.equals(""))
                builder1.withValue("data5", name.MIDDLENAME);
            if(name.LASTNAME != null && !name.LASTNAME.equals(""))
                builder1.withValue("data3", name.LASTNAME);
            if(name.PREFIX != null && !name.PREFIX.equals(""))
                builder1.withValue("data4", name.PREFIX);
            if(name.SUFFIX != null && !name.SUFFIX.equals(""))
                builder1.withValue("data6", name.SUFFIX);
        }
        return builder1.build();
_L2:
        if(j == 101)
            builder = builder.withValue("raw_contact_id", Integer.valueOf(i));
        if(true) goto _L4; else goto _L3
_L3:
    }

    private ContentProviderOperation getOperationFromNickname(Record record, int i, int j)
    {
        android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        if(j != 100) goto _L2; else goto _L1
_L1:
        builder = builder.withValueBackReference("raw_contact_id", i);
_L4:
        return builder.withValue("mimetype", "vnd.android.cursor.item/nickname").withValue("data1", record.get(2)).withValue("data2", Integer.valueOf(1)).build();
_L2:
        if(j == 101)
            builder = builder.withValue("raw_contact_id", Integer.valueOf(i));
        if(true) goto _L4; else goto _L3
_L3:
    }

    private ContentProviderOperation getOperationFromNote(Record record, int i, int j)
    {
        android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        if(j != 100) goto _L2; else goto _L1
_L1:
        builder = builder.withValueBackReference("raw_contact_id", i);
_L4:
        return builder.withValue("mimetype", "vnd.android.cursor.item/note").withValue("data1", record.get(2)).build();
_L2:
        if(j == 101)
            builder = builder.withValue("raw_contact_id", Integer.valueOf(i));
        if(true) goto _L4; else goto _L3
_L3:
    }

    private ContentProviderOperation getOperationFromORG(Record record, Record record1, int i, int j)
    {
        int k = 0;
        if(record != null || record1 != null) goto _L2; else goto _L1
_L1:
        ContentProviderOperation contentprovideroperation = null;
_L7:
        return contentprovideroperation;
_L2:
        android.content.ContentProviderOperation.Builder builder1;
        android.content.ContentProviderOperation.Builder builder2;
        android.content.ContentProviderOperation.Builder builder3;
        String as[];
        int l;
        int i1;
        int j1;
        android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        String s;
        android.content.ContentProviderOperation.Builder builder4;
        if(j == 100)
            builder = builder.withValueBackReference("raw_contact_id", i);
        else
        if(j == 101)
            builder = builder.withValue("raw_contact_id", Integer.valueOf(i));
        builder1 = builder.withValue("mimetype", "vnd.android.cursor.item/organization");
        if(record == null)
            break MISSING_BLOCK_LABEL_312;
        s = record.get(1);
        if(s == null) goto _L4; else goto _L3
_L3:
        as = s.split(";");
        l = k;
        i1 = k;
        j1 = k;
_L8:
        if(i1 == 0 && l < as.length) goto _L6; else goto _L5
_L5:
        if(j1 == 0)
        {
            builder4 = builder1.withValue("data3", s);
            k = j1;
            builder3 = builder4;
        } else
        {
            k = j1;
            builder3 = builder1;
        }
_L9:
        builder2 = builder3.withValue("data2", Integer.valueOf(k)).withValue("data1", record.get(2));
_L10:
        if(record1 != null)
            builder2 = builder2.withValue("data4", record1.get(2));
        contentprovideroperation = builder2.build();
          goto _L7
_L6:
        int k1;
        int l1;
        boolean flag;
        if(as[l].equals("WORK"))
        {
            k1 = 1;
            l1 = 1;
        } else
        if(as[l].equals("OTHER") || as[l].equals(""))
        {
            k1 = 1;
            l1 = 2;
        } else
        {
            l1 = j1;
            k1 = k;
        }
        l++;
        flag = k1;
        j1 = l1;
        i1 = ((flag) ? 1 : 0);
          goto _L8
_L4:
        builder3 = builder1;
          goto _L9
        builder2 = builder1;
          goto _L10
    }

    private ContentProviderOperation getOperationFromPhone(Record record, int i, int j)
    {
        android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        android.content.ContentProviderOperation.Builder builder1;
        String s;
        int k;
        android.content.ContentProviderOperation.Builder builder2;
        android.content.ContentProviderOperation.Builder builder3;
        if(j == 100)
            builder = builder.withValueBackReference("raw_contact_id", i);
        else
        if(j == 101)
            builder = builder.withValue("raw_contact_id", Integer.valueOf(i));
        builder1 = builder.withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", record.get(2));
        s = record.get(1);
        k = getPhoneTypeFromLabel(s);
        builder2 = builder1.withValue("data2", Integer.valueOf(k));
        if(record.isPref())
            builder3 = builder2.withValue("is_primary", Integer.valueOf(1)).withValue("is_super_primary", Integer.valueOf(1));
        else
            builder3 = builder2.withValue("is_primary", Integer.valueOf(0)).withValue("is_super_primary", Integer.valueOf(0));
        if(k == 0)
            builder3 = builder3.withValue("data3", s);
        return builder3.build();
    }

    private ContentProviderOperation getOperationFromPhoto(Record record, int i, int j)
    {
        android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        if(j != 100) goto _L2; else goto _L1
_L1:
        builder = builder.withValueBackReference("raw_contact_id", i);
_L4:
        return builder.withValue("mimetype", "vnd.android.cursor.item/photo").withValue("data15", record.getBinaryData()).build();
_L2:
        if(j == 101)
            builder = builder.withValue("raw_contact_id", Integer.valueOf(i));
        if(true) goto _L4; else goto _L3
_L3:
    }

    private android.content.ContentProviderOperation.Builder getOperationFromQQ_ForHuaweiU8550(int i, int j, String s)
    {
        android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        if(i != 100) goto _L2; else goto _L1
_L1:
        builder = builder.withValueBackReference("raw_contact_id", j);
_L4:
        return builder.withValue("mimetype", "vnd.android.cursor.item/qqnumber").withValue("data8", s);
_L2:
        if(i == 101)
            builder = builder.withValue("raw_contact_id", Integer.valueOf(j));
        if(true) goto _L4; else goto _L3
_L3:
    }

    private ContentProviderOperation getOperationFromWebsite(Record record, int i, int j)
    {
        android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        if(j != 100) goto _L2; else goto _L1
_L1:
        builder = builder.withValueBackReference("raw_contact_id", i);
_L4:
        return builder.withValue("mimetype", "vnd.android.cursor.item/website").withValue("data1", record.get(2)).withValue("data2", Integer.valueOf(4)).build();
_L2:
        if(j == 101)
            builder = builder.withValue("raw_contact_id", Integer.valueOf(i));
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void getOrganization(Cursor cursor1, SYSContact syscontact)
    {
        String s = null;
        Record record;
        int i;
        record = new Record();
        record.put(0, "ORG");
        i = cursor1.getInt(cursor1.getColumnIndex("data2"));
        if(i != 1) goto _L2; else goto _L1
_L1:
        s = "WORK";
_L5:
        record.put(1, s);
        record.put(2, cursor1.getString(cursor1.getColumnIndex("data1")));
        syscontact.putValue(record);
        int j = cursor1.getColumnIndex("data4");
        if(!cursor1.isNull(j))
        {
            String s2 = cursor1.getString(j);
            Record record1 = new Record();
            record1.put(0, "TITLE");
            record1.put(2, s2);
            syscontact.putValue(record1);
        }
          goto _L3
_L7:
        if(i != 0) goto _L5; else goto _L4
_L4:
        String s1 = cursor1.getString(cursor1.getColumnIndex("data3"));
        s = s1;
          goto _L5
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getEmail Throwable ")).append(throwable.getMessage()).toString());
_L3:
        return;
_L2:
        if(i != 2) goto _L7; else goto _L6
_L6:
        s = "OTHER";
          goto _L5
    }

    private void getPhone(Cursor cursor1, SYSContact syscontact)
    {
        boolean flag;
        String s;
        flag = false;
        s = null;
        Record record;
        int k;
        record = new Record();
        record.put(0, "TEL");
        int i = cursor1.getColumnIndex("data2");
        int j = cursor1.getColumnIndex("is_primary");
        k = cursor1.getInt(i);
        if(cursor1.getInt(j) == 1)
            flag = true;
          goto _L1
_L4:
        record.put(1, s);
        if(flag)
            record.setPref(true);
        record.put(2, cursor1.getString(cursor1.getColumnIndex("data1")));
        syscontact.putValue(record);
          goto _L2
_L6:
        if(k != 0) goto _L4; else goto _L3
_L3:
        String s1 = cursor1.getString(cursor1.getColumnIndex("data3"));
        s = s1;
          goto _L4
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getEmail Throwable ")).append(throwable.getMessage()).toString());
          goto _L2
_L1:
        if(k == 3)
            s = "WORK";
        else
        if(k == 17)
            s = "CELL;WORK";
        else
        if(k == 18)
            s = "PAGER;WORK";
        else
        if(k == 19)
            s = "X-ASSISTANT";
        else
        if(k == 8)
            s = "X-CALLBACK";
        else
        if(k == 9)
            s = "CAR";
        else
        if(k == 10)
            s = "X-COMPANY";
        else
        if(k == 5)
            s = "FAX;HOME";
        else
        if(k == 4)
            s = "FAX;WORK";
        else
        if(k == 1)
            s = "HOME";
        else
        if(k == 11)
            s = "X-ISDN";
        else
        if(k == 12)
            s = "X-MAIN";
        else
        if(k == 2)
            s = "CELL";
        else
        if(k == 7)
            s = "OTHER";
        else
        if(k == 13)
            s = "FAX";
        else
        if(k == 6)
            s = "PAGER";
        else
        if(k == 14)
            s = "RADIO";
        else
        if(k == 15)
        {
            s = "X-NETMEETING";
        } else
        {
            if(k != 16)
                continue; /* Loop/switch isn't completed */
            s = "X-TTY";
        }
          goto _L4
_L2:
        return;
        if(k != 20) goto _L6; else goto _L5
_L5:
        s = "X-MMS";
          goto _L4
    }

    private void getPhoto(Cursor cursor1, SYSContact syscontact)
    {
        int i = cursor1.getColumnIndex("data15");
        if(!cursor1.isNull(i))
        {
            byte abyte0[] = cursor1.getBlob(i);
            if(abyte0 != null)
            {
                Record record = new Record();
                record.put(0, "PHOTO");
                record.putBinaryData(abyte0);
                syscontact.putValue(record);
            }
        }
_L1:
        return;
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getEmail Throwable ")).append(throwable.getMessage()).toString());
          goto _L1
    }

    private void getPostalAddress(Cursor cursor1, SYSContact syscontact)
    {
        String s;
        QQPimUtils.writeToLog("SYSContactDaoV2", "getPostalAddress enter");
        s = null;
        Record record;
        int l1;
        Address address = new Address();
        int i = cursor1.getColumnIndex("data5");
        if(!cursor1.isNull(i))
            address.POBOX = cursor1.getString(i);
        int j = cursor1.getColumnIndex("data6");
        if(!cursor1.isNull(j))
            address.NEIGHBORHOOD = cursor1.getString(j);
        int k = cursor1.getColumnIndex("data4");
        if(!cursor1.isNull(k))
            address.STREET = cursor1.getString(k);
        int l = cursor1.getColumnIndex("data7");
        if(!cursor1.isNull(l))
            address.CITY = cursor1.getString(l);
        int i1 = cursor1.getColumnIndex("data8");
        if(!cursor1.isNull(i1))
            address.REGION = cursor1.getString(i1);
        int j1 = cursor1.getColumnIndex("data9");
        if(!cursor1.isNull(j1))
            address.POSTCODE = cursor1.getString(j1);
        int k1 = cursor1.getColumnIndex("data10");
        if(!cursor1.isNull(k1))
            address.COUNTRY = cursor1.getString(k1);
        record = new Record();
        record.put(0, "ADR");
        record.put(2, address.getStructedAddress());
        l1 = cursor1.getInt(cursor1.getColumnIndex("data2"));
        if(l1 != 1) goto _L2; else goto _L1
_L1:
        s = "HOME";
_L5:
        record.put(1, s);
        syscontact.putValue(record);
_L7:
        QQPimUtils.writeToLog("SYSContactDaoV2", "getPostalAddress leave");
        return;
_L2:
        if(l1 != 2) goto _L4; else goto _L3
_L3:
        s = "WORK";
          goto _L5
_L9:
        if(l1 != 0) goto _L5; else goto _L6
_L6:
        String s1 = cursor1.getString(cursor1.getColumnIndex("data3"));
        s = s1;
          goto _L5
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getPostalAddress Throwable ")).append(throwable.getMessage()).toString());
          goto _L7
_L4:
        if(l1 != 3) goto _L9; else goto _L8
_L8:
        s = "OTHER";
          goto _L5
    }

    private void getRelation(Cursor cursor1, SYSContact syscontact)
    {
    }

    private void getWebsite(Cursor cursor1, SYSContact syscontact)
    {
        Record record = new Record();
        record.put(0, "URL");
        record.put(2, cursor1.getString(cursor1.getColumnIndex("data1")));
        syscontact.putValue(record);
_L1:
        return;
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getWebsite Throwable ")).append(throwable.getMessage()).toString());
          goto _L1
    }

    private void handleOperationsFromCategory(ArrayList arraylist, Record record, int i, int j)
    {
        if(groupDao != null && arraylist != null && record != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Iterator iterator;
        String s = record.get(2);
        ArrayList arraylist1 = new ArrayList();
        interpretGroupNames(s, arraylist1);
        iterator = arraylist1.iterator();
_L5:
        String s1;
        while(iterator.hasNext()) 
        {
label0:
            {
                s1 = (String)iterator.next();
                int k = groupDao.getGroupIdByGroupName(s1);
                if(k == -1)
                    break label0;
                android.content.ContentProviderOperation.Builder builder1 = ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
                ContentProviderOperation contentprovideroperation1;
                if(j == 100)
                    builder1 = builder1.withValueBackReference("raw_contact_id", i);
                else
                if(j == 101)
                    builder1 = builder1.withValue("raw_contact_id", Integer.valueOf(i));
                contentprovideroperation1 = builder1.withValue("mimetype", "vnd.android.cursor.item/group_membership").withValue("data1", Integer.valueOf(k)).build();
                if(contentprovideroperation1 != null)
                    arraylist.add(contentprovideroperation1);
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
        long l = groupDao.addGroup(s1);
        if(-1L == l) goto _L1; else goto _L4
_L4:
        groupDao.readAllGroups();
        android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI).withYieldAllowed(true);
        ContentProviderOperation contentprovideroperation;
        if(j == 100)
            builder = builder.withValueBackReference("raw_contact_id", i);
        else
        if(j == 101)
            builder = builder.withValue("raw_contact_id", Integer.valueOf(i));
        contentprovideroperation = builder.withValue("mimetype", "vnd.android.cursor.item/group_membership").withValue("data1", Long.valueOf(l)).build();
        if(contentprovideroperation != null)
            arraylist.add(contentprovideroperation);
          goto _L5
    }

    private void handleOperationsFromCategoryFromGroupIds(ArrayList arraylist, List list, int i, int j)
    {
        if(groupDao != null && arraylist != null && list != null && list.size() != 0)
        {
            Iterator iterator = list.iterator();
            while(iterator.hasNext()) 
            {
                Integer integer = (Integer)iterator.next();
                android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI);
                ContentProviderOperation contentprovideroperation;
                if(j == 100)
                    builder = builder.withValueBackReference("raw_contact_id", i);
                else
                if(j == 101)
                    builder = builder.withValue("raw_contact_id", Integer.valueOf(i));
                contentprovideroperation = builder.withValue("mimetype", "vnd.android.cursor.item/group_membership").withValue("data1", integer).build();
                if(contentprovideroperation != null)
                    arraylist.add(contentprovideroperation);
            }
        }
    }

    private long[] insertBatchIds(ArrayList arraylist)
    {
        int i;
        long l;
        int j;
        long al[];
        ArrayList arraylist1;
        int k;
        i = 0;
        l = System.currentTimeMillis();
        j = arraylist.size();
        al = new long[j];
        arraylist1 = new ArrayList();
        k = i;
_L3:
        if(k < j) goto _L2; else goto _L1
_L1:
        ContentProviderResult acontentproviderresult[] = contentResolver.applyBatch("com.android.contacts", arraylist1);
_L5:
        long al1[];
        if(i < j)
            break MISSING_BLOCK_LABEL_296;
        long l1 = System.currentTimeMillis();
        (new StringBuilder("blank ")).append(String.valueOf(l1 - l)).toString();
        al1 = al;
_L4:
        return al1;
_L2:
        SYSContact syscontact = (SYSContact)arraylist.get(k);
        android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.RawContacts.CONTENT_URI).withValue("aggregation_mode", Integer.valueOf(3)).withYieldAllowed(true).withValue("dirty", "1");
        int i1;
        android.content.ContentProviderOperation.Builder builder1;
        if(syscontact != null)
        {
            syscontact.initData();
            boolean flag = syscontact.isStarred();
            String s;
            OperationApplicationException operationapplicationexception;
            RemoteException remoteexception;
            if(syscontact.getAccountName().length() > 0 && syscontact.getAccountType().length() > 0)
            {
                builder1 = builder.withValue("account_name", syscontact.getAccountName()).withValue("account_type", syscontact.getAccountType());
                i1 = ((flag) ? 1 : 0);
            } else
            {
                i1 = ((flag) ? 1 : 0);
                builder1 = builder;
            }
        } else
        {
            i1 = i;
            builder1 = builder;
        }
        if(i1 != 0)
            s = "1";
        else
            s = "0";
        arraylist1.add(builder1.withValue("starred", s).build());
        (new StringBuilder("ops.add i = ")).append(k).toString();
        k++;
          goto _L3
        remoteexception;
        remoteexception.toString();
        al1 = null;
          goto _L4
        operationapplicationexception;
        operationapplicationexception.toString();
        al1 = null;
          goto _L4
        al[i] = Long.valueOf(String.valueOf(ContentUris.parseId(acontentproviderresult[i].uri))).longValue();
        (new StringBuilder("ids = ")).append(al[i]).toString();
        i++;
          goto _L5
    }

    private QueryAccount queryStaredById(String s)
    {
        QQPimUtils.writeToLog("SYSContactDaoV2", "queryStaredById  enter");
        ContentResolver contentresolver = contentResolver;
        Uri uri = android.provider.ContactsContract.RawContacts.CONTENT_URI;
        String as[] = new String[4];
        as[0] = "starred";
        as[1] = "account_name";
        as[2] = "account_type";
        as[3] = "custom_ringtone";
        String as1[] = new String[1];
        as1[0] = s;
        cursor = contentresolver.query(uri, as, "_id=?", as1, null);
        if(cursor == null || !cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        QueryAccount queryaccount;
        int i = cursor.getInt(0);
        String s1 = cursor.getString(1);
        String s2 = cursor.getString(2);
        String s3 = cursor.getString(3);
        queryaccount = new QueryAccount();
        queryaccount.starred = i;
        queryaccount.name = s1;
        queryaccount.type = s2;
        queryaccount.ringtone = s3;
        closeCursor();
        QQPimUtils.writeToLog("SYSContactDaoV2", "queryStaredById leave");
_L3:
        return queryaccount;
_L2:
        closeCursor();
        QQPimUtils.writeToLog("SYSContactDaoV2", "queryStaredById leave");
        queryaccount = null;
          goto _L3
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("queryStaredById Throwable ")).append(throwable.getMessage()).toString());
        closeCursor();
        QQPimUtils.writeToLog("SYSContactDaoV2", "queryStaredById leave");
        queryaccount = null;
          goto _L3
        Exception exception;
        exception;
        closeCursor();
        QQPimUtils.writeToLog("SYSContactDaoV2", "queryStaredById leave");
        throw exception;
    }

    public String add(IEntity ientity)
    {
        String s;
        s = null;
        QQPimUtils.writeToLog("SYSContactDaoV2", "add  enter");
        if(ientity != null) goto _L2; else goto _L1
_L1:
        QQPimUtils.writeToLog("SYSContactDaoV2", "add  leave entity = null");
_L7:
        return s;
_L2:
        ArrayList arraylist;
        AtomicBoolean atomicboolean;
        QueryAccount queryaccount;
        arraylist = new ArrayList();
        atomicboolean = new AtomicBoolean();
        queryaccount = new QueryAccount();
        getOperationFromEntity(ientity, arraylist, 100, atomicboolean, queryaccount);
        if(queryaccount.type != null && queryaccount.type.length() != 0 && queryaccount.name != null && queryaccount.type.length() != 0) goto _L4; else goto _L3
_L3:
        android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(android.provider.ContactsContract.RawContacts.CONTENT_URI).withValue("dirty", "1");
        if(!atomicboolean.get()) goto _L6; else goto _L5
_L5:
        String s2 = "1";
_L8:
        arraylist.add(0, builder.withValue("starred", s2).withValue("custom_ringtone", queryaccount.ringtone).build());
_L11:
        String s3;
        ContentProviderResult acontentproviderresult[] = contentResolver.applyBatch("com.android.contacts", arraylist);
        if(acontentproviderresult == null)
            break MISSING_BLOCK_LABEL_420;
        s3 = String.valueOf(ContentUris.parseId(acontentproviderresult[0].uri));
        String s1 = s3;
_L12:
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("add  leave strEntityId = ")).append(s1).toString());
        s = s1;
          goto _L7
_L6:
        s2 = "0";
          goto _L8
_L4:
        android.content.ContentProviderOperation.Builder builder1 = ContentProviderOperation.newInsert(android.provider.ContactsContract.RawContacts.CONTENT_URI).withValue("dirty", "1");
        if(!atomicboolean.get()) goto _L10; else goto _L9
_L9:
        String s4 = "1";
_L13:
        arraylist.add(0, builder1.withValue("starred", s4).withValue("account_name", queryaccount.name).withValue("account_type", queryaccount.type).withValue("custom_ringtone", queryaccount.ringtone).build());
          goto _L11
        RemoteException remoteexception;
        remoteexception;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("add RemoteException ")).append(remoteexception.getMessage()).toString());
        s1 = s;
          goto _L12
_L10:
        s4 = "0";
          goto _L13
        OperationApplicationException operationapplicationexception;
        operationapplicationexception;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("add OperationApplicationException ")).append(operationapplicationexception.getMessage()).toString());
        s1 = s;
          goto _L12
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("add Throwable ")).append(throwable.getMessage()).toString());
        s1 = s;
          goto _L12
    }

    public boolean add(ArrayList arraylist, ArrayList arraylist1, int ai[])
    {
        int i;
        long al[];
        i = arraylist.size();
        al = insertBatchIds(arraylist);
        if(al != null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L7:
        return flag;
_L2:
        long l;
        ArrayList arraylist2;
        int j;
        l = System.currentTimeMillis();
        arraylist2 = new ArrayList();
        j = 0;
_L8:
        if(j < i) goto _L4; else goto _L3
_L3:
        contentResolver.applyBatch("com.android.contacts", arraylist2);
        int k;
        long l1 = System.currentTimeMillis();
        (new StringBuilder("detail ")).append(String.valueOf(l1 - l)).toString();
        k = 0;
_L9:
        if(k < i) goto _L6; else goto _L5
_L5:
        flag = true;
          goto _L7
_L4:
        String s = String.valueOf(al[j]);
        AtomicBoolean atomicboolean = new AtomicBoolean();
        SYSContact syscontact = (SYSContact)arraylist.get(j);
        arraylist1.add(j, s);
        if(syscontact == null)
        {
            ai[j] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID.toInt();
        } else
        {
            syscontact.setId(s);
            QueryAccount queryaccount = new QueryAccount();
            getOperationFromEntity((IEntity)arraylist.get(j), arraylist2, 101, atomicboolean, queryaccount);
        }
        j++;
          goto _L8
        RemoteException remoteexception;
        remoteexception;
        remoteexception.toString();
        flag = false;
          goto _L7
        OperationApplicationException operationapplicationexception;
        operationapplicationexception;
        operationapplicationexception.toString();
        flag = false;
          goto _L7
_L6:
        boolean flag1;
        String s1;
        flag1 = true;
        s1 = "-1";
        String s2 = String.valueOf(al[k]);
        s1 = s2;
_L10:
        Exception exception;
        if(flag1)
        {
            if(com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID.toInt() != ai[k])
                ai[k] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE.toInt();
        } else
        {
            ai[k] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
        }
        try
        {
            arraylist1.add(k, s1);
        }
        catch(IndexOutOfBoundsException indexoutofboundsexception)
        {
            ai[k] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
        }
        k++;
          goto _L9
        exception;
        flag1 = false;
          goto _L10
    }

    public com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue delete(String s)
    {
        QQPimUtils.writeToLog("SYSContactDaoV2", "delete enter");
        if(s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
_L4:
        return enum_idaoreturnvalue;
_L2:
        try
        {
            ContentResolver contentresolver = contentResolver;
            Uri uri = android.provider.ContactsContract.RawContacts.CONTENT_URI;
            String as[] = new String[1];
            as[0] = s;
            if(contentresolver.delete(uri, "_id=?", as) <= 0)
            {
                enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
                continue; /* Loop/switch isn't completed */
            }
        }
        catch(Throwable throwable)
        {
            QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("delete Throwable ")).append(throwable.getMessage()).toString());
            enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_FAILED;
            continue; /* Loop/switch isn't completed */
        }
        QQPimUtils.writeToLog("SYSContactDaoV2", "delete leave");
        enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public List getAllEntityId(String as[])
    {
        ArrayList arraylist = new ArrayList();
        if(!IssueSettings.simContactsCanNotUploadToNetForZTE) goto _L2; else goto _L1
_L1:
        ContentResolver contentresolver1 = contentResolver;
        Uri uri1 = android.provider.ContactsContract.RawContacts.CONTENT_URI;
        String as3[] = new String[2];
        as3[0] = "_id";
        as3[1] = "mode_id";
        String as4[] = new String[1];
        as4[0] = String.valueOf(0);
        cursor = contentresolver1.query(uri1, as3, "deleted=?", as4, null);
        if(cursor == null || !cursor.moveToFirst()) goto _L4; else goto _L3
_L3:
        boolean flag = cursor.isAfterLast();
        if(!flag) goto _L5; else goto _L4
_L4:
        closeCursor();
_L6:
        return arraylist;
_L5:
        if(cursor.getInt(1) != 1)
            arraylist.add(cursor.getString(0));
        cursor.moveToNext();
          goto _L3
        Throwable throwable1;
        throwable1;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getAllEntityId Throwable ")).append(throwable1.getMessage()).toString());
        closeCursor();
          goto _L6
        Exception exception1;
        exception1;
        closeCursor();
        throw exception1;
_L2:
        ContentResolver contentresolver = contentResolver;
        Uri uri = android.provider.ContactsContract.RawContacts.CONTENT_URI;
        String as1[] = new String[3];
        as1[0] = "_id";
        as1[1] = "account_type";
        as1[2] = "account_name";
        String as2[] = new String[1];
        as2[0] = String.valueOf(0);
        cursor = contentresolver.query(uri, as1, "deleted=?", as2, null);
        if(cursor == null || !cursor.moveToFirst()) goto _L8; else goto _L7
_L7:
        if(!cursor.isAfterLast()) goto _L9; else goto _L8
_L8:
        groupDao.readAllGroups();
        closeCursor();
          goto _L6
_L9:
        String s = cursor.getString(2);
        if(!IssueSettings.simContactsCanNotUploadToNet) goto _L11; else goto _L10
_L10:
        if(s == null || !s.toLowerCase().equals("sim") && !IssueSettings.isContainedAccountName(s.toLowerCase()))
            arraylist.add(cursor.getString(0));
_L14:
        cursor.moveToNext();
          goto _L7
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getAllEntityId Throwable ")).append(throwable.getMessage()).toString());
        closeCursor();
          goto _L6
_L11:
        if(s == null) goto _L13; else goto _L12
_L12:
        if(s.toLowerCase().equals("sim")) goto _L14; else goto _L13
_L13:
        arraylist.add(cursor.getString(0));
          goto _L14
        Exception exception;
        exception;
        closeCursor();
        throw exception;
          goto _L3
    }

    public void getGroupsMap(HashMap hashmap)
    {
        if(hashmap != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        hashmap.clear();
        try
        {
            ContentResolver contentresolver = contentResolver;
            Uri uri = android.provider.ContactsContract.Groups.CONTENT_URI;
            String as[] = new String[2];
            as[0] = "_id";
            as[1] = "title";
            Cursor cursor1 = contentresolver.query(uri, as, null, null, null);
            if(cursor1 != null)
            {
                if(cursor1.moveToFirst())
                    do
                    {
                        int i = cursor1.getInt(0);
                        String s = cursor1.getString(1);
                        hashmap.put(Integer.valueOf(i), s);
                    } while(cursor1.moveToNext());
                cursor1.close();
            }
        }
        catch(Exception exception) { }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void getOperationFromEntity(IEntity ientity, ArrayList arraylist, int i, AtomicBoolean atomicboolean, QueryAccount queryaccount)
    {
        QQPimUtils.writeToLog("SYSContactDaoV2", "getOperationFromEntity enter");
        if(ientity != null && arraylist != null && i >= 100 && i <= 101) goto _L2; else goto _L1
_L1:
        QQPimUtils.writeToLog("SYSContactDaoV2", "getOperationFromEntity leave  \u53C2\u6570\u4E0D\u5408\u6CD5 ");
_L11:
        return;
_L2:
        ArrayList arraylist1;
        ArrayList arraylist2;
        int j;
        Record record;
        Record record1;
        arraylist1 = new ArrayList();
        arraylist2 = new ArrayList();
        j = Integer.valueOf(ientity.getId()).intValue();
        ientity.moveToFirst();
        record = null;
        record1 = null;
_L13:
        if(!ientity.isAfterLast()) goto _L4; else goto _L3
_L3:
        if(ientity.isEditGroupNumberData())
        {
            (new StringBuilder("entity.isEditGroupNumberData()")).append(ientity.getGroupIds().size()).toString();
            handleOperationsFromCategoryFromGroupIds(arraylist, ientity.getGroupIds(), j, i);
        }
          goto _L5
_L45:
        ContentProviderOperation contentprovideroperation1 = getOperationFromName(record1, record, j, i);
        if(contentprovideroperation1 != null)
            arraylist.add(contentprovideroperation1);
_L46:
        if(arraylist1.size() <= 0 && arraylist2.size() <= 0) goto _L7; else goto _L6
_L6:
        if(arraylist1.size() <= arraylist2.size()) goto _L9; else goto _L8
_L8:
        int i1 = arraylist1.size();
        int k = i1;
_L37:
        int l = 0;
_L42:
        if(l < k) goto _L10; else goto _L7
_L7:
        QQPimUtils.writeToLog("SYSContactDaoV2", "getOperationFromEntity enter");
          goto _L11
_L4:
        Record record2;
        record2 = ientity.getCurrentValue();
        ientity.moveToNext();
        if(record2 == null) goto _L13; else goto _L12
_L12:
        String s = record2.get(0);
        if(!s.equals("FN")) goto _L15; else goto _L14
_L14:
        ContentProviderOperation contentprovideroperation;
        record1 = record2;
        contentprovideroperation = null;
_L16:
        if(contentprovideroperation != null)
            arraylist.add(contentprovideroperation);
          goto _L13
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("getOperationFromEntity  Throwable ")).append(throwable.getMessage()).toString());
          goto _L7
_L15:
        if(s.equals("N"))
        {
            record = record2;
            contentprovideroperation = null;
        } else
        if(s.equals("TEL"))
            contentprovideroperation = getOperationFromPhone(record2, j, i);
        else
        if(s.equals("ADR"))
            contentprovideroperation = getOperationFromAddress(record2, j, i);
        else
        if(s.equals("EMAIL"))
            contentprovideroperation = getOperationFromEmail(record2, j, i);
        else
        if(s.equals("NICKNAME"))
            contentprovideroperation = getOperationFromNickname(record2, j, i);
        else
        if(s.equals("NOTE"))
            contentprovideroperation = getOperationFromNote(record2, j, i);
        else
        if(s.equals("ORG"))
        {
            arraylist1.add(record2);
            contentprovideroperation = null;
        } else
        {
            if(!s.equals("TITLE"))
                break MISSING_BLOCK_LABEL_528;
            arraylist2.add(record2);
            contentprovideroperation = null;
        }
          goto _L16
        if(!s.equals("PHOTO")) goto _L18; else goto _L17
_L17:
        if(IssueSettings.photoDownloadTophoneFatalError) goto _L20; else goto _L19
_L19:
        contentprovideroperation = getOperationFromPhoto(record2, j, i);
          goto _L16
_L18:
        if(!s.equals("URL")) goto _L22; else goto _L21
_L21:
        contentprovideroperation = getOperationFromWebsite(record2, j, i);
          goto _L16
_L22:
        if(!s.equals("X-TC-IM")) goto _L24; else goto _L23
_L23:
        contentprovideroperation = getOperationFromIM(record2, j, i);
          goto _L16
_L24:
        if(!s.equals("BDAY")) goto _L26; else goto _L25
_L25:
        contentprovideroperation = getOperationFromEvent(record2, j, i);
          goto _L16
_L26:
        if(!s.equals("X-FOCUS")) goto _L28; else goto _L27
_L27:
        boolean flag = record2.get(2).equals("1");
        if(atomicboolean == null) goto _L20; else goto _L29
_L29:
        atomicboolean.set(flag);
        contentprovideroperation = null;
          goto _L16
_L28:
        if(!s.equals("CATEGORIES")) goto _L31; else goto _L30
_L30:
        if(ientity.isEditGroupNumberData()) goto _L20; else goto _L32
_L32:
        handleOperationsFromCategory(arraylist, record2, j, i);
        contentprovideroperation = null;
          goto _L16
_L31:
        if(!s.equals("ACCOUNTNAME")) goto _L34; else goto _L33
_L33:
        queryaccount.name = record2.get(2);
        contentprovideroperation = null;
          goto _L16
_L34:
        if(!s.equals("ACCOUNTTYPE")) goto _L36; else goto _L35
_L35:
        queryaccount.type = record2.get(2);
        contentprovideroperation = null;
          goto _L16
_L36:
        if(s.equals("RINGTONE"))
            queryaccount.ringtone = record2.get(2);
          goto _L20
_L9:
        k = arraylist2.size();
          goto _L37
_L10:
        if(l >= arraylist1.size()) goto _L39; else goto _L38
_L38:
        Record record3 = (Record)arraylist1.get(l);
_L43:
        if(l >= arraylist2.size()) goto _L41; else goto _L40
_L40:
        Record record4 = (Record)arraylist2.get(l);
_L44:
        ContentProviderOperation contentprovideroperation2 = getOperationFromORG(record3, record4, j, i);
        if(contentprovideroperation2 != null)
            arraylist.add(contentprovideroperation2);
        l++;
          goto _L42
_L39:
        record3 = null;
          goto _L43
_L41:
        record4 = null;
          goto _L44
_L5:
        if(record1 == null && record == null) goto _L46; else goto _L45
_L20:
        contentprovideroperation = null;
          goto _L16
    }

    public int getPhoneTypeFromLabel(String s)
    {
        byte byte0;
        byte byte1;
        byte byte2;
        byte0 = 7;
        byte1 = 1;
        byte2 = 0;
        if(s.length() != 0) goto _L2; else goto _L1
_L1:
        return byte0;
_L2:
        String as[];
        int i;
        byte byte3;
        byte byte4;
        byte byte5;
        byte byte6;
        byte byte7;
        byte byte8;
        as = s.split(";");
        i = byte2;
        byte3 = byte2;
        byte4 = byte2;
        byte5 = byte2;
        byte6 = byte2;
        byte7 = byte2;
        byte8 = byte2;
_L8:
        if(i < as.length) goto _L4; else goto _L3
_L3:
        if(byte8 == 0) goto _L6; else goto _L5
_L5:
        if(byte4 != 0)
            byte1 = 5;
          goto _L7
_L4:
        boolean flag;
        if(as[i].equals("HOME"))
        {
            byte8 = byte1;
            break MISSING_BLOCK_LABEL_544;
        }
        if(as[i].equals("WORK"))
        {
            byte7 = byte1;
            break MISSING_BLOCK_LABEL_544;
        }
        if(as[i].equals("CELL"))
        {
            byte6 = byte1;
            break MISSING_BLOCK_LABEL_544;
        }
        if(as[i].equals("FAX"))
        {
            byte4 = byte1;
            break MISSING_BLOCK_LABEL_544;
        }
        if(as[i].equals("PAGER"))
        {
            byte5 = byte1;
            break MISSING_BLOCK_LABEL_544;
        }
        if(as[i].equals("OTHER"))
        {
            byte3 = byte1;
            break MISSING_BLOCK_LABEL_544;
        }
        if(as[i].equals("X-CALLBACK"))
        {
            byte2 = 8;
            break MISSING_BLOCK_LABEL_544;
        }
        if(as[i].equals("CAR"))
        {
            byte2 = 9;
            break MISSING_BLOCK_LABEL_544;
        }
        if(as[i].equals("X-COMPANY"))
        {
            byte2 = 10;
            break MISSING_BLOCK_LABEL_544;
        }
        if(as[i].equals("X-ISDN"))
        {
            byte2 = 11;
            break MISSING_BLOCK_LABEL_544;
        }
        if(as[i].equals("X-MAIN"))
        {
            byte2 = 12;
            break MISSING_BLOCK_LABEL_544;
        }
        if(as[i].equals("RADIO"))
        {
            byte2 = 14;
            break MISSING_BLOCK_LABEL_544;
        }
        if(as[i].equals("X-TELEX"))
        {
            byte2 = 15;
            break MISSING_BLOCK_LABEL_544;
        }
        if(as[i].equals("X-TTY"))
        {
            byte2 = 16;
            break MISSING_BLOCK_LABEL_544;
        }
        if(as[i].equals("X-ASSISTANT"))
        {
            byte2 = 19;
            break MISSING_BLOCK_LABEL_544;
        }
        flag = as[i].equals("X-MMS");
        if(flag)
            byte2 = 20;
        break MISSING_BLOCK_LABEL_544;
_L6:
        Throwable throwable;
        if(byte7 != 0)
        {
            if(byte4 != 0)
                byte1 = 4;
            else
            if(byte5 != 0)
                byte1 = 18;
            else
            if(byte6 != 0)
                byte1 = 17;
            else
                byte1 = 3;
        } else
        if(byte6 != 0)
            byte1 = 2;
        else
        if(byte5 != 0)
            byte1 = 6;
        else
        if(byte3 != 0)
        {
            if(byte4 != 0)
                byte1 = 13;
            else
                byte1 = byte0;
        } else
        if(byte4 != 0)
            byte1 = 13;
        else
            byte1 = byte2;
          goto _L7
        throwable;
        byte1 = byte2;
        QQPimUtils.writeToLog("", (new StringBuilder("getPhoneTypeFromLabel Throwable ")).append(throwable.getMessage()).toString());
_L7:
        byte0 = byte1;
          goto _L1
        i++;
          goto _L8
    }

    public boolean isExisted(String s)
    {
        ContentResolver contentresolver = contentResolver;
        Uri uri = android.provider.ContactsContract.RawContacts.CONTENT_URI;
        String as[] = new String[1];
        as[0] = "_id";
        String as1[] = new String[2];
        as1[0] = s;
        as1[1] = String.valueOf(0);
        cursor = contentresolver.query(uri, as, "_id=? and deleted=?", as1, null);
        if(cursor == null) goto _L2; else goto _L1
_L1:
        int i = cursor.getCount();
        if(i <= 0) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L7:
        closeCursor();
_L5:
        return flag;
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("isExisted Throwable ")).append(throwable.getMessage()).toString());
        closeCursor();
        flag = false;
        if(true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        closeCursor();
        throw exception;
_L2:
        flag = false;
        if(true) goto _L7; else goto _L6
_L6:
    }

    public String lookupFirstContactIDByPhone(String s)
    {
        String s2 = QQPimUtils.getReversePhone(s);
        String as[] = new String[1];
        as[0] = "raw_contact_id";
        String as1[] = new String[2];
        as1[0] = s;
        as1[1] = s2;
        cursor = contentResolver.query(android.provider.ContactsContract.Data.CONTENT_URI, as, "data1=? or data4=?", as1, null);
        if(cursor == null || cursor.getCount() <= 0)
            break MISSING_BLOCK_LABEL_173;
_L4:
        boolean flag = cursor.moveToNext();
        if(flag) goto _L2; else goto _L1
_L1:
        String s1 = null;
_L3:
        closeCursor();
_L5:
        return s1;
_L2:
        boolean flag1;
        s1 = cursor.getString(0);
        flag1 = isExisted(s1);
        if(!flag1) goto _L4; else goto _L3
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("lookupFirstContactIdByPhone Throwable ")).append(throwable.getMessage()).toString());
        closeCursor();
        s1 = null;
          goto _L5
        Exception exception;
        exception;
        closeCursor();
        throw exception;
        s1 = null;
          goto _L3
    }

    public String lookupFirstContactNameByPhone(String s)
    {
        String s1 = null;
        if(!IssueSettings.anonymousDraftAfterBackupDisplayErrorName || s != null) goto _L2; else goto _L1
_L1:
        return s1;
_L2:
        String s3;
        Uri uri = Uri.withAppendedPath(android.provider.ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(s));
        String as[] = new String[1];
        as[0] = "display_name";
        cursor = contentResolver.query(uri, as, null, null, null);
        if(cursor == null || !cursor.moveToFirst())
            break MISSING_BLOCK_LABEL_146;
        s3 = cursor.getString(0);
        String s2 = s3;
_L4:
        closeCursor();
_L3:
        s1 = s2;
          goto _L1
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("lookupFirstContactNameByPhone  Throwable ")).append(throwable.getMessage()).toString());
        closeCursor();
        s2 = s1;
          goto _L3
        Exception exception;
        exception;
        closeCursor();
        throw exception;
        s2 = s1;
          goto _L4
    }

    public IEntity query(String s)
    {
        StringBuffer stringbuffer;
        QueryAccount queryaccount;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("query  enter strEntityId = ")).append(s).toString());
        stringbuffer = new StringBuffer();
        queryaccount = queryStaredById(s);
        if(queryaccount != null && queryaccount.starred >= 0) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L10:
        return ((IEntity) (obj));
_L2:
        SYSContact syscontact;
        ArrayList arraylist;
        syscontact = new SYSContact();
        arraylist = new ArrayList();
        String as[] = new String[25];
        as[0] = "_id";
        as[1] = "mimetype";
        as[2] = "raw_contact_id";
        as[3] = "is_primary";
        as[4] = "is_super_primary";
        as[5] = "data_version";
        as[6] = "data1";
        as[7] = "data2";
        as[8] = "data3";
        as[9] = "data4";
        as[10] = "data5";
        as[11] = "data6";
        as[12] = "data7";
        as[13] = "data8";
        as[14] = "data9";
        as[15] = "data10";
        as[16] = "data11";
        as[17] = "data12";
        as[18] = "data13";
        as[19] = "data14";
        as[20] = "data15";
        as[21] = "data_sync1";
        as[22] = "data_sync2";
        as[23] = "data_sync3";
        as[24] = "data_sync4";
        ContentResolver contentresolver = contentResolver;
        Uri uri = android.provider.ContactsContract.Data.CONTENT_URI;
        String as1[] = new String[1];
        as1[0] = s;
        cursor = contentresolver.query(uri, as, "raw_contact_id=?", as1, null);
        if(cursor == null || !cursor.moveToNext())
            break MISSING_BLOCK_LABEL_1058;
_L6:
        String s3 = cursor.getString(cursor.getColumnIndex("mimetype"));
        if(!s3.equals("vnd.android.cursor.item/email_v2")) goto _L4; else goto _L3
_L3:
        getEmail(cursor, syscontact);
_L7:
        boolean flag;
        cursor.moveToNext();
        flag = cursor.isAfterLast();
        if(!flag) goto _L6; else goto _L5
_L5:
        closeCursor();
_L8:
        Record record = new Record();
        record.put(0, "X-FOCUS");
        Exception exception;
        Throwable throwable;
        String s1;
        Record record2;
        Record record3;
        Record record4;
        int i;
        if(queryaccount.starred > 0)
            s1 = "1";
        else
            s1 = "0";
        record.put(2, s1);
        syscontact.putValue(record);
        if(stringbuffer.length() > 0)
        {
            Record record1 = new Record();
            record1.put(0, "CATEGORIES");
            String s2 = stringbuffer.toString();
            record1.put(2, s2);
            syscontact.putValue(record1);
            QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("query CATEGORY:  ")).append(s2).toString());
        }
        record2 = new Record();
        record2.put(0, "ACCOUNTNAME");
        record2.put(2, queryaccount.name);
        syscontact.putValue(record2);
        record3 = new Record();
        record3.put(0, "ACCOUNTTYPE");
        record3.put(2, queryaccount.type);
        syscontact.putValue(record3);
        record4 = new Record();
        record4.put(0, "RINGTONE");
        record4.put(2, queryaccount.ringtone);
        syscontact.putValue(record4);
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("query  leave entity.getCount = ")).append(syscontact.getCount()).toString());
        if(arraylist.size() > 0)
            syscontact.setGroupIds(arraylist);
        obj = syscontact;
        continue; /* Loop/switch isn't completed */
_L4:
        if(!s3.equals("vnd.android.cursor.item/contact_event"))
            break MISSING_BLOCK_LABEL_725;
        getEvent(cursor, syscontact);
          goto _L7
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("query Throwable ")).append(throwable.getMessage()).toString());
        closeCursor();
          goto _L8
        if(!s3.equals("vnd.android.cursor.item/group_membership"))
            break MISSING_BLOCK_LABEL_779;
        i = getGroupMemberShip(cursor, stringbuffer);
        if(i != -1)
            arraylist.add(Integer.valueOf(i));
          goto _L7
        exception;
        closeCursor();
        throw exception;
        if(s3.equals("vnd.android.cursor.item/im"))
            getIM(cursor, syscontact);
        else
        if(s3.equals("vnd.android.cursor.item/nickname"))
            getNickName(cursor, syscontact);
        else
        if(s3.equals("vnd.android.cursor.item/note"))
            getNote(cursor, syscontact);
        else
        if(s3.equals("vnd.android.cursor.item/organization"))
            getOrganization(cursor, syscontact);
        else
        if(s3.equals("vnd.android.cursor.item/phone_v2"))
            getPhone(cursor, syscontact);
        else
        if(s3.equals("vnd.android.cursor.item/photo"))
        {
            if(!IssueSettings.photoDownloadTophoneFatalError)
                getPhoto(cursor, syscontact);
        } else
        if(s3.equals("vnd.android.cursor.item/relation"))
            getRelation(cursor, syscontact);
        else
        if(s3.equals("vnd.android.cursor.item/name"))
            getName(cursor, syscontact);
        else
        if(s3.equals("vnd.android.cursor.item/postal-address_v2"))
            getPostalAddress(cursor, syscontact);
        else
        if(s3.equals("vnd.android.cursor.item/website"))
            getWebsite(cursor, syscontact);
        else
        if(QQPimUtils.getPhoneType() == com.tencent.qqpim.utils.QQPimUtils.PHONETYPE.HUAWEI_U8500 && s3.equals("vnd.android.cursor.item/qqnumber"))
            getHuaweiU8550QQ(cursor, syscontact);
          goto _L7
        closeCursor();
        obj = null;
        if(true) goto _L10; else goto _L9
_L9:
    }

    public List query()
    {
        ArrayList arraylist = new ArrayList();
        List list = getAllEntityId(null);
        int i = list.size();
        int j = 0;
        do
        {
            if(j >= i)
                return arraylist;
            IEntity ientity = query((String)list.get(j));
            if(ientity != null)
                arraylist.add(ientity);
            j++;
        } while(true);
    }

    public String queryNameById(String s)
    {
        QQPimUtils.writeToLog("SYSContactDaoV2", "queryNameById  enter");
        ContentResolver contentresolver = contentResolver;
        Uri uri = android.provider.ContactsContract.Data.CONTENT_URI;
        String as[] = new String[1];
        as[0] = "data1";
        String as1[] = new String[1];
        as1[0] = s;
        cursor = contentresolver.query(uri, as, "raw_contact_id=? AND mimetype='vnd.android.cursor.item/name'", as1, null);
        if(cursor == null || !cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        String s2 = cursor.getString(0);
        String s1 = s2;
_L6:
        closeCursor();
_L4:
        QQPimUtils.writeToLog("SYSContactDaoV2", "queryNameById leave");
        return s1;
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("queryNameById Throwable ")).append(throwable.getMessage()).toString());
        closeCursor();
        s1 = null;
        if(true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        closeCursor();
        throw exception;
_L2:
        s1 = null;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public int queryNumber()
    {
        ContentResolver contentresolver = contentResolver;
        Uri uri = android.provider.ContactsContract.RawContacts.CONTENT_URI;
        String as[] = new String[1];
        as[0] = "_id";
        cursor = contentresolver.query(uri, as, "deleted = 0 AND (account_name is null or account_name <> 'SIM')", null, null);
        if(cursor == null) goto _L2; else goto _L1
_L1:
        int j = cursor.getCount();
        int i = j;
_L6:
        closeCursor();
_L4:
        return i;
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("queryNumber Throwable ")).append(throwable.getMessage()).toString());
        closeCursor();
        i = 0;
        if(true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        closeCursor();
        throw exception;
_L2:
        i = 0;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue update(IEntity ientity)
    {
        QQPimUtils.writeToLog("SYSContactDaoV2", "update enter");
        if(ientity != null && isExisted(ientity.getId())) goto _L2; else goto _L1
_L1:
        com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue enum_idaoreturnvalue;
        QQPimUtils.writeToLog("SYSContactDaoV2", "update leave ENUM_IDaoReturnValue.ENTITY_NOT_FOUND");
        enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
_L5:
        return enum_idaoreturnvalue;
_L2:
        com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue enum_idaoreturnvalue1;
        ArrayList arraylist;
        enum_idaoreturnvalue1 = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_FAILED;
        arraylist = new ArrayList();
        AtomicBoolean atomicboolean;
        QueryAccount queryaccount;
        android.content.ContentProviderOperation.Builder builder;
        atomicboolean = new AtomicBoolean();
        queryaccount = new QueryAccount();
        clearEntity(ientity);
        getOperationFromEntity(ientity, arraylist, 101, atomicboolean, queryaccount);
        builder = ContentProviderOperation.newUpdate(android.provider.ContactsContract.RawContacts.CONTENT_URI).withSelection((new StringBuilder("_id=")).append(ientity.getId()).toString(), null);
        if(!atomicboolean.get()) goto _L4; else goto _L3
_L3:
        String s = "1";
_L6:
        arraylist.add(builder.withValue("starred", s).withValue("account_name", queryaccount.name).withValue("account_type", queryaccount.type).withValue("custom_ringtone", queryaccount.ringtone).build());
        contentResolver.applyBatch("com.android.contacts", arraylist);
        enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED;
_L7:
        QQPimUtils.writeToLog("SYSContactDaoV2", "update leave ENUM_IDaoReturnValue.ACTION_SUCCEED");
          goto _L5
_L4:
        s = "0";
          goto _L6
        RemoteException remoteexception;
        remoteexception;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("update RemoteException ")).append(remoteexception.getMessage()).toString());
        enum_idaoreturnvalue = enum_idaoreturnvalue1;
          goto _L7
        OperationApplicationException operationapplicationexception;
        operationapplicationexception;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("update OperationApplicationException ")).append(operationapplicationexception.getMessage()).toString());
        enum_idaoreturnvalue = enum_idaoreturnvalue1;
          goto _L7
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYSContactDaoV2", (new StringBuilder("update Throwable ")).append(throwable.getMessage()).toString());
        enum_idaoreturnvalue = enum_idaoreturnvalue1;
          goto _L7
    }

    private final String ACCOUNT_NAME_SIM = "sim";
    public final int OPE_ADD = 100;
    public final int OPE_UPDATE = 101;
    private Cursor cursor;
    private SYSContactGroupDao groupDao;
    private final String strEmpty = "";

    private class Name
    {

        public String getStructedName()
        {
            StringBuilder stringbuilder = new StringBuilder();
            char ac[] = new char[4];
            ac[0] = '\\';
            ac[1] = ';';
            ac[2] = '\r';
            ac[3] = '\n';
            if(LASTNAME != null)
                stringbuilder = stringbuilder.append(QQPimUtils.escapeString(LASTNAME, ac));
            StringBuilder stringbuilder1 = stringbuilder.append(";");
            if(FIRSTNAME != null)
                stringbuilder1 = stringbuilder1.append(QQPimUtils.escapeString(FIRSTNAME, ac));
            StringBuilder stringbuilder2 = stringbuilder1.append(";");
            if(MIDDLENAME != null)
                stringbuilder2 = stringbuilder2.append(QQPimUtils.escapeString(MIDDLENAME, ac));
            StringBuilder stringbuilder3 = stringbuilder2.append(";");
            if(PREFIX != null)
                stringbuilder3 = stringbuilder3.append(QQPimUtils.escapeString(PREFIX, ac));
            StringBuilder stringbuilder4 = stringbuilder3.append(";");
            if(SUFFIX != null)
                stringbuilder4 = stringbuilder4.append(QQPimUtils.escapeString(SUFFIX, ac));
            return stringbuilder4.toString();
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            if(LASTNAME != null)
                stringbuilder = stringbuilder.append(LASTNAME);
            StringBuilder stringbuilder1 = stringbuilder.append(";");
            if(FIRSTNAME != null)
                stringbuilder1 = stringbuilder1.append(FIRSTNAME);
            StringBuilder stringbuilder2 = stringbuilder1.append(";");
            if(MIDDLENAME != null)
                stringbuilder2 = stringbuilder2.append(MIDDLENAME);
            StringBuilder stringbuilder3 = stringbuilder2.append(";");
            if(PREFIX != null)
                stringbuilder3 = stringbuilder3.append(PREFIX);
            StringBuilder stringbuilder4 = stringbuilder3.append(";");
            if(SUFFIX != null)
                stringbuilder4 = stringbuilder4.append(SUFFIX);
            return stringbuilder4.toString();
        }

        public String FIRSTNAME;
        public String LASTNAME;
        public String MIDDLENAME;
        public String PREFIX;
        public String SUFFIX;

        public Name()
        {
            LASTNAME = null;
            FIRSTNAME = null;
            MIDDLENAME = null;
            PREFIX = null;
            SUFFIX = null;
        }

        public Name(String s)
        {
            List list;
            LASTNAME = null;
            FIRSTNAME = null;
            MIDDLENAME = null;
            PREFIX = null;
            SUFFIX = null;
            char ac[] = new char[4];
            ac[0] = '\\';
            ac[1] = ';';
            ac[2] = 'r';
            ac[3] = 'n';
            list = QQPimUtils.divideStringToList(s, ac, ';');
            if(list != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            if(list.size() > 0)
                LASTNAME = (String)list.get(0);
            if(list.size() > 1)
                FIRSTNAME = (String)list.get(1);
            if(list.size() > 2)
                MIDDLENAME = (String)list.get(2);
            if(list.size() > 3)
                PREFIX = (String)list.get(3);
            if(list.size() > 4)
                SUFFIX = (String)list.get(4);
            if(true) goto _L1; else goto _L3
_L3:
        }
    }


    private class Address
    {

        public String getStructedAddress()
        {
            StringBuilder stringbuilder = new StringBuilder();
            char ac[] = new char[4];
            ac[0] = '\\';
            ac[1] = ';';
            ac[2] = '\r';
            ac[3] = '\n';
            if(POBOX != null)
                stringbuilder = stringbuilder.append(QQPimUtils.escapeString(POBOX, ac));
            StringBuilder stringbuilder1 = stringbuilder.append(";");
            if(NEIGHBORHOOD != null)
                stringbuilder1 = stringbuilder1.append(QQPimUtils.escapeString(NEIGHBORHOOD, ac));
            StringBuilder stringbuilder2 = stringbuilder1.append(";");
            if(STREET != null)
                stringbuilder2 = stringbuilder2.append(QQPimUtils.escapeString(STREET, ac));
            StringBuilder stringbuilder3 = stringbuilder2.append(";");
            if(CITY != null)
                stringbuilder3 = stringbuilder3.append(QQPimUtils.escapeString(CITY, ac));
            StringBuilder stringbuilder4 = stringbuilder3.append(";");
            if(REGION != null)
                stringbuilder4 = stringbuilder4.append(QQPimUtils.escapeString(REGION, ac));
            StringBuilder stringbuilder5 = stringbuilder4.append(";");
            if(POSTCODE != null)
                stringbuilder5 = stringbuilder5.append(QQPimUtils.escapeString(POSTCODE, ac));
            StringBuilder stringbuilder6 = stringbuilder5.append(";");
            if(COUNTRY != null)
                stringbuilder6 = stringbuilder6.append(QQPimUtils.escapeString(COUNTRY, ac));
            return stringbuilder6.toString();
        }

        public String toString()
        {
            if(FORMATTED_ADDRESS == null)
            {
                StringBuilder stringbuilder = new StringBuilder();
                if(POBOX != null)
                    stringbuilder = stringbuilder.append(POBOX);
                StringBuilder stringbuilder1 = stringbuilder.append(";");
                if(NEIGHBORHOOD != null)
                    stringbuilder1 = stringbuilder1.append(NEIGHBORHOOD);
                StringBuilder stringbuilder2 = stringbuilder1.append(";");
                if(STREET != null)
                    stringbuilder2 = stringbuilder2.append(STREET);
                StringBuilder stringbuilder3 = stringbuilder2.append(";");
                if(CITY != null)
                    stringbuilder3 = stringbuilder3.append(CITY);
                StringBuilder stringbuilder4 = stringbuilder3.append(";");
                if(REGION != null)
                    stringbuilder4 = stringbuilder4.append(REGION);
                StringBuilder stringbuilder5 = stringbuilder4.append(";");
                if(POSTCODE != null)
                    stringbuilder5 = stringbuilder5.append(POSTCODE);
                StringBuilder stringbuilder6 = stringbuilder5.append(";");
                if(COUNTRY != null)
                    stringbuilder6 = stringbuilder6.append(COUNTRY);
                FORMATTED_ADDRESS = stringbuilder6.toString();
            }
            return FORMATTED_ADDRESS;
        }

        public String CITY;
        public String COUNTRY;
        public String FORMATTED_ADDRESS;
        public String NEIGHBORHOOD;
        public String POBOX;
        public String POSTCODE;
        public String REGION;
        public String STREET;

        public Address()
        {
            FORMATTED_ADDRESS = null;
            STREET = null;
            POBOX = null;
            NEIGHBORHOOD = null;
            CITY = null;
            REGION = null;
            POSTCODE = null;
            COUNTRY = null;
        }

        public Address(String s)
        {
            FORMATTED_ADDRESS = null;
            STREET = null;
            POBOX = null;
            NEIGHBORHOOD = null;
            CITY = null;
            REGION = null;
            POSTCODE = null;
            COUNTRY = null;
            char ac[] = new char[4];
            ac[0] = '\\';
            ac[1] = ';';
            ac[2] = 'r';
            ac[3] = 'n';
            List list = QQPimUtils.divideStringToList(s, ac, ';');
            if(list != null)
            {
                if(list.size() > 0)
                    POBOX = (String)list.get(0);
                if(list.size() > 1)
                    NEIGHBORHOOD = (String)list.get(1);
                if(list.size() > 2)
                    STREET = (String)list.get(2);
                if(list.size() > 3)
                    CITY = (String)list.get(3);
                if(list.size() > 4)
                    REGION = (String)list.get(4);
                if(list.size() > 5)
                    POSTCODE = (String)list.get(5);
                if(list.size() > 6)
                    COUNTRY = (String)list.get(6);
                FORMATTED_ADDRESS = toString();
            }
        }
    }

}
