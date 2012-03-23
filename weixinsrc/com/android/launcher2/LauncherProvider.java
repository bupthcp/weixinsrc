// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   LauncherProvider.java

package com.android.launcher2;

import android.app.SearchManager;
import android.appwidget.*;
import android.content.*;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.*;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.*;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import com.android.internal.util.XmlUtils;
import com.android.launcher.R;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;

// Referenced classes of package com.android.launcher2:
//            LauncherApplication, LauncherSettings, Utilities, ItemInfo, 
//            Hotseat

public class LauncherProvider extends ContentProvider
{
    private static class DatabaseHelper extends SQLiteOpenHelper
    {

        private void sendAppWidgetResetNotify()
        {
            ContentResolver resolver = mContext.getContentResolver();
            resolver.notifyChange(LauncherProvider.CONTENT_APPWIDGET_RESET_URI, null);
        }

        public void onCreate(SQLiteDatabase db)
        {
            mMaxId = 1L;
            db.execSQL("CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER);");
            if(mAppWidgetHost != null)
            {
                mAppWidgetHost.deleteHost();
                sendAppWidgetResetNotify();
            }
            if(!convertDatabase(db))
                loadFavorites(db, -1L);
        }

        private boolean convertDatabase(SQLiteDatabase db)
        {
            boolean converted;
            Uri uri;
            ContentResolver resolver;
            Cursor cursor;
            converted = false;
            uri = Uri.parse("content://settings/old_favorites?notify=true");
            resolver = mContext.getContentResolver();
            cursor = null;
            try
            {
                cursor = resolver.query(uri, null, null, null, null);
            }
            catch(Exception exception) { }
            if(cursor == null || cursor.getCount() <= 0)
                break MISSING_BLOCK_LABEL_103;
            converted = copyFromCursor(db, cursor) > 0;
            break MISSING_BLOCK_LABEL_83;
            Exception exception1;
            exception1;
            cursor.close();
            throw exception1;
            cursor.close();
            if(converted)
                resolver.delete(uri, null, null);
            if(converted)
                convertWidgets(db);
            return converted;
        }

        private int copyFromCursor(SQLiteDatabase db, Cursor c)
        {
            ContentValues rows[];
            int i;
            int total;
            int idIndex = c.getColumnIndexOrThrow("_id");
            int intentIndex = c.getColumnIndexOrThrow("intent");
            int titleIndex = c.getColumnIndexOrThrow("title");
            int iconTypeIndex = c.getColumnIndexOrThrow("iconType");
            int iconIndex = c.getColumnIndexOrThrow("icon");
            int iconPackageIndex = c.getColumnIndexOrThrow("iconPackage");
            int iconResourceIndex = c.getColumnIndexOrThrow("iconResource");
            int containerIndex = c.getColumnIndexOrThrow("container");
            int itemTypeIndex = c.getColumnIndexOrThrow("itemType");
            int screenIndex = c.getColumnIndexOrThrow("screen");
            int cellXIndex = c.getColumnIndexOrThrow("cellX");
            int cellYIndex = c.getColumnIndexOrThrow("cellY");
            int uriIndex = c.getColumnIndexOrThrow("uri");
            int displayModeIndex = c.getColumnIndexOrThrow("displayMode");
            rows = new ContentValues[c.getCount()];
            i = 0;
            while(c.moveToNext()) 
            {
                ContentValues values = new ContentValues(c.getColumnCount());
                values.put("_id", Long.valueOf(c.getLong(idIndex)));
                values.put("intent", c.getString(intentIndex));
                values.put("title", c.getString(titleIndex));
                values.put("iconType", Integer.valueOf(c.getInt(iconTypeIndex)));
                values.put("icon", c.getBlob(iconIndex));
                values.put("iconPackage", c.getString(iconPackageIndex));
                values.put("iconResource", c.getString(iconResourceIndex));
                values.put("container", Integer.valueOf(c.getInt(containerIndex)));
                values.put("itemType", Integer.valueOf(c.getInt(itemTypeIndex)));
                values.put("appWidgetId", Integer.valueOf(-1));
                values.put("screen", Integer.valueOf(c.getInt(screenIndex)));
                values.put("cellX", Integer.valueOf(c.getInt(cellXIndex)));
                values.put("cellY", Integer.valueOf(c.getInt(cellYIndex)));
                values.put("uri", c.getString(uriIndex));
                values.put("displayMode", Integer.valueOf(c.getInt(displayModeIndex)));
                rows[i++] = values;
            }
            db.beginTransaction();
            total = 0;
            int numValues;
            numValues = rows.length;
            i = 0;
              goto _L1
_L3:
            if(LauncherProvider.dbInsertAndCheck(this, db, "favorites", null, rows[i]) < 0L)
            {
                db.endTransaction();
                return 0;
            }
            total++;
            i++;
_L1:
            if(i < numValues) goto _L3; else goto _L2
_L2:
            db.setTransactionSuccessful();
            break MISSING_BLOCK_LABEL_505;
            Exception exception;
            exception;
            db.endTransaction();
            throw exception;
            db.endTransaction();
            return total;
        }

        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion)
        {
            int version;
            version = oldVersion;
            if(version >= 3)
                break MISSING_BLOCK_LABEL_77;
            db.beginTransaction();
            try
            {
                db.execSQL("ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;");
                db.setTransactionSuccessful();
                version = 3;
                break MISSING_BLOCK_LABEL_62;
            }
            catch(SQLException ex)
            {
                Log.e("Launcher.LauncherProvider", ex.getMessage(), ex);
            }
            db.endTransaction();
            break MISSING_BLOCK_LABEL_66;
            Exception exception;
            exception;
            db.endTransaction();
            throw exception;
            db.endTransaction();
            if(version == 3)
                convertWidgets(db);
            if(version < 4)
                version = 4;
            if(version >= 6)
                break MISSING_BLOCK_LABEL_159;
            db.beginTransaction();
            try
            {
                db.execSQL("UPDATE favorites SET screen=(screen + 1);");
                db.setTransactionSuccessful();
                break MISSING_BLOCK_LABEL_143;
            }
            catch(SQLException ex)
            {
                Log.e("Launcher.LauncherProvider", ex.getMessage(), ex);
            }
            db.endTransaction();
            break MISSING_BLOCK_LABEL_147;
            exception;
            db.endTransaction();
            throw exception;
            db.endTransaction();
            if(updateContactsShortcuts(db))
                version = 6;
            if(version < 7)
            {
                convertWidgets(db);
                version = 7;
            }
            if(version < 8)
            {
                normalizeIcons(db);
                version = 8;
            }
            if(version < 9)
            {
                if(mMaxId == -1L)
                    mMaxId = initializeMaxId(db);
                loadFavorites(db, -101L);
                version = 9;
            }
            if(version != 9)
            {
                Log.w("Launcher.LauncherProvider", "Destroying all old data.");
                db.execSQL("DROP TABLE IF EXISTS favorites");
                onCreate(db);
            }
            return;
        }

        private boolean updateContactsShortcuts(SQLiteDatabase db)
        {
            Cursor c;
            String selectWhere;
            c = null;
            selectWhere = LauncherProvider.buildOrWhereString("itemType", new int[] {
                1
            });
            db.beginTransaction();
            try
            {
                c = db.query("favorites", new String[] {
                    "_id", "intent"
                }, selectWhere, null, null, null, null);
                ContentValues values = new ContentValues();
                int idIndex = c.getColumnIndex("_id");
                int intentIndex = c.getColumnIndex("intent");
                while(c != null && c.moveToNext()) 
                {
                    long favoriteId = c.getLong(idIndex);
                    String intentUri = c.getString(intentIndex);
                    if(intentUri != null)
                        try
                        {
                            Intent intent = Intent.parseUri(intentUri, 0);
                            Log.d("Home", intent.toString());
                            Uri uri = intent.getData();
                            String data = uri.toString();
                            if("android.intent.action.VIEW".equals(intent.getAction()) && (data.startsWith("content://contacts/people/") || data.startsWith("content://com.android.contacts/contacts/lookup/")))
                            {
                                intent = new Intent("com.android.contacts.action.QUICK_CONTACT");
                                intent.setFlags(0x14200000);
                                intent.setData(uri);
                                intent.putExtra("mode", 3);
                                intent.putExtra("exclude_mimes", null);
                                values.clear();
                                values.put("intent", intent.toUri(0));
                                String updateWhere = (new StringBuilder("_id=")).append(favoriteId).toString();
                                db.update("favorites", values, updateWhere, null);
                            }
                        }
                        catch(RuntimeException ex)
                        {
                            Log.e("Launcher.LauncherProvider", "Problem upgrading shortcut", ex);
                        }
                        catch(URISyntaxException e)
                        {
                            Log.e("Launcher.LauncherProvider", "Problem upgrading shortcut", e);
                        }
                }
                db.setTransactionSuccessful();
                break MISSING_BLOCK_LABEL_374;
            }
            catch(SQLException ex)
            {
                Log.w("Launcher.LauncherProvider", "Problem while upgrading contacts", ex);
            }
            db.endTransaction();
            if(c != null)
                c.close();
            return false;
            Exception exception;
            exception;
            db.endTransaction();
            if(c != null)
                c.close();
            throw exception;
            db.endTransaction();
            if(c != null)
                c.close();
            return true;
        }

        private void normalizeIcons(SQLiteDatabase db)
        {
            Cursor c;
            SQLiteStatement update;
            Log.d("Launcher.LauncherProvider", "normalizing icons");
            db.beginTransaction();
            c = null;
            update = null;
            try
            {
                boolean logged = false;
                update = db.compileStatement("UPDATE favorites SET icon=? WHERE _id=?");
                c = db.rawQuery("SELECT _id, icon FROM favorites WHERE iconType=1", null);
                int idIndex = c.getColumnIndexOrThrow("_id");
                int iconIndex = c.getColumnIndexOrThrow("icon");
                while(c.moveToNext()) 
                {
                    long id = c.getLong(idIndex);
                    byte data[] = c.getBlob(iconIndex);
                    try
                    {
                        Bitmap bitmap = Utilities.resampleIconBitmap(BitmapFactory.decodeByteArray(data, 0, data.length), mContext);
                        if(bitmap != null)
                        {
                            update.bindLong(1, id);
                            data = ItemInfo.flattenBitmap(bitmap);
                            if(data != null)
                            {
                                update.bindBlob(2, data);
                                update.execute();
                            }
                            bitmap.recycle();
                        }
                    }
                    catch(Exception e)
                    {
                        if(!logged)
                            Log.e("Launcher.LauncherProvider", (new StringBuilder("Failed normalizing icon ")).append(id).toString(), e);
                        else
                            Log.e("Launcher.LauncherProvider", (new StringBuilder("Also failed normalizing icon ")).append(id).toString());
                        logged = true;
                    }
                }
                db.setTransactionSuccessful();
                break MISSING_BLOCK_LABEL_289;
            }
            catch(SQLException ex)
            {
                Log.w("Launcher.LauncherProvider", "Problem while allocating appWidgetIds for existing widgets", ex);
            }
            db.endTransaction();
            if(update != null)
                update.close();
            if(c != null)
                c.close();
            break MISSING_BLOCK_LABEL_311;
            Exception exception;
            exception;
            db.endTransaction();
            if(update != null)
                update.close();
            if(c != null)
                c.close();
            throw exception;
            db.endTransaction();
            if(update != null)
                update.close();
            if(c != null)
                c.close();
        }

        public long generateNewId()
        {
            if(mMaxId < 0L)
            {
                throw new RuntimeException("Error: max id was not initialized");
            } else
            {
                mMaxId++;
                return mMaxId;
            }
        }

        private long initializeMaxId(SQLiteDatabase db)
        {
            Cursor c = db.rawQuery("SELECT MAX(_id) FROM favorites", null);
            int maxIdIndex = 0;
            long id = -1L;
            if(c != null && c.moveToNext())
                id = c.getLong(0);
            if(c != null)
                c.close();
            if(id == -1L)
                throw new RuntimeException("Error: could not query max id");
            else
                return id;
        }

        private void convertWidgets(SQLiteDatabase db)
        {
            AppWidgetManager appWidgetManager;
            String selectWhere;
            Cursor c;
            appWidgetManager = AppWidgetManager.getInstance(mContext);
            int bindSources[] = {
                1000, 1002, 1001
            };
            selectWhere = LauncherProvider.buildOrWhereString("itemType", bindSources);
            c = null;
            db.beginTransaction();
            try
            {
                c = db.query("favorites", new String[] {
                    "_id", "itemType"
                }, selectWhere, null, null, null, null);
                ContentValues values = new ContentValues();
                while(c != null && c.moveToNext()) 
                {
                    long favoriteId = c.getLong(0);
                    int favoriteType = c.getInt(1);
                    try
                    {
                        int appWidgetId = mAppWidgetHost.allocateAppWidgetId();
                        values.clear();
                        values.put("itemType", Integer.valueOf(4));
                        values.put("appWidgetId", Integer.valueOf(appWidgetId));
                        if(favoriteType == 1001)
                        {
                            values.put("spanX", Integer.valueOf(4));
                            values.put("spanY", Integer.valueOf(1));
                        } else
                        {
                            values.put("spanX", Integer.valueOf(2));
                            values.put("spanY", Integer.valueOf(2));
                        }
                        String updateWhere = (new StringBuilder("_id=")).append(favoriteId).toString();
                        db.update("favorites", values, updateWhere, null);
                        if(favoriteType == 1000)
                            appWidgetManager.bindAppWidgetId(appWidgetId, new ComponentName("com.android.alarmclock", "com.android.alarmclock.AnalogAppWidgetProvider"));
                        else
                        if(favoriteType == 1002)
                            appWidgetManager.bindAppWidgetId(appWidgetId, new ComponentName("com.android.camera", "com.android.camera.PhotoAppWidgetProvider"));
                        else
                        if(favoriteType == 1001)
                            appWidgetManager.bindAppWidgetId(appWidgetId, getSearchWidgetProvider());
                    }
                    catch(RuntimeException ex)
                    {
                        Log.e("Launcher.LauncherProvider", "Problem allocating appWidgetId", ex);
                    }
                }
                db.setTransactionSuccessful();
                break MISSING_BLOCK_LABEL_404;
            }
            catch(SQLException ex)
            {
                Log.w("Launcher.LauncherProvider", "Problem while allocating appWidgetIds for existing widgets", ex);
            }
            db.endTransaction();
            if(c != null)
                c.close();
            break MISSING_BLOCK_LABEL_420;
            Exception exception;
            exception;
            db.endTransaction();
            if(c != null)
                c.close();
            throw exception;
            db.endTransaction();
            if(c != null)
                c.close();
        }

        private int loadFavorites(SQLiteDatabase db, long filterContainerId)
        {
            Intent intent = new Intent("android.intent.action.MAIN", null);
            intent.addCategory("android.intent.category.LAUNCHER");
            ContentValues values = new ContentValues();
            PackageManager packageManager = mContext.getPackageManager();
            int i = 0;
            try
            {
                XmlResourceParser parser = mContext.getResources().getXml(0x7f050000);
                android.util.AttributeSet attrs = Xml.asAttributeSet(parser);
                XmlUtils.beginDocument(parser, "favorites");
                int type;
                for(int depth = parser.getDepth(); ((type = parser.next()) != 3 || parser.getDepth() > depth) && type != 1;)
                    if(type == 2)
                    {
                        boolean added = false;
                        String name = parser.getName();
                        TypedArray a = mContext.obtainStyledAttributes(attrs, com.android.launcher.R.styleable.Favorite);
                        long container = -100L;
                        if(a.hasValue(2))
                            container = Long.valueOf(a.getString(2)).longValue();
                        if(filterContainerId == -1L || filterContainerId == container)
                        {
                            String screen = a.getString(3);
                            String x = a.getString(4);
                            String y = a.getString(5);
                            if(container == -101L && Hotseat.isAllAppsButtonRank(Integer.valueOf(screen).intValue()))
                                throw new RuntimeException("Invalid screen position for hotseat item");
                            values.clear();
                            values.put("container", Long.valueOf(container));
                            values.put("screen", screen);
                            values.put("cellX", x);
                            values.put("cellY", y);
                            if("favorite".equals(name))
                            {
                                long id = addAppShortcut(db, values, a, packageManager, intent);
                                added = id >= 0L;
                            } else
                            if("search".equals(name))
                                added = addSearchWidget(db, values);
                            else
                            if("clock".equals(name))
                                added = addClockWidget(db, values);
                            else
                            if("appwidget".equals(name))
                                added = addAppWidget(db, values, a, packageManager);
                            else
                            if("shortcut".equals(name))
                            {
                                long id = addUriShortcut(db, values, a);
                                added = id >= 0L;
                            } else
                            if("folder".equals(name))
                            {
                                int titleResId = a.getResourceId(9, -1);
                                String title;
                                if(titleResId != -1)
                                    title = mContext.getResources().getString(titleResId);
                                else
                                    title = mContext.getResources().getString(0x7f0c0002);
                                values.put("title", title);
                                long folderId = addFolder(db, values);
                                added = folderId >= 0L;
                                ArrayList folderItems = new ArrayList();
                                for(int folderDepth = parser.getDepth(); (type = parser.next()) != 3 || parser.getDepth() > folderDepth;)
                                    if(type == 2)
                                    {
                                        String folder_item_name = parser.getName();
                                        TypedArray ar = mContext.obtainStyledAttributes(attrs, com.android.launcher.R.styleable.Favorite);
                                        values.clear();
                                        values.put("container", Long.valueOf(folderId));
                                        if("favorite".equals(folder_item_name) && folderId >= 0L)
                                        {
                                            long id = addAppShortcut(db, values, ar, packageManager, intent);
                                            if(id >= 0L)
                                                folderItems.add(Long.valueOf(id));
                                        } else
                                        if("shortcut".equals(folder_item_name) && folderId >= 0L)
                                        {
                                            long id = addUriShortcut(db, values, ar);
                                            if(id >= 0L)
                                                folderItems.add(Long.valueOf(id));
                                        } else
                                        {
                                            throw new RuntimeException("Folders can contain only shortcuts");
                                        }
                                        ar.recycle();
                                    }

                                if(folderItems.size() < 2 && folderId >= 0L)
                                {
                                    LauncherProvider.deleteId(db, folderId);
                                    if(folderItems.size() > 0)
                                        LauncherProvider.deleteId(db, ((Long)folderItems.get(0)).longValue());
                                    added = false;
                                }
                            }
                        }
                        if(added)
                            i++;
                        a.recycle();
                    }

            }
            catch(XmlPullParserException e)
            {
                Log.w("Launcher.LauncherProvider", "Got exception parsing favorites.", e);
            }
            catch(IOException e)
            {
                Log.w("Launcher.LauncherProvider", "Got exception parsing favorites.", e);
            }
            catch(RuntimeException e)
            {
                Log.w("Launcher.LauncherProvider", "Got exception parsing favorites.", e);
            }
            return i;
        }

        private long addAppShortcut(SQLiteDatabase db, ContentValues values, TypedArray a, PackageManager packageManager, Intent intent)
        {
            long id;
            String packageName;
            String className;
            id = -1L;
            packageName = a.getString(1);
            className = a.getString(0);
            ActivityInfo info;
            ComponentName cn;
            try
            {
                cn = new ComponentName(packageName, className);
                info = packageManager.getActivityInfo(cn, 0);
            }
            catch(android.content.pm.PackageManager.NameNotFoundException nnfe)
            {
                String packages[] = packageManager.currentToCanonicalPackageNames(new String[] {
                    packageName
                });
                cn = new ComponentName(packages[0], className);
                info = packageManager.getActivityInfo(cn, 0);
            }
            id = generateNewId();
            intent.setComponent(cn);
            intent.setFlags(0x10200000);
            values.put("intent", intent.toUri(0));
            values.put("title", info.loadLabel(packageManager).toString());
            values.put("itemType", Integer.valueOf(0));
            values.put("spanX", Integer.valueOf(1));
            values.put("spanY", Integer.valueOf(1));
            values.put("_id", Long.valueOf(generateNewId()));
            if(LauncherProvider.dbInsertAndCheck(this, db, "favorites", null, values) < 0L)
                return -1L;
            break MISSING_BLOCK_LABEL_244;
            android.content.pm.PackageManager.NameNotFoundException e;
            e;
            Log.w("Launcher.LauncherProvider", (new StringBuilder("Unable to add favorite: ")).append(packageName).append("/").append(className).toString(), e);
            return id;
        }

        private long addFolder(SQLiteDatabase db, ContentValues values)
        {
            values.put("itemType", Integer.valueOf(2));
            values.put("spanX", Integer.valueOf(1));
            values.put("spanY", Integer.valueOf(1));
            long id = generateNewId();
            values.put("_id", Long.valueOf(id));
            if(LauncherProvider.dbInsertAndCheck(this, db, "favorites", null, values) <= 0L)
                return -1L;
            else
                return id;
        }

        private ComponentName getSearchWidgetProvider()
        {
            SearchManager searchManager = (SearchManager)mContext.getSystemService("search");
            ComponentName searchComponent = searchManager.getGlobalSearchActivity();
            if(searchComponent == null)
                return null;
            else
                return getProviderInPackage(searchComponent.getPackageName());
        }

        private ComponentName getProviderInPackage(String packageName)
        {
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(mContext);
            List providers = appWidgetManager.getInstalledProviders();
            if(providers == null)
                return null;
            int providerCount = providers.size();
            for(int i = 0; i < providerCount; i++)
            {
                ComponentName provider = ((AppWidgetProviderInfo)providers.get(i)).provider;
                if(provider != null && provider.getPackageName().equals(packageName))
                    return provider;
            }

            return null;
        }

        private boolean addSearchWidget(SQLiteDatabase db, ContentValues values)
        {
            ComponentName cn = getSearchWidgetProvider();
            return addAppWidget(db, values, cn, 4, 1);
        }

        private boolean addClockWidget(SQLiteDatabase db, ContentValues values)
        {
            ComponentName cn = new ComponentName("com.android.alarmclock", "com.android.alarmclock.AnalogAppWidgetProvider");
            return addAppWidget(db, values, cn, 2, 2);
        }

        private boolean addAppWidget(SQLiteDatabase db, ContentValues values, TypedArray a, PackageManager packageManager)
        {
            String packageName = a.getString(1);
            String className = a.getString(0);
            if(packageName == null || className == null)
                return false;
            boolean hasPackage = true;
            ComponentName cn = new ComponentName(packageName, className);
            try
            {
                packageManager.getReceiverInfo(cn, 0);
            }
            catch(Exception e)
            {
                String packages[] = packageManager.currentToCanonicalPackageNames(new String[] {
                    packageName
                });
                cn = new ComponentName(packages[0], className);
                try
                {
                    packageManager.getReceiverInfo(cn, 0);
                }
                catch(Exception e1)
                {
                    hasPackage = false;
                }
            }
            if(hasPackage)
            {
                int spanX = a.getInt(6, 0);
                int spanY = a.getInt(7, 0);
                return addAppWidget(db, values, cn, spanX, spanY);
            } else
            {
                return false;
            }
        }

        private boolean addAppWidget(SQLiteDatabase db, ContentValues values, ComponentName cn, int spanX, int spanY)
        {
            boolean allocatedAppWidgets = false;
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(mContext);
            try
            {
                int appWidgetId = mAppWidgetHost.allocateAppWidgetId();
                values.put("itemType", Integer.valueOf(4));
                values.put("spanX", Integer.valueOf(spanX));
                values.put("spanY", Integer.valueOf(spanY));
                values.put("appWidgetId", Integer.valueOf(appWidgetId));
                values.put("_id", Long.valueOf(generateNewId()));
                LauncherProvider.dbInsertAndCheck(this, db, "favorites", null, values);
                allocatedAppWidgets = true;
                appWidgetManager.bindAppWidgetId(appWidgetId, cn);
            }
            catch(RuntimeException ex)
            {
                Log.e("Launcher.LauncherProvider", "Problem allocating appWidgetId", ex);
            }
            return allocatedAppWidgets;
        }

        private long addUriShortcut(SQLiteDatabase db, ContentValues values, TypedArray a)
        {
            Resources r = mContext.getResources();
            int iconResId = a.getResourceId(8, 0);
            int titleResId = a.getResourceId(9, 0);
            String uri = null;
            Intent intent;
            try
            {
                uri = a.getString(10);
                intent = Intent.parseUri(uri, 0);
            }
            catch(URISyntaxException e)
            {
                Log.w("Launcher.LauncherProvider", (new StringBuilder("Shortcut has malformed uri: ")).append(uri).toString());
                return -1L;
            }
            if(iconResId == 0 || titleResId == 0)
            {
                Log.w("Launcher.LauncherProvider", "Shortcut is missing title or icon resource ID");
                return -1L;
            }
            long id = generateNewId();
            intent.setFlags(0x10000000);
            values.put("intent", intent.toUri(0));
            values.put("title", r.getString(titleResId));
            values.put("itemType", Integer.valueOf(1));
            values.put("spanX", Integer.valueOf(1));
            values.put("spanY", Integer.valueOf(1));
            values.put("iconType", Integer.valueOf(0));
            values.put("iconPackage", mContext.getPackageName());
            values.put("iconResource", r.getResourceName(iconResId));
            values.put("_id", Long.valueOf(id));
            if(LauncherProvider.dbInsertAndCheck(this, db, "favorites", null, values) < 0L)
                return -1L;
            else
                return id;
        }

        private static final String TAG_FAVORITES = "favorites";
        private static final String TAG_FAVORITE = "favorite";
        private static final String TAG_CLOCK = "clock";
        private static final String TAG_SEARCH = "search";
        private static final String TAG_APPWIDGET = "appwidget";
        private static final String TAG_SHORTCUT = "shortcut";
        private static final String TAG_FOLDER = "folder";
        private final Context mContext;
        private final AppWidgetHost mAppWidgetHost;
        private long mMaxId;

        DatabaseHelper(Context context)
        {
            super(context, "launcher.db", null, 9);
            mMaxId = -1L;
            mContext = context;
            mAppWidgetHost = new AppWidgetHost(context, 1024);
            if(mMaxId == -1L)
                mMaxId = initializeMaxId(getWritableDatabase());
        }
    }

    static class SqlArguments
    {

        public final String table;
        public final String where;
        public final String args[];

        SqlArguments(Uri url, String where, String args[])
        {
            if(url.getPathSegments().size() == 1)
            {
                table = (String)url.getPathSegments().get(0);
                this.where = where;
                this.args = args;
            } else
            {
                if(url.getPathSegments().size() != 2)
                    throw new IllegalArgumentException((new StringBuilder("Invalid URI: ")).append(url).toString());
                if(!TextUtils.isEmpty(where))
                    throw new UnsupportedOperationException((new StringBuilder("WHERE clause not supported: ")).append(url).toString());
                table = (String)url.getPathSegments().get(0);
                this.where = (new StringBuilder("_id=")).append(ContentUris.parseId(url)).toString();
                this.args = null;
            }
        }

        SqlArguments(Uri url)
        {
            if(url.getPathSegments().size() == 1)
            {
                table = (String)url.getPathSegments().get(0);
                where = null;
                args = null;
            } else
            {
                throw new IllegalArgumentException((new StringBuilder("Invalid URI: ")).append(url).toString());
            }
        }
    }


    public LauncherProvider()
    {
    }

    public boolean onCreate()
    {
        mOpenHelper = new DatabaseHelper(getContext());
        ((LauncherApplication)getContext()).setLauncherProvider(this);
        return true;
    }

    public String getType(Uri uri)
    {
        SqlArguments args = new SqlArguments(uri, null, null);
        if(TextUtils.isEmpty(args.where))
            return (new StringBuilder("vnd.android.cursor.dir/")).append(args.table).toString();
        else
            return (new StringBuilder("vnd.android.cursor.item/")).append(args.table).toString();
    }

    public Cursor query(Uri uri, String projection[], String selection, String selectionArgs[], String sortOrder)
    {
        SqlArguments args = new SqlArguments(uri, selection, selectionArgs);
        SQLiteQueryBuilder qb = new SQLiteQueryBuilder();
        qb.setTables(args.table);
        SQLiteDatabase db = mOpenHelper.getWritableDatabase();
        Cursor result = qb.query(db, projection, args.where, args.args, null, null, sortOrder);
        result.setNotificationUri(getContext().getContentResolver(), uri);
        return result;
    }

    private static long dbInsertAndCheck(DatabaseHelper helper, SQLiteDatabase db, String table, String nullColumnHack, ContentValues values)
    {
        if(!values.containsKey("_id"))
            throw new RuntimeException("Error: attempting to add item without specifying an id");
        else
            return db.insert(table, nullColumnHack, values);
    }

    private static void deleteId(SQLiteDatabase db, long id)
    {
        Uri uri = LauncherSettings.Favorites.getContentUri(id, false);
        SqlArguments args = new SqlArguments(uri, null, null);
        db.delete(args.table, args.where, args.args);
    }

    public Uri insert(Uri uri, ContentValues initialValues)
    {
        SqlArguments args = new SqlArguments(uri);
        SQLiteDatabase db = mOpenHelper.getWritableDatabase();
        long rowId = dbInsertAndCheck(mOpenHelper, db, args.table, null, initialValues);
        if(rowId <= 0L)
        {
            return null;
        } else
        {
            uri = ContentUris.withAppendedId(uri, rowId);
            sendNotify(uri);
            return uri;
        }
    }

    public int bulkInsert(Uri uri, ContentValues values[])
    {
        SqlArguments args;
        SQLiteDatabase db;
        args = new SqlArguments(uri);
        db = mOpenHelper.getWritableDatabase();
        db.beginTransaction();
        int numValues;
        int i;
        numValues = values.length;
        i = 0;
          goto _L1
_L3:
        if(dbInsertAndCheck(mOpenHelper, db, args.table, null, values[i]) < 0L)
        {
            db.endTransaction();
            return 0;
        }
        i++;
_L1:
        if(i < numValues) goto _L3; else goto _L2
_L2:
        db.setTransactionSuccessful();
        break MISSING_BLOCK_LABEL_91;
        Exception exception;
        exception;
        db.endTransaction();
        throw exception;
        db.endTransaction();
        sendNotify(uri);
        return values.length;
    }

    public int delete(Uri uri, String selection, String selectionArgs[])
    {
        SqlArguments args = new SqlArguments(uri, selection, selectionArgs);
        SQLiteDatabase db = mOpenHelper.getWritableDatabase();
        int count = db.delete(args.table, args.where, args.args);
        if(count > 0)
            sendNotify(uri);
        return count;
    }

    public int update(Uri uri, ContentValues values, String selection, String selectionArgs[])
    {
        SqlArguments args = new SqlArguments(uri, selection, selectionArgs);
        SQLiteDatabase db = mOpenHelper.getWritableDatabase();
        int count = db.update(args.table, values, args.where, args.args);
        if(count > 0)
            sendNotify(uri);
        return count;
    }

    private void sendNotify(Uri uri)
    {
        String notify = uri.getQueryParameter("notify");
        if(notify == null || "true".equals(notify))
            getContext().getContentResolver().notifyChange(uri, null);
    }

    public long generateNewId()
    {
        return mOpenHelper.generateNewId();
    }

    static String buildOrWhereString(String column, int values[])
    {
        StringBuilder selectWhere = new StringBuilder();
        for(int i = values.length - 1; i >= 0; i--)
        {
            selectWhere.append(column).append("=").append(values[i]);
            if(i > 0)
                selectWhere.append(" OR ");
        }

        return selectWhere.toString();
    }

    private static final String TAG = "Launcher.LauncherProvider";
    private static final boolean LOGD = false;
    private static final String DATABASE_NAME = "launcher.db";
    private static final int DATABASE_VERSION = 9;
    static final String AUTHORITY = "com.android.launcher2.settings";
    static final String TABLE_FAVORITES = "favorites";
    static final String PARAMETER_NOTIFY = "notify";
    static final Uri CONTENT_APPWIDGET_RESET_URI = Uri.parse("content://com.android.launcher2.settings/appWidgetReset");
    private DatabaseHelper mOpenHelper;



}
