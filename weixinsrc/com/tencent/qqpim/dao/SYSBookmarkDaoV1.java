// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Browser;
import com.tencent.qqpim.interfaces.IEntity;
import com.tencent.qqpim.object.Record;
import com.tencent.qqpim.object.SYSBookmark;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.tencent.qqpim.dao:
//            SYSBookmarkDao

public class SYSBookmarkDaoV1 extends SYSBookmarkDao
{

    private SYSBookmarkDaoV1(Context context)
    {
        super(context);
    }

    protected static SYSBookmarkDaoV1 getInstance(Context context)
    {
        if(sysBookmarkDaoV1 == null)
            sysBookmarkDaoV1 = new SYSBookmarkDaoV1(context);
        return sysBookmarkDaoV1;
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
    private static SYSBookmarkDaoV1 sysBookmarkDaoV1 = null;

}
