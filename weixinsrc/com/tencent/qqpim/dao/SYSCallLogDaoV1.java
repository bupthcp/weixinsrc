// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import com.tencent.qqpim.interfaces.*;
import com.tencent.qqpim.object.Record;
import com.tencent.qqpim.object.SYSCallLog;
import com.tencent.qqpim.utils.QQPimUtils;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.tencent.qqpim.dao:
//            SYSCallLogDao, SYSContactDao

public class SYSCallLogDaoV1 extends SYSCallLogDao
{

    private SYSCallLogDaoV1(Context context1)
    {
        super(context1);
        htcRawContactIDColumnExist = false;
        contentResolver = null;
        model = Model.GENERIC;
        contentResolver = context1.getContentResolver();
        initHTCExtentedColumn();
        checkHTCExtendedColumn();
        context = context1;
        if(Build.MODEL.toLowerCase().startsWith("oms"))
            model = Model.OPHONE;
    }

    private void checkHTCExtendedColumn()
    {
        Cursor cursor = null;
        Cursor cursor2;
        htcRawContactIDColumnExist = false;
        cursor2 = contentResolver.query(android.provider.CallLog.Calls.CONTENT_URI, null, null, null, null);
        Cursor cursor1 = cursor2;
        if(cursor1 != null) goto _L2; else goto _L1
_L1:
        htcRawContactIDColumnExist = false;
_L5:
        if(cursor1 != null)
            cursor1.close();
_L6:
        return;
_L2:
        if(cursor1.getColumnIndex(HTC_EXTENDED_COLUMN_NAME) < 0) goto _L4; else goto _L3
_L3:
        htcRawContactIDColumnExist = true;
          goto _L5
        Throwable throwable1;
        throwable1;
_L9:
        htcRawContactIDColumnExist = false;
        if(cursor1 != null)
            cursor1.close();
          goto _L6
_L4:
        htcRawContactIDColumnExist = false;
          goto _L5
        Exception exception;
        exception;
        Exception exception1;
        cursor = cursor1;
        exception1 = exception;
_L8:
        if(cursor != null)
            cursor.close();
        throw exception1;
        exception1;
        if(true) goto _L8; else goto _L7
_L7:
        Throwable throwable;
        throwable;
        cursor1 = cursor;
          goto _L9
    }

    protected static SYSCallLogDaoV1 getInstance(Context context1)
    {
        return new SYSCallLogDaoV1(context1);
    }

    private void initHTCExtentedColumn()
    {
        if(QQPimUtils.isSDKVersionBelow2())
            HTC_EXTENDED_COLUMN_NAME = "person";
        else
            HTC_EXTENDED_COLUMN_NAME = "raw_contact_id";
    }

    public String add(IEntity ientity)
    {
        QQPimUtils.writeToLog("SYSCallLogDao", "add enter ");
        if(ientity != null && ientity.moveToFirst()) goto _L2; else goto _L1
_L1:
        String s = null;
_L5:
        return s;
_L2:
        ContentValues contentvalues;
        boolean flag;
        boolean flag1;
        long l;
        long l1;
        String s1;
        contentvalues = new ContentValues();
        flag = false;
        flag1 = false;
        l = 0L;
        l1 = 0L;
        s1 = null;
_L7:
        if(!ientity.isAfterLast()) goto _L4; else goto _L3
_L3:
        if(!flag)
            contentvalues.put("number", "-1");
        if(!flag1 && l != 0L && l1 != 0L && l < l1)
            contentvalues.put("duration", Long.valueOf((l1 - l) / 1000L));
        s = null;
        String s5 = String.valueOf(ContentUris.parseId(contentResolver.insert(android.provider.CallLog.Calls.CONTENT_URI, contentvalues)));
        s = s5;
_L8:
        QQPimUtils.writeToLog("SYSCallLogDao", (new StringBuilder("add leave strEntityId = ")).append(s).toString());
          goto _L5
_L4:
        Record record = ientity.getCurrentValue();
        if(record == null) goto _L7; else goto _L6
_L6:
        String s2;
        long l2;
        boolean flag2;
        long l3;
        boolean flag3;
        if(record.get(0).equals("TEL"))
        {
            s2 = record.get(2);
            contentvalues.put("number", s2);
            long l5 = l;
            flag2 = true;
            l2 = l5;
        } else
        if(record.get(0).equals("N"))
        {
            if(htcRawContactIDColumnExist)
            {
                IPhoneLookup iphonelookup1 = (IPhoneLookup)SYSContactDao.getIDao(context);
                if(iphonelookup1 != null)
                {
                    String s4 = iphonelookup1.lookupFirstContactIDByPhone(s1);
                    if(s4 != null && s4.length() > 0)
                        contentvalues.put(HTC_EXTENDED_COLUMN_NAME, s4);
                }
            }
            IPhoneLookup iphonelookup = (IPhoneLookup)SYSContactDao.getIDao(context);
            long l4;
            String s3;
            Throwable throwable;
            if(iphonelookup != null)
                s3 = iphonelookup.lookupFirstContactNameByPhone(s1);
            else
                s3 = null;
            if(s3 == null || s3.length() == 0)
                s3 = record.get(2);
            contentvalues.put("name", s3);
            s2 = s1;
            l2 = l;
            flag2 = flag;
        } else
        {
            if(record.get(0).equals("STARTTIME"))
            {
                l = QQPimUtils.getUTCTimeFromString(record.get(2));
                contentvalues.put("date", Long.valueOf(l));
            }
            s2 = s1;
            l2 = l;
            flag2 = flag;
        }
        if(record.get(0).equals("ENDTIME"))
        {
            l3 = QQPimUtils.getUTCTimeFromString(record.get(2));
            flag3 = flag1;
        } else
        if(record.get(0).equals("DURATION"))
        {
            contentvalues.put("duration", record.get(2));
            l4 = l1;
            flag3 = true;
            l3 = l4;
        } else
        {
            if(!record.get(0).equals("CALLTYPE"))
                break MISSING_BLOCK_LABEL_626;
            if(record.get(2).equals("INCOMING"))
            {
                contentvalues.put("type", Integer.valueOf(1));
                l3 = l1;
                flag3 = flag1;
            } else
            {
label0:
                {
                    if(!record.get(2).equals("OUTGOING"))
                        break label0;
                    contentvalues.put("type", Integer.valueOf(2));
                    l3 = l1;
                    flag3 = flag1;
                }
            }
        }
        ientity.moveToNext();
        flag1 = flag3;
        l1 = l3;
        flag = flag2;
        l = l2;
        s1 = s2;
          goto _L7
        if(record.get(2).equals("MISS"))
            contentvalues.put("type", Integer.valueOf(3));
        l3 = l1;
        flag3 = flag1;
        break MISSING_BLOCK_LABEL_253;
        throwable;
        QQPimUtils.writeToLog("SYSCallLogDao", (new StringBuilder("add Throwable ")).append(throwable.getMessage()).toString());
          goto _L8
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
        int i;
        i = 0;
        QQPimUtils.writeToLog("SYSCallLog", (new StringBuilder("delete enter strEntityId = ")).append(s).toString());
        int j;
        ContentResolver contentresolver = contentResolver;
        Uri uri = android.provider.CallLog.Calls.CONTENT_URI;
        String as[] = new String[1];
        as[0] = s;
        j = contentresolver.delete(uri, "_id=?", as);
        i = j;
_L1:
        QQPimUtils.writeToLog("SYSCallLog", (new StringBuilder("delete leave delcount = ")).append(i).toString());
        Throwable throwable;
        com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue enum_idaoreturnvalue;
        if(i > 0)
            enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED;
        else
            enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
        return enum_idaoreturnvalue;
        throwable;
        QQPimUtils.writeToLog("SYSCallLog", (new StringBuilder("delete Throwable ")).append(throwable.getMessage()).toString());
          goto _L1
    }

    public List getAllEntityId(String as[])
    {
        Cursor cursor;
        ArrayList arraylist;
        cursor = null;
        arraylist = new ArrayList();
        QQPimUtils.writeToLog("SYSCallLogDao", "getAllEntityId enter");
        Cursor cursor2;
        ContentResolver contentresolver = contentResolver;
        Uri uri = android.provider.CallLog.Calls.CONTENT_URI;
        String as1[] = new String[1];
        as1[0] = "_id";
        cursor2 = contentresolver.query(uri, as1, null, null, "date DESC");
        Cursor cursor1 = cursor2;
        if(cursor1 == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L4:
        int j = cursor1.getCount();
        if(i < j) goto _L3; else goto _L2
_L2:
        if(cursor1 != null)
            cursor1.close();
_L5:
        QQPimUtils.writeToLog("SYSCallLogDao", (new StringBuilder("getAllEntityId leave size = ")).append(arraylist.size()).toString());
        return arraylist;
_L3:
        cursor1.moveToPosition(i);
        arraylist.add(String.valueOf(cursor1.getLong(0)));
        i++;
          goto _L4
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        cursor1 = cursor;
_L9:
        QQPimUtils.writeToLog("SYSCallLogDao", (new StringBuilder("getAllEntityId  IllegalArgumentException  ")).append(illegalargumentexception.getMessage()).toString());
        if(cursor1 != null)
            cursor1.close();
          goto _L5
        Throwable throwable;
        throwable;
_L8:
        QQPimUtils.writeToLog("SYSCallLogDao", (new StringBuilder("getAllEntityId Throwable ")).append(throwable.getMessage()).toString());
        if(cursor != null)
            cursor.close();
          goto _L5
        Exception exception;
        exception;
_L7:
        if(cursor != null)
            cursor.close();
        throw exception;
        exception;
        cursor = cursor1;
        if(true) goto _L7; else goto _L6
_L6:
        throwable;
        cursor = cursor1;
          goto _L8
        illegalargumentexception;
          goto _L9
    }

    public boolean isExisted(String s)
    {
        Cursor cursor;
        cursor = null;
        QQPimUtils.writeToLog("SYSCallLogDao", "isExisted enter");
        Cursor cursor2;
        Uri uri = Uri.withAppendedPath(android.provider.CallLog.Calls.CONTENT_URI, s);
        cursor2 = contentResolver.query(uri, null, null, null, null);
        if(cursor2 == null) goto _L2; else goto _L1
_L1:
        int i = cursor2.getCount();
        if(i <= 0) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L9:
        if(cursor2 != null)
            cursor2.close();
        QQPimUtils.writeToLog("SYSCallLogDao", (new StringBuilder("isExisted  ret = ")).append(flag).toString());
_L4:
        QQPimUtils.writeToLog("SYSCallLogDao", "isExisted leave");
        return flag;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        Cursor cursor1 = cursor;
_L7:
        QQPimUtils.writeToLog("SYSCallLogDao", (new StringBuilder("isExisted  IllegalArgumentException strEntityId = ")).append(s).toString());
        if(cursor1 != null)
            cursor1.close();
        QQPimUtils.writeToLog("SYSCallLogDao", (new StringBuilder("isExisted  ret = ")).append(false).toString());
        flag = false;
          goto _L4
        Exception exception;
        exception;
_L6:
        if(cursor != null)
            cursor.close();
        QQPimUtils.writeToLog("SYSCallLogDao", (new StringBuilder("isExisted  ret = ")).append(false).toString());
        throw exception;
        exception;
        cursor = cursor2;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        cursor = cursor1;
        exception = exception1;
        if(true) goto _L6; else goto _L5
_L5:
        IllegalArgumentException illegalargumentexception1;
        illegalargumentexception1;
        cursor1 = cursor2;
          goto _L7
_L2:
        flag = false;
        if(true) goto _L9; else goto _L8
_L8:
    }

    public IEntity query(String s)
    {
        SYSCallLog syscalllog;
        SYSCallLog syscalllog1;
        String s2;
        String s3;
        Record record;
        QQPimUtils.writeToLog("SYSCallLogDao", (new StringBuilder("query enter  strEntityId = ")).append(s).toString());
        Cursor cursor;
        String s1;
        IPhoneLookup iphonelookup;
        try
        {
            Uri uri = Uri.withAppendedPath(android.provider.CallLog.Calls.CONTENT_URI, s);
            String as[];
            int i;
            Record record1;
            Record record2;
            Record record3;
            Record record4;
            String s4;
            Record record5;
            if(htcRawContactIDColumnExist)
            {
                as = new String[6];
                as[0] = "number";
                as[1] = "name";
                as[2] = "type";
                as[3] = "date";
                as[4] = "duration";
                as[5] = HTC_EXTENDED_COLUMN_NAME;
            } else
            {
                as = new String[5];
                as[0] = "number";
                as[1] = "name";
                as[2] = "type";
                as[3] = "date";
                as[4] = "duration";
            }
            cursor = contentResolver.query(uri, as, null, null, "date DESC");
            syscalllog1 = new SYSCallLog();
        }
        catch(IllegalArgumentException illegalargumentexception)
        {
            QQPimUtils.writeToLog("SYSCallLogDao", (new StringBuilder("query IllegalArgumentException strEntityId = ")).append(s).toString());
            syscalllog = null;
            break MISSING_BLOCK_LABEL_695;
        }
        catch(Throwable throwable)
        {
            QQPimUtils.writeToLog("SYSCallLogDao", (new StringBuilder("query Throwable strEntityId = ")).append(s).toString());
            syscalllog = null;
            break MISSING_BLOCK_LABEL_695;
        }
        if(cursor == null || !cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        syscalllog1.setId(s);
        s1 = cursor.getString(0);
        if(s1 != null && !s1.equals("-1"))
        {
            record5 = new Record();
            record5.put(0, "TEL");
            record5.put(2, s1);
            syscalllog1.putValue(record5);
        }
        if(!htcRawContactIDColumnExist) goto _L4; else goto _L3
_L3:
        s4 = cursor.getString(5);
        s3 = SYSContactDao.getIDao(context).queryNameById(s4);
_L11:
        if(s3 != null && s3.length() > 0)
        {
            record4 = new Record();
            record4.put(0, "N");
            record4.put(2, s3);
            syscalllog1.putValue(record4);
        }
        i = cursor.getInt(2);
        record = new Record();
        record.put(0, "CALLTYPE");
        i;
        JVM INSTR tableswitch 1 3: default 320
    //                   1 606
    //                   2 652
    //                   3 670;
           goto _L5 _L6 _L7 _L8
_L5:
        record1 = new Record();
        record1.put(0, "STARTTIME");
        record1.put(2, QQPimUtils.getUTCStringFromTime(cursor.getLong(3)));
        syscalllog1.putValue(record1);
        record2 = new Record();
        record2.put(0, "DURATION");
        record2.put(2, String.valueOf(cursor.getLong(4)));
        syscalllog1.putValue(record2);
        record3 = new Record();
        record3.put(0, "ENDTIME");
        record3.put(2, QQPimUtils.getUTCStringFromTime(cursor.getLong(3) + 1000L * cursor.getLong(4)));
        syscalllog1.putValue(record3);
_L2:
        if(cursor != null)
            cursor.close();
        QQPimUtils.writeToLog("SYSCallLogDao", "query leave");
        syscalllog = syscalllog1;
        break MISSING_BLOCK_LABEL_695;
_L4:
        s2 = cursor.getString(1);
        if(s2 != null && model != Model.OPHONE)
            break; /* Loop/switch isn't completed */
        iphonelookup = (IPhoneLookup)SYSContactDao.getIDao(context);
        if(iphonelookup == null)
            break; /* Loop/switch isn't completed */
        s3 = iphonelookup.lookupFirstContactNameByPhone(s1);
        continue; /* Loop/switch isn't completed */
_L6:
        record.put(2, "INCOMING");
        syscalllog1.putValue(record);
        continue; /* Loop/switch isn't completed */
_L7:
        record.put(2, "OUTGOING");
        syscalllog1.putValue(record);
        continue; /* Loop/switch isn't completed */
_L8:
        record.put(2, "MISS");
        syscalllog1.putValue(record);
        if(true) goto _L5; else goto _L9
_L9:
        s3 = s2;
        if(true) goto _L11; else goto _L10
_L10:
        return syscalllog;
    }

    public List query()
    {
        ArrayList arraylist = new ArrayList();
        List list = getAllEntityId(null);
        int i = 0;
        do
        {
            if(i >= list.size())
                return arraylist;
            arraylist.add(query((String)list.get(i)));
            i++;
        } while(true);
    }

    public String queryNameById(String s)
    {
        return null;
    }

    public int queryNumber()
    {
        ContentResolver contentresolver = contentResolver;
        Uri uri = android.provider.CallLog.Calls.CONTENT_URI;
        String as[] = new String[1];
        as[0] = "_id";
        Cursor cursor = contentresolver.query(uri, as, null, null, null);
        int i;
        if(cursor != null)
            i = cursor.getCount();
        else
            i = 0;
        return i;
    }

    public com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue update(IEntity ientity)
    {
        boolean flag;
        flag = false;
        QQPimUtils.writeToLog("SYSCallLogDao", "update enter");
        if(ientity != null && ientity.moveToFirst()) goto _L2; else goto _L1
_L1:
        com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue enum_idaoreturnvalue;
        QQPimUtils.writeToLog("SYSCallLogDao", "update leave IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND");
        enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
_L5:
        return enum_idaoreturnvalue;
_L2:
        QQPimUtils.writeToLog("SYSCallLogDao", (new StringBuilder("update  strEntityId = ")).append(ientity.getId()).toString());
        Uri uri;
        ContentValues contentvalues;
        long l;
        long l1;
        boolean flag1;
        uri = Uri.withAppendedPath(android.provider.CallLog.Calls.CONTENT_URI, ientity.getId());
        contentvalues = new ContentValues();
        l = 0L;
        l1 = 0L;
        flag1 = flag;
_L7:
        if(!ientity.isAfterLast()) goto _L4; else goto _L3
_L3:
        if(!flag1)
            contentvalues.put("number", "-1");
        if(!flag && l1 != 0L && l != 0L && l1 < l)
            contentvalues.put("duration", Long.valueOf((l - l1) / 1000L));
        if(contentResolver.update(uri, contentvalues, null, null) <= 0)
            break MISSING_BLOCK_LABEL_501;
        QQPimUtils.writeToLog("SYSCallLogDao", "update leave IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED");
        enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED;
          goto _L5
_L4:
        Record record = ientity.getCurrentValue();
        if(record == null) goto _L7; else goto _L6
_L6:
        if(!record.get(0).equals("TEL"))
            break MISSING_BLOCK_LABEL_273;
        contentvalues.put("number", record.get(2));
        flag1 = true;
_L8:
        ientity.moveToNext();
          goto _L7
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        QQPimUtils.writeToLog("SYSCallLogDao", "update IllegalArgumentException");
        enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_FAILED;
          goto _L5
        if(record.get(0).equals("N"))
            contentvalues.put("name", record.get(2));
        else
        if(record.get(0).equals("STARTTIME"))
        {
            l1 = QQPimUtils.getUTCTimeFromString(record.get(2));
            contentvalues.put("date", Long.valueOf(l1));
        } else
        if(record.get(0).equals("ENDTIME"))
            l = QQPimUtils.getUTCTimeFromString(record.get(2));
        else
        if(record.get(0).equals("DURATION"))
        {
            contentvalues.put("duration", record.get(2));
            flag = true;
        } else
        if(record.get(0).equals("CALLTYPE"))
            if(record.get(2).equals("INCOMING"))
                contentvalues.put("type", Integer.valueOf(1));
            else
            if(record.get(2).equals("OUTGOING"))
                contentvalues.put("type", Integer.valueOf(2));
            else
            if(record.get(2).equals("OUTGOING"))
                contentvalues.put("type", Integer.valueOf(3));
          goto _L8
        QQPimUtils.writeToLog("SYSCallLogDao", "update leave IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND");
        enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
          goto _L5
    }

    private static SYSCallLogDaoV1 sysBookmarkDaoV1 = null;
    private String HTC_EXTENDED_COLUMN_NAME;
    private ContentResolver contentResolver;
    Context context;
    private boolean htcRawContactIDColumnExist;
    Model model;


    private class Model extends Enum
    {

        public static Model valueOf(String s)
        {
            return (Model)Enum.valueOf(com/tencent/qqpim/dao/SYSCallLogDaoV1$Model, s);
        }

        public static Model[] values()
        {
            Model amodel[] = ENUM$VALUES;
            int i = amodel.length;
            Model amodel1[] = new Model[i];
            System.arraycopy(amodel, 0, amodel1, 0, i);
            return amodel1;
        }

        private static final Model ENUM$VALUES[];
        public static final Model GENERIC;
        public static final Model OPHONE;

        static 
        {
            OPHONE = new Model("OPHONE", 0);
            GENERIC = new Model("GENERIC", 1);
            Model amodel[] = new Model[2];
            amodel[0] = OPHONE;
            amodel[1] = GENERIC;
            ENUM$VALUES = amodel;
        }

        private Model(String s, int i)
        {
            super(s, i);
        }
    }

}
