// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import android.telephony.PhoneNumberUtils;
import com.tencent.qqpim.interfaces.IEntity;
import com.tencent.qqpim.issue.IssueSettings;
import com.tencent.qqpim.object.*;
import com.tencent.qqpim.utils.QQPimUtils;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.*;

// Referenced classes of package com.tencent.qqpim.dao:
//            SYSContactDao, SYSContactGroupDaoV1

public class SYSContactDaoV1 extends SYSContactDao
{

    private SYSContactDaoV1(Context context)
    {
        super(context);
        groupDao = null;
        groupDao = SYSContactGroupDaoV1.getInstance(context);
    }

    private static String FixName(String s)
    {
        int i;
        StringBuilder stringbuilder;
        i = 0;
        stringbuilder = new StringBuilder();
        if(s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        String s1 = null;
_L4:
        return s1;
_L2:
        s.charAt(i);
        do
        {
label0:
            {
                if(i < -1 + s.length())
                    break label0;
                if(i == -1 + s.length() && s.charAt(i) != ';')
                    stringbuilder.append(s.charAt(i));
                s1 = stringbuilder.toString();
            }
            if(true)
                continue;
            char c = s.charAt(i);
            if(c == '\\')
            {
                i++;
                stringbuilder.append(s.charAt(i));
            } else
            if(c == ';')
                stringbuilder.append(" ");
            else
                stringbuilder.append(c);
            i++;
        } while(true);
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void addContactEntity(SYSContact syscontact)
    {
        int i;
        int ai[];
        int j;
        int k;
        String s;
        String s1;
        boolean flag;
        String s2;
        String s3;
        int l;
        syscontact.moveToFirst();
        i = 0;
        orgList.clear();
        titleList.clear();
        ai = new int[1 + syscontact.getCount()];
        j = 0;
        k = 0;
        s = null;
        s1 = null;
        flag = false;
        s2 = null;
        s3 = "";
        l = 0;
_L19:
        if(!syscontact.isAfterLast()) goto _L2; else goto _L1
_L1:
        ContentValues acontentvalues[];
        ContentValues acontentvalues1[];
        int i1;
        int j1;
        int k1;
        ContentValues acontentvalues2[];
        int i3;
        String s6;
        int l4;
        int i5;
        int k5;
        ArrayList arraylist = new ArrayList();
        interpretGroupNames(s3, arraylist);
        if(syscontact.isEditGroupNumberData())
        {
            int l2;
            Record record1;
            Integer integer;
            int i4;
            int j4;
            int k4;
            int j5;
            int l5;
            int i6;
            int j6;
            if(syscontact.getId() == null || syscontact.getId().equals(""))
            {
                addUserByGroupIds(s, s1, flag, s2, syscontact.getGroupIds());
            } else
            {
                String s5 = syscontact.getId();
                List list = syscontact.getGroupIds();
                addUpdateUserByGroupIds(s, s1, s5, flag, s2, list);
            }
            syscontact.moveToFirst();
        } else
        {
            if(syscontact.getId() == null || syscontact.getId().equals(""))
            {
                addUser(s, s1, flag, s2, arraylist);
            } else
            {
                String s4 = syscontact.getId();
                addUpdateUser(s, s1, s4, flag, s2, arraylist);
            }
            syscontact.moveToFirst();
        }
        acontentvalues = new ContentValues[j];
        acontentvalues1 = new ContentValues[k];
        i1 = 0;
        j1 = 0;
        k1 = 0;
_L23:
        if(j1 < l) goto _L4; else goto _L3
_L3:
        l2 = Math.max(orgList.size(), titleList.size());
        if(l2 <= 0) goto _L6; else goto _L5
_L5:
        acontentvalues2 = new ContentValues[l2];
        i3 = 0;
_L38:
        if(orgList.size() != 0 || titleList.size() != 0) goto _L8; else goto _L7
_L7:
        contentResolver.bulkInsert(ORG_URI, acontentvalues2);
_L6:
        if(j > 0)
            contentResolver.bulkInsert(PHONE_URI, acontentvalues);
        if(k > 0)
            contentResolver.bulkInsert(METHODS_URI, acontentvalues1);
        return;
_L2:
        record1 = syscontact.getCurrentValue();
        integer = (Integer)tagMap.get(record1.get(0));
        if(integer == null) goto _L10; else goto _L9
_L9:
        j5 = integer.intValue();
        ai[l] = j5;
        j5;
        JVM INSTR tableswitch 4 13: default 352
    //                   4 422
    //                   5 352
    //                   6 352
    //                   7 352
    //                   8 455
    //                   9 488
    //                   10 526
    //                   11 563
    //                   12 621
    //                   13 595;
           goto _L11 _L12 _L11 _L11 _L11 _L13 _L14 _L15 _L16 _L17 _L18
_L11:
        if(integer.intValue() == 0)
        {
            j6 = j + 1;
            k5 = i;
            l4 = k;
            s6 = s3;
            i5 = j6;
        } else
        {
            if(integer.intValue() >= 4)
                break MISSING_BLOCK_LABEL_1276;
            i6 = k + 1;
            k5 = i;
            l4 = i6;
            s6 = s3;
            i5 = j;
        }
_L39:
        l5 = l + 1;
        k4 = k5;
        j4 = l5;
_L20:
        syscontact.moveToNext();
        k = l4;
        j = i5;
        l = j4;
        s3 = s6;
        i = k4;
          goto _L19
_L12:
        s = record1.get(2);
        ai[l] = -1;
        l4 = k;
        k5 = 3;
        s6 = s3;
        i5 = j;
        break MISSING_BLOCK_LABEL_381;
_L13:
        s1 = record1.get(2);
        ai[l] = -1;
        s6 = s3;
        k5 = i;
        i5 = j;
        l4 = k;
        break MISSING_BLOCK_LABEL_381;
_L14:
        if(i >= 2)
            break MISSING_BLOCK_LABEL_1276;
        s = record1.get(2);
        ai[l] = -1;
        l4 = k;
        k5 = 2;
        s6 = s3;
        i5 = j;
        break MISSING_BLOCK_LABEL_381;
_L15:
        if(i > 0)
            break MISSING_BLOCK_LABEL_1276;
        s = record1.get(2);
        ai[l] = -1;
        l4 = k;
        k5 = 1;
        s6 = s3;
        i5 = j;
        break MISSING_BLOCK_LABEL_381;
_L16:
        flag = record1.get(2).equals("1");
        s6 = s3;
        k5 = i;
        i5 = j;
        l4 = k;
        break MISSING_BLOCK_LABEL_381;
_L18:
        s2 = record1.get(2);
        s6 = s3;
        k5 = i;
        i5 = j;
        l4 = k;
        break MISSING_BLOCK_LABEL_381;
_L17:
        s6 = record1.get(2);
        i5 = j;
        k5 = i;
        l4 = k;
        break MISSING_BLOCK_LABEL_381;
_L10:
        i4 = l + 1;
        ai[l] = -1;
        j4 = i4;
        k4 = i;
        s6 = s3;
        l4 = k;
        i5 = j;
          goto _L20
_L4:
        if(ai[j1] >= 0) goto _L22; else goto _L21
_L21:
        syscontact.moveToNext();
_L30:
        j1++;
          goto _L23
_L22:
        Record record = syscontact.getCurrentValue();
        if(ai[j1] % 2 != 0) goto _L25; else goto _L24
_L24:
        ai[j1];
        JVM INSTR lookupswitch 3: default 884
    //                   0: 900
    //                   2: 919
    //                   6: 946;
           goto _L26 _L27 _L28 _L29
_L26:
        int l1 = i1;
_L31:
        syscontact.moveToNext();
        i1 = l1;
          goto _L30
_L27:
        l1 = i1 + 1;
        acontentvalues[i1] = addPhone(record);
          goto _L31
_L28:
        int k2 = k1 + 1;
        acontentvalues1[k1] = addEmailOrAddress(record);
        k1 = k2;
        l1 = i1;
          goto _L31
_L29:
        orgList.add(record);
        l1 = i1;
          goto _L31
_L25:
        ai[j1];
        JVM INSTR tableswitch 1 7: default 1008
    //                   1 1015
    //                   2 1008
    //                   3 1042
    //                   4 1008
    //                   5 1069
    //                   6 1008
    //                   7 1091;
           goto _L32 _L33 _L32 _L34 _L32 _L35 _L32 _L36
_L32:
        l1 = i1;
          goto _L31
_L33:
        int j2 = k1 + 1;
        acontentvalues1[k1] = addEmailOrAddress(record);
        k1 = j2;
        l1 = i1;
          goto _L31
_L34:
        int i2 = k1 + 1;
        acontentvalues1[k1] = addIM(record);
        k1 = i2;
        l1 = i1;
          goto _L31
_L35:
        if(IssueSettings.photoDownloadTophoneAfterEditerNativePhotoError_1_5SDK) goto _L32; else goto _L37
_L37:
        addPhoto(id, record);
        l1 = i1;
          goto _L31
_L36:
        titleList.add(record);
          goto _L32
_L8:
        if(titleList.size() == 0)
        {
            int l3 = i3 + 1;
            acontentvalues2[i3] = addORG(id, (Record)orgList.get(0), "");
            orgList.remove(0);
            i3 = l3;
        } else
        if(orgList.size() == 0)
        {
            int k3 = i3 + 1;
            acontentvalues2[i3] = addORG(id, null, ((Record)titleList.get(0)).get(2));
            titleList.remove(0);
            i3 = k3;
        } else
        {
            int j3 = i3 + 1;
            acontentvalues2[i3] = addORG(id, (Record)orgList.get(0), ((Record)titleList.get(0)).get(2));
            orgList.remove(0);
            titleList.remove(0);
            i3 = j3;
        }
          goto _L38
        s6 = s3;
        k5 = i;
        i5 = j;
        l4 = k;
          goto _L39
    }

    private boolean addContactMethodList(ContentValues acontentvalues[])
    {
        boolean flag;
        if(contentResolver.bulkInsert(METHODS_URI, acontentvalues) == 0)
            flag = false;
        else
            flag = true;
        return flag;
    }

    private void addContactToGroups(long l, ArrayList arraylist)
    {
        if(arraylist == null || arraylist.size() == 0)
            addToMyContactsGroup(l);
        Iterator iterator = arraylist.iterator();
        do
        {
            String s;
            do
            {
                if(!iterator.hasNext())
                    return;
                s = (String)iterator.next();
            } while(s == null || s.length() <= 0);
            int i = groupDao.getGroupIdByGroupName(s);
            if(i != -1)
            {
                groupDao.addContactToGroup(l, i);
            } else
            {
                long l1 = groupDao.addGroup(s);
                groupDao.readAllGroups();
                groupDao.addContactToGroup(l, (int)l1);
            }
        } while(true);
    }

    private void addContactToGroupsByGroupIds(long l, List list)
    {
        if(list == null || list.size() == 0)
            addToMyContactsGroup(l);
        Iterator iterator = list.iterator();
        do
        {
            if(!iterator.hasNext())
                return;
            Integer integer = (Integer)iterator.next();
            groupDao.addContactToGroup(l, integer.intValue());
        } while(true);
    }

    private static ContentValues addEmailOrAddress(Record record)
    {
        ContentValues contentvalues = new ContentValues();
        String as[];
        int i;
        if(record.get(0).equals("ADR"))
        {
            contentvalues.put("kind", Integer.valueOf(2));
            contentvalues.put("data", Tool.combineString(record.get(2)));
        } else
        {
            contentvalues.put("kind", Integer.valueOf(1));
            contentvalues.put("data", record.get(2));
        }
        as = Tool.parseLabelForV1(record.get(1));
        i = Tool.getIndexOfStringArray(ADDRESSTYPE, as[0]);
        if(i <= 0)
        {
            contentvalues.put("type", Integer.valueOf(0));
            contentvalues.put("label", as[0]);
        } else
        {
            contentvalues.put("type", Integer.valueOf(i));
        }
        if(as.length > 1)
            contentvalues.put("isprimary", Integer.valueOf(1));
        contentvalues.put("person", Long.valueOf(maxId));
        return contentvalues;
    }

    private static ContentValues addIM(Record record)
    {
        ContentValues contentvalues = new ContentValues();
        String as[] = Tool.parseLabelForV1(record.get(1));
        int i = Tool.getIndexOfStringArray(IMTYPE, as[0]);
        if(i < 0)
        {
            if(IssueSettings.fetionCannotBeRestored)
                contentvalues.put("aux_data", android.provider.Contacts.ContactMethods.encodePredefinedImProtocol(8));
            else
                contentvalues.put("aux_data", android.provider.Contacts.ContactMethods.encodePredefinedImProtocol(1));
        } else
        {
            contentvalues.put("aux_data", android.provider.Contacts.ContactMethods.encodePredefinedImProtocol(i));
        }
        if(as.length > 1)
            contentvalues.put("isprimary", Integer.valueOf(1));
        contentvalues.put("data", record.get(2));
        contentvalues.put("person", Long.valueOf(maxId));
        contentvalues.put("kind", Integer.valueOf(3));
        contentvalues.put("type", Integer.valueOf(3));
        return contentvalues;
    }

    private boolean addNote(Uri uri, Record record)
    {
        boolean flag;
        if(record.get(2).equals(""))
        {
            flag = false;
        } else
        {
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("notes", record.get(2));
            contentResolver.update(uri, contentvalues, null, null);
            flag = true;
        }
        return flag;
    }

    private static ContentValues addORG(Uri uri, Record record, String s)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("title", s);
        if(record != null)
        {
            String as[] = Tool.parseLabelForV1(record.get(1));
            int i = Tool.getIndexOfStringArray(ORGTYPE, as[0]);
            if(i <= 0)
            {
                contentvalues.put("type", Integer.valueOf(0));
                contentvalues.put("label", as[0]);
            } else
            {
                contentvalues.put("type", Integer.valueOf(i));
            }
            if(as.length > 1)
                contentvalues.put("isprimary", Integer.valueOf(1));
            contentvalues.put("company", record.get(2));
        }
        contentvalues.put("person", Long.valueOf(maxId));
        return contentvalues;
    }

    private static ContentValues addPhone(Record record)
    {
        ContentValues contentvalues = new ContentValues();
        String as[] = Tool.parseLabelForV1(record.get(1));
        int i = Tool.getIndexOfStringArray(TELTYPE, as[0]);
        if(i <= 0)
        {
            contentvalues.put("type", Integer.valueOf(0));
            contentvalues.put("label", as[0]);
        } else
        {
            contentvalues.put("type", String.valueOf(i));
        }
        if(record.isPref())
            contentvalues.put("isprimary", Integer.valueOf(1));
        contentvalues.put("number", record.get(2));
        contentvalues.put("person", Long.valueOf(maxId));
        return contentvalues;
    }

    private boolean addPhoneList(ContentValues acontentvalues[])
    {
        boolean flag;
        if(contentResolver.bulkInsert(PHONE_URI, acontentvalues) == 0)
            flag = false;
        else
            flag = true;
        return flag;
    }

    private static boolean addPhoto(Uri uri, Record record)
    {
        try
        {
            values.clear();
            values.put("data", record.getBinaryData());
            android.provider.Contacts.People.setPhotoData(contentResolver, uri, record.getBinaryData());
        }
        catch(Exception exception) { }
        return true;
    }

    private static void addToMyContactsGroup(long l)
    {
        Cursor cursor;
        if(groupId != 0L)
            break MISSING_BLOCK_LABEL_69;
        cursor = contentResolver.query(android.provider.Contacts.Groups.CONTENT_URI, null, "system_id='Contacts'", null, null);
        if(cursor == null)
            break MISSING_BLOCK_LABEL_69;
        if(cursor.moveToFirst())
            groupId = cursor.getLong(cursor.getColumnIndex("_id"));
        cursor.close();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("person", Long.valueOf(l));
        contentvalues.put("group_id", Long.valueOf(groupId));
        contentResolver.insert(android.provider.Contacts.GroupMembership.CONTENT_URI, contentvalues);
        return;
        Exception exception;
        exception;
        cursor.close();
        throw exception;
    }

    private void addUpdateUser(String s, String s1, String s2, boolean flag, String s3, ArrayList arraylist)
    {
        values.clear();
        ContentValues contentvalues = values;
        int i;
        Uri uri;
        if(flag)
            i = 1;
        else
            i = 0;
        contentvalues.put("starred", Integer.valueOf(i));
        if(s != null)
            values.put("name", fixName2(s));
        if(s1 != null)
            values.put("notes", s1);
        if(s3 != null)
            values.put("custom_ringtone", s3);
        values.put("_id", s2);
        uri = contentResolver.insert(android.provider.Contacts.People.CONTENT_URI, values);
        id = uri;
        maxId = ContentUris.parseId(uri);
        addContactToGroups(maxId, arraylist);
    }

    private void addUpdateUserByGroupIds(String s, String s1, String s2, boolean flag, String s3, List list)
    {
        values.clear();
        ContentValues contentvalues = values;
        int i;
        Uri uri;
        if(flag)
            i = 1;
        else
            i = 0;
        contentvalues.put("starred", Integer.valueOf(i));
        if(s != null)
            values.put("name", fixName2(s));
        if(s1 != null)
            values.put("notes", s1);
        if(s3 != null)
            values.put("custom_ringtone", s3);
        values.put("_id", s2);
        uri = contentResolver.insert(android.provider.Contacts.People.CONTENT_URI, values);
        id = uri;
        maxId = ContentUris.parseId(uri);
        addContactToGroupsByGroupIds(maxId, list);
    }

    private void addUser(String s, String s1, boolean flag, String s2, ArrayList arraylist)
    {
        values.clear();
        if(IssueSettings.contactGoogleTypeAndPhoneTypeError)
            values.put("extra_group", Integer.valueOf(2));
        ContentValues contentvalues = values;
        String s3;
        Uri uri;
        if(flag)
            s3 = "1";
        else
            s3 = "0";
        contentvalues.put("starred", s3);
        values.put("name", fixName2(s));
        values.put("notes", s1);
        if(s2 != null)
            values.put("custom_ringtone", s2);
        uri = contentResolver.insert(android.provider.Contacts.People.CONTENT_URI, values);
        id = uri;
        maxId = ContentUris.parseId(uri);
        addContactToGroups(maxId, arraylist);
    }

    private void addUserByGroupIds(String s, String s1, boolean flag, String s2, List list)
    {
        values.clear();
        if(IssueSettings.contactGoogleTypeAndPhoneTypeError)
            values.put("extra_group", Integer.valueOf(2));
        ContentValues contentvalues = values;
        String s3;
        Uri uri;
        if(flag)
            s3 = "1";
        else
            s3 = "0";
        contentvalues.put("starred", s3);
        values.put("name", fixName2(s));
        values.put("notes", s1);
        if(s2 != null)
            values.put("custom_ringtone", s2);
        uri = contentResolver.insert(android.provider.Contacts.People.CONTENT_URI, values);
        id = uri;
        maxId = ContentUris.parseId(uri);
        addContactToGroupsByGroupIds(maxId, list);
    }

    private com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue deleteInfo(IEntity ientity)
    {
        String s = ientity.getId();
        Uri uri = Uri.withAppendedPath(android.provider.Contacts.People.CONTENT_URI, s);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", "");
        contentvalues.put("notes", "");
        com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue enum_idaoreturnvalue;
        if(0 + contentResolver.update(uri, contentvalues, null, null) == 0)
        {
            enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
        } else
        {
            Uri uri1 = Uri.withAppendedPath(uri, "contact_methods");
            ContentResolver contentresolver = contentResolver;
            String as[] = new String[1];
            as[0] = "_id";
            Cursor cursor = contentresolver.query(uri1, as, null, null, null);
            if(cursor == null)
            {
                enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_FAILED;
            } else
            {
                for(; cursor.moveToNext(); contentResolver.delete(Uri.withAppendedPath(android.provider.Contacts.ContactMethods.CONTENT_URI, cursor.getString(cursor.getColumnIndex("_id"))), null, null));
                cursor.close();
                Uri uri2 = Uri.withAppendedPath(uri, "phones");
                ContentResolver contentresolver1 = contentResolver;
                String as1[] = new String[1];
                as1[0] = "_id";
                Cursor cursor1 = contentresolver1.query(uri2, as1, null, null, null);
                if(cursor1 == null)
                {
                    enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_FAILED;
                } else
                {
                    for(; cursor1.moveToNext(); contentResolver.delete(Uri.withAppendedPath(android.provider.Contacts.Phones.CONTENT_URI, cursor1.getString(cursor1.getColumnIndex("_id"))), null, null));
                    cursor1.close();
                    ContentValues contentvalues1 = new ContentValues();
                    contentvalues1.put("data", "");
                    Uri uri3 = Uri.withAppendedPath(uri, "photo");
                    contentResolver.update(uri3, contentvalues1, null, null);
                    Uri uri4 = Uri.withAppendedPath(uri, "organizations");
                    ContentResolver contentresolver2 = contentResolver;
                    String as2[] = new String[1];
                    as2[0] = "_id";
                    Cursor cursor2 = contentresolver2.query(uri4, as2, null, null, null);
                    if(cursor2 == null)
                    {
                        enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_FAILED;
                    } else
                    {
                        for(; cursor2.moveToNext(); contentResolver.delete(Uri.withAppendedPath(android.provider.Contacts.Organizations.CONTENT_URI, cursor2.getString(cursor2.getColumnIndex("_id"))), null, null));
                        cursor2.close();
                        enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED;
                    }
                }
            }
        }
        return enum_idaoreturnvalue;
    }

    private static String fixName2(String s)
    {
        String s1 = null;
        if(s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        return s1;
_L2:
        char ac[] = new char[4];
        ac[0] = '\\';
        ac[1] = ';';
        ac[2] = 'r';
        ac[3] = 'n';
        List list = QQPimUtils.divideStringToList(s, ac, ';');
        if(list != null)
        {
            String s2;
            String s3;
            String s4;
            String s5;
            String s6;
            StringBuilder stringbuilder;
            boolean flag;
            boolean flag1;
            if(list.size() > 0)
                s2 = (String)list.get(0);
            else
                s2 = s1;
            if(list.size() > 1)
                s3 = (String)list.get(1);
            else
                s3 = s1;
            if(list.size() > 2)
                s4 = (String)list.get(2);
            else
                s4 = s1;
            if(list.size() > 3)
                s5 = (String)list.get(3);
            else
                s5 = s1;
            if(list.size() > 4)
                s6 = (String)list.get(4);
            else
                s6 = s1;
            stringbuilder = new StringBuilder();
            if(s5 != null && s5.length() > 0)
            {
                stringbuilder.append(s5);
                flag = true;
            } else
            {
                flag = false;
            }
            if(s2 != null && s2.length() > 0)
            {
                if(flag)
                    stringbuilder.append(" ");
                stringbuilder.append(s2);
                flag1 = true;
            } else
            {
                flag1 = flag;
            }
            if(s4 != null && s4.length() > 0)
            {
                if(flag1)
                    stringbuilder.append(" ");
                stringbuilder.append(s4);
                flag1 = true;
            }
            if(s3 != null && s3.length() > 0)
            {
                if(flag1)
                    stringbuilder.append(" ");
                stringbuilder.append(s3);
                flag1 = true;
            }
            if(s6 != null && s6.length() > 0)
            {
                if(flag1)
                    stringbuilder.append(" ");
                stringbuilder.append(s6);
            }
            s1 = stringbuilder.toString();
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    protected static SYSContactDaoV1 getInstance(Context context)
    {
        return new SYSContactDaoV1(context);
    }

    private static ArrayList queryContactMethodLis(String s)
    {
        ArrayList arraylist = null;
        ArrayList arraylist1 = new ArrayList();
        ContentResolver contentresolver = contentResolver;
        Uri uri = Uri.withAppendedPath(Uri.withAppendedPath(android.provider.Contacts.People.CONTENT_URI, s), "contact_methods");
        String s1 = ODERBYCMID;
        Cursor cursor = contentresolver.query(uri, arraylist, arraylist, arraylist, s1);
        if(cursor != null)
        {
            while(cursor.moveToNext()) 
            {
                Record record = new Record();
                int i = cursor.getInt(cursor.getColumnIndex("kind"));
                if(i == 1)
                {
                    record.put(0, "EMAIL");
                    record.put(2, cursor.getString(cursor.getColumnIndex("data")));
                    if(cursor.getString(cursor.getColumnIndex("type")).equals("0"))
                    {
                        record.put(1, cursor.getString(cursor.getColumnIndex("label")));
                    } else
                    {
                        int l = Integer.parseInt(cursor.getString(cursor.getColumnIndex("type")));
                        if(l < 4)
                            record.put(1, ADDRESSTYPE[l]);
                    }
                } else
                if(i == 2)
                {
                    record.put(0, "ADR");
                    record.put(2, (new StringBuilder(";;")).append(QQPimUtils.escapeString(cursor.getString(cursor.getColumnIndex("data")), chNeedEscapeChars)).toString());
                    if(cursor.getString(cursor.getColumnIndex("type")).equals("0"))
                    {
                        record.put(1, cursor.getString(cursor.getColumnIndex("label")));
                    } else
                    {
                        int k = Integer.parseInt(cursor.getString(cursor.getColumnIndex("type")));
                        if(k < 4)
                            record.put(1, ADDRESSTYPE[k]);
                    }
                } else
                {
                    record.put(0, "X-TC-IM");
                    record.put(2, cursor.getString(cursor.getColumnIndex("data")));
                    Object obj = android.provider.Contacts.ContactMethods.decodeImProtocol(cursor.getString(cursor.getColumnIndex("aux_data")));
                    if(obj instanceof Integer)
                    {
                        int j = ((Integer)obj).intValue();
                        if(IssueSettings.fetionCannotBeRestored)
                        {
                            if(j <= 7)
                                record.put(1, IMTYPE[j]);
                            else
                                record.put(1, "FETION");
                        } else
                        if(j <= 7)
                            record.put(1, IMTYPE[j]);
                    } else
                    {
                        record.put(1, (String)obj);
                    }
                }
                arraylist1.add(record);
            }
            cursor.close();
            arraylist = arraylist1;
        }
        return arraylist;
    }

    private ArrayList queryGroup(String s)
    {
        ArrayList arraylist = new ArrayList();
        String s1 = groupDao.getGroupNamesFromContactId(s);
        Record record = new Record();
        record.put(0, "CATEGORIES");
        record.put(2, s1);
        arraylist.add(record);
        return arraylist;
    }

    private ArrayList queryGroup(String s, List list)
    {
        ArrayList arraylist = new ArrayList();
        String s1 = groupDao.getGroupNamesFromContactId(s, list);
        Record record = new Record();
        record.put(0, "CATEGORIES");
        record.put(2, s1);
        arraylist.add(record);
        return arraylist;
    }

    private static ArrayList queryNameNotesAndStarred(String s)
    {
        String s1;
        Cursor cursor;
        s1 = null;
        Uri uri = Uri.withAppendedPath(android.provider.Contacts.People.CONTENT_URI, s);
        ContentResolver contentresolver = contentResolver;
        String as[] = new String[4];
        as[0] = "name";
        as[1] = "notes";
        as[2] = "starred";
        as[3] = "custom_ringtone";
        cursor = contentresolver.query(uri, as, s1, s1, s1);
        if(cursor != null) goto _L2; else goto _L1
_L1:
        return s1;
_L2:
        Record record = new Record();
        Record record1 = new Record();
        Record record2 = new Record();
        Record record3 = new Record();
        String s2 = new String();
        String s3 = new String();
        String s4 = new String();
        ArrayList arraylist = new ArrayList();
        String s5;
        String s6;
        String s7;
        boolean flag;
        String s8;
        if(cursor.moveToFirst())
        {
            s5 = cursor.getString(0);
            s6 = cursor.getString(1);
            if(cursor.getInt(2) == 1)
                flag = true;
            else
                flag = false;
            s7 = cursor.getString(3);
        } else
        {
            s5 = s2;
            s6 = s3;
            s7 = s4;
            flag = false;
        }
        if(s5 != null && !s5.equals(""))
        {
            record.put(0, "N");
            if(s5 != null)
                record.put(2, s5.replace("\\", "\\\\").replace(";", "\\;"));
            arraylist.add(record);
        }
        if(s6 != null && !s6.equals(""))
        {
            record1.put(0, "NOTE");
            record1.put(2, s6);
            arraylist.add(record1);
        }
        record3.put(0, "X-FOCUS");
        if(flag)
            s8 = "1";
        else
            s8 = "0";
        record3.put(2, s8);
        arraylist.add(record3);
        if(s7 != null && s7.length() > 0)
        {
            record2.put(0, "RINGTONE");
            record2.put(2, s7);
            arraylist.add(record2);
        }
        cursor.close();
        if(arraylist.size() != 0)
            s1 = arraylist;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static ArrayList queryORG(String s)
    {
        ArrayList arraylist = null;
        ArrayList arraylist1 = new ArrayList();
        String as[] = new String[1];
        as[0] = s;
        Cursor cursor = contentResolver.query(android.provider.Contacts.Organizations.CONTENT_URI, arraylist, "person = ?", as, ODERBYORGID);
        if(cursor != null)
        {
            while(cursor.moveToNext()) 
            {
                Record record = new Record();
                Record record1 = new Record();
                record.put(0, "ORG");
                record1.put(0, "TITLE");
                record.put(2, cursor.getString(cursor.getColumnIndex("company")));
                record1.put(2, cursor.getString(cursor.getColumnIndex("title")));
                String s1 = cursor.getString(cursor.getColumnIndex("label"));
                if(s1 == null || s1.equals(""))
                {
                    int i = cursor.getInt(cursor.getColumnIndex("type"));
                    if(i < 3)
                        record.put(1, ORGTYPE[i]);
                } else
                {
                    record.put(1, s1);
                }
                arraylist1.add(record);
                arraylist1.add(record1);
            }
            cursor.close();
            arraylist = arraylist1;
        }
        return arraylist;
    }

    private static ArrayList queryPhoneList(String s)
    {
        Cursor cursor;
        String as[] = new String[4];
        as[0] = "number";
        as[1] = "type";
        as[2] = "label";
        as[3] = "isprimary";
        ContentResolver contentresolver = contentResolver;
        Uri uri = android.provider.Contacts.Phones.CONTENT_URI;
        String as1[] = new String[1];
        as1[0] = s;
        cursor = contentresolver.query(uri, as, "person = ?", as1, ODERBYPHONEID);
        if(cursor != null) goto _L2; else goto _L1
_L1:
        ArrayList arraylist = null;
_L4:
        return arraylist;
_L2:
        arraylist = new ArrayList();
        do
        {
label0:
            {
                if(cursor.moveToNext())
                    break label0;
                cursor.close();
            }
            if(true)
                continue;
            Record record = new Record();
            record.put(0, "TEL");
            record.put(2, cursor.getString(cursor.getColumnIndex("number")));
            int i = Integer.parseInt(cursor.getString(cursor.getColumnIndex("type")));
            if(i > 0 && i < 8)
                record.put(1, TELTYPE[i]);
            else
                record.put(1, cursor.getString(cursor.getColumnIndex("label")));
            if(cursor.getInt(cursor.getColumnIndex("isprimary")) == 1)
                record.setPref(true);
            arraylist.add(record);
        } while(true);
        if(true) goto _L4; else goto _L3
_L3:
    }

    private static Record queryPhoto(String s)
    {
        String s1 = null;
        Record record = new Record();
        record.put(0, "PHOTO");
        Uri uri = android.provider.Contacts.Photos.CONTENT_URI;
        ContentResolver contentresolver = contentResolver;
        String as[] = new String[1];
        as[0] = "data";
        Cursor cursor = contentresolver.query(uri, as, (new StringBuilder("person=")).append(s).toString(), s1, s1);
        if(cursor != null)
            if(cursor.moveToFirst())
            {
                record.putBinaryData(cursor.getBlob(0));
                if(record.getBinaryData() == null)
                {
                    cursor.close();
                } else
                {
                    cursor.close();
                    s1 = record;
                }
            } else
            {
                cursor.close();
            }
        return s1;
    }

    private static byte[] transformInputstream(InputStream inputstream)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        int i;
        bytearrayoutputstream = new ByteArrayOutputStream();
        i = inputstream.read();
_L1:
        byte abyte0[];
        int j;
        if(i == -1)
        {
            abyte0 = bytearrayoutputstream.toByteArray();
            break MISSING_BLOCK_LABEL_51;
        }
        bytearrayoutputstream.write(i);
        j = inputstream.read();
        i = j;
          goto _L1
        Exception exception;
        exception;
        abyte0 = null;
        return abyte0;
    }

    public String add(IEntity ientity)
    {
        String s;
        if(ientity == null)
        {
            s = null;
        } else
        {
            addContactEntity((SYSContact)ientity);
            s = String.valueOf(maxId);
        }
        return s;
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
        if(s == null || s.equals(""))
        {
            enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
        } else
        {
            Uri uri = Uri.withAppendedPath(android.provider.Contacts.People.CONTENT_URI, s);
            if(contentResolver.delete(uri, null, null) == 0)
                enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_FAILED;
            else
                enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED;
        }
        return enum_idaoreturnvalue;
    }

    public List getAllEntityId(String as[])
    {
        List list;
        Cursor cursor;
        list = null;
        if(IssueSettings.simContactsCanNotUploadToNet)
        {
            ContentResolver contentresolver1 = contentResolver;
            Uri uri1 = android.provider.Contacts.People.CONTENT_URI;
            String as2[] = new String[2];
            as2[0] = "_id";
            as2[1] = "source_name";
            String s1 = ODERBYID;
            cursor = contentresolver1.query(uri1, as2, list, list, s1);
        } else
        {
            ContentResolver contentresolver = contentResolver;
            Uri uri = android.provider.Contacts.People.CONTENT_URI;
            String as1[] = new String[1];
            as1[0] = "_id";
            String s = ODERBYID;
            cursor = contentresolver.query(uri, as1, list, list, s);
        }
        if(cursor != null) goto _L2; else goto _L1
_L1:
        return list;
_L2:
        list = new ArrayList();
        if(!IssueSettings.simContactsCanNotUploadToNet)
            break MISSING_BLOCK_LABEL_192;
_L5:
        if(cursor.moveToNext()) goto _L4; else goto _L3
_L3:
        cursor.close();
        groupDao.readAllGroups();
          goto _L1
_L4:
        if(!"SOURCE_SIM_CONTACTS".equals(cursor.getString(1)))
            list.add(cursor.getString(cursor.getColumnIndex("_id")));
          goto _L5
        for(; cursor.moveToNext(); list.add(cursor.getString(cursor.getColumnIndex("_id"))));
          goto _L3
    }

    public boolean isExisted(String s)
    {
        Uri uri = Uri.withAppendedPath(android.provider.Contacts.People.CONTENT_URI, s);
        ContentResolver contentresolver = contentResolver;
        String as[] = new String[1];
        as[0] = "_id";
        Cursor cursor = contentresolver.query(uri, as, null, null, ODERBYID);
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

    public String lookupFirstContactIDByPhone(String s)
    {
        String s1 = null;
        String s2 = PhoneNumberUtils.getStrippedReversed(s);
        Cursor cursor = contentResolver.query(PHONE_URI, s1, (new StringBuilder("number_key='")).append(s2).append("'").toString(), s1, s1);
        if(cursor != null)
            if(cursor.moveToFirst())
            {
                s1 = cursor.getString(cursor.getColumnIndex("person"));
                cursor.close();
            } else
            {
                cursor.close();
            }
        return s1;
    }

    public String lookupFirstContactNameByPhone(String s)
    {
        String s1 = null;
        Uri uri = Uri.withAppendedPath(android.provider.Contacts.Phones.CONTENT_FILTER_URL, Uri.encode(s));
        String as[] = new String[1];
        as[0] = "display_name";
        Cursor cursor = contentResolver.query(uri, as, s1, s1, s1);
        if(cursor != null && cursor.moveToFirst())
            s1 = cursor.getString(0);
        cursor.close();
        return s1;
    }

    public IEntity query(String s)
    {
        SYSContact syscontact = new SYSContact();
        syscontact.putValue(queryNameNotesAndStarred(s));
        syscontact.putValue(queryPhoneList(s));
        syscontact.putValue(queryContactMethodLis(s));
        syscontact.putValue(queryORG(s));
        syscontact.putValue(queryPhoto(s));
        ArrayList arraylist = new ArrayList();
        syscontact.putValue(queryGroup(s, arraylist));
        syscontact.setId(s);
        syscontact.setGroupIds(arraylist);
        return syscontact;
    }

    public List query()
    {
        ArrayList arraylist = new ArrayList();
        contactCursor = contentResolver.query(android.provider.Contacts.People.CONTENT_URI, null, null, null, ODERBYID);
        do
        {
            SYSContact syscontact;
            String s;
            do
            {
                if(!contactCursor.moveToNext())
                {
                    contactCursor.close();
                    return arraylist;
                }
                syscontact = new SYSContact();
                ArrayList arraylist1 = new ArrayList();
                s = contactCursor.getString(contactCursor.getColumnIndex("_id"));
                syscontact.setId(s);
                ArrayList arraylist2 = queryNameNotesAndStarred(s);
                if(arraylist2 != null)
                    arraylist1.addAll(arraylist2);
                arraylist1.addAll(queryPhoneList(s));
                arraylist1.addAll(queryContactMethodLis(s));
                arraylist1.addAll(queryORG(s));
                arraylist1.addAll(queryGroup(s));
                if(!IssueSettings.photoDownloadTophoneAfterEditerNativePhotoError_1_5SDK)
                {
                    Record record = queryPhoto(s);
                    if(record != null)
                        arraylist1.add(record);
                }
                syscontact.putValue(arraylist1);
            } while(syscontact.isEmpty());
            syscontact.setId(s);
            arraylist.add(syscontact);
        } while(true);
    }

    public String queryNameById(String s)
    {
        String s1 = null;
        if(s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        return s1;
_L2:
        String s2 = new String();
        Uri uri = Uri.withAppendedPath(android.provider.Contacts.People.CONTENT_URI, s);
        ContentResolver contentresolver = contentResolver;
        String as[] = new String[1];
        as[0] = "name";
        Cursor cursor = contentresolver.query(uri, as, s1, s1, s1);
        if(cursor != null)
        {
            String s3;
            if(cursor.moveToFirst())
            {
                s3 = cursor.getString(cursor.getColumnIndex("name"));
                cursor.close();
            } else
            {
                s3 = s2;
            }
            s1 = s3;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public int queryNumber()
    {
        ContentResolver contentresolver = contentResolver;
        Uri uri = android.provider.Contacts.People.CONTENT_URI;
        String as[] = new String[1];
        as[0] = "_id";
        Cursor cursor = contentresolver.query(uri, as, null, null, null);
        int i;
        if(cursor == null)
        {
            i = 0;
        } else
        {
            i = cursor.getCount();
            cursor.close();
        }
        return i;
    }

    public com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue update(IEntity ientity)
    {
        com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue enum_idaoreturnvalue;
        if(ientity.getId() == null || ientity.getId().equals(""))
            enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
        else
        if(delete(ientity.getId()) == com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED)
        {
            add(ientity);
            enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED;
        } else
        {
            enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
        }
        return enum_idaoreturnvalue;
    }

    private static final String ADDRESSTYPE[];
    private static final String IMTYPE[];
    private static final int LABELLIST_INDEX_TAG_ADR = 1;
    private static final int LABELLIST_INDEX_TAG_CATEGORIES = 12;
    private static final int LABELLIST_INDEX_TAG_EMAIL = 2;
    private static final int LABELLIST_INDEX_TAG_FN = 4;
    private static final int LABELLIST_INDEX_TAG_N = 9;
    private static final int LABELLIST_INDEX_TAG_NICKNAME = 10;
    private static final int LABELLIST_INDEX_TAG_NOTE = 8;
    private static final int LABELLIST_INDEX_TAG_ORG = 6;
    private static final int LABELLIST_INDEX_TAG_PHOTO = 5;
    private static final int LABELLIST_INDEX_TAG_RINGTONE = 13;
    private static final int LABELLIST_INDEX_TAG_TEL = 0;
    private static final int LABELLIST_INDEX_TAG_TITLE = 7;
    private static final int LABELLIST_INDEX_TAG_X_FOCUS = 11;
    private static final int LABELLIST_INDEX_TAG_X_TC_IM = 3;
    private static final Uri METHODS_URI;
    private static final String ODERBYCMID;
    private static final String ODERBYID;
    private static final String ODERBYORGID;
    private static final String ODERBYPHONEID;
    private static final String ORGTYPE[];
    private static final Uri ORG_URI;
    private static final Uri PHONE_URI;
    private static final String TELTYPE[];
    static final char chDivider = 59;
    static final char chNeedEscapeChars[];
    private static Cursor contactCursor;
    private static long groupId;
    private static Uri id;
    private static final String labelList[];
    private static long maxId;
    private static ArrayList orgList = new ArrayList();
    private static final Map tagMap;
    private static ArrayList titleList = new ArrayList();
    private static ContentValues values = new ContentValues();
    private SYSContactGroupDaoV1 groupDao;

    static 
    {
        String as[] = new String[8];
        as[0] = "";
        as[1] = "HOME";
        as[2] = "CELL";
        as[3] = "WORK";
        as[4] = "FAX;WORK";
        as[5] = "FAX;HOME";
        as[6] = "PAGER";
        as[7] = "OTHER";
        TELTYPE = as;
        String as1[] = new String[4];
        as1[0] = "";
        as1[1] = "HOME";
        as1[2] = "WORK";
        as1[3] = "OTHER";
        ADDRESSTYPE = as1;
        String as2[] = new String[8];
        as2[0] = "AIM";
        as2[1] = "MSN";
        as2[2] = "YAHOO";
        as2[3] = "SKYPE";
        as2[4] = "QQ";
        as2[5] = "GTALK";
        as2[6] = "ICQ";
        as2[7] = "JABBER";
        IMTYPE = as2;
        String as3[] = new String[3];
        as3[0] = "";
        as3[1] = "WORK";
        as3[2] = "OTHER";
        ORGTYPE = as3;
        tagMap = new HashMap();
        String as4[] = new String[14];
        as4[0] = "TEL";
        as4[1] = "ADR";
        as4[2] = "EMAIL";
        as4[3] = "X-TC-IM";
        as4[4] = "FN";
        as4[5] = "PHOTO";
        as4[6] = "ORG";
        as4[7] = "TITLE";
        as4[8] = "NOTE";
        as4[9] = "N";
        as4[10] = "NICKNAME";
        as4[11] = "X-FOCUS";
        as4[12] = "CATEGORIES";
        as4[13] = "RINGTONE";
        labelList = as4;
        int i = 0;
        do
        {
            if(i >= 14)
            {
                ODERBYID = null;
                ODERBYPHONEID = null;
                ODERBYCMID = null;
                ODERBYORGID = null;
                groupId = 0L;
                maxId = -1L;
                ORG_URI = Uri.parse("content://contacts/organizations");
                METHODS_URI = Uri.parse("content://contacts/contact_methods");
                PHONE_URI = Uri.parse("content://contacts/phones");
                char ac[] = new char[4];
                chNeedEscapeChars = ac;
                ac[0] = '\\';
                chNeedEscapeChars[1] = ';';
                chNeedEscapeChars[2] = '\r';
                chNeedEscapeChars[3] = '\n';
                return;
            }
            tagMap.put(labelList[i], Integer.valueOf(i));
            i++;
        } while(true);
    }
}
