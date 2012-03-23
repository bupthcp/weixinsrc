// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   LauncherModel.java

package com.android.launcher2;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.*;
import android.content.pm.*;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.*;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.net.URISyntaxException;
import java.text.Collator;
import java.util.*;

// Referenced classes of package com.android.launcher2:
//            DeferredHandler, AllAppsList, IconCache, Utilities, 
//            LauncherApplication, ItemInfo, Launcher, Hotseat, 
//            FolderInfo, LauncherProvider, ShortcutInfo, FastBitmapDrawable, 
//            ApplicationInfo, InstallWidgetReceiver, LauncherSettings, LauncherAppWidgetInfo

public class LauncherModel extends BroadcastReceiver
{
    public static interface Callbacks
    {

        public abstract boolean setLoadOnResume();

        public abstract int getCurrentWorkspaceScreen();

        public abstract void startBinding();

        public abstract void bindItems(ArrayList arraylist, int i, int j);

        public abstract void bindFolders(HashMap hashmap);

        public abstract void finishBindingItems();

        public abstract void bindAppWidget(LauncherAppWidgetInfo launcherappwidgetinfo);

        public abstract void bindAllApplications(ArrayList arraylist);

        public abstract void bindAppsAdded(ArrayList arraylist);

        public abstract void bindAppsUpdated(ArrayList arraylist);

        public abstract void bindAppsRemoved(ArrayList arraylist, boolean flag);

        public abstract void bindPackagesUpdated();

        public abstract boolean isAllAppsVisible();

        public abstract void bindSearchablesChanged();
    }

    private class LoaderTask
        implements Runnable
    {

        boolean isLaunching()
        {
            return mIsLaunching;
        }

        private void loadAndBindWorkspace()
        {
            if(!mWorkspaceLoaded)
            {
label0:
                {
                    loadWorkspace();
                    synchronized(this)
                    {
                        if(!mStopped)
                            break label0;
                    }
                    return;
                }
            }
              goto _L1
            mWorkspaceLoaded = true;
            loadertask;
            JVM INSTR monitorexit ;
_L1:
            bindWorkspace();
            return;
        }

        private void waitForIdle()
        {
            synchronized(this)
            {
                long workspaceWaitTime = 0L;
                mHandler.postIdle(new Runnable() {

                    public void run()
                    {
                        synchronized(LoaderTask.this)
                        {
                            mLoadAndBindStepFinished = true;
                            notify();
                        }
                    }

                    final LoaderTask this$1;

                
                {
                    this$1 = LoaderTask.this;
                    Object();
                }
                }
);
                while(!mStopped && !mLoadAndBindStepFinished) 
                    try
                    {
                        wait();
                    }
                    catch(InterruptedException interruptedexception) { }
            }
        }

        public void run()
        {
            Callbacks cbk = (Callbacks)mCallbacks.get();
            boolean loadWorkspaceFirst = cbk == null ? true : !cbk.isAllAppsVisible();
            synchronized(mLock)
            {
                Process.setThreadPriority(mIsLaunching ? 0 : 10);
            }
            if(loadWorkspaceFirst)
                loadAndBindWorkspace();
            else
                loadAndBindAllApps();
            if(!mStopped)
            {
                synchronized(mLock)
                {
                    if(mIsLaunching)
                        Process.setThreadPriority(10);
                }
                waitForIdle();
                if(loadWorkspaceFirst)
                    loadAndBindAllApps();
                else
                    loadAndBindWorkspace();
                synchronized(mLock)
                {
                    Process.setThreadPriority(0);
                }
            }
            Object key;
            for(Iterator iterator = LauncherModel.sDbIconCache.keySet().iterator(); iterator.hasNext(); updateSavedIcon(mContext, (ShortcutInfo)key, (byte[])LauncherModel.sDbIconCache.get(key)))
                key = iterator.next();

            LauncherModel.sDbIconCache.clear();
            mContext = null;
            synchronized(mLock)
            {
                if(mLoaderTask == this)
                    mLoaderTask = null;
            }
        }

        public void stopLocked()
        {
            synchronized(this)
            {
                mStopped = true;
                notify();
            }
        }

        Callbacks tryGetCallbacks(Callbacks oldCallbacks)
        {
label0:
            {
                Callbacks callbacks;
                synchronized(mLock)
                {
                    if(!mStopped)
                        break label0;
                }
                return null;
            }
            if(mCallbacks != null)
                break MISSING_BLOCK_LABEL_35;
            obj;
            JVM INSTR monitorexit ;
            return null;
            callbacks = (Callbacks)mCallbacks.get();
            if(callbacks == oldCallbacks)
                break MISSING_BLOCK_LABEL_58;
            obj;
            JVM INSTR monitorexit ;
            return null;
            if(callbacks != null)
                break MISSING_BLOCK_LABEL_74;
            Log.w("Launcher.Model", "no mCallbacks");
            obj;
            JVM INSTR monitorexit ;
            return null;
            callbacks;
            obj;
            JVM INSTR monitorexit ;
            return;
        }

        private boolean checkItemPlacement(ItemInfo occupied[][][], ItemInfo item)
        {
            int containerIndex = item.screen;
            if(item.container == -101L)
            {
                if(Hotseat.isAllAppsButtonRank(item.screen))
                    return false;
                if(occupied[5][item.screen][0] != null)
                {
                    Log.e("Launcher.Model", (new StringBuilder("Error loading shortcut into hotseat ")).append(item).append(" into position (").append(item.screen).append(":").append(item.cellX).append(",").append(item.cellY).append(") occupied by ").append(occupied[5][item.screen][0]).toString());
                    return false;
                } else
                {
                    occupied[5][item.screen][0] = item;
                    return true;
                }
            }
            if(item.container != -100L)
                return true;
            for(int x = item.cellX; x < item.cellX + item.spanX; x++)
            {
                for(int y = item.cellY; y < item.cellY + item.spanY; y++)
                    if(occupied[containerIndex][x][y] != null)
                    {
                        Log.e("Launcher.Model", (new StringBuilder("Error loading shortcut ")).append(item).append(" into cell (").append(containerIndex).append("-").append(item.screen).append(":").append(x).append(",").append(y).append(") occupied by ").append(occupied[containerIndex][x][y]).toString());
                        return false;
                    }

            }

            for(int x = item.cellX; x < item.cellX + item.spanX; x++)
            {
                for(int y = item.cellY; y < item.cellY + item.spanY; y++)
                    occupied[containerIndex][x][y] = item;

            }

            return true;
        }

        private void loadWorkspace()
        {
            Context context;
            ContentResolver contentResolver;
            PackageManager manager;
            AppWidgetManager widgets;
            boolean isSafeMode;
            ArrayList itemsToRemove;
            Cursor c;
            ItemInfo occupied[][][];
            long t = 0L;
            context = mContext;
            contentResolver = context.getContentResolver();
            manager = context.getPackageManager();
            widgets = AppWidgetManager.getInstance(context);
            isSafeMode = manager.isSafeMode();
            LauncherModel.sWorkspaceItems.clear();
            LauncherModel.sAppWidgets.clear();
            LauncherModel.sFolders.clear();
            LauncherModel.sItemsIdMap.clear();
            LauncherModel.sDbIconCache.clear();
            itemsToRemove = new ArrayList();
            c = contentResolver.query(LauncherSettings.Favorites.CONTENT_URI, null, null, null, null);
            occupied = new ItemInfo[6][LauncherModel.mCellCountX + 1][LauncherModel.mCellCountY + 1];
            int idIndex;
            int intentIndex;
            int titleIndex;
            int iconTypeIndex;
            int iconIndex;
            int iconPackageIndex;
            int iconResourceIndex;
            int containerIndex;
            int itemTypeIndex;
            int appWidgetIdIndex;
            int screenIndex;
            int cellXIndex;
            int cellYIndex;
            int spanXIndex;
            int spanYIndex;
            idIndex = c.getColumnIndexOrThrow("_id");
            intentIndex = c.getColumnIndexOrThrow("intent");
            titleIndex = c.getColumnIndexOrThrow("title");
            iconTypeIndex = c.getColumnIndexOrThrow("iconType");
            iconIndex = c.getColumnIndexOrThrow("icon");
            iconPackageIndex = c.getColumnIndexOrThrow("iconPackage");
            iconResourceIndex = c.getColumnIndexOrThrow("iconResource");
            containerIndex = c.getColumnIndexOrThrow("container");
            itemTypeIndex = c.getColumnIndexOrThrow("itemType");
            appWidgetIdIndex = c.getColumnIndexOrThrow("appWidgetId");
            screenIndex = c.getColumnIndexOrThrow("screen");
            cellXIndex = c.getColumnIndexOrThrow("cellX");
            cellYIndex = c.getColumnIndexOrThrow("cellY");
            spanXIndex = c.getColumnIndexOrThrow("spanX");
            spanYIndex = c.getColumnIndexOrThrow("spanY");
            int uriIndex = c.getColumnIndexOrThrow("uri");
            int displayModeIndex = c.getColumnIndexOrThrow("displayMode");
              goto _L1
_L7:
            int itemType = c.getInt(itemTypeIndex);
            itemType;
            JVM INSTR tableswitch 0 4: default 1176
        //                       0 356
        //                       1 356
        //                       2 688
        //                       3 1176
        //                       4 874;
               goto _L2 _L3 _L3 _L4 _L2 _L5
_L2:
            break; /* Loop/switch isn't completed */
_L3:
            String intentDescription = c.getString(intentIndex);
            Intent intent;
            try
            {
                intent = Intent.parseUri(intentDescription, 0);
            }
            catch(URISyntaxException e)
            {
                break; /* Loop/switch isn't completed */
            }
            int container;
            ShortcutInfo info;
            if(itemType == 0)
                info = getShortcutInfo(manager, intent, context, c, iconIndex, titleIndex, mLabelCache);
            else
                info = getShortcutInfo(c, context, iconTypeIndex, iconPackageIndex, iconResourceIndex, iconIndex, titleIndex);
            if(info != null)
            {
                info.intent = intent;
                info.id = c.getLong(idIndex);
                container = c.getInt(containerIndex);
                info.container = container;
                info.screen = c.getInt(screenIndex);
                info.cellX = c.getInt(cellXIndex);
                info.cellY = c.getInt(cellYIndex);
                if(checkItemPlacement(occupied, info))
                {
                    switch(container)
                    {
                    case -101: 
                    case -100: 
                        LauncherModel.sWorkspaceItems.add(info);
                        break;

                    default:
                        FolderInfo folderInfo = LauncherModel.findOrMakeFolder(LauncherModel.sFolders, container);
                        folderInfo.add(info);
                        break;
                    }
                    LauncherModel.sItemsIdMap.put(Long.valueOf(info.id), info);
                    queueIconToBeChecked(LauncherModel.sDbIconCache, info, c, iconIndex);
                }
            } else
            {
                long id = c.getLong(idIndex);
                Log.e("Launcher.Model", (new StringBuilder("Error loading shortcut ")).append(id).append(", removing it").toString());
                contentResolver.delete(LauncherSettings.Favorites.getContentUri(id, false), null, null);
            }
            break; /* Loop/switch isn't completed */
_L4:
            long id = c.getLong(idIndex);
            FolderInfo folderInfo = LauncherModel.findOrMakeFolder(LauncherModel.sFolders, id);
            folderInfo.title = c.getString(titleIndex);
            folderInfo.id = id;
            container = c.getInt(containerIndex);
            folderInfo.container = container;
            folderInfo.screen = c.getInt(screenIndex);
            folderInfo.cellX = c.getInt(cellXIndex);
            folderInfo.cellY = c.getInt(cellYIndex);
            if(checkItemPlacement(occupied, folderInfo))
            {
                switch(container)
                {
                case -101: 
                case -100: 
                    LauncherModel.sWorkspaceItems.add(folderInfo);
                    break;
                }
                LauncherModel.sItemsIdMap.put(Long.valueOf(folderInfo.id), folderInfo);
                LauncherModel.sFolders.put(Long.valueOf(folderInfo.id), folderInfo);
            }
            break; /* Loop/switch isn't completed */
_L5:
            LauncherAppWidgetInfo appWidgetInfo;
            int appWidgetId = c.getInt(appWidgetIdIndex);
            long id = c.getLong(idIndex);
            AppWidgetProviderInfo provider = widgets.getAppWidgetInfo(appWidgetId);
            if(!isSafeMode && (provider == null || provider.provider == null || provider.provider.getPackageName() == null))
            {
                String log = (new StringBuilder("Deleting widget that isn't installed anymore: id=")).append(id).append(" appWidgetId=").append(appWidgetId).toString();
                Log.e("Launcher.Model", log);
                Launcher.sDumpLogs.add(log);
                itemsToRemove.add(Long.valueOf(id));
                break; /* Loop/switch isn't completed */
            }
            appWidgetInfo = new LauncherAppWidgetInfo(appWidgetId);
            appWidgetInfo.id = id;
            appWidgetInfo.screen = c.getInt(screenIndex);
            appWidgetInfo.cellX = c.getInt(cellXIndex);
            appWidgetInfo.cellY = c.getInt(cellYIndex);
            appWidgetInfo.spanX = c.getInt(spanXIndex);
            appWidgetInfo.spanY = c.getInt(spanYIndex);
            container = c.getInt(containerIndex);
            if(container != -100 && container != -101)
            {
                Log.e("Launcher.Model", "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!");
                break; /* Loop/switch isn't completed */
            }
            try
            {
                appWidgetInfo.container = c.getInt(containerIndex);
                if(checkItemPlacement(occupied, appWidgetInfo))
                {
                    LauncherModel.sItemsIdMap.put(Long.valueOf(appWidgetInfo.id), appWidgetInfo);
                    LauncherModel.sAppWidgets.add(appWidgetInfo);
                }
            }
            catch(Exception e)
            {
                Log.w("Launcher.Model", "Desktop items loading interrupted:", e);
            }
_L1:
            if(!mStopped && c.moveToNext()) goto _L7; else goto _L6
_L6:
            break MISSING_BLOCK_LABEL_1224;
            Exception exception;
            exception;
            c.close();
            throw exception;
            c.close();
            if(itemsToRemove.size() > 0)
            {
                ContentProviderClient client = contentResolver.acquireContentProviderClient(LauncherSettings.Favorites.CONTENT_URI);
                for(Iterator iterator = itemsToRemove.iterator(); iterator.hasNext();)
                {
                    long id = ((Long)iterator.next()).longValue();
                    try
                    {
                        client.delete(LauncherSettings.Favorites.getContentUri(id, false), null, null);
                    }
                    catch(RemoteException e)
                    {
                        Log.w("Launcher.Model", (new StringBuilder("Could not remove id = ")).append(id).toString());
                    }
                }

            }
            return;
        }

        private void bindWorkspace()
        {
            final long t = SystemClock.uptimeMillis();
            final Callbacks oldCallbacks = (Callbacks)mCallbacks.get();
            if(oldCallbacks == null)
            {
                Log.w("Launcher.Model", "LoaderTask running with no launcher");
                return;
            }
            mHandler.post(new Runnable() {

                public void run()
                {
                    Callbacks callbacks = tryGetCallbacks(oldCallbacks);
                    if(callbacks != null)
                        callbacks.startBinding();
                }

                final LoaderTask this$1;
                private final Callbacks val$oldCallbacks;

                
                {
                    this$1 = LoaderTask.this;
                    oldCallbacks = callbacks;
                    Object();
                }
            }
);
            final ArrayList workspaceItems = unbindWorkspaceItemsOnMainThread();
            int N = workspaceItems.size();
            for(int i = 0; i < N; i += 6)
            {
                final int start = i;
                final int chunkSize = i + 6 > N ? N - i : 6;
                mHandler.post(new Runnable() {

                    public void run()
                    {
                        Callbacks callbacks = tryGetCallbacks(oldCallbacks);
                        if(callbacks != null)
                            callbacks.bindItems(workspaceItems, start, start + chunkSize);
                    }

                    final LoaderTask this$1;
                    private final Callbacks val$oldCallbacks;
                    private final ArrayList val$workspaceItems;
                    private final int val$start;
                    private final int val$chunkSize;

                
                {
                    this$1 = LoaderTask.this;
                    oldCallbacks = callbacks;
                    workspaceItems = arraylist;
                    start = i;
                    chunkSize = j;
                    Object();
                }
                }
);
            }

            final HashMap folders = new HashMap(LauncherModel.sFolders);
            mHandler.post(new Runnable() {

                public void run()
                {
                    Callbacks callbacks = tryGetCallbacks(oldCallbacks);
                    if(callbacks != null)
                        callbacks.bindFolders(folders);
                }

                final LoaderTask this$1;
                private final Callbacks val$oldCallbacks;
                private final HashMap val$folders;

                
                {
                    this$1 = LoaderTask.this;
                    oldCallbacks = callbacks;
                    folders = hashmap;
                    Object();
                }
            }
);
            mHandler.post(new Runnable() {

                public void run()
                {
                }

                final LoaderTask this$1;

                
                {
                    this$1 = LoaderTask.this;
                    Object();
                }
            }
);
            int currentScreen = oldCallbacks.getCurrentWorkspaceScreen();
            N = LauncherModel.sAppWidgets.size();
            for(int i = 0; i < N; i++)
            {
                final LauncherAppWidgetInfo widget = (LauncherAppWidgetInfo)LauncherModel.sAppWidgets.get(i);
                if(widget.screen == currentScreen)
                    mHandler.post(new Runnable() {

                        public void run()
                        {
                            Callbacks callbacks = tryGetCallbacks(oldCallbacks);
                            if(callbacks != null)
                                callbacks.bindAppWidget(widget);
                        }

                        final LoaderTask this$1;
                        private final Callbacks val$oldCallbacks;
                        private final LauncherAppWidgetInfo val$widget;

                
                {
                    this$1 = LoaderTask.this;
                    oldCallbacks = callbacks;
                    widget = launcherappwidgetinfo;
                    Object();
                }
                    }
);
            }

            for(int i = 0; i < N; i++)
            {
                final LauncherAppWidgetInfo widget = (LauncherAppWidgetInfo)LauncherModel.sAppWidgets.get(i);
                if(widget.screen != currentScreen)
                    mHandler.post(new Runnable() {

                        public void run()
                        {
                            Callbacks callbacks = tryGetCallbacks(oldCallbacks);
                            if(callbacks != null)
                                callbacks.bindAppWidget(widget);
                        }

                        final LoaderTask this$1;
                        private final Callbacks val$oldCallbacks;
                        private final LauncherAppWidgetInfo val$widget;

                
                {
                    this$1 = LoaderTask.this;
                    oldCallbacks = callbacks;
                    widget = launcherappwidgetinfo;
                    Object();
                }
                    }
);
            }

            mHandler.post(new Runnable() {

                public void run()
                {
                    Callbacks callbacks = tryGetCallbacks(oldCallbacks);
                    if(callbacks != null)
                        callbacks.finishBindingItems();
                }

                final LoaderTask this$1;
                private final Callbacks val$oldCallbacks;

                
                {
                    this$1 = LoaderTask.this;
                    oldCallbacks = callbacks;
                    Object();
                }
            }
);
            mHandler.post(new Runnable() {

                public void run()
                {
                }

                final LoaderTask this$1;
                private final long val$t;

                
                {
                    this$1 = LoaderTask.this;
                    t = l;
                    Object();
                }
            }
);
        }

        private void loadAndBindAllApps()
        {
            if(!mAllAppsLoaded)
            {
label0:
                {
                    loadAllAppsByBatch();
                    synchronized(this)
                    {
                        if(!mStopped)
                            break label0;
                    }
                    return;
                }
            }
            break MISSING_BLOCK_LABEL_44;
            mAllAppsLoaded = true;
            loadertask;
            JVM INSTR monitorexit ;
            break MISSING_BLOCK_LABEL_48;
            onlyBindAllApps();
        }

        private void onlyBindAllApps()
        {
            final Callbacks oldCallbacks = (Callbacks)mCallbacks.get();
            if(oldCallbacks == null)
            {
                Log.w("Launcher.Model", "LoaderTask running with no launcher (onlyBindAllApps)");
                return;
            } else
            {
                final ArrayList list = (ArrayList)mAllAppsList.data.clone();
                mHandler.post(new Runnable() {

                    public void run()
                    {
                        long t = SystemClock.uptimeMillis();
                        Callbacks callbacks = tryGetCallbacks(oldCallbacks);
                        if(callbacks != null)
                            callbacks.bindAllApplications(list);
                    }

                    final LoaderTask this$1;
                    private final Callbacks val$oldCallbacks;
                    private final ArrayList val$list;

                
                {
                    this$1 = LoaderTask.this;
                    oldCallbacks = callbacks;
                    list = arraylist;
                    Object();
                }
                }
);
                return;
            }
        }

        private void loadAllAppsByBatch()
        {
            long t = 0L;
            Callbacks oldCallbacks = (Callbacks)mCallbacks.get();
            if(oldCallbacks == null)
            {
                Log.w("Launcher.Model", "LoaderTask running with no launcher (loadAllAppsByBatch)");
                return;
            }
            Intent mainIntent = new Intent("android.intent.action.MAIN", null);
            mainIntent.addCategory("android.intent.category.LAUNCHER");
            PackageManager packageManager = mContext.getPackageManager();
            List apps = null;
            int N = 0x7fffffff;
            int i = 0;
            int batchSize = -1;
            while(i < N && !mStopped) 
            {
                if(i == 0)
                {
                    mAllAppsList.clear();
                    long qiaTime = 0L;
                    apps = packageManager.queryIntentActivities(mainIntent, 0);
                    if(apps == null)
                        return;
                    N = apps.size();
                    if(N == 0)
                        return;
                    if(mBatchSize == 0)
                        batchSize = N;
                    else
                        batchSize = mBatchSize;
                    long sortTime = 0L;
                    Collections.sort(apps, new ShortcutNameComparator(packageManager, mLabelCache));
                }
                long t2 = 0L;
                int startIndex = i;
                for(int j = 0; i < N && j < batchSize; j++)
                {
                    mAllAppsList.add(new ApplicationInfo(packageManager, (ResolveInfo)apps.get(i), mIconCache, mLabelCache));
                    i++;
                }

                final boolean first = i <= batchSize;
                final Callbacks callbacks = tryGetCallbacks(oldCallbacks);
                final ArrayList added = mAllAppsList.added;
                mAllAppsList.added = new ArrayList();
                mHandler.post(new Runnable() {

                    public void run()
                    {
                        long t = SystemClock.uptimeMillis();
                        if(callbacks != null)
                        {
                            if(first)
                                callbacks.bindAllApplications(added);
                            else
                                callbacks.bindAppsAdded(added);
                        } else
                        {
                            Log.i("Launcher.Model", "not binding apps: no Launcher activity");
                        }
                    }

                    final LoaderTask this$1;
                    private final Callbacks val$callbacks;
                    private final boolean val$first;
                    private final ArrayList val$added;

                
                {
                    this$1 = LoaderTask.this;
                    callbacks = callbacks1;
                    first = flag;
                    added = arraylist;
                    Object();
                }
                }
);
                if(mAllAppsLoadDelay > 0 && i < N)
                    try
                    {
                        Thread.sleep(mAllAppsLoadDelay);
                    }
                    catch(InterruptedException interruptedexception) { }
            }
        }

        public void dumpState()
        {
            Log.d("Launcher.Model", (new StringBuilder("mLoaderTask.mContext=")).append(mContext).toString());
            Log.d("Launcher.Model", (new StringBuilder("mLoaderTask.mWaitThread=")).append(mWaitThread).toString());
            Log.d("Launcher.Model", (new StringBuilder("mLoaderTask.mIsLaunching=")).append(mIsLaunching).toString());
            Log.d("Launcher.Model", (new StringBuilder("mLoaderTask.mStopped=")).append(mStopped).toString());
            Log.d("Launcher.Model", (new StringBuilder("mLoaderTask.mLoadAndBindStepFinished=")).append(mLoadAndBindStepFinished).toString());
            Log.d("Launcher.Model", (new StringBuilder("mItems size=")).append(LauncherModel.sWorkspaceItems.size()).toString());
        }

        private Context mContext;
        private Thread mWaitThread;
        private boolean mIsLaunching;
        private boolean mStopped;
        private boolean mLoadAndBindStepFinished;
        private HashMap mLabelCache;
        final LauncherModel this$0;


        LoaderTask(Context context, boolean isLaunching)
        {
            this$0 = LauncherModel.this;
            Object();
            mContext = context;
            mIsLaunching = isLaunching;
            mLabelCache = new HashMap();
        }
    }

    private class PackageUpdatedTask
        implements Runnable
    {

        public void run()
        {
            Context context = mApp;
            String packages[] = mPackages;
            int N = packages.length;
            switch(mOp)
            {
            default:
                break;

            case 1: // '\001'
                for(int i = 0; i < N; i++)
                    mAllAppsList.addPackage(context, packages[i]);

                break;

            case 2: // '\002'
                for(int i = 0; i < N; i++)
                    mAllAppsList.updatePackage(context, packages[i]);

                break;

            case 3: // '\003'
            case 4: // '\004'
                for(int i = 0; i < N; i++)
                    mAllAppsList.removePackage(packages[i]);

                break;
            }
            ArrayList added = null;
            ArrayList removed = null;
            ArrayList modified = null;
            if(mAllAppsList.added.size() > 0)
            {
                added = mAllAppsList.added;
                mAllAppsList.added = new ArrayList();
            }
            if(mAllAppsList.removed.size() > 0)
            {
                removed = mAllAppsList.removed;
                mAllAppsList.removed = new ArrayList();
                ApplicationInfo info;
                for(Iterator iterator = removed.iterator(); iterator.hasNext(); mIconCache.remove(info.intent.getComponent()))
                    info = (ApplicationInfo)iterator.next();

            }
            if(mAllAppsList.modified.size() > 0)
            {
                modified = mAllAppsList.modified;
                mAllAppsList.modified = new ArrayList();
            }
            final Callbacks callbacks = mCallbacks == null ? null : (Callbacks)mCallbacks.get();
            if(callbacks == null)
            {
                Log.w("Launcher.Model", "Nobody to tell about the new app.  Launcher is probably loading.");
                return;
            }
            if(added != null)
            {
                final ArrayList addedFinal = added;
                mHandler.post(new Runnable() {

                    public void run()
                    {
                        Callbacks cb = mCallbacks == null ? null : (Callbacks)mCallbacks.get();
                        if(callbacks == cb && cb != null)
                            callbacks.bindAppsAdded(addedFinal);
                    }

                    final PackageUpdatedTask this$1;
                    private final Callbacks val$callbacks;
                    private final ArrayList val$addedFinal;

                
                {
                    this$1 = PackageUpdatedTask.this;
                    callbacks = callbacks1;
                    addedFinal = arraylist;
                    Object();
                }
                }
);
            }
            if(modified != null)
            {
                final ArrayList modifiedFinal = modified;
                mHandler.post(new Runnable() {

                    public void run()
                    {
                        Callbacks cb = mCallbacks == null ? null : (Callbacks)mCallbacks.get();
                        if(callbacks == cb && cb != null)
                            callbacks.bindAppsUpdated(modifiedFinal);
                    }

                    final PackageUpdatedTask this$1;
                    private final Callbacks val$callbacks;
                    private final ArrayList val$modifiedFinal;

                
                {
                    this$1 = PackageUpdatedTask.this;
                    callbacks = callbacks1;
                    modifiedFinal = arraylist;
                    Object();
                }
                }
);
            }
            if(removed != null)
            {
                final boolean permanent = mOp != 4;
                final ArrayList removedFinal = removed;
                mHandler.post(new Runnable() {

                    public void run()
                    {
                        Callbacks cb = mCallbacks == null ? null : (Callbacks)mCallbacks.get();
                        if(callbacks == cb && cb != null)
                            callbacks.bindAppsRemoved(removedFinal, permanent);
                    }

                    final PackageUpdatedTask this$1;
                    private final Callbacks val$callbacks;
                    private final ArrayList val$removedFinal;
                    private final boolean val$permanent;

                
                {
                    this$1 = PackageUpdatedTask.this;
                    callbacks = callbacks1;
                    removedFinal = arraylist;
                    permanent = flag;
                    Object();
                }
                }
);
            }
            mHandler.post(new Runnable() {

                public void run()
                {
                    Callbacks cb = mCallbacks == null ? null : (Callbacks)mCallbacks.get();
                    if(callbacks == cb && cb != null)
                        callbacks.bindPackagesUpdated();
                }

                final PackageUpdatedTask this$1;
                private final Callbacks val$callbacks;

                
                {
                    this$1 = PackageUpdatedTask.this;
                    callbacks = callbacks1;
                    Object();
                }
            }
);
        }

        int mOp;
        String mPackages[];
        public static final int OP_NONE = 0;
        public static final int OP_ADD = 1;
        public static final int OP_UPDATE = 2;
        public static final int OP_REMOVE = 3;
        public static final int OP_UNAVAILABLE = 4;
        final LauncherModel this$0;


        public PackageUpdatedTask(int op, String packages[])
        {
            this$0 = LauncherModel.this;
            Object();
            mOp = op;
            mPackages = packages;
        }
    }

    public static class ShortcutNameComparator
        implements Comparator
    {

        public final int compare(ResolveInfo a, ResolveInfo b)
        {
            ComponentName keyA = LauncherModel.getComponentNameFromResolveInfo(a);
            ComponentName keyB = LauncherModel.getComponentNameFromResolveInfo(b);
            CharSequence labelA;
            if(mLabelCache.containsKey(keyA))
            {
                labelA = (CharSequence)mLabelCache.get(keyA);
            } else
            {
                labelA = a.loadLabel(mPackageManager).toString();
                mLabelCache.put(keyA, labelA);
            }
            CharSequence labelB;
            if(mLabelCache.containsKey(keyB))
            {
                labelB = (CharSequence)mLabelCache.get(keyB);
            } else
            {
                labelB = b.loadLabel(mPackageManager).toString();
                mLabelCache.put(keyB, labelB);
            }
            return LauncherModel.sCollator.compare(labelA, labelB);
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((ResolveInfo)obj, (ResolveInfo)obj1);
        }

        private PackageManager mPackageManager;
        private HashMap mLabelCache;

        ShortcutNameComparator(PackageManager pm)
        {
            mPackageManager = pm;
            mLabelCache = new HashMap();
        }

        ShortcutNameComparator(PackageManager pm, HashMap labelCache)
        {
            mPackageManager = pm;
            mLabelCache = labelCache;
        }
    }

    public static class WidgetAndShortcutNameComparator
        implements Comparator
    {

        public final int compare(Object a, Object b)
        {
            String labelA;
            if(mLabelCache.containsKey(a))
            {
                labelA = (String)mLabelCache.get(a);
            } else
            {
                labelA = (a instanceof AppWidgetProviderInfo) ? ((AppWidgetProviderInfo)a).label : ((ResolveInfo)a).loadLabel(mPackageManager).toString();
                mLabelCache.put(a, labelA);
            }
            String labelB;
            if(mLabelCache.containsKey(b))
            {
                labelB = (String)mLabelCache.get(b);
            } else
            {
                labelB = (b instanceof AppWidgetProviderInfo) ? ((AppWidgetProviderInfo)b).label : ((ResolveInfo)b).loadLabel(mPackageManager).toString();
                mLabelCache.put(b, labelB);
            }
            return LauncherModel.sCollator.compare(labelA, labelB);
        }

        private PackageManager mPackageManager;
        private HashMap mLabelCache;

        WidgetAndShortcutNameComparator(PackageManager pm)
        {
            mPackageManager = pm;
            mLabelCache = new HashMap();
        }
    }


    LauncherModel(LauncherApplication app, IconCache iconCache)
    {
        mHandler = new DeferredHandler();
        mApp = app;
        mAllAppsList = new AllAppsList(iconCache);
        mIconCache = iconCache;
        mDefaultIcon = Utilities.createIconBitmap(mIconCache.getFullResDefaultActivityIcon(), app);
        Resources res = app.getResources();
        mAllAppsLoadDelay = res.getInteger(0x7f090015);
        mBatchSize = res.getInteger(0x7f090016);
        Configuration config = res.getConfiguration();
        mPreviousConfigMcc = config.mcc;
    }

    public Bitmap getFallbackIcon()
    {
        return Bitmap.createBitmap(mDefaultIcon);
    }

    public void unbindWorkspaceItems()
    {
        sWorker.post(new Runnable() {

            public void run()
            {
                unbindWorkspaceItemsOnMainThread();
            }

            final LauncherModel this$0;

            
            {
                this$0 = LauncherModel.this;
                Object();
            }
        }
);
    }

    private ArrayList unbindWorkspaceItemsOnMainThread()
    {
        final ArrayList workspaceItems = new ArrayList(sWorkspaceItems);
        mHandler.post(new Runnable() {

            public void run()
            {
                ItemInfo item;
                for(Iterator iterator = workspaceItems.iterator(); iterator.hasNext(); item.unbind())
                    item = (ItemInfo)iterator.next();

            }

            final LauncherModel this$0;
            private final ArrayList val$workspaceItems;

            
            {
                this$0 = LauncherModel.this;
                workspaceItems = arraylist;
                Object();
            }
        }
);
        return workspaceItems;
    }

    static void addOrMoveItemInDatabase(Context context, ItemInfo item, long container, int screen, int cellX, int cellY)
    {
        if(item.container == -1L)
            addItemToDatabase(context, item, container, screen, cellX, cellY, false);
        else
            moveItemInDatabase(context, item, container, screen, cellX, cellY);
    }

    static void updateItemInDatabaseHelper(Context context, final ContentValues values, final ItemInfo item, final String callingFunction)
    {
        final long itemId = item.id;
        final Uri uri = LauncherSettings.Favorites.getContentUri(itemId, false);
        final ContentResolver cr = context.getContentResolver();
        Runnable r = new Runnable() {

            public void run()
            {
                cr.update(uri, values, null, null);
                ItemInfo modelItem = (ItemInfo)LauncherModel.sItemsIdMap.get(Long.valueOf(itemId));
                if(item != modelItem)
                {
                    String msg = (new StringBuilder("item: ")).append(item == null ? "null" : item.toString()).append("modelItem: ").append(modelItem == null ? "null" : modelItem.toString()).append("Error: ItemInfo passed to ").append(callingFunction).append(" doesn't match original").toString();
                    throw new RuntimeException(msg);
                }
                if(modelItem.container == -100L || modelItem.container == -101L)
                {
                    if(!LauncherModel.sWorkspaceItems.contains(modelItem))
                        LauncherModel.sWorkspaceItems.add(modelItem);
                } else
                {
                    LauncherModel.sWorkspaceItems.remove(modelItem);
                }
            }

            private final ContentResolver val$cr;
            private final Uri val$uri;
            private final ContentValues val$values;
            private final long val$itemId;
            private final ItemInfo val$item;
            private final String val$callingFunction;

            
            {
                cr = contentresolver;
                uri = uri1;
                values = contentvalues;
                itemId = l;
                item = iteminfo;
                callingFunction = s;
                Object();
            }
        }
;
        if(sWorkerThread.getThreadId() == Process.myTid())
            r.run();
        else
            sWorker.post(r);
    }

    static void moveItemInDatabase(Context context, ItemInfo item, long container, int screen, int cellX, int cellY)
    {
        item.container = container;
        item.cellX = cellX;
        item.cellY = cellY;
        if((context instanceof Launcher) && screen < 0 && container == -101L)
            item.screen = ((Launcher)context).getHotseat().getOrderInHotseat(cellX, cellY);
        else
            item.screen = screen;
        ContentValues values = new ContentValues();
        values.put("container", Long.valueOf(item.container));
        values.put("cellX", Integer.valueOf(item.cellX));
        values.put("cellY", Integer.valueOf(item.cellY));
        values.put("screen", Integer.valueOf(item.screen));
        updateItemInDatabaseHelper(context, values, item, "moveItemInDatabase");
    }

    static void resizeItemInDatabase(Context context, ItemInfo item, int cellX, int cellY, int spanX, int spanY)
    {
        item.spanX = spanX;
        item.spanY = spanY;
        item.cellX = cellX;
        item.cellY = cellY;
        ContentValues values = new ContentValues();
        values.put("container", Long.valueOf(item.container));
        values.put("spanX", Integer.valueOf(spanX));
        values.put("spanY", Integer.valueOf(spanY));
        values.put("cellX", Integer.valueOf(cellX));
        values.put("cellY", Integer.valueOf(cellY));
        updateItemInDatabaseHelper(context, values, item, "resizeItemInDatabase");
    }

    static void updateItemInDatabase(Context context, ItemInfo item)
    {
        ContentValues values = new ContentValues();
        item.onAddToDatabase(values);
        item.updateValuesWithCoordinates(values, item.cellX, item.cellY);
        updateItemInDatabaseHelper(context, values, item, "updateItemInDatabase");
    }

    static boolean shortcutExists(Context context, String title, Intent intent)
    {
        Cursor c;
        boolean result;
        ContentResolver cr = context.getContentResolver();
        c = cr.query(LauncherSettings.Favorites.CONTENT_URI, new String[] {
            "title", "intent"
        }, "title=? and intent=?", new String[] {
            title, intent.toUri(0)
        }, null);
        result = false;
        result = c.moveToFirst();
        break MISSING_BLOCK_LABEL_77;
        Exception exception;
        exception;
        c.close();
        throw exception;
        c.close();
        return result;
    }

    static ArrayList getItemsInLocalCoordinates(Context context)
    {
        ArrayList items;
        Cursor c;
        int itemTypeIndex;
        int containerIndex;
        int screenIndex;
        int cellXIndex;
        int cellYIndex;
        int spanXIndex;
        int spanYIndex;
        items = new ArrayList();
        ContentResolver cr = context.getContentResolver();
        c = cr.query(LauncherSettings.Favorites.CONTENT_URI, new String[] {
            "itemType", "container", "screen", "cellX", "cellY", "spanX", "spanY"
        }, null, null, null);
        itemTypeIndex = c.getColumnIndexOrThrow("itemType");
        containerIndex = c.getColumnIndexOrThrow("container");
        screenIndex = c.getColumnIndexOrThrow("screen");
        cellXIndex = c.getColumnIndexOrThrow("cellX");
        cellYIndex = c.getColumnIndexOrThrow("cellY");
        spanXIndex = c.getColumnIndexOrThrow("spanX");
        spanYIndex = c.getColumnIndexOrThrow("spanY");
        try
        {
            ItemInfo item;
            for(; c.moveToNext(); items.add(item))
            {
                item = new ItemInfo();
                item.cellX = c.getInt(cellXIndex);
                item.cellY = c.getInt(cellYIndex);
                item.spanX = c.getInt(spanXIndex);
                item.spanY = c.getInt(spanYIndex);
                item.container = c.getInt(containerIndex);
                item.itemType = c.getInt(itemTypeIndex);
                item.screen = c.getInt(screenIndex);
            }

            break MISSING_BLOCK_LABEL_298;
        }
        catch(Exception e)
        {
            items.clear();
        }
        c.close();
        break MISSING_BLOCK_LABEL_304;
        Exception exception;
        exception;
        c.close();
        throw exception;
        c.close();
        return items;
    }

    FolderInfo getFolderById(Context context, HashMap folderList, long id)
    {
        Cursor c;
        ContentResolver cr = context.getContentResolver();
        c = cr.query(LauncherSettings.Favorites.CONTENT_URI, null, "_id=? and (itemType=? or itemType=?)", new String[] {
            String.valueOf(id), String.valueOf(2)
        }, null);
        FolderInfo folderinfo;
        if(!c.moveToFirst())
            break MISSING_BLOCK_LABEL_262;
        int itemTypeIndex = c.getColumnIndexOrThrow("itemType");
        int titleIndex = c.getColumnIndexOrThrow("title");
        int containerIndex = c.getColumnIndexOrThrow("container");
        int screenIndex = c.getColumnIndexOrThrow("screen");
        int cellXIndex = c.getColumnIndexOrThrow("cellX");
        int cellYIndex = c.getColumnIndexOrThrow("cellY");
        FolderInfo folderInfo = null;
        switch(c.getInt(itemTypeIndex))
        {
        case 2: // '\002'
            folderInfo = findOrMakeFolder(folderList, id);
            break;
        }
        folderInfo.title = c.getString(titleIndex);
        folderInfo.id = id;
        folderInfo.container = c.getInt(containerIndex);
        folderInfo.screen = c.getInt(screenIndex);
        folderInfo.cellX = c.getInt(cellXIndex);
        folderInfo.cellY = c.getInt(cellYIndex);
        folderinfo = folderInfo;
        c.close();
        return folderinfo;
        Exception exception;
        exception;
        c.close();
        throw exception;
        c.close();
        return null;
    }

    static void addItemToDatabase(Context context, final ItemInfo item, long container, int screen, int cellX, int cellY, final boolean notify)
    {
        item.container = container;
        item.cellX = cellX;
        item.cellY = cellY;
        if((context instanceof Launcher) && screen < 0 && container == -101L)
            item.screen = ((Launcher)context).getHotseat().getOrderInHotseat(cellX, cellY);
        else
            item.screen = screen;
        final ContentValues values = new ContentValues();
        final ContentResolver cr = context.getContentResolver();
        item.onAddToDatabase(values);
        LauncherApplication app = (LauncherApplication)context.getApplicationContext();
        item.id = app.getLauncherProvider().generateNewId();
        values.put("_id", Long.valueOf(item.id));
        item.updateValuesWithCoordinates(values, item.cellX, item.cellY);
        Runnable r = new Runnable() {

            public void run()
            {
                cr.insert(notify ? LauncherSettings.Favorites.CONTENT_URI : LauncherSettings.Favorites.CONTENT_URI_NO_NOTIFICATION, values);
                if(LauncherModel.sItemsIdMap.containsKey(Long.valueOf(item.id)))
                    throw new RuntimeException((new StringBuilder("Error: ItemInfo id (")).append(item.id).append(") passed to ").append("addItemToDatabase already exists.").append(item.toString()).toString());
                LauncherModel.sItemsIdMap.put(Long.valueOf(item.id), item);
                switch(item.itemType)
                {
                case 3: // '\003'
                default:
                    break;

                case 2: // '\002'
                    LauncherModel.sFolders.put(Long.valueOf(item.id), (FolderInfo)item);
                    // fall through

                case 0: // '\0'
                case 1: // '\001'
                    if(item.container == -100L || item.container == -101L)
                        LauncherModel.sWorkspaceItems.add(item);
                    break;

                case 4: // '\004'
                    LauncherModel.sAppWidgets.add((LauncherAppWidgetInfo)item);
                    break;
                }
            }

            private final ContentResolver val$cr;
            private final boolean val$notify;
            private final ContentValues val$values;
            private final ItemInfo val$item;

            
            {
                cr = contentresolver;
                notify = flag;
                values = contentvalues;
                item = iteminfo;
                Object();
            }
        }
;
        if(sWorkerThread.getThreadId() == Process.myTid())
            r.run();
        else
            sWorker.post(r);
    }

    static int getCellLayoutChildId(long container, int screen, int localCellX, int localCellY, int spanX, int spanY)
    {
        return ((int)container & 0xff) << 24 | (screen & 0xff) << 16 | (localCellX & 0xff) << 8 | localCellY & 0xff;
    }

    static int getCellCountX()
    {
        return mCellCountX;
    }

    static int getCellCountY()
    {
        return mCellCountY;
    }

    static void updateWorkspaceLayoutCells(int shortAxisCellCount, int longAxisCellCount)
    {
        mCellCountX = shortAxisCellCount;
        mCellCountY = longAxisCellCount;
    }

    static void deleteItemFromDatabase(Context context, final ItemInfo item)
    {
        final ContentResolver cr = context.getContentResolver();
        final Uri uriToDelete = LauncherSettings.Favorites.getContentUri(item.id, false);
        Runnable r = new Runnable() {

            public void run()
            {
                cr.delete(uriToDelete, null, null);
                switch(item.itemType)
                {
                case 2: // '\002'
                    LauncherModel.sFolders.remove(Long.valueOf(item.id));
                    LauncherModel.sWorkspaceItems.remove(item);
                    break;

                case 0: // '\0'
                case 1: // '\001'
                    LauncherModel.sWorkspaceItems.remove(item);
                    break;

                case 4: // '\004'
                    LauncherModel.sAppWidgets.remove((LauncherAppWidgetInfo)item);
                    break;
                }
                LauncherModel.sItemsIdMap.remove(Long.valueOf(item.id));
                LauncherModel.sDbIconCache.remove(item);
            }

            private final ContentResolver val$cr;
            private final Uri val$uriToDelete;
            private final ItemInfo val$item;

            
            {
                cr = contentresolver;
                uriToDelete = uri;
                item = iteminfo;
                Object();
            }
        }
;
        if(sWorkerThread.getThreadId() == Process.myTid())
            r.run();
        else
            sWorker.post(r);
    }

    static void deleteFolderContentsFromDatabase(Context context, final FolderInfo info)
    {
        final ContentResolver cr = context.getContentResolver();
        Runnable r = new Runnable() {

            public void run()
            {
                cr.delete(LauncherSettings.Favorites.getContentUri(info.id, false), null, null);
                LauncherModel.sItemsIdMap.remove(Long.valueOf(info.id));
                LauncherModel.sFolders.remove(Long.valueOf(info.id));
                LauncherModel.sDbIconCache.remove(info);
                LauncherModel.sWorkspaceItems.remove(info);
                cr.delete(LauncherSettings.Favorites.CONTENT_URI_NO_NOTIFICATION, (new StringBuilder("container=")).append(info.id).toString(), null);
                ItemInfo childInfo;
                for(Iterator iterator = info.contents.iterator(); iterator.hasNext(); LauncherModel.sDbIconCache.remove(childInfo))
                {
                    childInfo = (ItemInfo)iterator.next();
                    LauncherModel.sItemsIdMap.remove(Long.valueOf(childInfo.id));
                }

            }

            private final ContentResolver val$cr;
            private final FolderInfo val$info;

            
            {
                cr = contentresolver;
                info = folderinfo;
                Object();
            }
        }
;
        if(sWorkerThread.getThreadId() == Process.myTid())
            r.run();
        else
            sWorker.post(r);
    }

    public void initialize(Callbacks callbacks)
    {
        synchronized(mLock)
        {
            mCallbacks = new WeakReference(callbacks);
        }
    }

    public void onReceive(Context context, Intent intent)
    {
        String action = intent.getAction();
        if("android.intent.action.PACKAGE_CHANGED".equals(action) || "android.intent.action.PACKAGE_REMOVED".equals(action) || "android.intent.action.PACKAGE_ADDED".equals(action))
        {
            String packageName = intent.getData().getSchemeSpecificPart();
            boolean replacing = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
            int op = 0;
            if(packageName == null || packageName.length() == 0)
                return;
            if("android.intent.action.PACKAGE_CHANGED".equals(action))
                op = 2;
            else
            if("android.intent.action.PACKAGE_REMOVED".equals(action))
            {
                if(!replacing)
                    op = 3;
            } else
            if("android.intent.action.PACKAGE_ADDED".equals(action))
                if(!replacing)
                    op = 1;
                else
                    op = 2;
            if(op != 0)
                enqueuePackageUpdated(new PackageUpdatedTask(op, new String[] {
                    packageName
                }));
        } else
        if("android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE".equals(action))
        {
            String packages[] = intent.getStringArrayExtra("android.intent.extra.changed_package_list");
            enqueuePackageUpdated(new PackageUpdatedTask(1, packages));
            startLoaderFromBackground();
        } else
        if("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE".equals(action))
        {
            String packages[] = intent.getStringArrayExtra("android.intent.extra.changed_package_list");
            enqueuePackageUpdated(new PackageUpdatedTask(4, packages));
        } else
        if("android.intent.action.LOCALE_CHANGED".equals(action))
            forceReload();
        else
        if("android.intent.action.CONFIGURATION_CHANGED".equals(action))
        {
            Configuration currentConfig = context.getResources().getConfiguration();
            if(mPreviousConfigMcc != currentConfig.mcc)
            {
                Log.d("Launcher.Model", (new StringBuilder("Reload apps on config change. curr_mcc:")).append(currentConfig.mcc).append(" prevmcc:").append(mPreviousConfigMcc).toString());
                forceReload();
            }
            mPreviousConfigMcc = currentConfig.mcc;
        } else
        if(("android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED".equals(action) || "android.search.action.SEARCHABLES_CHANGED".equals(action)) && mCallbacks != null)
        {
            Callbacks callbacks = (Callbacks)mCallbacks.get();
            if(callbacks != null)
                callbacks.bindSearchablesChanged();
        }
    }

    private void forceReload()
    {
        synchronized(mLock)
        {
            stopLoaderLocked();
            mAllAppsLoaded = false;
            mWorkspaceLoaded = false;
        }
        startLoaderFromBackground();
    }

    public void startLoaderFromBackground()
    {
        boolean runLoader = false;
        if(mCallbacks != null)
        {
            Callbacks callbacks = (Callbacks)mCallbacks.get();
            if(callbacks != null && !callbacks.setLoadOnResume())
                runLoader = true;
        }
        if(runLoader)
            startLoader(mApp, false);
    }

    private boolean stopLoaderLocked()
    {
        boolean isLaunching = false;
        LoaderTask oldTask = mLoaderTask;
        if(oldTask != null)
        {
            if(oldTask.isLaunching())
                isLaunching = true;
            oldTask.stopLocked();
        }
        return isLaunching;
    }

    public void startLoader(Context context, boolean isLaunching)
    {
        synchronized(mLock)
        {
            if(mCallbacks != null && mCallbacks.get() != null)
            {
                isLaunching = isLaunching || stopLoaderLocked();
                mLoaderTask = new LoaderTask(context, isLaunching);
                sWorkerThread.setPriority(5);
                sWorker.post(mLoaderTask);
            }
        }
    }

    public void stopLoader()
    {
        synchronized(mLock)
        {
            if(mLoaderTask != null)
                mLoaderTask.stopLocked();
        }
    }

    public boolean isAllAppsLoaded()
    {
        return mAllAppsLoaded;
    }

    void enqueuePackageUpdated(PackageUpdatedTask task)
    {
        sWorker.post(task);
    }

    public ShortcutInfo getShortcutInfo(PackageManager manager, Intent intent, Context context)
    {
        return getShortcutInfo(manager, intent, context, ((Cursor) (null)), -1, -1, ((HashMap) (null)));
    }

    public ShortcutInfo getShortcutInfo(PackageManager manager, Intent intent, Context context, Cursor c, int iconIndex, int titleIndex, HashMap labelCache)
    {
        Bitmap icon = null;
        ShortcutInfo info = new ShortcutInfo();
        ComponentName componentName = intent.getComponent();
        if(componentName == null)
            return null;
        ResolveInfo resolveInfo = manager.resolveActivity(intent, 0);
        if(resolveInfo != null)
            icon = mIconCache.getIcon(componentName, resolveInfo, labelCache);
        if(icon == null && c != null)
            icon = getIconFromCursor(c, iconIndex, context);
        if(icon == null)
        {
            icon = getFallbackIcon();
            info.usingFallbackIcon = true;
        }
        info.setIcon(icon);
        if(resolveInfo != null)
        {
            ComponentName key = getComponentNameFromResolveInfo(resolveInfo);
            if(labelCache != null && labelCache.containsKey(key))
            {
                info.title = (CharSequence)labelCache.get(key);
            } else
            {
                info.title = resolveInfo.activityInfo.loadLabel(manager);
                if(labelCache != null)
                    labelCache.put(key, info.title);
            }
        }
        if(info.title == null && c != null)
            info.title = c.getString(titleIndex);
        if(info.title == null)
            info.title = componentName.getClassName();
        info.itemType = 0;
        return info;
    }

    private ShortcutInfo getShortcutInfo(Cursor c, Context context, int iconTypeIndex, int iconPackageIndex, int iconResourceIndex, int iconIndex, int titleIndex)
    {
        Bitmap icon = null;
        ShortcutInfo info = new ShortcutInfo();
        info.itemType = 1;
        info.title = c.getString(titleIndex);
        int iconType = c.getInt(iconTypeIndex);
        switch(iconType)
        {
        case 0: // '\0'
            String packageName = c.getString(iconPackageIndex);
            String resourceName = c.getString(iconResourceIndex);
            PackageManager packageManager = context.getPackageManager();
            info.customIcon = false;
            try
            {
                Resources resources = packageManager.getResourcesForApplication(packageName);
                if(resources != null)
                {
                    int id = resources.getIdentifier(resourceName, null, null);
                    icon = Utilities.createIconBitmap(mIconCache.getFullResIcon(resources, id), context);
                }
            }
            catch(Exception exception) { }
            if(icon == null)
                icon = getIconFromCursor(c, iconIndex, context);
            if(icon == null)
            {
                icon = getFallbackIcon();
                info.usingFallbackIcon = true;
            }
            break;

        case 1: // '\001'
            icon = getIconFromCursor(c, iconIndex, context);
            if(icon == null)
            {
                icon = getFallbackIcon();
                info.customIcon = false;
                info.usingFallbackIcon = true;
            } else
            {
                info.customIcon = true;
            }
            break;

        default:
            icon = getFallbackIcon();
            info.usingFallbackIcon = true;
            info.customIcon = false;
            break;
        }
        info.setIcon(icon);
        return info;
    }

    Bitmap getIconFromCursor(Cursor c, int iconIndex, Context context)
    {
        byte data[] = c.getBlob(iconIndex);
        try
        {
            return Utilities.createIconBitmap(BitmapFactory.decodeByteArray(data, 0, data.length), context);
        }
        catch(Exception e)
        {
            return null;
        }
    }

    ShortcutInfo addShortcut(Context context, Intent data, long container, int screen, int cellX, int cellY, 
            boolean notify)
    {
        ShortcutInfo info = infoFromShortcutIntent(context, data, null);
        addItemToDatabase(context, info, container, screen, cellX, cellY, notify);
        return info;
    }

    AppWidgetProviderInfo findAppWidgetProviderInfoWithComponent(Context context, ComponentName component)
    {
        List widgets = AppWidgetManager.getInstance(context).getInstalledProviders();
        for(Iterator iterator = widgets.iterator(); iterator.hasNext();)
        {
            AppWidgetProviderInfo info = (AppWidgetProviderInfo)iterator.next();
            if(info.provider.equals(component))
                return info;
        }

        return null;
    }

    List resolveWidgetsForMimeType(Context context, String mimeType)
    {
        PackageManager packageManager = context.getPackageManager();
        List supportedConfigurationActivities = new ArrayList();
        Intent supportsIntent = new Intent("com.android.launcher.action.SUPPORTS_CLIPDATA_MIMETYPE");
        supportsIntent.setType(mimeType);
        List widgets = AppWidgetManager.getInstance(context).getInstalledProviders();
        HashMap configurationComponentToWidget = new HashMap();
        AppWidgetProviderInfo info;
        for(Iterator iterator = widgets.iterator(); iterator.hasNext(); configurationComponentToWidget.put(info.configure, info))
            info = (AppWidgetProviderInfo)iterator.next();

        List activities = packageManager.queryIntentActivities(supportsIntent, 0x10000);
        for(Iterator iterator1 = activities.iterator(); iterator1.hasNext();)
        {
            ResolveInfo info = (ResolveInfo)iterator1.next();
            ActivityInfo activityInfo = info.activityInfo;
            ComponentName infoComponent = new ComponentName(activityInfo.packageName, activityInfo.name);
            if(configurationComponentToWidget.containsKey(infoComponent))
                supportedConfigurationActivities.add(new InstallWidgetReceiver.WidgetMimeTypeHandlerData(info, (AppWidgetProviderInfo)configurationComponentToWidget.get(infoComponent)));
        }

        return supportedConfigurationActivities;
    }

    ShortcutInfo infoFromShortcutIntent(Context context, Intent data, Bitmap fallbackIcon)
    {
        Intent intent = (Intent)data.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        String name = data.getStringExtra("android.intent.extra.shortcut.NAME");
        android.os.Parcelable bitmap = data.getParcelableExtra("android.intent.extra.shortcut.ICON");
        Bitmap icon = null;
        boolean customIcon = false;
        android.content.Intent.ShortcutIconResource iconResource = null;
        if(bitmap != null && (bitmap instanceof Bitmap))
        {
            icon = Utilities.createIconBitmap(new FastBitmapDrawable((Bitmap)bitmap), context);
            customIcon = true;
        } else
        {
            android.os.Parcelable extra = data.getParcelableExtra("android.intent.extra.shortcut.ICON_RESOURCE");
            if(extra != null && (extra instanceof android.content.Intent.ShortcutIconResource))
                try
                {
                    iconResource = (android.content.Intent.ShortcutIconResource)extra;
                    PackageManager packageManager = context.getPackageManager();
                    Resources resources = packageManager.getResourcesForApplication(iconResource.packageName);
                    int id = resources.getIdentifier(iconResource.resourceName, null, null);
                    icon = Utilities.createIconBitmap(mIconCache.getFullResIcon(resources, id), context);
                }
                catch(Exception e)
                {
                    Log.w("Launcher.Model", (new StringBuilder("Could not load shortcut icon: ")).append(extra).toString());
                }
        }
        ShortcutInfo info = new ShortcutInfo();
        if(icon == null)
            if(fallbackIcon != null)
            {
                icon = fallbackIcon;
            } else
            {
                icon = getFallbackIcon();
                info.usingFallbackIcon = true;
            }
        info.setIcon(icon);
        info.title = name;
        info.intent = intent;
        info.customIcon = customIcon;
        info.iconResource = iconResource;
        return info;
    }

    boolean queueIconToBeChecked(HashMap cache, ShortcutInfo info, Cursor c, int iconIndex)
    {
        if(!mAppsCanBeOnExternalStorage)
            return false;
        if(!info.customIcon && !info.usingFallbackIcon)
        {
            cache.put(info, c.getBlob(iconIndex));
            return true;
        } else
        {
            return false;
        }
    }

    void updateSavedIcon(Context context, ShortcutInfo info, byte data[])
    {
        boolean needSave = false;
        try
        {
            if(data != null)
            {
                Bitmap saved = BitmapFactory.decodeByteArray(data, 0, data.length);
                Bitmap loaded = info.getIcon(mIconCache);
                needSave = !saved.sameAs(loaded);
            } else
            {
                needSave = true;
            }
        }
        catch(Exception e)
        {
            needSave = true;
        }
        if(needSave)
        {
            Log.d("Launcher.Model", (new StringBuilder("going to save icon bitmap for info=")).append(info).toString());
            updateItemInDatabase(context, info);
        }
    }

    private static FolderInfo findOrMakeFolder(HashMap folders, long id)
    {
        FolderInfo folderInfo = (FolderInfo)folders.get(Long.valueOf(id));
        if(folderInfo == null)
        {
            folderInfo = new FolderInfo();
            folders.put(Long.valueOf(id), folderInfo);
        }
        return folderInfo;
    }

    static ComponentName getComponentNameFromResolveInfo(ResolveInfo info)
    {
        if(info.activityInfo != null)
            return new ComponentName(info.activityInfo.packageName, info.activityInfo.name);
        else
            return new ComponentName(info.serviceInfo.packageName, info.serviceInfo.name);
    }

    public void dumpState()
    {
        Log.d("Launcher.Model", (new StringBuilder("mCallbacks=")).append(mCallbacks).toString());
        ApplicationInfo.dumpApplicationInfoList("Launcher.Model", "mAllAppsList.data", mAllAppsList.data);
        ApplicationInfo.dumpApplicationInfoList("Launcher.Model", "mAllAppsList.added", mAllAppsList.added);
        ApplicationInfo.dumpApplicationInfoList("Launcher.Model", "mAllAppsList.removed", mAllAppsList.removed);
        ApplicationInfo.dumpApplicationInfoList("Launcher.Model", "mAllAppsList.modified", mAllAppsList.modified);
        if(mLoaderTask != null)
            mLoaderTask.dumpState();
        else
            Log.d("Launcher.Model", "mLoaderTask=null");
    }

    static final boolean DEBUG_LOADERS = false;
    static final String TAG = "Launcher.Model";
    private static final int ITEMS_CHUNK = 6;
    private final boolean mAppsCanBeOnExternalStorage = !Environment.isExternalStorageEmulated();
    private int mBatchSize;
    private int mAllAppsLoadDelay;
    private final LauncherApplication mApp;
    private final Object mLock = new Object();
    private DeferredHandler mHandler;
    private LoaderTask mLoaderTask;
    private static final HandlerThread sWorkerThread;
    private static final Handler sWorker;
    private boolean mWorkspaceLoaded;
    private boolean mAllAppsLoaded;
    private WeakReference mCallbacks;
    private AllAppsList mAllAppsList;
    static final HashMap sItemsIdMap = new HashMap();
    static final ArrayList sWorkspaceItems = new ArrayList();
    static final ArrayList sAppWidgets = new ArrayList();
    static final HashMap sFolders = new HashMap();
    static final HashMap sDbIconCache = new HashMap();
    private IconCache mIconCache;
    private Bitmap mDefaultIcon;
    private static int mCellCountX;
    private static int mCellCountY;
    protected int mPreviousConfigMcc;
    private static final Collator sCollator = Collator.getInstance();
    public static final Comparator APP_NAME_COMPARATOR = new Comparator() {

        public final int compare(ApplicationInfo a, ApplicationInfo b)
        {
            int result = LauncherModel.sCollator.compare(a.title.toString(), b.title.toString());
            if(result == 0)
                result = a.componentName.compareTo(b.componentName);
            return result;
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((ApplicationInfo)obj, (ApplicationInfo)obj1);
        }

    }
;
    public static final Comparator APP_INSTALL_TIME_COMPARATOR = new Comparator() {

        public final int compare(ApplicationInfo a, ApplicationInfo b)
        {
            if(a.firstInstallTime < b.firstInstallTime)
                return 1;
            return a.firstInstallTime <= b.firstInstallTime ? 0 : -1;
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((ApplicationInfo)obj, (ApplicationInfo)obj1);
        }

    }
;
    public static final Comparator WIDGET_NAME_COMPARATOR = new Comparator() {

        public final int compare(AppWidgetProviderInfo a, AppWidgetProviderInfo b)
        {
            return LauncherModel.sCollator.compare(a.label.toString(), b.label.toString());
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((AppWidgetProviderInfo)obj, (AppWidgetProviderInfo)obj1);
        }

    }
;

    static 
    {
        sWorkerThread = new HandlerThread("launcher-loader");
        sWorkerThread.start();
        sWorker = new Handler(sWorkerThread.getLooper());
    }




















}
