// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import com.tencent.qqpim.interfaces.IEntity;
import com.tencent.qqpim.object.Record;
import com.tencent.qqpim.object.SYSContact;
import com.tencent.qqpim.utils.QQPimUtils;
import java.util.*;

// Referenced classes of package com.tencent.qqpim.dao:
//            SYSContactDao

public class SYSContactDaoV2_OldVersion extends SYSContactDao
{

    private SYSContactDaoV2_OldVersion(Context context)
    {
        super(context);
        InfoMap = null;
        InfoMap = new HashMap();
        InfoMap.put(new String("vnd.android.cursor.item/email_v2"), new ContactEmail());
        InfoMap.put(new String("vnd.android.cursor.item/postal-address_v2"), new ContactAdr());
        InfoMap.put(new String("vnd.android.cursor.item/nickname"), new ContactOther(null));
        InfoMap.put(new String("vnd.android.cursor.item/website"), new ContactOther(null));
        InfoMap.put(new String("vnd.android.cursor.item/note"), new ContactOther(null));
        InfoMap.put(new String("vnd.android.cursor.item/phone_v2"), new ContactTelPhone());
        InfoMap.put(new String("vnd.android.cursor.item/organization"), new ContactOrg());
        InfoMap.put(new String("vnd.android.cursor.item/name"), new ContactName(null));
        InfoMap.put(new String("vnd.android.cursor.item/photo"), new ContactPhoto(null));
        InfoMap.put(new String("vnd.android.cursor.item/im"), new ContactIM());
        InfoMap.put(new String("vnd.android.cursor.item/group_membership"), null);
    }

    private boolean addContactInfo(IEntity ientity, long l)
    {
        int i = 0;
        if(ientity != null) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        ArrayList arraylist;
        arraylist = new ArrayList();
        ientity.moveToFirst();
_L6:
        if(!ientity.isAfterLast()) goto _L4; else goto _L3
_L3:
        if(arraylist.size() <= 0) goto _L1; else goto _L5
_L5:
        ContentValues acontentvalues[] = new ContentValues[arraylist.size()];
_L7:
        if(i < arraylist.size())
            break MISSING_BLOCK_LABEL_325;
        Uri uri = Uri.withAppendedPath(AUTHORITY_URI, "data");
        contentResolver.bulkInsert(uri, acontentvalues);
        QQPimUtils.writeToLog("Add Contact Information", (new StringBuilder("lRawContactId = ")).append(l).toString());
          goto _L1
_L4:
        Record record = ientity.getCurrentValue();
        ientity.moveToNext();
        if(record != null)
        {
            String s = getInfoTagType(record.get(i));
            if(s != null && !s.equals(""))
            {
                ArrayList arraylist1 = new ArrayList();
                arraylist1.add(record);
                ContactInfoDao contactinfodao = (ContactInfoDao)InfoMap.get(s);
                if(s.equals("vnd.android.cursor.item/name") && !ientity.isAfterLast() && ientity.getCurrentValue().get(i).equals("N"))
                {
                    arraylist1.add(ientity.getCurrentValue());
                    ientity.moveToNext();
                }
                if(s.equals("vnd.android.cursor.item/organization") && !ientity.isAfterLast() && ientity.getCurrentValue().get(i).equals("TITLE"))
                {
                    arraylist1.add(ientity.getCurrentValue());
                    ientity.moveToNext();
                }
                if(contactinfodao != null)
                    contactinfodao.getContentValues(l, arraylist1, arraylist);
            }
        }
          goto _L6
        acontentvalues[i] = (ContentValues)arraylist.get(i);
        i++;
          goto _L7
    }

    private static String dealContactLabel(String s)
    {
        String s1;
        if(s.contains("FAX;WORK"))
            s1 = "FAX;WORK";
        else
        if(s.contains("FAX;HOME"))
            s1 = "FAX;HOME";
        else
        if(s.contains("CELL;WORK"))
            s1 = "CELL;WORK";
        else
        if(s.contains("PAGER;WORK"))
            s1 = "PAGER;WORK";
        else
        if(s.contains("HOME"))
            s1 = "HOME";
        else
        if(s.contains("CELL"))
            s1 = "CELL";
        else
        if(s.contains("WORK"))
            s1 = "WORK";
        else
        if(s.contains("PAGER"))
            s1 = "PAGER";
        else
        if(s.contains("OTHER"))
            s1 = "OTHER";
        else
        if(s.contains("AIM"))
            s1 = "AIM";
        else
        if(s.contains("MSN"))
            s1 = "MSN";
        else
        if(s.contains("YAHOO"))
            s1 = "YAHOO";
        else
        if(s.contains("SKYPE"))
            s1 = "SKYPE";
        else
        if(s.contains("GTALK"))
            s1 = "GTALK";
        else
        if(s.contains("QQ"))
            s1 = "QQ";
        else
        if(s.contains("ICQ"))
            s1 = "ICQ";
        else
        if(s.contains("JABBER"))
            s1 = "JABBER";
        else
        if(s.contains("X-CALLBACK"))
            s1 = "X-CALLBACK";
        else
        if(s.contains("CAR"))
            s1 = "CAR";
        else
        if(s.contains("X-COMPANY"))
            s1 = "X-COMPANY";
        else
        if(s.contains("X-ISDN"))
            s1 = "X-ISDN";
        else
        if(s.contains("X-MAIN"))
            s1 = "X-MAIN";
        else
        if(s.contains("FAX"))
            s1 = "FAX";
        else
        if(s.contains("RADIO"))
            s1 = "RADIO";
        else
        if(s.contains("X-TTY"))
            s1 = "X-TTY";
        else
        if(s.contains("X-TELEX"))
            s1 = "X-TELEX";
        else
        if(s.contains("X-ASSISTANT"))
            s1 = "X-ASSISTANT";
        else
        if(s.contains("MEDIA"))
            s1 = "MEDIA";
        else
            s1 = s.replace("PREF", "").replace(";", "");
        return s1;
    }

    private int delContactInfo(long l)
    {
        Uri uri = Uri.withAppendedPath(AUTHORITY_URI, "data");
        String as[] = new String[1];
        as[0] = String.valueOf(l);
        int i = contentResolver.delete(uri, "raw_contact_id= ?", as);
        QQPimUtils.writeToLog("Delete Contact Information", (new StringBuilder("lRawContactId = ")).append(l).toString());
        return i;
    }

    public static String escapeString(String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if(s == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L5:
        if(i < s.length()) goto _L3; else goto _L2
_L2:
        return stringbuilder.toString();
_L3:
        char c = s.charAt(i);
        if(c == '\\' || c == ';')
            stringbuilder.append('\\');
        stringbuilder.append(c);
        i++;
        if(true) goto _L5; else goto _L4
_L4:
    }

    private SYSContact getContactInfo(long l)
    {
        Object obj;
        Cursor cursor;
        obj = null;
        Uri uri = Uri.withAppendedPath(AUTHORITY_URI, "data");
        String as[] = new String[1];
        as[0] = String.valueOf(l);
        cursor = contentResolver.query(uri, ((String []) (obj)), "raw_contact_id=?", as, "_id");
        if(cursor == null) goto _L2; else goto _L1
_L1:
        ArrayList arraylist;
        obj = new SYSContact();
        ((SYSContact) (obj)).setId(String.valueOf(l));
        arraylist = new ArrayList();
        cursor.moveToFirst();
_L5:
        if(!cursor.isAfterLast()) goto _L4; else goto _L3
_L3:
        int i = 0;
_L6:
        if(i < arraylist.size())
            break MISSING_BLOCK_LABEL_176;
        cursor.close();
_L2:
        return ((SYSContact) (obj));
_L4:
        String s = cursor.getString(cursor.getColumnIndex("mimetype"));
        ContactInfoDao contactinfodao = (ContactInfoDao)InfoMap.get(s);
        if(contactinfodao != null)
            contactinfodao.read(cursor, arraylist);
        cursor.moveToNext();
          goto _L5
        ((SYSContact) (obj)).putValue((Record)arraylist.get(i));
        i++;
          goto _L6
    }

    private String getInfoTagType(String s)
    {
        String s1 = "";
        if(s != null) goto _L2; else goto _L1
_L1:
        return s1;
_L2:
        if(s.equals("FN") || s.equals("N"))
            s1 = "vnd.android.cursor.item/name";
        else
        if(s.equals("TEL"))
            s1 = "vnd.android.cursor.item/phone_v2";
        else
        if(s.equals("PHOTO"))
            s1 = "vnd.android.cursor.item/photo";
        else
        if(s.equals("EMAIL"))
            s1 = "vnd.android.cursor.item/email_v2";
        else
        if(s.equals("ORG"))
            s1 = "vnd.android.cursor.item/organization";
        else
        if(s.equals("NOTE"))
            s1 = "vnd.android.cursor.item/note";
        else
        if(s.equals("URL"))
            s1 = "vnd.android.cursor.item/website";
        else
        if(s.equals("NICKNAME"))
            s1 = "vnd.android.cursor.item/nickname";
        else
        if(s.equals("ADR"))
            s1 = "vnd.android.cursor.item/postal-address_v2";
        else
        if(s.equals("X-TC-IM"))
            s1 = "vnd.android.cursor.item/im";
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static SYSContactDaoV2_OldVersion getInstance(Context context)
    {
        return new SYSContactDaoV2_OldVersion(context);
    }

    private long getNewRawContactId()
    {
        Uri uri = Uri.withAppendedPath(AUTHORITY_URI, "raw_contacts");
        ContentValues contentvalues = new ContentValues();
        contentvalues.putNull("account_name");
        contentvalues.putNull("account_type");
        long l = ContentUris.parseId(contentResolver.insert(uri, contentvalues));
        QQPimUtils.writeToLog("Get a new contact ID: ", (new StringBuilder("lRawContactId = ")).append(l).toString());
        return l;
    }

    public static List parseRecordContent(String s)
    {
        if(s != null) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L4:
        return ((List) (obj));
_L2:
        ArrayList arraylist = new ArrayList();
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        do
        {
label0:
            {
                if(i < s.length())
                    break label0;
                arraylist.add(stringbuilder.toString());
                obj = arraylist;
            }
            if(true)
                continue;
            char c = s.charAt(i);
            if(c == '\\' && i + 1 < s.length())
            {
                if(s.charAt(i + 1) == '\\')
                {
                    stringbuilder.append('\\');
                    i++;
                } else
                if(s.charAt(i + 1) == ';')
                {
                    stringbuilder.append(';');
                    i++;
                }
            } else
            if(c == ';')
            {
                arraylist.add(stringbuilder.toString());
                stringbuilder = new StringBuilder();
            } else
            {
                stringbuilder.append(c);
            }
            i++;
        } while(true);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public String add(IEntity ientity)
    {
        String s = null;
        if(ientity != null) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        long l = getNewRawContactId();
        if(l != -1L)
        {
            QQPimUtils.writeToLog("Add Contact", "begin");
            addContactInfo(ientity, l);
            s = String.valueOf(l);
            QQPimUtils.writeToLog("Add Contact", (new StringBuilder("end  id = ")).append(s).toString());
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public boolean add(ArrayList arraylist, ArrayList arraylist1, int ai[])
    {
        return true;
    }

    public com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue delete(String s)
    {
        com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue enum_idaoreturnvalue;
        if(s == null)
        {
            enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
        } else
        {
            long l = Long.parseLong(s);
            QQPimUtils.writeToLog("Delete Contact", (new StringBuilder("begin: _id = ")).append(l).toString());
            Uri uri = Uri.withAppendedPath(AUTHORITY_URI, "raw_contacts");
            String as[] = new String[1];
            as[0] = String.valueOf(l);
            int i = contentResolver.delete(uri, "_id = ?", as);
            StringBuilder stringbuilder = new StringBuilder("end: ");
            String s1;
            if(i == 1)
                s1 = "succeed";
            else
                s1 = "failed";
            QQPimUtils.writeToLog("Delete Contact", stringbuilder.append(s1).toString());
            if(i == 1)
                enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED;
            else
                enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
        }
        return enum_idaoreturnvalue;
    }

    public List getAllEntityId(String as[])
    {
        ArrayList arraylist;
        Cursor cursor;
        arraylist = new ArrayList();
        Uri uri = Uri.withAppendedPath(AUTHORITY_URI, "raw_contacts");
        ContentResolver contentresolver = contentResolver;
        String as1[] = new String[1];
        as1[0] = "_id";
        String as2[] = new String[1];
        as2[0] = String.valueOf(0);
        cursor = contentresolver.query(uri, as1, "deleted = ?", as2, "_id");
        if(cursor != null) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L5:
        return ((List) (obj));
_L2:
        if(cursor.getCount() <= 0 || !cursor.moveToFirst()) goto _L4; else goto _L3
_L3:
        if(!cursor.isAfterLast())
            break MISSING_BLOCK_LABEL_120;
        cursor.close();
_L4:
        obj = arraylist;
          goto _L5
        arraylist.add(String.valueOf(cursor.getInt(cursor.getColumnIndex("_id"))));
        cursor.moveToNext();
          goto _L3
    }

    public boolean isExisted(String s)
    {
        boolean flag;
        if(s == null || s.equals(""))
        {
            flag = false;
        } else
        {
            Uri uri = Uri.withAppendedPath(AUTHORITY_URI, "raw_contacts");
            String as[] = new String[2];
            as[0] = s;
            as[1] = String.valueOf(0);
            ContentResolver contentresolver = contentResolver;
            String as1[] = new String[1];
            as1[0] = "_id";
            Cursor cursor = contentresolver.query(uri, as1, "_id = ? and deleted = ?", as, null);
            if(cursor != null)
            {
                if(cursor.getCount() > 0)
                    flag = true;
                else
                    flag = false;
                cursor.close();
            } else
            {
                flag = false;
            }
            QQPimUtils.writeToLog("Contact Existed", (new StringBuilder("lRawContactId = ")).append(s).append(" is existed : ").append(String.valueOf(flag)).toString());
        }
        return flag;
    }

    public String lookupFirstContactIDByPhone(String s)
    {
        return null;
    }

    public String lookupFirstContactNameByPhone(String s)
    {
        String s1 = null;
        Uri uri = Uri.withAppendedPath(android.provider.ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(s));
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
        Object obj;
        if(s == null || s.equals(""))
            obj = null;
        else
            obj = getContactInfo(Long.valueOf(s).longValue());
        return ((IEntity) (obj));
    }

    public List query()
    {
        ArrayList arraylist;
        List list;
        QQPimUtils.writeToLog("Query Contact", "begin");
        arraylist = new ArrayList();
        list = getAllEntityId(null);
        if(list == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L5:
        if(i < list.size()) goto _L3; else goto _L2
_L2:
        QQPimUtils.writeToLog("Query Contact", "end");
        return arraylist;
_L3:
        SYSContact syscontact = getContactInfo(Long.valueOf((String)list.get(i)).longValue());
        if(syscontact != null)
            arraylist.add(syscontact);
        i++;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public String queryNameById(String s)
    {
        String s1;
        String s2;
        Uri uri = Uri.withAppendedPath(AUTHORITY_URI, "data");
        String as[] = new String[2];
        as[0] = s;
        as[1] = "vnd.android.cursor.item/name";
        ContentResolver contentresolver = contentResolver;
        String as1[] = new String[1];
        as1[0] = "data1";
        Cursor cursor = contentresolver.query(uri, as1, "raw_contact_id = ? and mimetype=?", as, "_id");
        s1 = "";
        if(cursor == null || !cursor.moveToFirst())
            break MISSING_BLOCK_LABEL_104;
        s2 = cursor.getString(cursor.getColumnIndex("data1"));
        s1 = s2;
_L2:
        return s1;
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("V2 queryNameById error", throwable.getMessage());
        s1 = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public int queryNumber()
    {
        Uri uri = Uri.withAppendedPath(AUTHORITY_URI, "data");
        ContentResolver contentresolver = contentResolver;
        String as[] = new String[1];
        as[0] = "_id";
        Cursor cursor = contentresolver.query(uri, as, null, null, null);
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
        QQPimUtils.writeToLog("Update Contact", "begin");
        com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue enum_idaoreturnvalue;
        if(ientity == null)
        {
            enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
        } else
        {
            String s = ientity.getId();
            if(s == null || s.equals(""))
            {
                QQPimUtils.writeToLog("Update Contact", "The ID of the contact is invalidate!");
                enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
            } else
            {
                long l = Long.parseLong(s);
                if(isExisted(s))
                {
                    delContactInfo(l);
                    addContactInfo(ientity, l);
                    QQPimUtils.writeToLog("Update Contact", "end");
                    enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED;
                } else
                {
                    QQPimUtils.writeToLog("Update Contact", (new StringBuilder("lRawContactId = ")).append(l).append(" not existed!").toString());
                    enum_idaoreturnvalue = com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND;
                }
            }
        }
        return enum_idaoreturnvalue;
    }

    private final String ACCOUNT_NAME = "account_name";
    private final String ACCOUNT_TYPE = "account_type";
    private final String AUTHORITY = "com.android.contacts";
    private final Uri AUTHORITY_URI = Uri.parse("content://com.android.contacts");
    private final String COLUMN_ID = "_id";
    private final String COLUMN_MIMETYPES = "mimetype";
    private final String CONTENT_ITEM_TYPE_EMAIL = "vnd.android.cursor.item/email_v2";
    private final String CONTENT_ITEM_TYPE_GROUPMEMBERSHIP = "vnd.android.cursor.item/group_membership";
    private final String CONTENT_ITEM_TYPE_IM = "vnd.android.cursor.item/im";
    private final String CONTENT_ITEM_TYPE_NAME = "vnd.android.cursor.item/name";
    private final String CONTENT_ITEM_TYPE_NICKNAME = "vnd.android.cursor.item/nickname";
    private final String CONTENT_ITEM_TYPE_NOTE = "vnd.android.cursor.item/note";
    private final String CONTENT_ITEM_TYPE_ORG = "vnd.android.cursor.item/organization";
    private final String CONTENT_ITEM_TYPE_PHONE = "vnd.android.cursor.item/phone_v2";
    private final String CONTENT_ITEM_TYPE_PHOTO = "vnd.android.cursor.item/photo";
    private final String CONTENT_ITEM_TYPE_POSTAL = "vnd.android.cursor.item/postal-address_v2";
    private final String CONTENT_ITEM_TYPE_WEBSITE = "vnd.android.cursor.item/website";
    private Map InfoMap;
    private final String RAW_CONTACT_ID = "raw_contact_id";
    private final String TABLE_DATA = "data";
    private final String TABLE_RAW_CONTACTS = "raw_contacts";



    private class ContactEmail
        implements ContactInfoDao
    {

        public void getContentValues(long l, List list, List list1)
        {
            if(list != null && list.size() != 0)
            {
                int i = 0;
                while(i < list.size()) 
                {
                    Record record = (Record)list.get(i);
                    if(record != null)
                    {
                        ContentValues contentvalues = new ContentValues();
                        contentvalues.put("raw_contact_id", Long.valueOf(l));
                        contentvalues.put("mimetype", "vnd.android.cursor.item/email_v2");
                        String s;
                        String s1;
                        if(record.get(2) == null)
                            s = "";
                        else
                            s = record.get(2);
                        contentvalues.put("data1", s);
                        s1 = SYSContactDaoV2_OldVersion.dealContactLabel(record.get(1));
                        if(s1 != null)
                        {
                            String s2 = (String)typemap.get(s1);
                            if(s2 == null)
                            {
                                contentvalues.put("data3", s1);
                                s2 = "0";
                            }
                            contentvalues.put("data2", s2);
                        }
                        list1.add(contentvalues);
                    }
                    i++;
                }
            }
        }

        public String insert(ContentResolver contentresolver, long l, List list)
        {
            String s;
            if(list == null || list.size() == 0)
            {
                s = null;
            } else
            {
                s = "";
                int i = 0;
                while(i < list.size()) 
                {
                    Record record = (Record)list.get(i);
                    String s3;
                    if(record != null)
                    {
                        ContentValues contentvalues = new ContentValues();
                        contentvalues.put("raw_contact_id", Long.valueOf(l));
                        contentvalues.put("mimetype", "vnd.android.cursor.item/email_v2");
                        String s1;
                        String s2;
                        long l1;
                        if(record.get(2) == null)
                            s1 = "";
                        else
                            s1 = record.get(2);
                        contentvalues.put("data1", s1);
                        s2 = SYSContactDaoV2_OldVersion.dealContactLabel(record.get(1));
                        if(s2 != null)
                        {
                            String s4 = (String)typemap.get(s2);
                            if(s4 == null)
                            {
                                contentvalues.put("data3", s2);
                                s4 = "0";
                            }
                            contentvalues.put("data2", s4);
                        }
                        l1 = ContentUris.parseId(contentresolver.insert(Uri.withAppendedPath(AUTHORITY_URI, "data"), contentvalues));
                        s3 = (new StringBuilder(String.valueOf(s))).append("  ").append(String.valueOf(l1)).toString();
                    } else
                    {
                        s3 = s;
                    }
                    i++;
                    s = s3;
                }
            }
            return s;
        }

        public void read(Cursor cursor, List list)
        {
            if(cursor != null && list != null)
            {
                Record record = new Record();
                record.put(0, "EMAIL");
                String s = cursor.getString(cursor.getColumnIndex("data2"));
                if(s != null)
                {
                    String s2 = (String)typemap.get(s);
                    if(s2 == null)
                    {
                        s2 = cursor.getString(cursor.getColumnIndex("data3"));
                        if(s2 == null)
                            s2 = "";
                    }
                    record.put(1, s2);
                }
                String s1 = cursor.getString(cursor.getColumnIndex("data1"));
                if(s1 == null)
                    s1 = "";
                record.put(2, s1);
                list.add(record);
            }
        }

        private final String DATA = "data1";
        private final String LABEL = "data3";
        private final String TYPE = "data2";
        final SYSContactDaoV2_OldVersion this$0;
        private Map typemap;

        public ContactEmail()
        {
            int i = 1;
            this$0 = SYSContactDaoV2_OldVersion.this;
            super();
            typemap = null;
            typemap = new HashMap();
            String as[] = new String[5];
            as[0] = "";
            as[i] = "HOME";
            as[2] = "WORK";
            as[3] = "OTHER";
            as[4] = "CELL";
            do
            {
                if(i > 4)
                    return;
                typemap.put((new Integer(i)).toString(), as[i]);
                typemap.put(as[i], (new Integer(i)).toString());
                i++;
            } while(true);
        }
    }


    private class ContactAdr
        implements ContactInfoDao
    {

        public void getContentValues(long l, List list, List list1)
        {
            if(list != null && list.size() != 0) goto _L2; else goto _L1
_L1:
            return;
_L2:
            int i = 0;
_L8:
            if(i >= list.size()) goto _L1; else goto _L3
_L3:
            Record record = (Record)list.get(i);
            if(record == null) goto _L5; else goto _L4
_L4:
            ContentValues contentvalues;
            List list2;
            int j;
            contentvalues = new ContentValues();
            contentvalues.put("raw_contact_id", Long.valueOf(l));
            contentvalues.put("mimetype", "vnd.android.cursor.item/postal-address_v2");
            String s;
            String s1;
            String s2;
            if(record.get(2) == null)
                s = "";
            else
                s = record.get(2);
            list2 = SYSContactDaoV2_OldVersion.parseRecordContent(s);
            if(list2 == null) goto _L7; else goto _L6
_L6:
            j = 0;
_L9:
            if(j < list2.size() && j < 8)
                break MISSING_BLOCK_LABEL_203;
_L7:
            s1 = SYSContactDaoV2_OldVersion.dealContactLabel(record.get(1));
            s2 = (String)typemap.get(s1);
            if(s2 == null)
            {
                contentvalues.put("data3", s1);
                s2 = "0";
            }
            contentvalues.put("data2", s2);
            list1.add(contentvalues);
_L5:
            i++;
              goto _L8
            contentvalues.put((new StringBuilder("data")).append(j + 4).toString(), (String)list2.get(j));
            j++;
              goto _L9
        }

        public String insert(ContentResolver contentresolver, long l, List list)
        {
            if(list != null && list.size() != 0) goto _L2; else goto _L1
_L1:
            String s = null;
_L4:
            return s;
_L2:
            int i;
            s = "";
            i = 0;
_L8:
            if(i >= list.size()) goto _L4; else goto _L3
_L3:
            ContentValues contentvalues;
            List list1;
            String s4;
            int j;
            Record record = (Record)list.get(i);
            if(record == null)
                break MISSING_BLOCK_LABEL_305;
            contentvalues = new ContentValues();
            contentvalues.put("raw_contact_id", Long.valueOf(l));
            contentvalues.put("mimetype", "vnd.android.cursor.item/postal-address_v2");
            String s1;
            String s2;
            String s3;
            long l1;
            if(record.get(2) == null)
                s1 = "";
            else
                s1 = record.get(2);
            list1 = SYSContactDaoV2_OldVersion.parseRecordContent(s1);
            if(list1 == null) goto _L6; else goto _L5
_L5:
            j = 0;
_L9:
            if(j < list1.size() && j < 8) goto _L7; else goto _L6
_L6:
            s2 = SYSContactDaoV2_OldVersion.dealContactLabel(record.get(1));
            s3 = (String)typemap.get(s2);
            if(s3 == null)
            {
                contentvalues.put("data3", s2);
                s3 = "0";
            }
            contentvalues.put("data2", s3);
            l1 = ContentUris.parseId(contentresolver.insert(Uri.withAppendedPath(AUTHORITY_URI, "data"), contentvalues));
            s4 = (new StringBuilder(String.valueOf(s))).append(" ").append(String.valueOf(l1)).toString();
_L10:
            i++;
            s = s4;
              goto _L8
_L7:
            contentvalues.put((new StringBuilder("data")).append(j + 4).toString(), (String)list1.get(j));
            j++;
              goto _L9
            s4 = s;
              goto _L10
        }

        public void read(Cursor cursor, List list)
        {
            if(cursor != null && list != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            Record record = new Record();
            record.put(0, "ADR");
            String s = cursor.getString(cursor.getColumnIndex("data2"));
            if(s != null)
            {
                String s4 = (String)typemap.get(s);
                if(s4 == null)
                {
                    s4 = cursor.getString(cursor.getColumnIndex("data3"));
                    if(s4 == null)
                        s4 = "";
                }
                record.put(1, s4);
            }
            String s1 = "";
            int i = 4;
            do
            {
label0:
                {
                    if(i <= 10)
                        break label0;
                    record.put(2, s1);
                    list.add(record);
                }
                if(true)
                    continue;
                String s2 = SYSContactDaoV2_OldVersion.escapeString(cursor.getString(cursor.getColumnIndex((new StringBuilder("data")).append(i).toString())));
                if(s2 == null)
                    s2 = "";
                String s3 = (new StringBuilder(String.valueOf(s1))).append(s2).toString();
                if(i != 10)
                    s3 = (new StringBuilder(String.valueOf(s3))).append(";").toString();
                i++;
                s1 = s3;
            } while(true);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private final String LABEL = "data3";
        private final String TYPE = "data2";
        final SYSContactDaoV2_OldVersion this$0;
        private Map typemap;

        public ContactAdr()
        {
            int i = 1;
            this$0 = SYSContactDaoV2_OldVersion.this;
            super();
            typemap = null;
            typemap = new HashMap();
            String as[] = new String[4];
            as[0] = "";
            as[i] = "HOME";
            as[2] = "WORK";
            as[3] = "OTHER";
            do
            {
                if(i > 3)
                    return;
                typemap.put((new Integer(i)).toString(), as[i]);
                typemap.put(as[i], (new Integer(i)).toString());
                i++;
            } while(true);
        }
    }


    private class ContactOther
        implements ContactInfoDao
    {

        public void getContentValues(long l, List list, List list1)
        {
            if(list != null && list.size() != 0)
            {
                int i = 0;
                while(i < list.size()) 
                {
                    ContentValues contentvalues = new ContentValues();
                    contentvalues.put("raw_contact_id", Long.valueOf(l));
                    Record record = (Record)list.get(i);
                    if(record != null && record.get(0) != null)
                    {
                        String s = record.get(0);
                        String s1;
                        if(s.equals("NICKNAME"))
                        {
                            contentvalues.put("mimetype", "vnd.android.cursor.item/nickname");
                            contentvalues.put("data2", "1");
                        } else
                        if(s.equals("NOTE"))
                            contentvalues.put("mimetype", "vnd.android.cursor.item/note");
                        else
                        if(s.equals("URL"))
                        {
                            contentvalues.put("mimetype", "vnd.android.cursor.item/website");
                            contentvalues.put("data2", "7");
                        }
                        if(record.get(2) == null)
                            s1 = "";
                        else
                            s1 = record.get(2);
                        contentvalues.put("data1", s1);
                        list1.add(contentvalues);
                    }
                    i++;
                }
            }
        }

        public String insert(ContentResolver contentresolver, long l, List list)
        {
            String s = null;
            if(list.size() != 0)
            {
                int i = 0;
                while(i < list.size()) 
                {
                    ContentValues contentvalues = new ContentValues();
                    contentvalues.put("raw_contact_id", Long.valueOf(l));
                    Record record = (Record)list.get(i);
                    String s1;
                    if(record != null && record.get(0) != null)
                    {
                        String s2 = record.get(0);
                        String s3;
                        long l1;
                        if(s2.equals("NICKNAME"))
                        {
                            contentvalues.put("mimetype", "vnd.android.cursor.item/nickname");
                            contentvalues.put("data2", "1");
                        } else
                        if(s2.equals("NOTE"))
                            contentvalues.put("mimetype", "vnd.android.cursor.item/note");
                        else
                        if(s2.equals("URL"))
                        {
                            contentvalues.put("mimetype", "vnd.android.cursor.item/website");
                            contentvalues.put("data2", "7");
                        }
                        if(record.get(2) == null)
                            s3 = "";
                        else
                            s3 = record.get(2);
                        contentvalues.put("data1", s3);
                        l1 = ContentUris.parseId(contentresolver.insert(Uri.withAppendedPath(AUTHORITY_URI, "data"), contentvalues));
                        s1 = (new StringBuilder(String.valueOf(s))).append(" ").append(String.valueOf(l1)).toString();
                    } else
                    {
                        s1 = s;
                    }
                    i++;
                    s = s1;
                }
            }
            return s;
        }

        public void read(Cursor cursor, List list)
        {
            if(cursor != null && list != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            String s;
            String s1;
            s = null;
            s1 = cursor.getString(cursor.getColumnIndex("mimetype"));
            if(!s1.equals("vnd.android.cursor.item/nickname"))
                break; /* Loop/switch isn't completed */
            s = "NICKNAME";
_L4:
            if(s != null)
            {
                Record record = new Record();
                record.put(0, s);
                String s2 = cursor.getString(cursor.getColumnIndex("data1"));
                if(s2 == null)
                    s2 = "";
                record.put(2, s2);
                list.add(record);
            }
            if(true) goto _L1; else goto _L3
_L3:
            if(s1.equals("vnd.android.cursor.item/website"))
                s = "URL";
            else
            if(s1.equals("vnd.android.cursor.item/note"))
                s = "NOTE";
              goto _L4
            if(true) goto _L1; else goto _L5
_L5:
        }

        private final String DATA;
        private final String TYPE;
        final SYSContactDaoV2_OldVersion this$0;

        private ContactOther()
        {
            this$0 = SYSContactDaoV2_OldVersion.this;
            super();
            DATA = "data1";
            TYPE = "data2";
        }

        ContactOther(ContactOther contactother)
        {
            this();
        }
    }


    private class ContactTelPhone
        implements ContactInfoDao
    {

        public void getContentValues(long l, List list, List list1)
        {
            if(list != null && list.size() != 0)
            {
                int i = 0;
                while(i < list.size()) 
                {
                    Record record = (Record)list.get(i);
                    if(record != null)
                    {
                        ContentValues contentvalues = new ContentValues();
                        contentvalues.put("raw_contact_id", Long.valueOf(l));
                        contentvalues.put("mimetype", "vnd.android.cursor.item/phone_v2");
                        String s;
                        String s1;
                        String s2;
                        if(record.get(2) == null)
                            s = "";
                        else
                            s = record.get(2);
                        contentvalues.put("data1", s);
                        s1 = SYSContactDaoV2_OldVersion.dealContactLabel(record.get(1));
                        s2 = (String)typemap.get(s1);
                        if(s2 == null)
                        {
                            contentvalues.put("data3", s1);
                            s2 = "0";
                        }
                        contentvalues.put("data2", s2);
                        list1.add(contentvalues);
                    }
                    i++;
                }
            }
        }

        public String insert(ContentResolver contentresolver, long l, List list)
        {
            String s;
            if(list == null || list.size() == 0)
            {
                s = null;
            } else
            {
                s = "";
                int i = 0;
                while(i < list.size()) 
                {
                    Record record = (Record)list.get(i);
                    String s4;
                    if(record != null)
                    {
                        ContentValues contentvalues = new ContentValues();
                        contentvalues.put("raw_contact_id", Long.valueOf(l));
                        contentvalues.put("mimetype", "vnd.android.cursor.item/phone_v2");
                        String s1;
                        String s2;
                        String s3;
                        long l1;
                        if(record.get(2) == null)
                            s1 = "";
                        else
                            s1 = record.get(2);
                        contentvalues.put("data1", s1);
                        s2 = SYSContactDaoV2_OldVersion.dealContactLabel(record.get(1));
                        s3 = (String)typemap.get(s2);
                        if(s3 == null)
                        {
                            contentvalues.put("data3", s2);
                            s3 = "0";
                        }
                        contentvalues.put("data2", s3);
                        l1 = ContentUris.parseId(contentresolver.insert(Uri.withAppendedPath(AUTHORITY_URI, "data"), contentvalues));
                        s4 = (new StringBuilder(String.valueOf(s))).append(" ").append(String.valueOf(l1)).toString();
                    } else
                    {
                        s4 = s;
                    }
                    i++;
                    s = s4;
                }
            }
            return s;
        }

        public void read(Cursor cursor, List list)
        {
            if(cursor != null && list != null)
            {
                Record record = new Record();
                record.put(0, "TEL");
                String s = cursor.getString(cursor.getColumnIndex("data1"));
                if(s != null)
                    record.put(2, s);
                String s1 = cursor.getString(cursor.getColumnIndex("data2"));
                if(s1 != null)
                {
                    String s2 = (String)typemap.get(s1);
                    if(s2 == null)
                    {
                        s2 = cursor.getString(cursor.getColumnIndex("data3"));
                        if(s2 == null)
                            s2 = "";
                    }
                    record.put(1, s2);
                }
                list.add(record);
            }
        }

        private final String LABEL = "data3";
        private final String NUMBER = "data1";
        private final String TYPE = "data2";
        final SYSContactDaoV2_OldVersion this$0;
        private Hashtable typemap;

        public ContactTelPhone()
        {
            int i = 1;
            this$0 = SYSContactDaoV2_OldVersion.this;
            super();
            typemap = null;
            typemap = new Hashtable();
            String as[] = new String[21];
            as[0] = "";
            as[i] = "HOME";
            as[2] = "CELL";
            as[3] = "WORK";
            as[4] = "FAX;WORK";
            as[5] = "FAX;HOME";
            as[6] = "PAGER";
            as[7] = "OTHER";
            as[8] = "X-CALLBACK";
            as[9] = "CAR";
            as[10] = "X-COMPANY";
            as[11] = "X-ISDN";
            as[12] = "X-MAIN";
            as[13] = "FAX";
            as[14] = "RADIO";
            as[15] = "X-TELEX";
            as[16] = "X-TTY";
            as[17] = "CELL;WORK";
            as[18] = "PAGER;WORK";
            as[19] = "X-ASSISTANT";
            as[20] = "MEDIA";
            do
            {
                if(i > 20)
                    return;
                typemap.put(as[i], (new Integer(i)).toString());
                typemap.put((new Integer(i)).toString(), as[i]);
                i++;
            } while(true);
        }
    }


    private class ContactOrg
        implements ContactInfoDao
    {

        public void getContentValues(long l, List list, List list1)
        {
            if(list != null && list.size() != 0)
            {
                int i = 0;
                while(i < list.size()) 
                {
                    Record record = (Record)list.get(i);
                    if(record != null && record.get(0) != null && record.get(0).equals("ORG"))
                    {
                        ContentValues contentvalues = new ContentValues();
                        contentvalues.put("raw_contact_id", Long.valueOf(l));
                        contentvalues.put("mimetype", "vnd.android.cursor.item/organization");
                        if(record.get(2) != null)
                            contentvalues.put("data1", record.get(2));
                        String s = SYSContactDaoV2_OldVersion.dealContactLabel(record.get(1));
                        String s1 = (String)typemap.get(s);
                        if(s1 == null)
                        {
                            contentvalues.put("data3", s);
                            s1 = "0";
                        }
                        contentvalues.put("data2", s1);
                        Record record1;
                        if(i + 1 < list.size())
                            record1 = (Record)list.get(i + 1);
                        else
                            record1 = null;
                        if(record1 != null && record1.get(0) != null && record1.get(0).equals("TITLE"))
                        {
                            if(record1.get(2) != null)
                                contentvalues.put("data4", record1.get(2));
                            i++;
                        }
                        list1.add(contentvalues);
                    }
                    i++;
                }
            }
        }

        public String insert(ContentResolver contentresolver, long l, List list)
        {
            String s;
            if(list == null || list.size() == 0)
            {
                s = null;
            } else
            {
                s = "";
                int i = 0;
                while(i < list.size()) 
                {
                    Record record = (Record)list.get(i);
                    int j;
                    String s1;
                    if(record != null && record.get(0) != null && record.get(0).equals("ORG"))
                    {
                        ContentValues contentvalues = new ContentValues();
                        contentvalues.put("raw_contact_id", Long.valueOf(l));
                        contentvalues.put("mimetype", "vnd.android.cursor.item/organization");
                        if(record.get(2) != null)
                            contentvalues.put("data1", record.get(2));
                        String s2 = SYSContactDaoV2_OldVersion.dealContactLabel(record.get(1));
                        String s3 = (String)typemap.get(s2);
                        if(s3 == null)
                        {
                            contentvalues.put("data3", s2);
                            s3 = "0";
                        }
                        contentvalues.put("data2", s3);
                        int k;
                        Record record1;
                        long l1;
                        if(i + 1 < list.size())
                            record1 = (Record)list.get(i + 1);
                        else
                            record1 = null;
                        if(record1 != null && record1.get(0) != null && record1.get(0).equals("TITLE"))
                        {
                            if(record1.get(2) != null)
                                contentvalues.put("data4", record1.get(2));
                            j = i + 1;
                        } else
                        {
                            j = i;
                        }
                        l1 = ContentUris.parseId(contentresolver.insert(Uri.withAppendedPath(AUTHORITY_URI, "data"), contentvalues));
                        s1 = (new StringBuilder(String.valueOf(s))).append(" ").append(String.valueOf(l1)).toString();
                    } else
                    {
                        j = i;
                        s1 = s;
                    }
                    k = j + 1;
                    s = s1;
                    i = k;
                }
            }
            return s;
        }

        public void read(Cursor cursor, List list)
        {
            if(cursor != null && list != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            Record record = new Record();
            record.put(0, "ORG");
            String s = cursor.getString(cursor.getColumnIndex("data2"));
            if(s != null)
            {
                String s3 = (String)typemap.get(s);
                if(s3 == null)
                {
                    s3 = cursor.getString(cursor.getColumnIndex("data3"));
                    if(s3 == null)
                        s3 = "";
                }
                record.put(1, s3);
            }
            String s1 = cursor.getString(cursor.getColumnIndex("data1"));
            if(s1 == null)
                s1 = "";
            record.put(2, s1);
            list.add(record);
            String s2 = cursor.getString(cursor.getColumnIndex("data4"));
            if(s2 != null)
            {
                Record record1 = new Record();
                record1.put(0, "TITLE");
                record1.put(2, s2);
                list.add(record1);
            }
            if(true) goto _L1; else goto _L3
_L3:
        }

        private final String COMPANY = "data1";
        private final String LABEL = "data3";
        private final String TITLE = "data4";
        private final String TYPE = "data2";
        final SYSContactDaoV2_OldVersion this$0;
        private Map typemap;

        public ContactOrg()
        {
            int i = 1;
            this$0 = SYSContactDaoV2_OldVersion.this;
            super();
            typemap = null;
            typemap = new HashMap();
            String as[] = new String[3];
            as[0] = "";
            as[i] = "WORK";
            as[2] = "OTHER";
            do
            {
                if(i > 2)
                    return;
                typemap.put((new Integer(i)).toString(), as[i]);
                typemap.put(as[i], (new Integer(i)).toString());
                i++;
            } while(true);
        }
    }


    private class ContactName
        implements ContactInfoDao
    {

        public void getContentValues(long l, List list, List list1)
        {
            if(list != null && list.size() != 0)
            {
                int i = 0;
                while(i < list.size()) 
                {
                    Record record = (Record)list.get(i);
                    if(record != null && record.get(0).equals("FN"))
                    {
                        ContentValues contentvalues1 = new ContentValues();
                        contentvalues1.put("raw_contact_id", Long.valueOf(l));
                        contentvalues1.put("mimetype", "vnd.android.cursor.item/name");
                        contentvalues1.put("data1", record.get(2));
                        ContentValues contentvalues;
                        List list2;
                        Record record1;
                        if(i + 1 < list.size())
                            record1 = (Record)list.get(i + 1);
                        else
                            record1 = null;
                        if(record1 != null && record1.get(0).equals("N"))
                        {
                            List list3 = SYSContactDaoV2_OldVersion.parseRecordContent(record1.get(2));
                            if(list3 != null)
                            {
                                if(list3.size() > 0 && ((String)list3.get(0)).length() > 0)
                                    contentvalues1.put("data3", (String)list3.get(0));
                                if(list3.size() > 1 && ((String)list3.get(1)).length() > 0)
                                    contentvalues1.put("data2", (String)list3.get(1));
                                if(list3.size() > 2 && ((String)list3.get(2)).length() > 0)
                                    contentvalues1.put("data5", (String)list3.get(2));
                                if(list3.size() > 3 && ((String)list3.get(3)).length() > 0)
                                    contentvalues1.put("data4", (String)list3.get(3));
                                if(list3.size() > 4 && ((String)list3.get(4)).length() > 0)
                                    contentvalues1.put("data6", (String)list3.get(4));
                            }
                        }
                        list1.add(contentvalues1);
                    }
                    if(record != null && record.get(0).equals("N"))
                    {
                        contentvalues = new ContentValues();
                        contentvalues.put("raw_contact_id", Long.valueOf(l));
                        contentvalues.put("mimetype", "vnd.android.cursor.item/name");
                        list2 = SYSContactDaoV2_OldVersion.parseRecordContent(record.get(2));
                        if(list2 != null)
                        {
                            if(list2.size() > 0 && ((String)list2.get(0)).length() > 0)
                                contentvalues.put("data3", (String)list2.get(0));
                            if(list2.size() > 1 && ((String)list2.get(1)).length() > 0)
                                contentvalues.put("data2", (String)list2.get(1));
                            if(list2.size() > 2 && ((String)list2.get(2)).length() > 0)
                                contentvalues.put("data5", (String)list2.get(2));
                            if(list2.size() > 3 && ((String)list2.get(3)).length() > 0)
                                contentvalues.put("data4", (String)list2.get(3));
                            if(list2.size() > 4 && ((String)list2.get(4)).length() > 0)
                                contentvalues.put("data6", (String)list2.get(4));
                        }
                        list1.add(contentvalues);
                    }
                    i++;
                }
            }
        }

        public String insert(ContentResolver contentresolver, long l, List list)
        {
            String s;
            if(list == null || list.size() == 0)
            {
                s = null;
            } else
            {
                int i = 0;
                s = "";
                while(i < list.size()) 
                {
                    Record record = (Record)list.get(i);
                    String s1;
                    String s2;
                    if(record != null && record.get(0).equals("FN"))
                    {
                        ContentValues contentvalues1 = new ContentValues();
                        contentvalues1.put("raw_contact_id", Long.valueOf(l));
                        contentvalues1.put("mimetype", "vnd.android.cursor.item/name");
                        contentvalues1.put("data1", record.get(2));
                        ContentValues contentvalues;
                        List list1;
                        long l1;
                        Record record1;
                        long l2;
                        if(i + 1 < list.size())
                            record1 = (Record)list.get(i + 1);
                        else
                            record1 = null;
                        if(record1 != null && record1.get(0).equals("N"))
                        {
                            List list2 = SYSContactDaoV2_OldVersion.parseRecordContent(record1.get(2));
                            if(list2 != null)
                            {
                                if(list2.size() > 0 && ((String)list2.get(0)).length() > 0)
                                    contentvalues1.put("data3", (String)list2.get(0));
                                if(list2.size() > 1 && ((String)list2.get(1)).length() > 0)
                                    contentvalues1.put("data2", (String)list2.get(1));
                                if(list2.size() > 2 && ((String)list2.get(2)).length() > 0)
                                    contentvalues1.put("data5", (String)list2.get(2));
                                if(list2.size() > 3 && ((String)list2.get(3)).length() > 0)
                                    contentvalues1.put("data4", (String)list2.get(3));
                                if(list2.size() > 4 && ((String)list2.get(4)).length() > 0)
                                    contentvalues1.put("data6", (String)list2.get(4));
                            }
                        }
                        l2 = ContentUris.parseId(contentresolver.insert(Uri.withAppendedPath(AUTHORITY_URI, "data"), contentvalues1));
                        s1 = (new StringBuilder(String.valueOf(s))).append(String.valueOf(l2)).toString();
                    } else
                    {
                        s1 = s;
                    }
                    if(record != null && record.get(0).equals("N"))
                    {
                        contentvalues = new ContentValues();
                        contentvalues.put("raw_contact_id", Long.valueOf(l));
                        contentvalues.put("mimetype", "vnd.android.cursor.item/name");
                        list1 = SYSContactDaoV2_OldVersion.parseRecordContent(record.get(2));
                        if(list1 != null)
                        {
                            if(list1.size() > 0 && ((String)list1.get(0)).length() > 0)
                                contentvalues.put("data3", (String)list1.get(0));
                            if(list1.size() > 1 && ((String)list1.get(1)).length() > 0)
                                contentvalues.put("data2", (String)list1.get(1));
                            if(list1.size() > 2 && ((String)list1.get(2)).length() > 0)
                                contentvalues.put("data5", (String)list1.get(2));
                            if(list1.size() > 3 && ((String)list1.get(3)).length() > 0)
                                contentvalues.put("data4", (String)list1.get(3));
                            if(list1.size() > 4 && ((String)list1.get(4)).length() > 0)
                                contentvalues.put("data6", (String)list1.get(4));
                        }
                        l1 = ContentUris.parseId(contentresolver.insert(Uri.withAppendedPath(AUTHORITY_URI, "data"), contentvalues));
                        s2 = (new StringBuilder(String.valueOf(s1))).append(String.valueOf(l1)).toString();
                    } else
                    {
                        s2 = s1;
                    }
                    i++;
                    s = s2;
                }
            }
            return s;
        }

        public void read(Cursor cursor, List list)
        {
            if(cursor != null && list != null)
            {
                StringBuilder stringbuilder = new StringBuilder();
                Record record = new Record();
                record.put(0, "FN");
                record.put(2, cursor.getString(cursor.getColumnIndex("data1")));
                list.add(record);
                Record record1 = new Record();
                record1.put(0, "N");
                String s = SYSContactDaoV2_OldVersion.escapeString(cursor.getString(cursor.getColumnIndex("data3")));
                if(s != null)
                    stringbuilder = stringbuilder.append(s);
                String s1 = SYSContactDaoV2_OldVersion.escapeString(cursor.getString(cursor.getColumnIndex("data2")));
                StringBuilder stringbuilder1 = stringbuilder.append(";");
                if(s1 != null)
                    stringbuilder1 = stringbuilder1.append(s1);
                String s2 = SYSContactDaoV2_OldVersion.escapeString(cursor.getString(cursor.getColumnIndex("data5")));
                StringBuilder stringbuilder2 = stringbuilder1.append(";");
                if(s2 != null)
                    stringbuilder2 = stringbuilder2.append(s2);
                String s3 = SYSContactDaoV2_OldVersion.escapeString(cursor.getString(cursor.getColumnIndex("data4")));
                StringBuilder stringbuilder3 = stringbuilder2.append(";");
                if(s3 != null)
                    stringbuilder3 = stringbuilder3.append(s3);
                String s4 = SYSContactDaoV2_OldVersion.escapeString(cursor.getString(cursor.getColumnIndex("data6")));
                StringBuilder stringbuilder4 = stringbuilder3.append(";");
                if(s4 != null)
                    stringbuilder4 = stringbuilder4.append(s4);
                record1.put(2, stringbuilder4.toString());
                list.add(record1);
            }
        }

        private final String DISPLAY_NAME;
        final SYSContactDaoV2_OldVersion this$0;

        private ContactName()
        {
            this$0 = SYSContactDaoV2_OldVersion.this;
            super();
            DISPLAY_NAME = "data1";
        }

        ContactName(ContactName contactname)
        {
            this();
        }
    }


    private class ContactPhoto
        implements ContactInfoDao
    {

        public void getContentValues(long l, List list, List list1)
        {
            if(list != null && list.size() != 0)
            {
                int i = 0;
                while(i < list.size()) 
                {
                    Record record = (Record)list.get(i);
                    if(record != null && record.get(0).equals("PHOTO") && record.getBinaryData() != null)
                    {
                        ContentValues contentvalues = new ContentValues();
                        contentvalues.put("raw_contact_id", Long.valueOf(l));
                        contentvalues.put("mimetype", "vnd.android.cursor.item/photo");
                        contentvalues.put("data15", record.getBinaryData());
                        list1.add(contentvalues);
                    }
                    i++;
                }
            }
        }

        public String insert(ContentResolver contentresolver, long l, List list)
        {
            String s;
            if(list == null || list.size() == 0)
            {
                s = null;
            } else
            {
                s = "";
                int i = 0;
                while(i < list.size()) 
                {
                    Record record = (Record)list.get(i);
                    String s1;
                    if(record != null && record.get(0).equals("PHOTO") && record.getBinaryData() != null)
                    {
                        ContentValues contentvalues = new ContentValues();
                        contentvalues.put("raw_contact_id", Long.valueOf(l));
                        contentvalues.put("mimetype", "vnd.android.cursor.item/photo");
                        contentvalues.put("data15", record.getBinaryData());
                        long l1 = ContentUris.parseId(contentresolver.insert(Uri.withAppendedPath(AUTHORITY_URI, "data"), contentvalues));
                        s1 = (new StringBuilder(String.valueOf(s))).append(" ").append(String.valueOf(l1)).toString();
                    } else
                    {
                        s1 = s;
                    }
                    i++;
                    s = s1;
                }
            }
            return s;
        }

        public void read(Cursor cursor, List list)
        {
            if(cursor != null && list != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            byte abyte0[] = cursor.getBlob(cursor.getColumnIndex("data15"));
            if(abyte0 != null)
            {
                Record record = new Record();
                record.put(0, "PHOTO");
                record.putBinaryData(abyte0);
                list.add(record);
            }
            if(true) goto _L1; else goto _L3
_L3:
        }

        private final String PHOTO;
        final SYSContactDaoV2_OldVersion this$0;

        private ContactPhoto()
        {
            this$0 = SYSContactDaoV2_OldVersion.this;
            super();
            PHOTO = "data15";
        }

        ContactPhoto(ContactPhoto contactphoto)
        {
            this();
        }
    }


    private class ContactIM
        implements ContactInfoDao
    {

        public void getContentValues(long l, List list, List list1)
        {
            if(list != null && list.size() != 0 && list.get(0) != null)
            {
                int i = 0;
                while(i < list.size()) 
                {
                    Record record = (Record)list.get(i);
                    if(record != null)
                    {
                        ContentValues contentvalues = new ContentValues();
                        contentvalues.put("raw_contact_id", Long.valueOf(l));
                        contentvalues.put("mimetype", "vnd.android.cursor.item/im");
                        String s;
                        String s1;
                        String s2;
                        if(record.get(2) == null)
                            s = "";
                        else
                            s = record.get(2);
                        contentvalues.put("data1", s);
                        contentvalues.put("data2", "3");
                        s1 = SYSContactDaoV2_OldVersion.dealContactLabel(record.get(1));
                        s2 = (String)typemap.get(s1);
                        if(s2 == null)
                        {
                            s2 = "-1";
                            contentvalues.put("data6", s1);
                        }
                        contentvalues.put("data5", s2);
                        list1.add(contentvalues);
                    }
                    i++;
                }
            }
        }

        public String insert(ContentResolver contentresolver, long l, List list)
        {
            String s;
            if(list == null || list.size() == 0)
            {
                s = null;
            } else
            {
                s = "";
                int i = 0;
                while(i < list.size()) 
                {
                    Record record = (Record)list.get(i);
                    String s4;
                    if(record != null)
                    {
                        ContentValues contentvalues = new ContentValues();
                        contentvalues.put("raw_contact_id", Long.valueOf(l));
                        contentvalues.put("mimetype", "vnd.android.cursor.item/im");
                        String s1;
                        String s2;
                        String s3;
                        long l1;
                        if(record.get(2) == null)
                            s1 = "";
                        else
                            s1 = record.get(2);
                        contentvalues.put("data1", s1);
                        contentvalues.put("data2", "3");
                        s2 = SYSContactDaoV2_OldVersion.dealContactLabel(record.get(1));
                        s3 = (String)typemap.get(s2);
                        if(s3 == null)
                        {
                            s3 = "-1";
                            contentvalues.put("data6", s2);
                        }
                        contentvalues.put("data5", s3);
                        l1 = ContentUris.parseId(contentresolver.insert(Uri.withAppendedPath(AUTHORITY_URI, "data"), contentvalues));
                        s4 = (new StringBuilder(String.valueOf(s))).append(" ").append(String.valueOf(l1)).toString();
                    } else
                    {
                        s4 = s;
                    }
                    i++;
                    s = s4;
                }
            }
            return s;
        }

        public void read(Cursor cursor, List list)
        {
            if(cursor != null && list != null)
            {
                Record record = new Record();
                record.put(0, "X-TC-IM");
                String s = cursor.getString(cursor.getColumnIndex("data5"));
                if(s != null)
                {
                    String s2 = (String)typemap.get(s);
                    if(s2 == null)
                    {
                        s2 = cursor.getString(cursor.getColumnIndex("data6"));
                        if(s2 == null)
                            s2 = "";
                    }
                    record.put(1, s2);
                }
                String s1 = cursor.getString(cursor.getColumnIndex("data1"));
                if(s1 == null)
                    s1 = "";
                record.put(2, s1);
                list.add(record);
            }
        }

        private final String CUSTOM_PROTOCOL = "data6";
        private final String DATA = "data1";
        private final String PROTOCOL = "data5";
        private final String TYPE = "data2";
        final SYSContactDaoV2_OldVersion this$0;
        private Map typemap;

        public ContactIM()
        {
            int i = 0;
            this$0 = SYSContactDaoV2_OldVersion.this;
            super();
            typemap = null;
            typemap = new Hashtable();
            String as[] = new String[9];
            as[i] = "AIM";
            as[1] = "MSN";
            as[2] = "YAHOO";
            as[3] = "SKYPE";
            as[4] = "QQ";
            as[5] = "GTALK";
            as[6] = "ICQ";
            as[7] = "JABBER";
            as[8] = "X-NETMEETING";
            do
            {
                if(i >= 9)
                    return;
                typemap.put((new Integer(i)).toString(), as[i]);
                typemap.put(as[i], (new Integer(i)).toString());
                i++;
            } while(true);
        }
    }


    private class ContactInfoDao
    {

        public abstract void getContentValues(long l, List list, List list1);

        public abstract String insert(ContentResolver contentresolver, long l, List list);

        public abstract void read(Cursor cursor, List list);
    }

}
