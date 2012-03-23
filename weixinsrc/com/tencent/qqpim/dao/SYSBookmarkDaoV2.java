// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import android.provider.Browser;
import com.tencent.qqpim.interfaces.IEntity;
import com.tencent.qqpim.object.Record;
import com.tencent.qqpim.object.SYSBookmark;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.tencent.qqpim.dao:
//            SYSBookmarkDao

public class SYSBookmarkDaoV2 extends SYSBookmarkDao
{

    private SYSBookmarkDaoV2(Context context)
    {
        super(context);
    }

    protected static SYSBookmarkDaoV2 getInstance(Context context)
    {
        if(sysBookmarkDaoV2 == null)
            sysBookmarkDaoV2 = new SYSBookmarkDaoV2(context);
        return sysBookmarkDaoV2;
    }

    private boolean getOperationFromEntity(IEntity ientity, ArrayList arraylist)
    {
        boolean flag = false;
        if(ientity != null && ientity.moveToFirst()) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        android.content.ContentProviderOperation.Builder builder = ContentProviderOperation.newInsert(Browser.BOOKMARKS_URI).withYieldAllowed(true);
        do
        {
label0:
            {
                if(!ientity.isAfterLast())
                    break label0;
                builder.withValue("bookmark", Integer.valueOf(1));
                builder.withValue("visits", Integer.valueOf(flag));
                builder.withValue("date", Integer.valueOf(flag));
                builder.withValue("created", Integer.valueOf(flag));
                flag = arraylist.add(builder.build());
            }
            if(true)
                continue;
            Record record = ientity.getCurrentValue();
            String s = record.get(flag);
            if(s.equals("TITLE"))
                builder.withValue("title", record.get(2));
            else
            if(s.equals("URL"))
                builder.withValue("url", record.get(2));
            ientity.moveToNext();
        } while(true);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public String add(IEntity ientity)
    {
        String s = null;
        if(ientity != null) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        ientity.moveToFirst();
        ContentValues contentvalues = new ContentValues();
        do
        {
label0:
            {
                if(!ientity.isAfterLast())
                    break label0;
                contentvalues.put("bookmark", Integer.valueOf(1));
                contentvalues.put("visits", Integer.valueOf(0));
                contentvalues.put("date", Integer.valueOf(0));
                contentvalues.put("created", Integer.valueOf(0));
                Uri uri = contentResolver.insert(Browser.BOOKMARKS_URI, contentvalues);
                if(uri != null)
                    s = String.valueOf(ContentUris.parseId(uri));
            }
            if(true)
                continue;
            Record record = ientity.getCurrentValue();
            String s1 = record.get(0);
            if(s1.equals("TITLE"))
                contentvalues.put("title", record.get(2));
            else
            if(s1.equals("URL"))
                contentvalues.put("url", record.get(2));
            ientity.moveToNext();
        } while(true);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public boolean add(ArrayList arraylist, ArrayList arraylist1, int ai[])
    {
        int i;
        ArrayList arraylist2;
        int j;
        i = arraylist.size();
        arraylist2 = new ArrayList();
        j = 0;
_L5:
        if(j < i) goto _L2; else goto _L1
_L1:
        ContentProviderResult acontentproviderresult[] = contentResolver.applyBatch(Browser.BOOKMARKS_URI.getAuthority(), arraylist2);
        int k = 0;
_L7:
        if(k < i) goto _L4; else goto _L3
_L3:
        boolean flag = true;
_L6:
        return flag;
_L2:
        getOperationFromEntity((IEntity)arraylist.get(j), arraylist2);
        j++;
          goto _L5
        RemoteException remoteexception;
        remoteexception;
        remoteexception.toString();
        flag = false;
          goto _L6
        OperationApplicationException operationapplicationexception;
        operationapplicationexception;
        operationapplicationexception.toString();
        flag = false;
          goto _L6
_L4:
        Uri uri;
        String s;
        uri = acontentproviderresult[k].uri;
        s = "-1";
        String s1 = String.valueOf(ContentUris.parseId(uri));
        boolean flag1;
        s = s1;
        flag1 = true;
_L8:
        Exception exception;
        if(flag1)
            ai[k] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE.toInt();
        else
            ai[k] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
        try
        {
            arraylist1.add(k, s);
        }
        catch(IndexOutOfBoundsException indexoutofboundsexception)
        {
            ai[k] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
        }
        k++;
          goto _L7
        exception;
        flag1 = false;
          goto _L8
    }

    public com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue delete(String s)
    {
        Uri uri = Uri.withAppendedPath(Browser.BOOKMARKS_URI, s);
        com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue enum_idaoreturnvalue;
        if(contentResolver.delete(uri, null, null) > 0)
            enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED;
        else
            enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_FAILED;
        return enum_idaoreturnvalue;
    }

    public List getAllEntityId(String as[])
    {
        String s = null;
        ContentResolver contentresolver = contentResolver;
        Uri uri = Browser.BOOKMARKS_URI;
        String as1[] = new String[1];
        as1[0] = "_id";
        Cursor cursor = contentresolver.query(uri, as1, "bookmark = 1", s, s);
        if(cursor != null)
        {
label0:
            {
                s = new ArrayList();
                for(; cursor.moveToNext(); s.add(cursor.getString(cursor.getColumnIndex("_id"))))
                    break label0;

                cursor.close();
            }
        }
        return s;
    }

    public boolean isExisted(String s)
    {
        Uri uri = Uri.withAppendedPath(Browser.BOOKMARKS_URI, s);
        ContentResolver contentresolver = contentResolver;
        String as[] = new String[1];
        as[0] = "_id";
        Cursor cursor = contentresolver.query(uri, as, null, null, "_id ASC");
        boolean flag;
        if(cursor == null)
            flag = false;
        else
        if(cursor.moveToFirst())
        {
            cursor.close();
            flag = true;
        } else
        {
            cursor.close();
            flag = false;
        }
        return flag;
    }

    public IEntity query(String s)
    {
        SYSBookmark sysbookmark = new SYSBookmark();
        Uri uri = Uri.withAppendedPath(Browser.BOOKMARKS_URI, s);
        ContentResolver contentresolver = contentResolver;
        String as[] = new String[2];
        as[0] = "title";
        as[1] = "url";
        Cursor cursor = contentresolver.query(uri, as, null, null, "_id ASC");
        SYSBookmark sysbookmark1;
        if(cursor == null)
        {
            sysbookmark1 = sysbookmark;
        } else
        {
            if(cursor.moveToFirst())
            {
                Record record = new Record();
                Record record1 = new Record();
                Record record2 = new Record();
                record.put(0, "TITLE");
                record.put(2, cursor.getString(cursor.getColumnIndex("title")));
                record1.put(0, "URL");
                record1.put(2, cursor.getString(cursor.getColumnIndex("url")));
                record2.put(0, "BROWSERSOURCE");
                record2.put(2, "SYSTEM");
                sysbookmark.putValue(record);
                sysbookmark.putValue(record1);
                sysbookmark.putValue(record2);
            }
            sysbookmark.setId(s);
            cursor.close();
            sysbookmark1 = sysbookmark;
        }
        return sysbookmark1;
    }

    public List query()
    {
        return null;
    }

    public int queryNumber()
    {
        ContentResolver contentresolver = contentResolver;
        Uri uri = Browser.BOOKMARKS_URI;
        String as[] = new String[1];
        as[0] = "_id";
        Cursor cursor = contentresolver.query(uri, as, "bookmark = 1", null, null);
        int i;
        if(cursor != null)
        {
            i = cursor.getCount();
            cursor.close();
        } else
        {
            i = 0;
        }
        return i;
    }

    public com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue update(IEntity ientity)
    {
        if(ientity != null && ientity.getId() != null && !ientity.getId().equals("")) goto _L2; else goto _L1
_L1:
        com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
_L4:
        return enum_idaoreturnvalue;
_L2:
        ContentValues contentvalues;
        ientity.moveToFirst();
        contentvalues = new ContentValues();
_L5:
label0:
        {
            if(!ientity.isAfterLast())
                break label0;
            Uri uri = Uri.withAppendedPath(Browser.BOOKMARKS_URI, ientity.getId());
            Record record;
            String s;
            if(contentResolver.update(uri, contentvalues, null, null) > 0)
                enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED;
            else
                enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
        }
        if(true) goto _L4; else goto _L3
_L3:
        record = ientity.getCurrentValue();
        s = record.get(0);
        if(s.equals("TITLE"))
            contentvalues.put("title", record.get(2));
        else
        if(s.equals("URL"))
            contentvalues.put("url", record.get(2));
        ientity.moveToNext();
          goto _L5
    }

    private static final String ODERBYID = "_id ASC";
    private static SYSBookmarkDaoV2 sysBookmarkDaoV2 = null;

}
