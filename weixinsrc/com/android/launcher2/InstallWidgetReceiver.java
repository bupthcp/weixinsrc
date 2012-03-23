// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   InstallWidgetReceiver.java

package com.android.launcher2;

import android.appwidget.AppWidgetProviderInfo;
import android.content.*;
import android.content.pm.ResolveInfo;
import android.database.DataSetObserver;
import android.view.*;
import android.widget.*;
import java.util.List;

// Referenced classes of package com.android.launcher2:
//            CellLayout, PendingAddWidgetInfo, Launcher

public class InstallWidgetReceiver
{
    public static class WidgetListAdapter
        implements ListAdapter, android.content.DialogInterface.OnClickListener
    {

        public void registerDataSetObserver(DataSetObserver datasetobserver)
        {
        }

        public void unregisterDataSetObserver(DataSetObserver datasetobserver)
        {
        }

        public int getCount()
        {
            return mActivities.size();
        }

        public Object getItem(int position)
        {
            return null;
        }

        public long getItemId(int position)
        {
            return (long)position;
        }

        public boolean hasStableIds()
        {
            return true;
        }

        public View getView(int position, View convertView, ViewGroup parent)
        {
            Context context = parent.getContext();
            android.content.pm.PackageManager packageManager = context.getPackageManager();
            if(mInflater == null)
                mInflater = LayoutInflater.from(context);
            if(convertView == null)
                convertView = mInflater.inflate(0x7f030008, parent, false);
            WidgetMimeTypeHandlerData data = (WidgetMimeTypeHandlerData)mActivities.get(position);
            ResolveInfo resolveInfo = data.resolveInfo;
            AppWidgetProviderInfo widgetInfo = data.widgetInfo;
            android.graphics.drawable.Drawable d = resolveInfo.loadIcon(packageManager);
            ImageView i = (ImageView)convertView.findViewById(0x7f060010);
            i.setImageDrawable(d);
            CharSequence component = resolveInfo.loadLabel(packageManager);
            int widgetSpan[] = new int[2];
            mTargetLayout.rectToCell(widgetInfo.minWidth, widgetInfo.minHeight, widgetSpan);
            TextView t = (TextView)convertView.findViewById(0x7f060011);
            t.setText(context.getString(0x7f0c000b, new Object[] {
                component, Integer.valueOf(widgetSpan[0]), Integer.valueOf(widgetSpan[1])
            }));
            return convertView;
        }

        public int getItemViewType(int position)
        {
            return 0;
        }

        public int getViewTypeCount()
        {
            return 1;
        }

        public boolean isEmpty()
        {
            return mActivities.isEmpty();
        }

        public boolean areAllItemsEnabled()
        {
            return false;
        }

        public boolean isEnabled(int position)
        {
            return true;
        }

        public void onClick(DialogInterface dialog, int which)
        {
            AppWidgetProviderInfo widgetInfo = ((WidgetMimeTypeHandlerData)mActivities.get(which)).widgetInfo;
            PendingAddWidgetInfo createInfo = new PendingAddWidgetInfo(widgetInfo, mMimeType, mClipData);
            mLauncher.addAppWidgetFromDrop(createInfo, -100L, mTargetLayoutScreen, null, mTargetLayoutPos);
        }

        private LayoutInflater mInflater;
        private Launcher mLauncher;
        private String mMimeType;
        private ClipData mClipData;
        private List mActivities;
        private CellLayout mTargetLayout;
        private int mTargetLayoutScreen;
        private int mTargetLayoutPos[];

        public WidgetListAdapter(Launcher l, String mimeType, ClipData data, List list, CellLayout target, int targetScreen, int targetPos[])
        {
            mLauncher = l;
            mMimeType = mimeType;
            mClipData = data;
            mActivities = list;
            mTargetLayout = target;
            mTargetLayoutScreen = targetScreen;
            mTargetLayoutPos = targetPos;
        }
    }

    public static class WidgetMimeTypeHandlerData
    {

        public ResolveInfo resolveInfo;
        public AppWidgetProviderInfo widgetInfo;

        public WidgetMimeTypeHandlerData(ResolveInfo rInfo, AppWidgetProviderInfo wInfo)
        {
            resolveInfo = rInfo;
            widgetInfo = wInfo;
        }
    }


    public InstallWidgetReceiver()
    {
    }

    public static final String ACTION_INSTALL_WIDGET = "com.android.launcher.action.INSTALL_WIDGET";
    public static final String ACTION_SUPPORTS_CLIPDATA_MIMETYPE = "com.android.launcher.action.SUPPORTS_CLIPDATA_MIMETYPE";
    public static final String EXTRA_APPWIDGET_COMPONENT = "com.android.launcher.extra.widget.COMPONENT";
    public static final String EXTRA_APPWIDGET_CONFIGURATION_DATA_MIME_TYPE = "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE";
    public static final String EXTRA_APPWIDGET_CONFIGURATION_DATA = "com.android.launcher.extra.widget.CONFIGURATION_DATA";
}
