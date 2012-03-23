// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import android.content.*;
import android.database.Cursor;
import android.database.SQLException;
import com.tencent.qqpim.object.GroupValue;
import java.util.*;

public class SYSContactGroupDaoV1
{

    private SYSContactGroupDaoV1(Context context)
    {
        groupId_Name_Map = new HashMap();
        groupName_Id_Map = new HashMap();
        contentResolver = context.getContentResolver();
    }

    public static SYSContactGroupDaoV1 getInstance(Context context)
    {
        if(instance != null) goto _L2; else goto _L1
_L1:
        com/tencent/qqpim/dao/SYSContactGroupDaoV1;
        JVM INSTR monitorenter ;
        if(instance == null)
            instance = new SYSContactGroupDaoV1(context);
        com/tencent/qqpim/dao/SYSContactGroupDaoV1;
        JVM INSTR monitorexit ;
_L2:
        return instance;
        Exception exception;
        exception;
        com/tencent/qqpim/dao/SYSContactGroupDaoV1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean addContactToGroup(long l, int i)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("group_id", Integer.valueOf(i));
        contentvalues.put("person", Long.valueOf(l));
        boolean flag;
        if(contentResolver.insert(android.provider.Contacts.GroupMembership.CONTENT_URI, contentvalues) != null)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public long addGroup(String s)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", s);
        android.net.Uri uri = contentResolver.insert(android.provider.Contacts.Groups.CONTENT_URI, contentvalues);
        long l;
        if(uri == null)
            l = -2L;
        else
            l = ContentUris.parseId(uri);
        return l;
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
                android.net.Uri uri = android.provider.Contacts.Groups.CONTENT_URI;
                String as[] = new String[2];
                as[0] = "_id";
                as[1] = "name";
                Cursor cursor = contentresolver.query(uri, as, null, null, null);
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
                        if(s != null)
                        {
                            GroupValue groupvalue = new GroupValue();
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

    public String getGroupNamesFromContactId(String s)
    {
        String s1 = null;
        StringBuffer stringbuffer = new StringBuffer("");
        ContentResolver contentresolver = contentResolver;
        android.net.Uri uri = android.provider.Contacts.GroupMembership.CONTENT_URI;
        String as[] = new String[1];
        as[0] = "group_id";
        Cursor cursor = contentresolver.query(uri, as, (new StringBuilder("person = ")).append(s).toString(), s1, s1);
        if(cursor != null)
        {
            while(cursor.moveToNext()) 
            {
                int i = cursor.getInt(cursor.getColumnIndex("group_id"));
                if(-1 != i)
                {
                    String s2 = getGroupNameByGroupId(i);
                    if(stringbuffer.length() > 0)
                        stringbuffer.append(",");
                    stringbuffer.append(s2);
                }
            }
            cursor.close();
            s1 = stringbuffer.toString();
        }
        return s1;
    }

    public String getGroupNamesFromContactId(String s, List list)
    {
        String s1 = null;
        StringBuffer stringbuffer = new StringBuffer("");
        ContentResolver contentresolver = contentResolver;
        android.net.Uri uri = android.provider.Contacts.GroupMembership.CONTENT_URI;
        String as[] = new String[1];
        as[0] = "group_id";
        Cursor cursor = contentresolver.query(uri, as, (new StringBuilder("person = ")).append(s).toString(), s1, s1);
        if(cursor != null)
        {
            while(cursor.moveToNext()) 
            {
                int i = cursor.getInt(cursor.getColumnIndex("group_id"));
                if(-1 != i)
                {
                    list.add(Integer.valueOf(i));
                    String s2 = getGroupNameByGroupId(i);
                    if(stringbuffer.length() > 0)
                        stringbuffer.append(",");
                    stringbuffer.append(s2);
                }
            }
            cursor.close();
            s1 = stringbuffer.toString();
        }
        return s1;
    }

    public boolean reGroupName(int i, String s)
    {
        android.net.Uri uri = ContentUris.withAppendedId(android.provider.Contacts.Groups.CONTENT_URI, i);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", s);
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
            android.net.Uri uri = android.provider.Contacts.Groups.CONTENT_URI;
            String as[] = new String[2];
            as[0] = "_id";
            as[1] = "name";
            Cursor cursor = contentresolver.query(uri, as, null, null, null);
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
        int k;
        ContentResolver contentresolver = contentResolver;
        android.net.Uri uri = android.provider.Contacts.GroupMembership.CONTENT_URI;
        String as[] = new String[1];
        as[0] = "_id";
        Cursor cursor = contentresolver.query(uri, as, (new StringBuilder("group_id=")).append(j).append(" and ").append("person").append("=").append(i).toString(), null, null);
        if(cursor != null && cursor.getCount() > 0)
        {
            k = 0;
            do
            {
                if(!cursor.moveToNext())
                {
                    cursor.close();
                    break MISSING_BLOCK_LABEL_167;
                }
                int l = cursor.getInt(0);
                android.net.Uri uri1 = ContentUris.withAppendedId(android.provider.Contacts.GroupMembership.CONTENT_URI, l);
                k += contentResolver.delete(uri1, null, null);
            } while(true);
        }
        cursor.close();
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_181;
        SQLException sqlexception;
        sqlexception;
        k = 0;
        while(k <= 0) 
        {
            flag = false;
            break MISSING_BLOCK_LABEL_181;
        }
        flag = true;
        return flag;
    }

    public boolean removeGroup(int i)
    {
        android.net.Uri uri = ContentUris.withAppendedId(android.provider.Contacts.Groups.CONTENT_URI, i);
        boolean flag;
        if(contentResolver.delete(uri, null, null) > 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean removeGroup(String s)
    {
        if(groupName_Id_Map.size() == 0)
            readAllGroups();
        Integer integer = (Integer)groupName_Id_Map.get(s);
        boolean flag;
        if(integer != null)
            flag = removeGroup(integer.intValue());
        else
            flag = false;
        return flag;
    }

    public static final int ERR_FAILED = -2;
    public static final int ERR_NONE = 0;
    public static final int ERR_NOT_FOUND = -1;
    private static ContentResolver contentResolver;
    private static SYSContactGroupDaoV1 instance = null;
    private HashMap groupId_Name_Map;
    private HashMap groupName_Id_Map;

}
