// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import android.content.*;
import android.database.Cursor;
import android.database.SQLException;
import com.tencent.qqpim.object.GroupValue;
import java.util.*;

public class SYSContactGroupDao
{

    private SYSContactGroupDao(Context context)
    {
        groupId_Name_Map = new HashMap();
        groupName_Id_Map = new HashMap();
        needadd_groupId_Name_Map = new HashMap();
        needadd_groupName_Id_Map = new HashMap();
        contentResolver = context.getContentResolver();
    }

    public static SYSContactGroupDao getInstance(Context context)
    {
        if(instance != null) goto _L2; else goto _L1
_L1:
        com/tencent/qqpim/dao/SYSContactGroupDao;
        JVM INSTR monitorenter ;
        if(instance == null)
            instance = new SYSContactGroupDao(context);
        com/tencent/qqpim/dao/SYSContactGroupDao;
        JVM INSTR monitorexit ;
_L2:
        return instance;
        Exception exception;
        exception;
        com/tencent/qqpim/dao/SYSContactGroupDao;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean addContactToGroup(long l, int i)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("mimetype", "vnd.android.cursor.item/group_membership");
        contentvalues.put("data1", Integer.valueOf(i));
        contentvalues.put("raw_contact_id", Long.valueOf(l));
        boolean flag;
        if(contentResolver.insert(android.provider.ContactsContract.Data.CONTENT_URI, contentvalues) != null)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean addContactsToGroup(ArrayList arraylist, int i)
    {
        if(arraylist != null) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L6:
        return flag;
_L2:
        ArrayList arraylist1;
        Iterator iterator;
        arraylist1 = new ArrayList();
        iterator = arraylist.iterator();
_L4:
        if(iterator.hasNext())
            break MISSING_BLOCK_LABEL_50;
        contentResolver.applyBatch("com.android.contacts", arraylist1);
        flag = true;
        continue; /* Loop/switch isn't completed */
        Integer integer = (Integer)iterator.next();
        arraylist1.add(ContentProviderOperation.newInsert(android.provider.ContactsContract.Data.CONTENT_URI).withValue("mimetype", "vnd.android.cursor.item/group_membership").withValue("data1", Integer.valueOf(i)).withValue("raw_contact_id", integer).build());
        if(true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        flag = false;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public long addGroup(String s)
    {
        long l;
        ContentValues contentvalues;
        l = -2L;
        contentvalues = new ContentValues();
        contentvalues.put("title", s);
        android.net.Uri uri1 = contentResolver.insert(android.provider.ContactsContract.Groups.CONTENT_URI, contentvalues);
        android.net.Uri uri = uri1;
_L3:
        if(uri != null) goto _L2; else goto _L1
_L1:
        return l;
        SQLException sqlexception;
        sqlexception;
        uri = null;
          goto _L3
_L2:
        long l1 = ContentUris.parseId(uri);
        l = l1;
          goto _L1
        NumberFormatException numberformatexception;
        numberformatexception;
          goto _L1
        UnsupportedOperationException unsupportedoperationexception;
        unsupportedoperationexception;
          goto _L1
    }

    public List getGroupDetails()
    {
        ArrayList arraylist1;
label0:
        {
            ArrayList arraylist = new ArrayList();
            try
            {
                ContentResolver contentresolver = contentResolver;
                android.net.Uri uri = android.provider.ContactsContract.Groups.CONTENT_URI;
                String as[] = new String[4];
                as[0] = "_id";
                as[1] = "title";
                as[2] = "account_name";
                as[3] = "account_type";
                Cursor cursor = contentresolver.query(uri, as, "deleted==0", null, null);
                if(cursor == null)
                {
                    arraylist1 = arraylist;
                    break label0;
                }
                if(cursor.moveToFirst())
                    do
                    {
                        int i = cursor.getInt(0);
                        String s = cursor.getString(1);
                        String s1 = cursor.getString(2);
                        String s2 = cursor.getString(3);
                        if(s != null)
                        {
                            GroupValue groupvalue = new GroupValue();
                            groupvalue.setAccountName(s1);
                            groupvalue.setAccountType(s2);
                            groupvalue.setGroupName(s);
                            groupvalue.setId(i);
                            arraylist.add(groupvalue);
                        }
                    } while(cursor.moveToNext());
                cursor.close();
            }
            catch(Exception exception) { }
            arraylist1 = arraylist;
        }
        return arraylist1;
    }

    public int getGroupIdByGroupName(String s)
    {
        int i;
        if(groupName_Id_Map == null)
        {
            i = -1;
        } else
        {
            Integer integer = (Integer)groupName_Id_Map.get(s);
            if(integer == null)
                i = -1;
            else
                i = integer.intValue();
        }
        return i;
    }

    public String getGroupNameByGroupId(int i)
    {
        String s;
        if(groupId_Name_Map == null)
            s = null;
        else
            s = (String)groupId_Name_Map.get(Integer.valueOf(i));
        return s;
    }

    public int getTobeAddedGroupIdByGroupName(String s)
    {
        int i;
        if(needadd_groupName_Id_Map == null)
        {
            i = -1;
        } else
        {
            Integer integer = (Integer)needadd_groupName_Id_Map.get(s);
            if(integer == null)
                i = -1;
            else
                i = integer.intValue();
        }
        return i;
    }

    public String getTobeAddedGroupNameByGroupId(int i)
    {
        String s;
        if(needadd_groupId_Name_Map == null)
            s = null;
        else
            s = (String)needadd_groupId_Name_Map.get(Integer.valueOf(i));
        return s;
    }

    public boolean reGroupName(int i, String s)
    {
        android.net.Uri uri = ContentUris.withAppendedId(android.provider.ContactsContract.Groups.CONTENT_URI, i);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("title", s);
        boolean flag;
        if(contentResolver.update(uri, contentvalues, null, null) > 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public void readAllGroups()
    {
        if(groupId_Name_Map != null && groupName_Id_Map != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        groupId_Name_Map.clear();
        groupName_Id_Map.clear();
        try
        {
            ContentResolver contentresolver = contentResolver;
            android.net.Uri uri = android.provider.ContactsContract.Groups.CONTENT_URI;
            String as[] = new String[2];
            as[0] = "_id";
            as[1] = "title";
            Cursor cursor = contentresolver.query(uri, as, "deleted==0", null, null);
            if(cursor != null)
            {
                if(cursor.moveToFirst())
                    do
                    {
                        int i = cursor.getInt(0);
                        String s = cursor.getString(1);
                        groupId_Name_Map.put(Integer.valueOf(i), s);
                        groupName_Id_Map.put(s, Integer.valueOf(i));
                    } while(cursor.moveToNext());
                cursor.close();
            }
        }
        catch(Exception exception) { }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public boolean removeContactFromGroup(int i, int j)
    {
        boolean flag = false;
        int k;
        k = contentResolver.delete(android.provider.ContactsContract.Data.CONTENT_URI, (new StringBuilder("mimetype='vnd.android.cursor.item/group_membership' and data1=")).append(j).append(" and ").append("raw_contact_id").append("=").append(String.valueOf(i)).toString(), null);
        (new StringBuilder("rows=")).append(k).toString();
        if(k > 0)
            flag = true;
_L2:
        return flag;
        SQLException sqlexception;
        sqlexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public boolean removeGroup(int i)
    {
        android.net.Uri uri = ContentUris.withAppendedId(android.provider.ContactsContract.Groups.CONTENT_URI, i);
        boolean flag;
        if(contentResolver.delete(uri, null, null) > 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean removeGroup(String s)
    {
        if(needadd_groupName_Id_Map.size() == 0)
            readAllGroups();
        Integer integer = (Integer)needadd_groupName_Id_Map.get(s);
        boolean flag;
        if(integer != null)
            flag = removeGroup(integer.intValue());
        else
            flag = false;
        return flag;
    }

    public void saveGroupInfoTobeAdded(int i, String s)
    {
        if(needadd_groupId_Name_Map != null && needadd_groupName_Id_Map != null)
        {
            needadd_groupId_Name_Map.put(Integer.valueOf(i), s);
            needadd_groupName_Id_Map.put(s, Integer.valueOf(i));
        }
    }

    public static final int ERR_FAILED = -2;
    public static final int ERR_NONE = 0;
    public static final int ERR_NOT_FOUND = -1;
    private static ContentResolver contentResolver;
    private static SYSContactGroupDao instance = null;
    private HashMap groupId_Name_Map;
    private HashMap groupName_Id_Map;
    private HashMap needadd_groupId_Name_Map;
    private HashMap needadd_groupName_Id_Map;

}
