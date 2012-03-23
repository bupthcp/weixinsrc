// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storagebase;

import android.content.ContentResolver;
import android.database.*;
import android.net.Uri;
import android.os.Bundle;

public class MCursor
    implements Cursor
{

    public void close()
    {
        a.close();
        b.close();
    }

    public void copyStringToBuffer(int i, CharArrayBuffer chararraybuffer)
    {
    }

    public void deactivate()
    {
    }

    protected void finalize()
    {
        if(!a.isClosed())
            a.close();
        if(!b.isClosed())
            b.close();
    }

    public byte[] getBlob(int i)
    {
        return c.getBlob(i);
    }

    public int getColumnCount()
    {
        return 0;
    }

    public int getColumnIndex(String s)
    {
        return c.getColumnIndex(s);
    }

    public int getColumnIndexOrThrow(String s)
    {
        return 0;
    }

    public String getColumnName(int i)
    {
        return null;
    }

    public String[] getColumnNames()
    {
        return null;
    }

    public int getCount()
    {
        return a.getCount() + b.getCount();
    }

    public double getDouble(int i)
    {
        return 0D;
    }

    public Bundle getExtras()
    {
        return null;
    }

    public float getFloat(int i)
    {
        return 0F;
    }

    public int getInt(int i)
    {
        return c.getInt(i);
    }

    public long getLong(int i)
    {
        return c.getLong(i);
    }

    public int getPosition()
    {
        return 0;
    }

    public short getShort(int i)
    {
        return c.getShort(i);
    }

    public String getString(int i)
    {
        return c.getString(i);
    }

    public boolean getWantsAllOnMoveCalls()
    {
        return false;
    }

    public boolean isAfterLast()
    {
        boolean flag;
        if(c == b && c.isAfterLast() || b.getCount() == 0 && c == a && c.isAfterLast())
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean isBeforeFirst()
    {
        boolean flag;
        if(c == a && c.isBeforeFirst() || a.getCount() == 0 && c == b && c.isBeforeFirst())
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean isClosed()
    {
        return false;
    }

    public boolean isFirst()
    {
        return false;
    }

    public boolean isLast()
    {
        return false;
    }

    public boolean isNull(int i)
    {
        return false;
    }

    public boolean move(int i)
    {
        return false;
    }

    public boolean moveToFirst()
    {
        a.moveToFirst();
        b.moveToFirst();
        if(a.getCount() == 0)
            c = b;
        else
            c = a;
        return true;
    }

    public boolean moveToLast()
    {
        a.moveToLast();
        b.moveToLast();
        if(b.getCount() == 0)
            c = a;
        else
            c = b;
        return true;
    }

    public boolean moveToNext()
    {
        boolean flag;
        if(c == a && c.isLast())
        {
            c = b;
            flag = true;
        } else
        {
            flag = c.moveToNext();
        }
        return flag;
    }

    public boolean moveToPosition(int i)
    {
        boolean flag;
        if(i < a.getCount())
        {
            a.moveToPosition(i);
            c = a;
        } else
        {
label0:
            {
                if(i >= a.getCount() + b.getCount())
                    break label0;
                b.moveToPosition(i - a.getCount());
                c = b;
            }
        }
        flag = true;
_L2:
        return flag;
        flag = false;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public boolean moveToPrevious()
    {
        return false;
    }

    public void registerContentObserver(ContentObserver contentobserver)
    {
    }

    public void registerDataSetObserver(DataSetObserver datasetobserver)
    {
    }

    public boolean requery()
    {
        return false;
    }

    public Bundle respond(Bundle bundle)
    {
        return null;
    }

    public void setNotificationUri(ContentResolver contentresolver, Uri uri)
    {
    }

    public void unregisterContentObserver(ContentObserver contentobserver)
    {
    }

    public void unregisterDataSetObserver(DataSetObserver datasetobserver)
    {
    }

    private final Cursor a;
    private final Cursor b;
    private Cursor c;
}
