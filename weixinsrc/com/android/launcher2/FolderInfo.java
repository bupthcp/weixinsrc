// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   FolderInfo.java

package com.android.launcher2;

import android.content.ContentValues;
import java.util.ArrayList;

// Referenced classes of package com.android.launcher2:
//            ItemInfo, ShortcutInfo

class FolderInfo extends ItemInfo
{
    static interface FolderListener
    {

        public abstract void onAdd(ShortcutInfo shortcutinfo);

        public abstract void onRemove(ShortcutInfo shortcutinfo);

        public abstract void onTitleChanged(CharSequence charsequence);

        public abstract void onItemsChanged();
    }


    FolderInfo()
    {
        contents = new ArrayList();
        listeners = new ArrayList();
        itemType = 2;
    }

    public void add(ShortcutInfo item)
    {
        contents.add(item);
        for(int i = 0; i < listeners.size(); i++)
            ((FolderListener)listeners.get(i)).onAdd(item);

        itemsChanged();
    }

    public void remove(ShortcutInfo item)
    {
        contents.remove(item);
        for(int i = 0; i < listeners.size(); i++)
            ((FolderListener)listeners.get(i)).onRemove(item);

        itemsChanged();
    }

    public void setTitle(CharSequence title)
    {
        this.title = title;
        for(int i = 0; i < listeners.size(); i++)
            ((FolderListener)listeners.get(i)).onTitleChanged(title);

    }

    void onAddToDatabase(ContentValues values)
    {
        super.onAddToDatabase(values);
        values.put("title", title.toString());
    }

    void addListener(FolderListener listener)
    {
        listeners.add(listener);
    }

    void removeListener(FolderListener listener)
    {
        if(listeners.contains(listener))
            listeners.remove(listener);
    }

    void itemsChanged()
    {
        for(int i = 0; i < listeners.size(); i++)
            ((FolderListener)listeners.get(i)).onItemsChanged();

    }

    void unbind()
    {
        super.unbind();
        listeners.clear();
    }

    boolean opened;
    CharSequence title;
    ArrayList contents;
    ArrayList listeners;
}
