// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import com.tencent.qqpim.interfaces.IEntity;
import com.tencent.qqpim.issue.IssueSettings;
import com.tencent.qqpim.object.Record;
import com.tencent.qqpim.object.SYSSms;
import com.tencent.qqpim.utils.QQPimUtils;
import java.util.*;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.tencent.qqpim.dao:
//            SYSSmsDao, SYSContactDao

public class SYSSmsDaoV1 extends SYSSmsDao
{

    private SYSSmsDaoV1(Context context1)
    {
        super(context1);
        smsUri = null;
        idColumnIndex = -1;
        addressColumnIndex = -1;
        bodyColumnIndex = -1;
        typeColumnIndex = -1;
        protocolColumnIndex = -1;
        threadIdColumnIndex = -1;
        dateColumnIndex = -1;
        personColumnIndex = -1;
        columnIndexMapped = false;
        hasColumnSeen = false;
        context = context1;
        contentResolver = context1.getContentResolver();
        smsUri = Uri.parse("content://sms");
        initHashMaps();
    }

    private ContentValues getContentValues(IEntity ientity, AtomicInteger atomicinteger)
    {
        if(ientity != null && ientity.moveToFirst()) goto _L2; else goto _L1
_L1:
        ContentValues contentvalues = null;
_L11:
        return contentvalues;
_L2:
        ContentValues contentvalues1;
        boolean flag;
        contentvalues1 = new ContentValues();
        contentvalues1.put("read", "1");
        if(QQPimUtils.isSDKVersionLargerOrEquals2_2() && hasColumnSeen)
            contentvalues1.put("seen", "1");
        flag = false;
_L7:
        if(!ientity.isAfterLast()) goto _L4; else goto _L3
_L3:
        if(!IssueSettings.anonymousDraftCanNotBeRestored) goto _L6; else goto _L5
_L5:
        if(!flag)
            contentvalues1.put("address", "");
_L9:
        contentvalues = contentvalues1;
        continue; /* Loop/switch isn't completed */
_L4:
        Record record = ientity.getCurrentValue();
        if(record != null)
        {
            String s = record.get(2);
            if(s == null || s.length() == 0)
            {
                ientity.moveToNext();
            } else
            {
                boolean flag1;
                if(record.get(0).equals("FOLDER"))
                {
                    Integer integer = (Integer)vcardTypeToDbType.get(s);
                    if(integer == null)
                    {
                        contentvalues = null;
                        continue; /* Loop/switch isn't completed */
                    }
                    if(atomicinteger != null)
                        atomicinteger.set(integer.intValue());
                    contentvalues1.put("type", integer.toString());
                    flag1 = flag;
                } else
                if(record.get(0).equals("SENDER"))
                {
                    if(s == null || s.equals(""))
                        contentvalues1.put("address", null);
                    else
                        contentvalues1.put("address", s);
                    flag1 = true;
                } else
                if(record.get(0).equals("SENDDATE"))
                {
                    contentvalues1.put("date", Long.valueOf(QQPimUtils.getUTCTimeFromString(s)).toString());
                    flag1 = flag;
                } else
                {
                    if(record.get(0).equals("INFORMATION"))
                        contentvalues1.put("body", s);
                    flag1 = flag;
                }
                ientity.moveToNext();
                flag = flag1;
            }
        }
          goto _L7
_L6:
        if(flag) goto _L9; else goto _L8
_L8:
        contentvalues = null;
        if(true) goto _L11; else goto _L10
_L10:
    }

    private String getDraftSenderAddrByThreadId(String s)
    {
        Cursor cursor = null;
        Cursor cursor4;
        ContentResolver contentresolver = contentResolver;
        Uri uri = Uri.parse("content://sms/");
        String as[] = new String[1];
        as[0] = (new StringBuilder("recipient_ids from threads where _id = ")).append(s).append("--").toString();
        cursor4 = contentresolver.query(uri, as, null, null, null);
        Cursor cursor1 = cursor4;
        if(cursor1 == null) goto _L2; else goto _L1
_L1:
        if(!cursor1.moveToFirst()) goto _L2; else goto _L3
_L3:
        Cursor cursor5;
        String s3 = cursor1.getString(0);
        ContentResolver contentresolver1 = contentResolver;
        Uri uri1 = Uri.parse("content://sms/");
        String as1[] = new String[1];
        as1[0] = (new StringBuilder("address from canonical_addresses where _id = ")).append(s3).append("--").toString();
        cursor5 = contentresolver1.query(uri1, as1, null, null, null);
        Cursor cursor2 = cursor5;
        if(cursor2 == null) goto _L5; else goto _L4
_L4:
        if(!cursor2.moveToFirst()) goto _L5; else goto _L6
_L6:
        String s4 = cursor2.getString(0);
        Object obj;
        obj = s4;
        if(cursor1 != null)
            cursor1.close();
        if(cursor2 != null)
            cursor2.close();
_L7:
        return ((String) (obj));
_L2:
        if(cursor1 != null)
            cursor1.close();
        obj = cursor;
          goto _L7
_L5:
        if(cursor1 != null)
            cursor1.close();
        if(cursor2 != null)
            cursor2.close();
        obj = cursor;
          goto _L7
        Throwable throwable;
        throwable;
        Cursor cursor3;
        cursor2 = cursor;
        cursor3 = cursor;
_L13:
        if((new StringBuilder("Throwable t: ")).append(throwable.getMessage()).toString() != null) goto _L9; else goto _L8
_L8:
        String s2 = "";
_L10:
        QQPimUtils.writeToLog("SYSSmsDao.getDraftSenderAddrBySmsId", s2);
        if(cursor3 != null)
            cursor3.close();
        if(cursor2 != null)
            cursor2.close();
        obj = cursor;
          goto _L7
_L9:
        String s1 = throwable.getMessage();
        s2 = s1;
          goto _L10
        Exception exception;
        exception;
        cursor1 = cursor;
_L12:
        if(cursor1 != null)
            cursor1.close();
        if(cursor != null)
            cursor.close();
        throw exception;
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        cursor = cursor2;
        continue; /* Loop/switch isn't completed */
        exception;
        cursor = cursor2;
        cursor1 = cursor3;
        if(true) goto _L12; else goto _L11
_L11:
        throwable;
        cursor2 = cursor;
        cursor3 = cursor1;
          goto _L13
        throwable;
        cursor3 = cursor1;
          goto _L13
    }

    private List getDraftSenderAddrByThreadId_2(String s)
    {
        Cursor cursor;
        ArrayList arraylist;
        cursor = null;
        arraylist = new ArrayList();
        Cursor cursor4;
        ContentResolver contentresolver = contentResolver;
        Uri uri = Uri.parse("content://sms/");
        String as[] = new String[1];
        as[0] = (new StringBuilder("recipient_ids from threads where _id = ")).append(s).append("--").toString();
        cursor4 = contentresolver.query(uri, as, null, null, null);
        Cursor cursor1 = cursor4;
        if(cursor1 == null) goto _L2; else goto _L1
_L1:
        if(!cursor1.moveToFirst()) goto _L2; else goto _L3
_L3:
        String as1[] = cursor1.getString(0).split(" ");
        int i;
        Cursor cursor5;
        i = 0;
        cursor5 = cursor;
_L7:
        int j = as1.length;
        if(i < j) goto _L5; else goto _L4
_L4:
        Object obj;
        if(cursor1 != null)
            cursor1.close();
        if(cursor5 != null)
            cursor5.close();
        obj = arraylist;
_L6:
        return ((List) (obj));
_L2:
        if(cursor1 != null)
            cursor1.close();
        obj = cursor;
          goto _L6
_L5:
        Cursor cursor6;
        ContentResolver contentresolver1 = contentResolver;
        Uri uri1 = Uri.parse("content://sms/");
        String as2[] = new String[1];
        as2[0] = (new StringBuilder("address from canonical_addresses where _id = ")).append(as1[i].trim()).append("--").toString();
        cursor6 = contentresolver1.query(uri1, as2, null, null, null);
        Cursor cursor2;
        cursor2 = cursor6;
        if(cursor2 == null)
            break MISSING_BLOCK_LABEL_284;
        if(!cursor2.moveToFirst())
            break MISSING_BLOCK_LABEL_284;
        arraylist.add(cursor2.getString(0));
        i++;
        cursor5 = cursor2;
          goto _L7
        if(cursor1 != null)
            cursor1.close();
        if(cursor2 != null)
            cursor2.close();
        obj = cursor;
          goto _L6
        Throwable throwable;
        throwable;
        Cursor cursor3;
        cursor2 = cursor;
        cursor3 = cursor;
_L13:
        if((new StringBuilder("Throwable t: ")).append(throwable.getMessage()).toString() != null) goto _L9; else goto _L8
_L8:
        String s2 = "";
_L10:
        QQPimUtils.writeToLog("SYSSmsDao.getDraftSenderAddrBySmsId", s2);
        if(cursor3 != null)
            cursor3.close();
        if(cursor2 != null)
            cursor2.close();
        obj = cursor;
          goto _L6
_L9:
        String s1 = throwable.getMessage();
        s2 = s1;
          goto _L10
        Exception exception;
        exception;
        cursor1 = cursor;
_L12:
        if(cursor1 != null)
            cursor1.close();
        if(cursor != null)
            cursor.close();
        throw exception;
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        cursor = cursor2;
        continue; /* Loop/switch isn't completed */
        exception;
        cursor = cursor5;
        continue; /* Loop/switch isn't completed */
        exception;
        cursor = cursor2;
        cursor1 = cursor3;
        if(true) goto _L12; else goto _L11
_L11:
        throwable;
        cursor2 = cursor;
        cursor3 = cursor1;
          goto _L13
        throwable;
        cursor3 = cursor1;
          goto _L13
        throwable;
        cursor2 = cursor5;
        cursor3 = cursor1;
          goto _L13
    }

    protected static SYSSmsDaoV1 getInstance(Context context1)
    {
        if(sysSmsDaoV1 == null)
            sysSmsDaoV1 = new SYSSmsDaoV1(context1);
        return sysSmsDaoV1;
    }

    private IEntity getSMSEntity(Cursor cursor)
    {
        Object obj;
        if(cursor == null)
        {
            obj = null;
        } else
        {
label0:
            {
                mapColumnIndex(cursor);
                if(columnIndexMapped)
                    break label0;
                obj = null;
            }
        }
_L1:
        return ((IEntity) (obj));
        Record record;
        Record record1;
        Record record2;
        Record record3;
        Record record4;
        String s1;
label1:
        {
            record = new Record();
            record1 = new Record();
            record2 = new Record();
            record3 = new Record();
            record4 = new Record();
            s1 = cursor.getString(idColumnIndex);
            if(s1 != null)
                break label1;
            obj = null;
        }
          goto _L1
        int i;
        String s2;
        record.put(0, "FOLDER");
        i = cursor.getInt(typeColumnIndex);
        s2 = (String)dbTypeToVcardType.get(Integer.valueOf(i));
        if(s2 == null) goto _L3; else goto _L2
_L2:
        String s3;
        ArrayList arraylist;
        String s6;
        record.put(2, s2);
        record1.put(0, "SENDER");
        s3 = cursor.getString(addressColumnIndex);
        arraylist = new ArrayList();
        if(i != 3 || s3 != null && s3.length() != 0)
            break MISSING_BLOCK_LABEL_652;
        s6 = cursor.getString(threadIdColumnIndex);
        if(!IssueSettings.draftHasMoreCantactsUploadDisplayWrong) goto _L5; else goto _L4
_L4:
        StringBuffer stringbuffer1;
        List list;
        int k;
        stringbuffer1 = new StringBuffer();
        list = getDraftSenderAddrByThreadId_2(s6);
        k = 0;
_L14:
        if(k < list.size()) goto _L7; else goto _L6
_L6:
        Object obj1;
        s3 = stringbuffer1.toString();
        obj1 = list;
_L15:
        SYSContactDao syscontactdao;
        String s4;
        if(QQPimUtils.isSDKVersionBelow2() && "".equals(s3))
            s3 = null;
        record1.put(2, s3);
        record2.put(0, "SENDNAME");
        Long.valueOf(cursor.getLong(personColumnIndex));
        syscontactdao = (SYSContactDao)SYSContactDao.getIDao(context);
        s4 = (String)phoneToContactNameMap.get(s3);
        if(s4 != null) goto _L9; else goto _L8
_L8:
        if(!IssueSettings.draftHasMoreCantactsUploadDisplayWrong || i != 3) goto _L11; else goto _L10
_L10:
        StringBuffer stringbuffer;
        int j;
        stringbuffer = new StringBuffer();
        j = 0;
_L16:
        if(j < ((List) (obj1)).size()) goto _L13; else goto _L12
_L12:
        s4 = stringbuffer.toString();
_L17:
        Throwable throwable;
        String s5;
        if(s4 == null || s4.equals(""))
            s4 = s3;
        phoneToContactNameMap.put(s3, s4);
_L9:
        record2.put(2, s4);
        record3.put(0, "SENDDATE");
        record3.put(2, QQPimUtils.getUTCStringFromTime(cursor.getLong(dateColumnIndex)));
        record4.put(0, "INFORMATION");
        record4.put(2, cursor.getString(bodyColumnIndex));
        obj = new SYSSms();
        ((SYSSms) (obj)).setId(s1);
        ((SYSSms) (obj)).putValue(record);
        ((SYSSms) (obj)).putValue(record1);
        ((SYSSms) (obj)).putValue(record2);
        ((SYSSms) (obj)).putValue(record3);
        ((SYSSms) (obj)).putValue(record4);
          goto _L1
        throwable;
        String s = throwable.getMessage();
        if(s == null)
            s = "Exception Happen...";
        QQPimUtils.writeToLog("SYSSmsDao Error", s);
        obj = null;
          goto _L1
_L3:
        obj = null;
          goto _L1
_L7:
        stringbuffer1.append((String)list.get(k)).append(",");
        k++;
          goto _L14
_L5:
        s3 = getDraftSenderAddrByThreadId(s6);
        obj1 = arraylist;
          goto _L15
_L13:
        stringbuffer.append(syscontactdao.lookupFirstContactNameByPhone((String)((List) (obj1)).get(j))).append(",");
        j++;
          goto _L16
_L11:
        s5 = syscontactdao.lookupFirstContactNameByPhone(s3);
        s4 = s5;
          goto _L17
        obj1 = arraylist;
          goto _L15
    }

    private void initHashMaps()
    {
        dbTypeToVcardType = new HashMap();
        vcardTypeToDbType = new HashMap();
        dbTypeToVcardType.put(Integer.valueOf(1), "INBOX");
        dbTypeToVcardType.put(Integer.valueOf(2), "SENT");
        dbTypeToVcardType.put(Integer.valueOf(3), "DRAFT");
        dbTypeToVcardType.put(Integer.valueOf(6), "OUTBOX");
        dbTypeToVcardType.put(Integer.valueOf(5), "OUTBOX");
        dbTypeToVcardType.put(Integer.valueOf(4), "OUTBOX");
        vcardTypeToDbType.put("INBOX", Integer.valueOf(1));
        vcardTypeToDbType.put("SENT", Integer.valueOf(2));
        vcardTypeToDbType.put("DRAFT", Integer.valueOf(3));
        vcardTypeToDbType.put("OUTBOX", Integer.valueOf(6));
        idToContactNameMap = new HashMap();
        phoneToContactNameMap = new HashMap();
    }

    private void mapColumnIndex(Cursor cursor)
    {
        if(!columnIndexMapped)
        {
            idColumnIndex = cursor.getColumnIndex("_id");
            addressColumnIndex = cursor.getColumnIndex("address");
            bodyColumnIndex = cursor.getColumnIndex("body");
            typeColumnIndex = cursor.getColumnIndex("type");
            protocolColumnIndex = cursor.getColumnIndex("protocol");
            threadIdColumnIndex = cursor.getColumnIndex("thread_id");
            dateColumnIndex = cursor.getColumnIndex("date");
            personColumnIndex = cursor.getColumnIndex("person");
            if(idColumnIndex >= 0 && addressColumnIndex >= 0 && bodyColumnIndex >= 0 && typeColumnIndex >= 0 && protocolColumnIndex >= 0 && threadIdColumnIndex >= 0 && dateColumnIndex >= 0 && personColumnIndex >= 0)
                columnIndexMapped = true;
        }
    }

    public String add(IEntity ientity)
    {
        String s = null;
        if(ientity != null) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        AtomicInteger atomicinteger = new AtomicInteger();
        ContentValues contentvalues;
        contentvalues = getContentValues(ientity, atomicinteger);
        if(contentvalues == null)
            continue; /* Loop/switch isn't completed */
        if(ientity.getId() != null && !ientity.getId().equals(""))
            contentvalues.put("_id", ientity.getId());
        Uri uri = contentResolver.insert(smsUri, contentvalues);
        if(uri != null)
            s = Long.valueOf(ContentUris.parseId(uri)).toString();
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        QQPimUtils.writeToLog("SYSSmsDao Exception", exception.getMessage());
        if(true) goto _L1; else goto _L3
_L3:
    }

    public boolean add(ArrayList arraylist, ArrayList arraylist1, int ai[])
    {
        int i = arraylist.size();
        int j = 0;
        do
        {
            if(j >= i)
                return true;
            String s = add((IEntity)arraylist.get(j));
            arraylist1.add(s);
            if(s == null)
                ai[j] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
            else
                ai[j] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE.toInt();
            j++;
        } while(true);
    }

    public com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue delete(String s)
    {
        com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue enum_idaoreturnvalue;
        if(s == null)
        {
            enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
        } else
        {
            ContentResolver contentresolver = contentResolver;
            Uri uri = smsUri;
            String as[] = new String[1];
            as[0] = s;
            if(contentresolver.delete(uri, "_id=?", as) > 0)
                enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED;
            else
                enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
        }
        return enum_idaoreturnvalue;
    }

    public List getAllEntityId(String as[])
    {
        ArrayList arraylist;
        StringBuilder stringbuilder;
        int i;
        arraylist = new ArrayList();
        stringbuilder = new StringBuilder();
        if(as == null || as.length <= 0)
            break MISSING_BLOCK_LABEL_228;
        i = -1 + as.length;
_L3:
        if(i > 0) goto _L2; else goto _L1
_L1:
        String s;
        stringbuilder.append("PHONE_NUMBERS_EQUAL(");
        stringbuilder.append(as[i]);
        stringbuilder.append(",");
        stringbuilder.append("address");
        stringbuilder.append(")");
        s = stringbuilder.toString();
_L4:
        ContentResolver contentresolver = contentResolver;
        Uri uri = smsUri;
        String as1[] = new String[1];
        as1[0] = "_id";
        Cursor cursor = contentresolver.query(uri, as1, s, null, null);
        ArrayList arraylist1;
        if(!cursor.moveToFirst())
        {
            arraylist1 = arraylist;
        } else
        {
            for(; !cursor.isAfterLast(); cursor.moveToNext())
                arraylist.add(cursor.getString(0));

            cursor.close();
            arraylist1 = arraylist;
        }
        return arraylist1;
_L2:
        stringbuilder.append("PHONE_NUMBERS_EQUAL(");
        stringbuilder.append(as[i]);
        stringbuilder.append(",");
        stringbuilder.append("address");
        stringbuilder.append(") OR ");
        i--;
          goto _L3
        s = null;
          goto _L4
    }

    public boolean isExisted(String s)
    {
        boolean flag = false;
        if(s != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        Uri uri = Uri.withAppendedPath(smsUri, s);
        ContentResolver contentresolver = contentResolver;
        String as[] = new String[1];
        as[flag] = "_id";
        Cursor cursor = contentresolver.query(uri, as, null, null, null);
        if(cursor != null)
        {
            int i;
            if(cursor.moveToFirst())
                i = 1;
            else
                i = ((flag) ? 1 : 0);
            cursor.close();
            flag = i;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public IEntity query(String s)
    {
        String s1 = null;
        if(s != null) goto _L2; else goto _L1
_L1:
        return s1;
_L2:
        Uri uri = Uri.withAppendedPath(smsUri, s);
        Cursor cursor = contentResolver.query(uri, s1, s1, s1, s1);
        if(cursor != null)
            cursor.moveToFirst();
        s1 = getSMSEntity(cursor);
        if(cursor != null)
            cursor.close();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public List query()
    {
        String s;
        Cursor cursor;
        ArrayList arraylist;
        s = null;
        cursor = contentResolver.query(smsUri, s, s, s, s);
        arraylist = new ArrayList();
        if(cursor.moveToFirst())
            mapColumnIndex(cursor);
        if(columnIndexMapped) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        for(; !cursor.isAfterLast(); cursor.moveToNext())
        {
            IEntity ientity = getSMSEntity(cursor);
            if(ientity == null)
                continue; /* Loop/switch isn't completed */
            arraylist.add(ientity);
        }

        cursor.close();
        s = arraylist;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public String queryNameById(String s)
    {
        return null;
    }

    public int queryNumber()
    {
        int i = 0;
        Cursor cursor = contentResolver.query(smsUri, null, null, null, null);
        if(cursor != null)
        {
            int j = cursor.getCount();
            int k;
            if(cursor.getColumnIndex("seen") >= 0)
                k = 1;
            else
                k = i;
            hasColumnSeen = k;
            cursor.close();
            i = j;
        }
        return i;
    }

    public com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue update(IEntity ientity)
    {
        com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue enum_idaoreturnvalue;
        if(ientity == null || !ientity.moveToFirst())
            enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
        else
            try
            {
                Uri uri = Uri.withAppendedPath(smsUri, ientity.getId());
                AtomicInteger atomicinteger = new AtomicInteger();
                ContentValues contentvalues = getContentValues(ientity, atomicinteger);
                if(contentvalues == null)
                    enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
                else
                if(atomicinteger.get() == 3)
                {
                    delete(ientity.getId());
                    if(add(ientity) != null)
                        enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED;
                    else
                        enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_FAILED;
                } else
                if(contentResolver.update(uri, contentvalues, null, null) > 0)
                    enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED;
                else
                    enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
            }
            catch(Exception exception)
            {
                QQPimUtils.writeToLog("SYSSmsDao", "update IllegalArgumentException");
                enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_FAILED;
            }
        return enum_idaoreturnvalue;
    }

    public void updateAllThreadTime()
    {
        Uri uri = ContentUris.withAppendedId(URI_SMS_CONVERSATION, -1L);
        contentResolver.delete(uri, "type=3", null);
    }

    private static SYSSmsDaoV1 sysSmsDaoV1 = null;
    private final String DB_COLUMN_ADDRESS = "address";
    private final String DB_COLUMN_BODY = "body";
    private final String DB_COLUMN_DATE = "date";
    private final String DB_COLUMN_ID = "_id";
    private final String DB_COLUMN_PERSON = "person";
    private final String DB_COLUMN_PROTOCOL = "protocol";
    private final String DB_COLUMN_READ = "read";
    private final String DB_COLUMN_SEEN = "seen";
    private final String DB_COLUMN_THREAD_ID = "thread_id";
    private final String DB_COLUMN_TYPE = "type";
    private final String SMS_URI = "content://sms";
    private final int TYPE_DRAFT = 3;
    private final int TYPE_ERROR_SEND_BOX = 6;
    private final int TYPE_OUTBOX = 4;
    private final int TYPE_RECV_BOX = 1;
    private final int TYPE_SENT_BOX = 2;
    private final int TYPE_UNSENT = 5;
    public final Uri URI_SMS_CONVERSATION = Uri.parse("content://sms/conversations");
    private final String VCARD_DRAFT_TYPE = "DRAFT";
    private final String VCARD_INBOX_TYPE = "INBOX";
    private final String VCARD_OUTBOX_TYPE = "OUTBOX";
    private final String VCARD_SENT_TYPE = "SENT";
    private int addressColumnIndex;
    private int bodyColumnIndex;
    private boolean columnIndexMapped;
    private ContentResolver contentResolver;
    private Context context;
    private int dateColumnIndex;
    private HashMap dbTypeToVcardType;
    private boolean hasColumnSeen;
    private int idColumnIndex;
    private HashMap idToContactNameMap;
    private int personColumnIndex;
    private HashMap phoneToContactNameMap;
    private int protocolColumnIndex;
    private Uri smsUri;
    private int threadIdColumnIndex;
    private int typeColumnIndex;
    private HashMap vcardTypeToDbType;

}
