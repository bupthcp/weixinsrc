// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   LauncherSettings.java

package com.android.launcher2;

import android.net.Uri;
import android.provider.BaseColumns;

class LauncherSettings
{
    static interface BaseLauncherColumns
        extends BaseColumns
    {

        public static final String TITLE = "title";
        public static final String INTENT = "intent";
        public static final String ITEM_TYPE = "itemType";
        public static final int ITEM_TYPE_APPLICATION = 0;
        public static final int ITEM_TYPE_SHORTCUT = 1;
        public static final String ICON_TYPE = "iconType";
        public static final int ICON_TYPE_RESOURCE = 0;
        public static final int ICON_TYPE_BITMAP = 1;
        public static final String ICON_PACKAGE = "iconPackage";
        public static final String ICON_RESOURCE = "iconResource";
        public static final String ICON = "icon";
    }

    static final class Favorites
        implements BaseLauncherColumns
    {

        static Uri getContentUri(long id, boolean notify)
        {
            return Uri.parse((new StringBuilder("content://com.android.launcher2.settings/favorites/")).append(id).append("?").append("notify").append("=").append(notify).toString());
        }

        static final Uri CONTENT_URI = Uri.parse("content://com.android.launcher2.settings/favorites?notify=true");
        static final Uri CONTENT_URI_NO_NOTIFICATION = Uri.parse("content://com.android.launcher2.settings/favorites?notify=false");
        static final String CONTAINER = "container";
        static final int CONTAINER_DESKTOP = -100;
        static final int CONTAINER_HOTSEAT = -101;
        static final String SCREEN = "screen";
        static final String CELLX = "cellX";
        static final String CELLY = "cellY";
        static final String SPANX = "spanX";
        static final String SPANY = "spanY";
        static final int ITEM_TYPE_FOLDER = 2;
        static final int ITEM_TYPE_LIVE_FOLDER = 3;
        static final int ITEM_TYPE_APPWIDGET = 4;
        static final int ITEM_TYPE_WIDGET_CLOCK = 1000;
        static final int ITEM_TYPE_WIDGET_SEARCH = 1001;
        static final int ITEM_TYPE_WIDGET_PHOTO_FRAME = 1002;
        static final String APPWIDGET_ID = "appWidgetId";
        /**
         * @deprecated Field IS_SHORTCUT is deprecated
         */
        static final String IS_SHORTCUT = "isShortcut";
        static final String URI = "uri";
        static final String DISPLAY_MODE = "displayMode";


        Favorites()
        {
        }
    }


    LauncherSettings()
    {
    }
}
