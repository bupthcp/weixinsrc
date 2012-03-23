// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AddAdapter.java

package com.android.launcher2;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.*;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;

// Referenced classes of package com.android.launcher2:
//            Launcher

public class AddAdapter extends BaseAdapter
{
    public class ListItem
    {

        public final CharSequence text;
        public final Drawable image;
        public final int actionTag;
        final AddAdapter this$0;

        public ListItem(Resources res, int textResourceId, int imageResourceId, int actionTag)
        {
            this$0 = AddAdapter.this;
            super();
            text = res.getString(textResourceId);
            if(imageResourceId != -1)
                image = res.getDrawable(imageResourceId);
            else
                image = null;
            this.actionTag = actionTag;
        }
    }


    public AddAdapter(Launcher launcher)
    {
        mInflater = (LayoutInflater)launcher.getSystemService("layout_inflater");
        Resources res = launcher.getResources();
        mItems.add(new ListItem(res, 0x7f0c0016, 0x7f020039, 3));
    }

    public View getView(int position, View convertView, ViewGroup parent)
    {
        ListItem item = (ListItem)getItem(position);
        if(convertView == null)
            convertView = mInflater.inflate(0x7f030000, parent, false);
        TextView textView = (TextView)convertView;
        textView.setTag(item);
        textView.setText(item.text);
        textView.setCompoundDrawablesWithIntrinsicBounds(item.image, null, null, null);
        return convertView;
    }

    public int getCount()
    {
        return mItems.size();
    }

    public Object getItem(int position)
    {
        return mItems.get(position);
    }

    public long getItemId(int position)
    {
        return (long)position;
    }

    private final LayoutInflater mInflater;
    private final ArrayList mItems = new ArrayList();
    public static final int ITEM_SHORTCUT = 0;
    public static final int ITEM_APPWIDGET = 1;
    public static final int ITEM_APPLICATION = 2;
    public static final int ITEM_WALLPAPER = 3;
}
