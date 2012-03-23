// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ItemInfo.java

package com.android.launcher2;

import android.content.ContentValues;
import android.graphics.Bitmap;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

class ItemInfo
{

    ItemInfo()
    {
        id = -1L;
        container = -1L;
        screen = -1;
        cellX = -1;
        cellY = -1;
        spanX = 1;
        spanY = 1;
        isGesture = false;
        dropPos = null;
    }

    ItemInfo(ItemInfo info)
    {
        id = -1L;
        container = -1L;
        screen = -1;
        cellX = -1;
        cellY = -1;
        spanX = 1;
        spanY = 1;
        isGesture = false;
        dropPos = null;
        id = info.id;
        cellX = info.cellX;
        cellY = info.cellY;
        spanX = info.spanX;
        spanY = info.spanY;
        screen = info.screen;
        itemType = info.itemType;
        container = info.container;
    }

    void onAddToDatabase(ContentValues values)
    {
        values.put("itemType", Integer.valueOf(itemType));
        if(!isGesture)
        {
            values.put("container", Long.valueOf(container));
            values.put("screen", Integer.valueOf(screen));
            values.put("cellX", Integer.valueOf(cellX));
            values.put("cellY", Integer.valueOf(cellY));
            values.put("spanX", Integer.valueOf(spanX));
            values.put("spanY", Integer.valueOf(spanY));
        }
    }

    void updateValuesWithCoordinates(ContentValues values, int cellX, int cellY)
    {
        values.put("cellX", Integer.valueOf(cellX));
        values.put("cellY", Integer.valueOf(cellY));
    }

    static byte[] flattenBitmap(Bitmap bitmap)
    {
        int size = bitmap.getWidth() * bitmap.getHeight() * 4;
        ByteArrayOutputStream out = new ByteArrayOutputStream(size);
        try
        {
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, out);
            out.flush();
            out.close();
            return out.toByteArray();
        }
        catch(IOException e)
        {
            Log.w("Favorite", "Could not write icon");
        }
        return null;
    }

    static void writeBitmap(ContentValues values, Bitmap bitmap)
    {
        if(bitmap != null)
        {
            byte data[] = flattenBitmap(bitmap);
            values.put("icon", data);
        }
    }

    void unbind()
    {
    }

    public String toString()
    {
        return (new StringBuilder("Item(id=")).append(id).append(" type=").append(itemType).append(" container=").append(container).append(" screen=").append(screen).append(" cellX=").append(cellX).append(" cellY=").append(cellY).append(" spanX=").append(spanX).append(" spanY=").append(spanY).append(" isGesture=").append(isGesture).append(" dropPos=").append(dropPos).append(")").toString();
    }

    static final int NO_ID = -1;
    long id;
    int itemType;
    long container;
    int screen;
    int cellX;
    int cellY;
    int spanX;
    int spanY;
    boolean isGesture;
    int dropPos[];
}
