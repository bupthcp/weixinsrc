// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.tencent.qqpim.object.SyncLogEntity;
import java.util.*;

// Referenced classes of package com.tencent.qqpim.dao:
//            SyncLogHelper

public class SyncLogDao
{

    private SyncLogDao(Context context1)
    {
        context = context1;
    }

    private String convertBackupOrResotre(int i)
    {
        i;
        JVM INSTR tableswitch 0 1: default 24
    //                   0 28
    //                   1 34;
           goto _L1 _L2 _L3
_L1:
        String s = null;
_L5:
        return s;
_L2:
        s = "\u5907\u4EFD";
        continue; /* Loop/switch isn't completed */
_L3:
        s = "\u6062\u590D";
        if(true) goto _L5; else goto _L4
_L4:
    }

    private String convertType(int i)
    {
        i;
        JVM INSTR tableswitch 0 3: default 32
    //                   0 36
    //                   1 42
    //                   2 48
    //                   3 54;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        String s = null;
_L7:
        return s;
_L2:
        s = "\u540D\u7247";
        continue; /* Loop/switch isn't completed */
_L3:
        s = "\u77ED\u4FE1\u606F";
        continue; /* Loop/switch isn't completed */
_L4:
        s = "\u901A\u8BDD\u4E66\u7B7E";
        continue; /* Loop/switch isn't completed */
_L5:
        s = "\u6D4F\u89C8\u5668\u4E66\u7B7E";
        if(true) goto _L7; else goto _L6
_L6:
    }

    public static SyncLogDao getSingleInstance(Context context1)
    {
        if(singleInstance != null || context1 != null) goto _L2; else goto _L1
_L1:
        SyncLogDao synclogdao = null;
_L6:
        return synclogdao;
_L2:
        if(singleInstance != null)
        {
            if(context1 != null)
                singleInstance.context = context1;
            synclogdao = singleInstance;
            continue; /* Loop/switch isn't completed */
        }
        com/tencent/qqpim/dao/SyncLogDao;
        JVM INSTR monitorenter ;
        if(singleInstance != null) goto _L4; else goto _L3
_L3:
        singleInstance = new SyncLogDao(context1);
_L8:
        synclogdao = singleInstance;
        if(true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
_L4:
        if(context1 == null) goto _L8; else goto _L7
_L7:
        singleInstance.context = context1;
          goto _L8
    }

    private void init()
    {
        if(db == null)
        {
            helper = new SyncLogHelper(context, "sync_log.db", null, 3);
            db = helper.getWritableDatabase();
        }
    }

    private void release()
    {
        if(db != null)
        {
            db.close();
            db = null;
            helper = null;
        }
    }

    /**
     * @deprecated Method addSyncLog is deprecated
     */

    public long addSyncLog(SyncLogEntity synclogentity)
    {
        this;
        JVM INSTR monitorenter ;
        long l;
        Cursor cursor;
        init();
        ContentValues contentvalues = new ContentValues();
        if(synclogentity.getQq_account() != null)
            contentvalues.put("qq_account", synclogentity.getQq_account());
        contentvalues.put("type", Integer.valueOf(synclogentity.getType()));
        contentvalues.put("start", Long.valueOf(synclogentity.getStart()));
        contentvalues.put("end", Long.valueOf(synclogentity.getEnd()));
        contentvalues.put("add_num", Integer.valueOf(synclogentity.getAdd()));
        contentvalues.put("modify_num", Integer.valueOf(synclogentity.getModify()));
        contentvalues.put("delete_num", Integer.valueOf(synclogentity.getDelete()));
        contentvalues.put("backup_or_restore", Integer.valueOf(synclogentity.getBackup_or_restore()));
        contentvalues.put("upload", Long.valueOf(synclogentity.getUpload()));
        contentvalues.put("download", Long.valueOf(synclogentity.getDownload()));
        contentvalues.put("succeed", Integer.valueOf(synclogentity.getSucceed()));
        contentvalues.put("client_add_num", Integer.valueOf(synclogentity.getClient_add_num()));
        contentvalues.put("client_modify_num", Integer.valueOf(synclogentity.getClient_modify_num()));
        contentvalues.put("client_delete_num", Integer.valueOf(synclogentity.getClient_delete_num()));
        contentvalues.put("server_add_num", Integer.valueOf(synclogentity.getServer_add_num()));
        contentvalues.put("server_modify_num", Integer.valueOf(synclogentity.getServer_modify_num()));
        contentvalues.put("server_delete_num", Integer.valueOf(synclogentity.getServer_delete_num()));
        contentvalues.put("sync_method", Integer.valueOf(synclogentity.getSync_method()));
        contentvalues.put("local_backup_id", Integer.valueOf(synclogentity.getLocal_backup_id()));
        l = db.insert("sync_log", "_id", contentvalues);
        SQLiteDatabase sqlitedatabase = db;
        String as[] = new String[1];
        as[0] = "_id";
        cursor = sqlitedatabase.query("sync_log", as, null, null, null, null, "_id desc");
        if(!cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        Vector vector = new Vector();
_L6:
        if(!cursor.isAfterLast()) goto _L4; else goto _L3
_L3:
        int i = 50;
_L7:
        if(i < vector.size()) goto _L5; else goto _L2
_L2:
        if(cursor != null)
            cursor.close();
        release();
        this;
        JVM INSTR monitorexit ;
        return l;
_L4:
        vector.add(cursor.getString(0));
        cursor.moveToNext();
          goto _L6
        Exception exception;
        exception;
        throw exception;
_L5:
        deleteSyncLog((String)vector.get(i));
        i++;
          goto _L7
    }

    /**
     * @deprecated Method deleteAllSyncLog is deprecated
     */

    public int deleteAllSyncLog()
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        init();
        i = db.delete("sync_log", null, null);
        release();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method deleteAllSyncLog is deprecated
     */

    public int deleteAllSyncLog(String s)
    {
        String s1 = null;
        this;
        JVM INSTR monitorenter ;
        init();
        if(s != null) goto _L2; else goto _L1
_L1:
        int i;
        i = db.delete("sync_log", s1, null);
        release();
        this;
        JVM INSTR monitorexit ;
        return i;
_L2:
        String s2 = (new StringBuilder("qq_account = ")).append(s).toString();
        s1 = s2;
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method deleteSyncLog is deprecated
     */

    public int deleteSyncLog(String s)
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        init();
        i = db.delete("sync_log", (new StringBuilder("_id=")).append(s).toString(), null);
        release();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    protected void finalize()
    {
        db.close();
        super.finalize();
    }

    /**
     * @deprecated Method getNewestSyncLogEntity is deprecated
     */

    public List getNewestSyncLogEntity(String s)
    {
        String s1 = null;
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        init();
        arraylist = new ArrayList();
        if(s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        Cursor cursor = db.query("sync_log", null, s1, null, null, null, null, null);
        if(cursor.moveToFirst()) goto _L4; else goto _L3
_L3:
        release();
        ArrayList arraylist1 = arraylist;
_L5:
        this;
        JVM INSTR monitorexit ;
        return arraylist1;
_L2:
        s1 = (new StringBuilder("qq_account = ")).append(s).toString();
          goto _L1
_L4:
        for(; !cursor.isAfterLast(); cursor.moveToNext())
        {
            SyncLogEntity synclogentity = new SyncLogEntity();
            synclogentity.set_id(cursor.getInt(0));
            synclogentity.setQq_account(cursor.getString(1));
            synclogentity.setType(cursor.getInt(2));
            synclogentity.setStart(cursor.getLong(3));
            synclogentity.setEnd(cursor.getLong(4));
            synclogentity.setAdd(cursor.getInt(5));
            synclogentity.setModify(cursor.getInt(6));
            synclogentity.setDelete(cursor.getInt(7));
            synclogentity.setBackup_or_restore(cursor.getInt(8));
            synclogentity.setUpload(cursor.getLong(9));
            synclogentity.setDownload(cursor.getLong(10));
            synclogentity.setSucceed(cursor.getInt(11));
            synclogentity.setClient_add_num(cursor.getInt(12));
            synclogentity.setClient_modify_num(cursor.getInt(13));
            synclogentity.setClient_delete_num(cursor.getInt(14));
            synclogentity.setServer_add_num(cursor.getInt(15));
            synclogentity.setServer_modify_num(cursor.getInt(16));
            synclogentity.setServer_delete_num(cursor.getInt(17));
            synclogentity.setSync_method(cursor.getInt(18));
            synclogentity.setLocal_backup_id(cursor.getInt(19));
            arraylist.add(synclogentity);
        }

        if(cursor != null)
            cursor.close();
        release();
        arraylist1 = arraylist;
          goto _L5
        Exception exception;
        exception;
        throw exception;
          goto _L1
    }

    /**
     * @deprecated Method isEmpty is deprecated
     */

    public boolean isEmpty()
    {
        this;
        JVM INSTR monitorenter ;
        Cursor cursor;
        init();
        cursor = db.query("sync_log", null, "_id", null, null, null, null, null);
        if(cursor == null) goto _L2; else goto _L1
_L1:
        boolean flag1 = cursor.isAfterLast();
        if(!flag1) goto _L3; else goto _L2
_L2:
        if(cursor == null)
            break MISSING_BLOCK_LABEL_51;
        cursor.close();
        release();
        boolean flag = true;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L3:
        if(cursor == null)
            break MISSING_BLOCK_LABEL_71;
        cursor.close();
        release();
        flag = false;
          goto _L4
        Exception exception1;
        exception1;
        if(cursor != null)
            cursor.close();
        release();
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static final String DB_NAME = "sync_log.db";
    public static final int MAX_RECORD = 50;
    public static final int VERSION = 3;
    private static SyncLogDao singleInstance;
    private Context context;
    SQLiteDatabase db;
    SyncLogHelper helper;
}
