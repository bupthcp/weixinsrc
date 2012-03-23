// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.content.*;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import java.util.*;

// Referenced classes of package b.a:
//            o

class ag
{

    ag()
    {
    }

    public Uri a()
    {
        return android.provider.ContactsContract.Contacts.CONTENT_URI;
    }

    public String a(String s, Context context)
    {
        String s1 = "";
        ContentResolver contentresolver = context.getContentResolver();
        Uri uri = android.provider.ContactsContract.Contacts.CONTENT_URI;
        String as[] = new String[1];
        as[0] = "display_name";
        String as1[] = new String[1];
        as1[0] = s;
        Cursor cursor = contentresolver.query(uri, as, "_id = ?", as1, null);
        if(cursor != null)
        {
            String s2;
            if(cursor.moveToFirst())
                s2 = cursor.getString(0);
            else
                s2 = s1;
            cursor.close();
            s1 = s2;
        }
        return s1;
    }

    public Map a(Context context)
    {
        HashMap hashmap;
        ContentResolver contentresolver;
        Cursor cursor;
        hashmap = new HashMap();
        contentresolver = context.getContentResolver();
        cursor = contentresolver.query(android.provider.ContactsContract.Contacts.CONTENT_URI, null, null, null, null);
        if(cursor != null) goto _L2; else goto _L1
_L1:
        HashMap hashmap1;
        Log.a("AddressBook20Impl", "getMobileContactList: cursor is null.");
        hashmap1 = hashmap;
_L6:
        return hashmap1;
_L4:
        String s;
        Cursor cursor1;
        if(cursor1.moveToFirst())
        {
            LinkedList linkedlist = new LinkedList();
            do
            {
                String s1 = cursor1.getString(cursor1.getColumnIndex("data1"));
                if(o.a(s1))
                    linkedlist.add(s1);
            } while(cursor1.moveToNext());
            hashmap.put(s, linkedlist);
        }
        cursor1.close();
_L2:
        if(!cursor.moveToNext())
            break; /* Loop/switch isn't completed */
        s = cursor.getString(cursor.getColumnIndex("_id"));
        cursor1 = contentresolver.query(android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, (new StringBuilder()).append("contact_id = ").append(s).toString(), null, null);
        if(cursor1 != null)
            continue; /* Loop/switch isn't completed */
        Log.a("AddressBook20Impl", "getMobileContactList : cursor is null");
        break; /* Loop/switch isn't completed */
        if(true) goto _L4; else goto _L3
_L3:
        cursor.close();
        hashmap1 = hashmap;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public boolean a(Context context, String s)
    {
        ContentResolver contentresolver = context.getContentResolver();
        Uri uri = android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
        String as[] = new String[1];
        as[0] = s;
        Cursor cursor = contentresolver.query(uri, null, "data1 =? ", as, null);
        boolean flag;
        if(cursor == null)
            flag = false;
        else
        if(cursor.getCount() > 0)
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

    public Bitmap b(String s, Context context)
    {
        if(s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        Bitmap bitmap = null;
_L4:
        return bitmap;
_L2:
        ContentResolver contentresolver;
        long l;
        contentresolver = context.getContentResolver();
        l = 0L;
        long l1 = Long.parseLong(s);
        l = l1;
_L5:
        bitmap = BitmapFactory.decodeStream(android.provider.ContactsContract.Contacts.openContactPhotoInputStream(contentresolver, ContentUris.withAppendedId(android.provider.ContactsContract.Contacts.CONTENT_URI, l)));
        if(bitmap != null)
            bitmap = Util.a(bitmap, 4F);
        if(true) goto _L4; else goto _L3
_L3:
        NumberFormatException numberformatexception;
        numberformatexception;
          goto _L5
    }

    public List b(Context context)
    {
        LinkedList linkedlist = new LinkedList();
        Cursor cursor = context.getContentResolver().query(android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, null, null, null);
        LinkedList linkedlist1;
        if(cursor == null)
        {
            Log.a("AddressBook20Impl", "getMobileInfo: mobile is null");
            linkedlist1 = linkedlist;
        } else
        {
            String as[];
            for(; cursor.moveToNext(); linkedlist.add(as))
            {
                String s = cursor.getString(cursor.getColumnIndex("display_name"));
                String s1 = cursor.getString(cursor.getColumnIndex("contact_id"));
                String s2 = cursor.getString(cursor.getColumnIndex("data1"));
                as = new String[3];
                as[0] = s1;
                as[1] = s;
                as[2] = s2;
            }

            cursor.close();
            linkedlist1 = linkedlist;
        }
        return linkedlist1;
    }

    public boolean b(Context context, String s)
    {
        ContentResolver contentresolver = context.getContentResolver();
        Uri uri = android.provider.ContactsContract.CommonDataKinds.Email.CONTENT_URI;
        String as[] = new String[1];
        as[0] = s;
        Cursor cursor = contentresolver.query(uri, null, "data1 =? ", as, null);
        boolean flag;
        if(cursor == null)
            flag = false;
        else
        if(cursor.getCount() > 0)
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

    public List c(Context context)
    {
        LinkedList linkedlist = new LinkedList();
        Cursor cursor = context.getContentResolver().query(android.provider.ContactsContract.CommonDataKinds.Email.CONTENT_URI, null, null, null, null);
        if(cursor.moveToFirst())
            do
            {
                String s = cursor.getString(cursor.getColumnIndex("data1"));
                String s1 = cursor.getString(cursor.getColumnIndex("contact_id"));
                String s2 = cursor.getString(cursor.getColumnIndex("data4"));
                String as[] = new String[3];
                as[0] = s1;
                as[1] = s2;
                as[2] = s;
                linkedlist.add(as);
            } while(cursor.moveToNext());
        cursor.close();
        return linkedlist;
    }

    public List d(Context context)
    {
        LinkedList linkedlist = new LinkedList();
        Cursor cursor = context.getContentResolver().query(android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, null, null, null);
        LinkedList linkedlist1;
        if(cursor == null)
        {
            Log.a("AddressBook20Impl", "getPhonesCursor: cursor is null.");
            linkedlist1 = linkedlist;
        } else
        {
            if(cursor.moveToFirst())
                do
                    linkedlist.add(cursor.getString(cursor.getColumnIndex("data1")));
                while(cursor.moveToNext());
            cursor.close();
            linkedlist1 = linkedlist;
        }
        return linkedlist1;
    }

    public List e(Context context)
    {
        LinkedList linkedlist;
        ContentResolver contentresolver;
        Cursor cursor;
        linkedlist = new LinkedList();
        contentresolver = context.getContentResolver();
        cursor = contentresolver.query(android.provider.ContactsContract.Contacts.CONTENT_URI, null, null, null, null);
        if(cursor != null) goto _L2; else goto _L1
_L1:
        LinkedList linkedlist1;
        Log.a("AddressBook20Impl", "getEmailList: cursor is null.");
        linkedlist1 = linkedlist;
_L6:
        return linkedlist1;
_L4:
        Cursor cursor1;
        if(cursor1.moveToFirst())
            do
                linkedlist.add(cursor1.getString(cursor1.getColumnIndex("data1")));
            while(cursor1.moveToNext());
        cursor1.close();
_L2:
        if(!cursor.moveToNext())
            break; /* Loop/switch isn't completed */
        String s = cursor.getString(cursor.getColumnIndex("_id"));
        cursor1 = contentresolver.query(android.provider.ContactsContract.CommonDataKinds.Email.CONTENT_URI, null, (new StringBuilder()).append("contact_id = ").append(s).toString(), null, null);
        if(cursor1 != null)
            continue; /* Loop/switch isn't completed */
        Log.a("AddressBook20Impl", "getEmailsCursor: cursor is null.");
        break; /* Loop/switch isn't completed */
        if(true) goto _L4; else goto _L3
_L3:
        cursor.close();
        linkedlist1 = linkedlist;
        if(true) goto _L6; else goto _L5
_L5:
    }

    private static final String a = "AddressBook20Impl";
}
