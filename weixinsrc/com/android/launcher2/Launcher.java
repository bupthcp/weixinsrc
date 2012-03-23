// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Launcher.java

package com.android.launcher2;

import android.animation.*;
import android.app.*;
import android.appwidget.*;
import android.content.*;
import android.content.pm.*;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.*;
import android.text.*;
import android.text.method.TextKeyListener;
import android.util.Log;
import android.view.*;
import android.view.animation.*;
import android.view.inputmethod.InputMethodManager;
import android.widget.*;
import java.io.*;
import java.util.*;

// Referenced classes of package com.android.launcher2:
//            ItemInfo, LauncherApplication, DragController, LauncherAppWidgetHost, 
//            AppsCustomizePagedView, LauncherModel, SearchDropTargetBar, IconCache, 
//            BubbleTextView, Workspace, AppsCustomizeTabHost, DragLayer, 
//            Hotseat, CellLayout, ShortcutInfo, PendingAddWidgetInfo, 
//            LauncherAppWidgetInfo, FolderInfo, FolderIcon, LauncherProvider, 
//            Folder, ApplicationInfo, LauncherTransitionable, Cling, 
//            AllAppsView, DropTarget, AddAdapter, LauncherAnimatorUpdateListener

public final class Launcher extends Activity
    implements android.view.View.OnClickListener, android.view.View.OnLongClickListener, LauncherModel.Callbacks, AllAppsView.Watcher, android.view.View.OnTouchListener
{
    private class AppWidgetResetObserver extends ContentObserver
    {

        public void onChange(boolean selfChange)
        {
            onAppWidgetReset();
        }

        final Launcher this$0;

        public AppWidgetResetObserver()
        {
            this$0 = Launcher.this;
            super(new Handler());
        }
    }

    private class CloseSystemDialogsIntentReceiver extends BroadcastReceiver
    {

        public void onReceive(Context context, Intent intent)
        {
            closeSystemDialogs();
        }

        final Launcher this$0;

        private CloseSystemDialogsIntentReceiver()
        {
            this$0 = Launcher.this;
            super();
        }

        CloseSystemDialogsIntentReceiver(CloseSystemDialogsIntentReceiver closesystemdialogsintentreceiver)
        {
            this();
        }
    }

    private class CreateShortcut
        implements android.content.DialogInterface.OnClickListener, android.content.DialogInterface.OnCancelListener, android.content.DialogInterface.OnDismissListener, android.content.DialogInterface.OnShowListener
    {

        Dialog createDialog()
        {
            mAdapter = new AddAdapter(Launcher.this);
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(Launcher.this, 2);
            builder.setAdapter(mAdapter, this);
            AlertDialog dialog = builder.create();
            dialog.setOnCancelListener(this);
            dialog.setOnDismissListener(this);
            dialog.setOnShowListener(this);
            return dialog;
        }

        public void onCancel(DialogInterface dialog)
        {
            mWaitingForResult = false;
            cleanup();
        }

        public void onDismiss(DialogInterface dialog)
        {
            mWaitingForResult = false;
            cleanup();
        }

        private void cleanup()
        {
            try
            {
                dismissDialog(1);
            }
            catch(Exception exception) { }
        }

        public void onClick(DialogInterface dialog, int which)
        {
            cleanup();
            AddAdapter.ListItem item = (AddAdapter.ListItem)mAdapter.getItem(which);
            switch(item.actionTag)
            {
            default:
                break;

            case 2: // '\002'
                if(mAppsCustomizeTabHost != null)
                    mAppsCustomizeTabHost.selectAppsTab();
                showAllApps(true);
                break;

            case 1: // '\001'
                if(mAppsCustomizeTabHost != null)
                    mAppsCustomizeTabHost.selectWidgetsTab();
                showAllApps(true);
                break;

            case 3: // '\003'
                startWallpaper();
                break;
            }
        }

        public void onShow(DialogInterface dialog)
        {
            mWaitingForResult = true;
        }

        private AddAdapter mAdapter;
        final Launcher this$0;

        private CreateShortcut()
        {
            this$0 = Launcher.this;
            super();
        }

        CreateShortcut(CreateShortcut createshortcut)
        {
            this();
        }
    }

    private static class LocaleConfiguration
    {

        public String locale;
        public int mcc;
        public int mnc;

        private LocaleConfiguration()
        {
            mcc = -1;
            mnc = -1;
        }

        LocaleConfiguration(LocaleConfiguration localeconfiguration)
        {
            this();
        }
    }

    class Padding
    {

        int left;
        int right;
        int top;
        int bottom;
        final Launcher this$0;

        Padding()
        {
            this$0 = Launcher.this;
            super();
            left = 0;
            right = 0;
            top = 0;
            bottom = 0;
        }
    }

    private static class PendingAddArguments
    {

        int requestCode;
        Intent intent;
        long container;
        int screen;
        int cellX;
        int cellY;

        private PendingAddArguments()
        {
        }

        PendingAddArguments(PendingAddArguments pendingaddarguments)
        {
            this();
        }
    }

    private class RenameFolder
    {

        Dialog createDialog()
        {
            View layout = View.inflate(Launcher.this, 0x7f03000f, null);
            mInput = (EditText)layout.findViewById(0x7f06002a);
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(Launcher.this);
            builder.setIcon(0);
            builder.setTitle(getString(0x7f0c000f));
            builder.setCancelable(true);
            builder.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

                public void onCancel(DialogInterface dialog)
                {
                    cleanup();
                }

                final RenameFolder this$1;

                
                {
                    this$1 = RenameFolder.this;
                    super();
                }
            }
);
            builder.setNegativeButton(getString(0x7f0c0011), new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialog, int which)
                {
                    cleanup();
                }

                final RenameFolder this$1;

                
                {
                    this$1 = RenameFolder.this;
                    super();
                }
            }
);
            builder.setPositiveButton(getString(0x7f0c0010), new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialog, int which)
                {
                    changeFolderName();
                }

                final RenameFolder this$1;

                
                {
                    this$1 = RenameFolder.this;
                    super();
                }
            }
);
            builder.setView(layout);
            AlertDialog dialog = builder.create();
            dialog.setOnShowListener(new android.content.DialogInterface.OnShowListener() {

                public void onShow(DialogInterface dialog)
                {
                    mWaitingForResult = true;
                    mInput.requestFocus();
                    InputMethodManager inputManager = (InputMethodManager)getSystemService("input_method");
                    inputManager.showSoftInput(mInput, 0);
                }

                final RenameFolder this$1;

                
                {
                    this$1 = RenameFolder.this;
                    super();
                }
            }
);
            return dialog;
        }

        private void changeFolderName()
        {
            String name = mInput.getText().toString();
            if(!TextUtils.isEmpty(name))
            {
                mFolderInfo = (FolderInfo)Launcher.sFolders.get(Long.valueOf(mFolderInfo.id));
                mFolderInfo.title = name;
                LauncherModel.updateItemInDatabase(Launcher.this, mFolderInfo);
                if(mWorkspaceLoading)
                {
                    lockAllApps();
                    mModel.startLoader(Launcher.this, false);
                } else
                {
                    FolderIcon folderIcon = (FolderIcon)mWorkspace.getViewForTag(mFolderInfo);
                    if(folderIcon != null)
                    {
                        getWorkspace().requestLayout();
                    } else
                    {
                        lockAllApps();
                        mWorkspaceLoading = true;
                        mModel.startLoader(Launcher.this, false);
                    }
                }
            }
            cleanup();
        }

        private void cleanup()
        {
            dismissDialog(2);
            mWaitingForResult = false;
            mFolderInfo = null;
        }

        private EditText mInput;
        final Launcher this$0;





        private RenameFolder()
        {
            this$0 = Launcher.this;
            super();
        }

        RenameFolder(RenameFolder renamefolder)
        {
            this();
        }
    }

    private static final class State extends Enum
    {

        public static State[] values()
        {
            State astate[];
            int i;
            State astate1[];
            System.arraycopy(astate = ENUM$VALUES, 0, astate1 = new State[i = astate.length], 0, i);
            return astate1;
        }

        public static State valueOf(String s)
        {
            return (State)Enum.valueOf(com/android/launcher2/Launcher$State, s);
        }

        public static final State WORKSPACE;
        public static final State APPS_CUSTOMIZE;
        public static final State APPS_CUSTOMIZE_SPRING_LOADED;
        private static final State ENUM$VALUES[];

        static 
        {
            WORKSPACE = new State("WORKSPACE", 0);
            APPS_CUSTOMIZE = new State("APPS_CUSTOMIZE", 1);
            APPS_CUSTOMIZE_SPRING_LOADED = new State("APPS_CUSTOMIZE_SPRING_LOADED", 2);
            ENUM$VALUES = (new State[] {
                WORKSPACE, APPS_CUSTOMIZE, APPS_CUSTOMIZE_SPRING_LOADED
            });
        }

        private State(String s, int i)
        {
            super(s, i);
        }
    }


    public Launcher()
    {
        mState = State.WORKSPACE;
        mPendingAddInfo = new ItemInfo();
        mTmpAddItemCellCoordinates = new int[2];
        mAutoAdvanceRunning = false;
        mDefaultKeySsb = null;
        mWorkspaceLoading = true;
        mPaused = true;
        mUserPresent = true;
        mVisible = false;
        mAttached = false;
        mAppMarketIntent = null;
        mAutoAdvanceTimeLeft = -1L;
        mWidgetsToAdvance = new HashMap();
        mBuildLayersRunnable = new Runnable() {

            public void run()
            {
                if(mWorkspace != null)
                    mWorkspace.buildPageHardwareLayers();
            }

            final Launcher this$0;

            
            {
                this$0 = Launcher.this;
                super();
            }
        }
;
    }

    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        LauncherApplication app = (LauncherApplication)getApplication();
        mModel = app.setLauncher(this);
        mIconCache = app.getIconCache();
        mDragController = new DragController(this);
        mInflater = getLayoutInflater();
        mAppWidgetManager = AppWidgetManager.getInstance(this);
        mAppWidgetHost = new LauncherAppWidgetHost(this, 1024);
        mAppWidgetHost.startListening();
        checkForLocaleChange();
        setContentView(0x7f03000c);
        setupViews();
        showFirstRunWorkspaceCling();
        registerContentObservers();
        lockAllApps();
        mSavedState = savedInstanceState;
        restoreState(mSavedState);
        if(mAppsCustomizeContent != null)
            mAppsCustomizeContent.onPackagesUpdated();
        if(!mRestoring)
            mModel.startLoader(this, true);
        if(!mModel.isAllAppsLoaded())
        {
            ViewGroup appsCustomizeContentParent = (ViewGroup)mAppsCustomizeContent.getParent();
            mInflater.inflate(0x7f030005, appsCustomizeContentParent);
        }
        mDefaultKeySsb = new SpannableStringBuilder();
        Selection.setSelection(mDefaultKeySsb, 0);
        IntentFilter filter = new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        registerReceiver(mCloseSystemDialogsReceiver, filter);
        boolean searchVisible = false;
        boolean voiceVisible = false;
        int coi = getCurrentOrientationIndexForGlobalIcons();
        if(sGlobalSearchIcon[coi] == null || sVoiceSearchIcon[coi] == null || sAppMarketIcon[coi] == null)
        {
            updateAppMarketIcon();
            searchVisible = updateGlobalSearchIcon();
            voiceVisible = updateVoiceSearchIcon(searchVisible);
        }
        if(sGlobalSearchIcon[coi] != null)
        {
            updateGlobalSearchIcon(sGlobalSearchIcon[coi]);
            searchVisible = true;
        }
        if(sVoiceSearchIcon[coi] != null)
        {
            updateVoiceSearchIcon(sVoiceSearchIcon[coi]);
            voiceVisible = true;
        }
        if(sAppMarketIcon[coi] != null)
            updateAppMarketIcon(sAppMarketIcon[coi]);
        mSearchDropTargetBar.onSearchPackagesChanged(searchVisible, voiceVisible);
        if(LauncherApplication.isScreenLarge() || Build.TYPE.contentEquals("eng"))
            setRequestedOrientation(-1);
    }

    private void checkForLocaleChange()
    {
        if(sLocaleConfiguration == null)
        {
            (new AsyncTask() {

                protected transient LocaleConfiguration doInBackground(Void unused[])
                {
                    LocaleConfiguration localeConfiguration = new LocaleConfiguration(null);
                    Launcher.readConfiguration(Launcher.this, localeConfiguration);
                    return localeConfiguration;
                }

                protected void onPostExecute(LocaleConfiguration result)
                {
                    Launcher.sLocaleConfiguration = result;
                    checkForLocaleChange();
                }

                protected volatile void onPostExecute(Object obj)
                {
                    onPostExecute((LocaleConfiguration)obj);
                }

                protected volatile transient Object doInBackground(Object aobj[])
                {
                    return doInBackground((Void[])aobj);
                }

                final Launcher this$0;

            
            {
                this$0 = Launcher.this;
                super();
            }
            }
).execute(new Void[0]);
            return;
        }
        Configuration configuration = getResources().getConfiguration();
        String previousLocale = sLocaleConfiguration.locale;
        String locale = configuration.locale.toString();
        int previousMcc = sLocaleConfiguration.mcc;
        int mcc = configuration.mcc;
        int previousMnc = sLocaleConfiguration.mnc;
        int mnc = configuration.mnc;
        boolean localeChanged = !locale.equals(previousLocale) || mcc != previousMcc || mnc != previousMnc;
        if(localeChanged)
        {
            sLocaleConfiguration.locale = locale;
            sLocaleConfiguration.mcc = mcc;
            sLocaleConfiguration.mnc = mnc;
            mIconCache.flush();
            LocaleConfiguration localeConfiguration = sLocaleConfiguration;
            (new Thread(localeConfiguration) {

                public void run()
                {
                    Launcher.writeConfiguration(Launcher.this, localeConfiguration);
                }

                final Launcher this$0;
                private final LocaleConfiguration val$localeConfiguration;

            
            {
                this$0 = Launcher.this;
                localeConfiguration = localeconfiguration;
                super($anonymous0);
            }
            }
).start();
        }
    }

    private static void readConfiguration(Context context, LocaleConfiguration configuration)
    {
        DataInputStream in = null;
        try
        {
            in = new DataInputStream(context.openFileInput("launcher.preferences"));
            configuration.locale = in.readUTF();
            configuration.mcc = in.readInt();
            configuration.mnc = in.readInt();
        }
        catch(FileNotFoundException filenotfoundexception)
        {
            if(in != null)
                try
                {
                    in.close();
                }
                catch(IOException ioexception1) { }
            break MISSING_BLOCK_LABEL_108;
        }
        catch(IOException ioexception)
        {
            if(in != null)
                try
                {
                    in.close();
                }
                catch(IOException ioexception2) { }
            break MISSING_BLOCK_LABEL_108;
        }
        break MISSING_BLOCK_LABEL_95;
        Exception exception;
        exception;
        if(in != null)
            try
            {
                in.close();
            }
            catch(IOException ioexception3) { }
        throw exception;
        if(in != null)
            try
            {
                in.close();
            }
            catch(IOException ioexception4) { }
    }

    private static void writeConfiguration(Context context, LocaleConfiguration configuration)
    {
        DataOutputStream out = null;
        try
        {
            out = new DataOutputStream(context.openFileOutput("launcher.preferences", 0));
            out.writeUTF(configuration.locale);
            out.writeInt(configuration.mcc);
            out.writeInt(configuration.mnc);
            out.flush();
            break MISSING_BLOCK_LABEL_110;
        }
        catch(FileNotFoundException filenotfoundexception)
        {
            if(out != null)
                try
                {
                    out.close();
                }
                catch(IOException ioexception) { }
            break MISSING_BLOCK_LABEL_123;
        }
        catch(IOException e)
        {
            context.getFileStreamPath("launcher.preferences").delete();
        }
        if(out != null)
            try
            {
                out.close();
            }
            catch(IOException ioexception1) { }
        break MISSING_BLOCK_LABEL_123;
        Exception exception;
        exception;
        if(out != null)
            try
            {
                out.close();
            }
            catch(IOException ioexception2) { }
        throw exception;
        if(out != null)
            try
            {
                out.close();
            }
            catch(IOException ioexception3) { }
    }

    public DragLayer getDragLayer()
    {
        return mDragLayer;
    }

    static int getScreen()
    {
        Object obj = sLock;
        JVM INSTR monitorenter ;
        return sScreen;
        obj;
        JVM INSTR monitorexit ;
        throw ;
    }

    static void setScreen(int screen)
    {
        synchronized(sLock)
        {
            sScreen = screen;
        }
    }

    private boolean completeAdd(PendingAddArguments args)
    {
        boolean result = false;
        switch(args.requestCode)
        {
        case 6: // '\006'
            completeAddApplication(args.intent, args.container, args.screen, args.cellX, args.cellY);
            break;

        case 7: // '\007'
            processShortcut(args.intent);
            break;

        case 1: // '\001'
            completeAddShortcut(args.intent, args.container, args.screen, args.cellX, args.cellY);
            result = true;
            break;

        case 9: // '\t'
            addAppWidgetFromPick(args.intent);
            break;

        case 5: // '\005'
            int appWidgetId = args.intent.getIntExtra("appWidgetId", -1);
            completeAddAppWidget(appWidgetId, args.container, args.screen);
            result = true;
            break;
        }
        resetAddInfo();
        return result;
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data)
    {
        boolean delayExitSpringLoadedMode = false;
        mWaitingForResult = false;
        if(resultCode == -1 && mPendingAddInfo.container != -1L)
        {
            PendingAddArguments args = new PendingAddArguments(null);
            args.requestCode = requestCode;
            args.intent = data;
            args.container = mPendingAddInfo.container;
            args.screen = mPendingAddInfo.screen;
            args.cellX = mPendingAddInfo.cellX;
            args.cellY = mPendingAddInfo.cellY;
            if(isWorkspaceLocked())
                sPendingAddList.add(args);
            else
                delayExitSpringLoadedMode = completeAdd(args);
        } else
        if((requestCode == 9 || requestCode == 5) && resultCode == 0 && data != null)
        {
            int appWidgetId = data.getIntExtra("appWidgetId", -1);
            if(appWidgetId != -1)
                mAppWidgetHost.deleteAppWidgetId(appWidgetId);
        }
        exitSpringLoadedDragModeDelayed(resultCode != 0, delayExitSpringLoadedMode);
    }

    protected void onResume()
    {
        super.onResume();
        mPaused = false;
        if(mRestoring || mOnResumeNeedsLoad)
        {
            mWorkspaceLoading = true;
            mModel.startLoader(this, true);
            mRestoring = false;
            mOnResumeNeedsLoad = false;
        }
        if(mWaitingForResume != null)
            mWaitingForResume.setStayPressed(false);
        updateAppMarketIcon();
        if(!mWorkspaceLoading)
            mWorkspace.post(mBuildLayersRunnable);
        clearTypedText();
    }

    protected void onPause()
    {
        super.onPause();
        mPaused = true;
        mDragController.cancelDrag();
    }

    public Object onRetainNonConfigurationInstance()
    {
        mModel.stopLoader();
        if(mAppsCustomizeContent != null)
            mAppsCustomizeContent.surrender();
        return Boolean.TRUE;
    }

    private boolean acceptFilter()
    {
        InputMethodManager inputManager = (InputMethodManager)getSystemService("input_method");
        return !inputManager.isFullscreenMode();
    }

    public boolean onKeyDown(int keyCode, KeyEvent event)
    {
        int uniChar = event.getUnicodeChar();
        boolean handled = super.onKeyDown(keyCode, event);
        boolean isKeyNotWhitespace = uniChar > 0 && !Character.isWhitespace(uniChar);
        if(!handled && acceptFilter() && isKeyNotWhitespace)
        {
            boolean gotKey = TextKeyListener.getInstance().onKeyDown(mWorkspace, mDefaultKeySsb, keyCode, event);
            if(gotKey && mDefaultKeySsb != null && mDefaultKeySsb.length() > 0)
                return onSearchRequested();
        }
        if(keyCode == 82 && event.isLongPress())
            return true;
        else
            return handled;
    }

    private String getTypedText()
    {
        return mDefaultKeySsb.toString();
    }

    private void clearTypedText()
    {
        mDefaultKeySsb.clear();
        mDefaultKeySsb.clearSpans();
        Selection.setSelection(mDefaultKeySsb, 0);
    }

    private static State intToState(int stateOrdinal)
    {
        State state = State.WORKSPACE;
        State stateValues[] = State.values();
        for(int i = 0; i < stateValues.length; i++)
        {
            if(stateValues[i].ordinal() != stateOrdinal)
                continue;
            state = stateValues[i];
            break;
        }

        return state;
    }

    private void restoreState(Bundle savedState)
    {
        if(savedState == null)
            return;
        State state = intToState(savedState.getInt("launcher.state", State.WORKSPACE.ordinal()));
        if(state == State.APPS_CUSTOMIZE)
            showAllApps(false);
        int currentScreen = savedState.getInt("launcher.current_screen", -1);
        if(currentScreen > -1)
            mWorkspace.setCurrentPage(currentScreen);
        long pendingAddContainer = savedState.getLong("launcher.add_container", -1L);
        int pendingAddScreen = savedState.getInt("launcher.add_screen", -1);
        if(pendingAddContainer != -1L && pendingAddScreen > -1)
        {
            mPendingAddInfo.container = pendingAddContainer;
            mPendingAddInfo.screen = pendingAddScreen;
            mPendingAddInfo.cellX = savedState.getInt("launcher.add_cell_x");
            mPendingAddInfo.cellY = savedState.getInt("launcher.add_cell_y");
            mRestoring = true;
        }
        boolean renameFolder = savedState.getBoolean("launcher.rename_folder", false);
        if(renameFolder)
        {
            long id = savedState.getLong("launcher.rename_folder_id");
            mFolderInfo = mModel.getFolderById(this, sFolders, id);
            mRestoring = true;
        }
        if(mAppsCustomizeTabHost != null)
        {
            String curTab = savedState.getString("apps_customize_currentTab");
            if(curTab != null)
            {
                mAppsCustomizeContent.setContentType(mAppsCustomizeTabHost.getContentTypeForTabTag(curTab));
                mAppsCustomizeTabHost.setCurrentTabByTag(curTab);
                mAppsCustomizeContent.loadAssociatedPages(mAppsCustomizeContent.getCurrentPage());
            }
            int currentIndex = savedState.getInt("apps_customize_currentIndex");
            mAppsCustomizeContent.restorePageForIndex(currentIndex);
        }
    }

    private void setupViews()
    {
        DragController dragController = mDragController;
        mDragLayer = (DragLayer)findViewById(0x7f060017);
        mWorkspace = (Workspace)mDragLayer.findViewById(0x7f06001a);
        mDragLayer.setup(this, dragController);
        mHotseat = (Hotseat)findViewById(0x7f060022);
        if(mHotseat != null)
            mHotseat.setup(this);
        mWorkspace.setHapticFeedbackEnabled(false);
        mWorkspace.setOnLongClickListener(this);
        mWorkspace.setup(dragController);
        dragController.addDragListener(mWorkspace);
        mSearchDropTargetBar = (SearchDropTargetBar)mDragLayer.findViewById(0x7f060020);
        mAppsCustomizeTabHost = (AppsCustomizeTabHost)findViewById(0x7f060021);
        mAppsCustomizeContent = (AppsCustomizePagedView)mAppsCustomizeTabHost.findViewById(0x7f060008);
        mAppsCustomizeContent.setup(this, dragController);
        mAllAppsButton = findViewById(0x7f060030);
        if(mAllAppsButton != null)
            mAllAppsButton.setOnTouchListener(new android.view.View.OnTouchListener() {

                public boolean onTouch(View v, MotionEvent event)
                {
                    if((event.getAction() & 0xff) == 0)
                        onTouchDownAllAppsButton(v);
                    return false;
                }

                final Launcher this$0;

            
            {
                this$0 = Launcher.this;
                super();
            }
            }
);
        dragController.setDragScoller(mWorkspace);
        dragController.setScrollView(mDragLayer);
        dragController.setMoveTarget(mWorkspace);
        dragController.addDropTarget(mWorkspace);
        if(mSearchDropTargetBar != null)
            mSearchDropTargetBar.setup(this, dragController);
    }

    View createShortcut(ShortcutInfo info)
    {
        return createShortcut(0x7f030002, (ViewGroup)mWorkspace.getChildAt(mWorkspace.getCurrentPage()), info);
    }

    View createShortcut(int layoutResId, ViewGroup parent, ShortcutInfo info)
    {
        BubbleTextView favorite = (BubbleTextView)mInflater.inflate(layoutResId, parent, false);
        favorite.applyFromShortcutInfo(info, mIconCache);
        favorite.setOnClickListener(this);
        return favorite;
    }

    void completeAddApplication(Intent data, long container, int screen, int cellX, int cellY)
    {
        int cellXY[] = mTmpAddItemCellCoordinates;
        CellLayout layout = getCellLayout(container, screen);
        if(cellX >= 0 && cellY >= 0)
        {
            cellXY[0] = cellX;
            cellXY[1] = cellY;
        } else
        if(!layout.findCellForSpan(cellXY, 1, 1))
        {
            showOutOfSpaceMessage();
            return;
        }
        ShortcutInfo info = mModel.getShortcutInfo(getPackageManager(), data, this);
        if(info != null)
        {
            info.setActivity(data.getComponent(), 0x10200000);
            info.container = -1L;
            mWorkspace.addApplicationShortcut(info, layout, container, screen, cellXY[0], cellXY[1], isWorkspaceLocked(), cellX, cellY);
        } else
        {
            Log.e("Launcher", (new StringBuilder("Couldn't find ActivityInfo for selected application: ")).append(data).toString());
        }
    }

    private void completeAddShortcut(Intent data, long container, int screen, int cellX, int cellY)
    {
        int cellXY[] = mTmpAddItemCellCoordinates;
        int touchXY[] = mPendingAddInfo.dropPos;
        CellLayout layout = getCellLayout(container, screen);
        boolean foundCellSpan = false;
        ShortcutInfo info = mModel.infoFromShortcutIntent(this, data, null);
        View view = createShortcut(info);
        if(cellX >= 0 && cellY >= 0)
        {
            cellXY[0] = cellX;
            cellXY[1] = cellY;
            foundCellSpan = true;
            if(mWorkspace.createUserFolderIfNecessary(view, container, layout, cellXY, true, null, null))
                return;
            DropTarget.DragObject dragObject = new DropTarget.DragObject();
            dragObject.dragInfo = info;
            if(mWorkspace.addToExistingFolderIfNecessary(view, layout, cellXY, dragObject, true))
                return;
        } else
        if(touchXY != null)
        {
            int result[] = layout.findNearestVacantArea(touchXY[0], touchXY[1], 1, 1, cellXY);
            foundCellSpan = result != null;
        } else
        {
            foundCellSpan = layout.findCellForSpan(cellXY, 1, 1);
        }
        if(!foundCellSpan)
        {
            showOutOfSpaceMessage();
            return;
        }
        LauncherModel.addItemToDatabase(this, info, container, screen, cellXY[0], cellXY[1], false);
        if(!mRestoring)
            mWorkspace.addInScreen(view, container, screen, cellXY[0], cellXY[1], 1, 1, isWorkspaceLocked());
    }

    Padding getPaddingForWidget(ComponentName component)
    {
        PackageManager packageManager = getPackageManager();
        Padding p = new Padding();
        ApplicationInfo appInfo;
        try
        {
            appInfo = packageManager.getApplicationInfo(component.getPackageName(), 0);
        }
        catch(Exception e)
        {
            return p;
        }
        if(appInfo.targetSdkVersion >= 14)
        {
            Resources r = getResources();
            p.left = r.getDimensionPixelSize(0x1050041);
            p.right = r.getDimensionPixelSize(0x1050043);
            p.top = r.getDimensionPixelSize(0x1050042);
            p.bottom = r.getDimensionPixelSize(0x1050044);
        }
        return p;
    }

    int[] getSpanForWidget(ComponentName component, int minWidth, int minHeight, int spanXY[])
    {
        if(spanXY == null)
            spanXY = new int[2];
        Padding padding = getPaddingForWidget(component);
        int requiredWidth = minWidth + padding.left + padding.right;
        int requiredHeight = minHeight + padding.top + padding.bottom;
        return CellLayout.rectToCell(getResources(), requiredWidth, requiredHeight, null);
    }

    int[] getSpanForWidget(AppWidgetProviderInfo info, int spanXY[])
    {
        return getSpanForWidget(info.provider, info.minWidth, info.minHeight, spanXY);
    }

    int[] getMinResizeSpanForWidget(AppWidgetProviderInfo info, int spanXY[])
    {
        return getSpanForWidget(info.provider, info.minResizeWidth, info.minResizeHeight, spanXY);
    }

    int[] getSpanForWidget(PendingAddWidgetInfo info, int spanXY[])
    {
        return getSpanForWidget(info.componentName, info.minWidth, info.minHeight, spanXY);
    }

    private void completeAddAppWidget(int appWidgetId, long container, int screen)
    {
        AppWidgetProviderInfo appWidgetInfo = mAppWidgetManager.getAppWidgetInfo(appWidgetId);
        CellLayout layout = getCellLayout(container, screen);
        int spanXY[] = getSpanForWidget(appWidgetInfo, null);
        int cellXY[] = mTmpAddItemCellCoordinates;
        int touchXY[] = mPendingAddInfo.dropPos;
        boolean foundCellSpan = false;
        if(mPendingAddInfo.cellX >= 0 && mPendingAddInfo.cellY >= 0)
        {
            cellXY[0] = mPendingAddInfo.cellX;
            cellXY[1] = mPendingAddInfo.cellY;
            foundCellSpan = true;
        } else
        if(touchXY != null)
        {
            int result[] = layout.findNearestVacantArea(touchXY[0], touchXY[1], spanXY[0], spanXY[1], cellXY);
            foundCellSpan = result != null;
        } else
        {
            foundCellSpan = layout.findCellForSpan(cellXY, spanXY[0], spanXY[1]);
        }
        if(!foundCellSpan)
        {
            if(appWidgetId != -1)
                (new Thread(appWidgetId) {

                    public void run()
                    {
                        mAppWidgetHost.deleteAppWidgetId(appWidgetId);
                    }

                    final Launcher this$0;
                    private final int val$appWidgetId;

            
            {
                this$0 = Launcher.this;
                appWidgetId = i;
                super($anonymous0);
            }
                }
).start();
            showOutOfSpaceMessage();
            return;
        }
        LauncherAppWidgetInfo launcherInfo = new LauncherAppWidgetInfo(appWidgetId);
        launcherInfo.spanX = spanXY[0];
        launcherInfo.spanY = spanXY[1];
        LauncherModel.addItemToDatabase(this, launcherInfo, container, screen, cellXY[0], cellXY[1], false);
        if(!mRestoring)
        {
            launcherInfo.hostView = mAppWidgetHost.createView(this, appWidgetId, appWidgetInfo);
            launcherInfo.hostView.setAppWidget(appWidgetId, appWidgetInfo);
            launcherInfo.hostView.setTag(launcherInfo);
            mWorkspace.addInScreen(launcherInfo.hostView, container, screen, cellXY[0], cellXY[1], launcherInfo.spanX, launcherInfo.spanY, isWorkspaceLocked());
            addWidgetToAutoAdvanceIfNeeded(launcherInfo.hostView, appWidgetInfo);
        }
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.SCREEN_OFF");
        filter.addAction("android.intent.action.USER_PRESENT");
        registerReceiver(mReceiver, filter);
        mAttached = true;
        mVisible = true;
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        mVisible = false;
        mDragLayer.clearAllResizeFrames();
        if(mAttached)
        {
            unregisterReceiver(mReceiver);
            mAttached = false;
        }
        updateRunning();
    }

    public void onWindowVisibilityChanged(int visibility)
    {
        mVisible = visibility == 0;
        updateRunning();
    }

    private void sendAdvanceMessage(long delay)
    {
        mHandler.removeMessages(1);
        Message msg = mHandler.obtainMessage(1);
        mHandler.sendMessageDelayed(msg, delay);
        mAutoAdvanceSentTime = System.currentTimeMillis();
    }

    private void updateRunning()
    {
        boolean autoAdvanceRunning = mVisible && mUserPresent && !mWidgetsToAdvance.isEmpty();
        if(autoAdvanceRunning != mAutoAdvanceRunning)
        {
            mAutoAdvanceRunning = autoAdvanceRunning;
            if(autoAdvanceRunning)
            {
                long delay = mAutoAdvanceTimeLeft != -1L ? mAutoAdvanceTimeLeft : 20000L;
                sendAdvanceMessage(delay);
            } else
            {
                if(!mWidgetsToAdvance.isEmpty())
                    mAutoAdvanceTimeLeft = Math.max(0L, 20000L - (System.currentTimeMillis() - mAutoAdvanceSentTime));
                mHandler.removeMessages(1);
                mHandler.removeMessages(0);
            }
        }
    }

    void addWidgetToAutoAdvanceIfNeeded(View hostView, AppWidgetProviderInfo appWidgetInfo)
    {
        if(appWidgetInfo == null || appWidgetInfo.autoAdvanceViewId == -1)
            return;
        View v = hostView.findViewById(appWidgetInfo.autoAdvanceViewId);
        if(v instanceof Advanceable)
        {
            mWidgetsToAdvance.put(hostView, appWidgetInfo);
            ((Advanceable)v).fyiWillBeAdvancedByHostKThx();
            updateRunning();
        }
    }

    void removeWidgetToAutoAdvance(View hostView)
    {
        if(mWidgetsToAdvance.containsKey(hostView))
        {
            mWidgetsToAdvance.remove(hostView);
            updateRunning();
        }
    }

    public void removeAppWidget(LauncherAppWidgetInfo launcherInfo)
    {
        removeWidgetToAutoAdvance(launcherInfo.hostView);
        launcherInfo.hostView = null;
    }

    void showOutOfSpaceMessage()
    {
        Toast.makeText(this, getString(0x7f0c0017), 0).show();
    }

    public LauncherAppWidgetHost getAppWidgetHost()
    {
        return mAppWidgetHost;
    }

    public LauncherModel getModel()
    {
        return mModel;
    }

    void closeSystemDialogs()
    {
        getWindow().closeAllPanels();
        mWaitingForResult = false;
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        if("android.intent.action.MAIN".equals(intent.getAction()))
        {
            closeSystemDialogs();
            boolean alreadyOnHome = (intent.getFlags() & 0x400000) != 0x400000;
            Folder openFolder = mWorkspace.getOpenFolder();
            mWorkspace.exitWidgetResizeMode();
            if(alreadyOnHome && mState == State.WORKSPACE && !mWorkspace.isTouchActive() && openFolder == null)
                mWorkspace.moveToDefaultScreen(true);
            closeFolder();
            exitSpringLoadedDragMode();
            showWorkspace(alreadyOnHome);
            View v = getWindow().peekDecorView();
            if(v != null && v.getWindowToken() != null)
            {
                InputMethodManager imm = (InputMethodManager)getSystemService("input_method");
                imm.hideSoftInputFromWindow(v.getWindowToken(), 0);
            }
            if(!alreadyOnHome && mAppsCustomizeTabHost != null)
                mAppsCustomizeTabHost.reset();
        }
    }

    protected void onRestoreInstanceState(Bundle savedInstanceState)
    {
        mSavedInstanceState = savedInstanceState;
    }

    protected void onSaveInstanceState(Bundle outState)
    {
        outState.putInt("launcher.current_screen", mWorkspace.getCurrentPage());
        super.onSaveInstanceState(outState);
        outState.putInt("launcher.state", mState.ordinal());
        closeFolder();
        if(mPendingAddInfo.container != -1L && mPendingAddInfo.screen > -1 && mWaitingForResult)
        {
            outState.putLong("launcher.add_container", mPendingAddInfo.container);
            outState.putInt("launcher.add_screen", mPendingAddInfo.screen);
            outState.putInt("launcher.add_cell_x", mPendingAddInfo.cellX);
            outState.putInt("launcher.add_cell_y", mPendingAddInfo.cellY);
        }
        if(mFolderInfo != null && mWaitingForResult)
        {
            outState.putBoolean("launcher.rename_folder", true);
            outState.putLong("launcher.rename_folder_id", mFolderInfo.id);
        }
        if(mAppsCustomizeTabHost != null)
        {
            String currentTabTag = mAppsCustomizeTabHost.getCurrentTabTag();
            if(currentTabTag != null)
                outState.putString("apps_customize_currentTab", currentTabTag);
            int currentIndex = mAppsCustomizeContent.getSaveInstanceStateIndex();
            outState.putInt("apps_customize_currentIndex", currentIndex);
        }
    }

    public void onDestroy()
    {
        super.onDestroy();
        mHandler.removeMessages(1);
        mHandler.removeMessages(0);
        mWorkspace.removeCallbacks(mBuildLayersRunnable);
        LauncherApplication app = (LauncherApplication)getApplication();
        mModel.stopLoader();
        app.setLauncher(null);
        try
        {
            mAppWidgetHost.stopListening();
        }
        catch(NullPointerException ex)
        {
            Log.w("Launcher", "problem while stopping AppWidgetHost during Launcher destruction", ex);
        }
        mAppWidgetHost = null;
        mWidgetsToAdvance.clear();
        TextKeyListener.getInstance().release();
        unbindWorkspaceAndHotseatItems();
        getContentResolver().unregisterContentObserver(mWidgetObserver);
        unregisterReceiver(mCloseSystemDialogsReceiver);
        ((ViewGroup)mWorkspace.getParent()).removeAllViews();
        mWorkspace.removeAllViews();
        mWorkspace = null;
        mDragController = null;
        ValueAnimator.clearAllAnimations();
    }

    public DragController getDragController()
    {
        return mDragController;
    }

    public void startActivityForResult(Intent intent, int requestCode)
    {
        if(requestCode >= 0)
            mWaitingForResult = true;
        super.startActivityForResult(intent, requestCode);
    }

    public void startSearch(String initialQuery, boolean selectInitialQuery, Bundle appSearchData, boolean globalSearch)
    {
        showWorkspace(true);
        if(initialQuery == null)
            initialQuery = getTypedText();
        SearchManager searchManager = (SearchManager)getSystemService("search");
        searchManager.startSearch(initialQuery, selectInitialQuery, getComponentName(), appSearchData, globalSearch);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        if(isWorkspaceLocked())
            return false;
        super.onCreateOptionsMenu(menu);
        Intent manageApps = new Intent("android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS");
        manageApps.setFlags(0x10800000);
        Intent settings = new Intent("android.settings.SETTINGS");
        settings.setFlags(0x10200000);
        String helpUrl = getString(0x7f0c0031);
        Intent help = new Intent("android.intent.action.VIEW", Uri.parse(helpUrl));
        help.setFlags(0x10800000);
        menu.add(1, 2, 0, 0x7f0c002c).setIcon(0x108003f).setAlphabeticShortcut('W');
        menu.add(0, 3, 0, 0x7f0c002b).setIcon(0x1080042).setIntent(manageApps).setAlphabeticShortcut('M');
        menu.add(0, 4, 0, 0x7f0c002f).setIcon(0x1080049).setIntent(settings).setAlphabeticShortcut('P');
        if(!helpUrl.isEmpty())
            menu.add(0, 5, 0, 0x7f0c0030).setIcon(0x1080040).setIntent(help).setAlphabeticShortcut('H');
        return true;
    }

    public boolean onPrepareOptionsMenu(Menu menu)
    {
        super.onPrepareOptionsMenu(menu);
        if(mAppsCustomizeTabHost.isTransitioning())
        {
            return false;
        } else
        {
            boolean allAppsVisible = mAppsCustomizeTabHost.getVisibility() == 0;
            menu.setGroupVisible(1, !allAppsVisible);
            return true;
        }
    }

    public boolean onOptionsItemSelected(MenuItem item)
    {
        switch(item.getItemId())
        {
        case 2: // '\002'
            startWallpaper();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    public boolean onSearchRequested()
    {
        startSearch(null, false, null, true);
        overridePendingTransition(0x7f040000, 0x7f040001);
        return true;
    }

    public boolean isWorkspaceLocked()
    {
        return mWorkspaceLoading || mWaitingForResult;
    }

    private void addItems()
    {
        showWorkspace(true);
        showAddDialog();
    }

    private void resetAddInfo()
    {
        mPendingAddInfo.container = -1L;
        mPendingAddInfo.screen = -1;
        mPendingAddInfo.cellX = mPendingAddInfo.cellY = -1;
        mPendingAddInfo.spanX = mPendingAddInfo.spanY = -1;
        mPendingAddInfo.dropPos = null;
    }

    void addAppWidgetFromPick(Intent data)
    {
        int appWidgetId = data.getIntExtra("appWidgetId", -1);
        addAppWidgetImpl(appWidgetId, null);
    }

    void addAppWidgetImpl(int appWidgetId, PendingAddWidgetInfo info)
    {
        AppWidgetProviderInfo appWidget = mAppWidgetManager.getAppWidgetInfo(appWidgetId);
        if(appWidget.configure != null)
        {
            Intent intent = new Intent("android.appwidget.action.APPWIDGET_CONFIGURE");
            intent.setComponent(appWidget.configure);
            intent.putExtra("appWidgetId", appWidgetId);
            if(info != null && info.mimeType != null && !info.mimeType.isEmpty())
            {
                intent.putExtra("com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE", info.mimeType);
                String mimeType = info.mimeType;
                ClipData clipData = (ClipData)info.configurationData;
                ClipDescription clipDesc = clipData.getDescription();
                for(int i = 0; i < clipDesc.getMimeTypeCount(); i++)
                {
                    if(!clipDesc.getMimeType(i).equals(mimeType))
                        continue;
                    android.content.ClipData.Item item = clipData.getItemAt(i);
                    CharSequence stringData = item.getText();
                    Uri uriData = item.getUri();
                    Intent intentData = item.getIntent();
                    String key = "com.android.launcher.extra.widget.CONFIGURATION_DATA";
                    if(uriData != null)
                        intent.putExtra("com.android.launcher.extra.widget.CONFIGURATION_DATA", uriData);
                    else
                    if(intentData != null)
                        intent.putExtra("com.android.launcher.extra.widget.CONFIGURATION_DATA", intentData);
                    else
                    if(stringData != null)
                        intent.putExtra("com.android.launcher.extra.widget.CONFIGURATION_DATA", stringData);
                    break;
                }

            }
            startActivityForResultSafely(intent, 5);
        } else
        {
            completeAddAppWidget(appWidgetId, info.container, info.screen);
            exitSpringLoadedDragModeDelayed(true, false);
        }
    }

    void processShortcutFromDrop(ComponentName componentName, long container, int screen, int cell[], int loc[])
    {
        resetAddInfo();
        mPendingAddInfo.container = container;
        mPendingAddInfo.screen = screen;
        mPendingAddInfo.dropPos = loc;
        if(cell != null)
        {
            mPendingAddInfo.cellX = cell[0];
            mPendingAddInfo.cellY = cell[1];
        }
        Intent createShortcutIntent = new Intent("android.intent.action.CREATE_SHORTCUT");
        createShortcutIntent.setComponent(componentName);
        processShortcut(createShortcutIntent);
    }

    void addAppWidgetFromDrop(PendingAddWidgetInfo info, long container, int screen, int cell[], int loc[])
    {
        resetAddInfo();
        mPendingAddInfo.container = info.container = container;
        mPendingAddInfo.screen = info.screen = screen;
        mPendingAddInfo.dropPos = loc;
        if(cell != null)
        {
            mPendingAddInfo.cellX = cell[0];
            mPendingAddInfo.cellY = cell[1];
        }
        int appWidgetId = getAppWidgetHost().allocateAppWidgetId();
        AppWidgetManager.getInstance(this).bindAppWidgetId(appWidgetId, info.componentName);
        addAppWidgetImpl(appWidgetId, info);
    }

    void processShortcut(Intent intent)
    {
        String applicationName = getResources().getString(0x7f0c0013);
        String shortcutName = intent.getStringExtra("android.intent.extra.shortcut.NAME");
        if(applicationName != null && applicationName.equals(shortcutName))
        {
            Intent mainIntent = new Intent("android.intent.action.MAIN", null);
            mainIntent.addCategory("android.intent.category.LAUNCHER");
            Intent pickIntent = new Intent("android.intent.action.PICK_ACTIVITY");
            pickIntent.putExtra("android.intent.extra.INTENT", mainIntent);
            pickIntent.putExtra("android.intent.extra.TITLE", getText(0x7f0c001d));
            startActivityForResultSafely(pickIntent, 6);
        } else
        {
            startActivityForResultSafely(intent, 1);
        }
    }

    void processWallpaper(Intent intent)
    {
        startActivityForResult(intent, 10);
    }

    FolderIcon addFolder(CellLayout layout, long container, int screen, int cellX, int cellY)
    {
        FolderInfo folderInfo = new FolderInfo();
        folderInfo.title = getText(0x7f0c0002);
        LauncherModel.addItemToDatabase(this, folderInfo, container, screen, cellX, cellY, false);
        sFolders.put(Long.valueOf(folderInfo.id), folderInfo);
        FolderIcon newFolder = FolderIcon.fromXml(0x7f03000a, this, layout, folderInfo, mIconCache);
        mWorkspace.addInScreen(newFolder, container, screen, cellX, cellY, 1, 1, isWorkspaceLocked());
        return newFolder;
    }

    void removeFolder(FolderInfo folder)
    {
        sFolders.remove(Long.valueOf(folder.id));
    }

    private void showNotifications()
    {
        StatusBarManager statusBar = (StatusBarManager)getSystemService("statusbar");
        if(statusBar != null)
            statusBar.expand();
    }

    private void startWallpaper()
    {
        showWorkspace(true);
        Intent pickWallpaper = new Intent("android.intent.action.SET_WALLPAPER");
        Intent chooser = Intent.createChooser(pickWallpaper, getText(0x7f0c0003));
        startActivityForResult(chooser, 10);
    }

    private void registerContentObservers()
    {
        ContentResolver resolver = getContentResolver();
        resolver.registerContentObserver(LauncherProvider.CONTENT_APPWIDGET_RESET_URI, true, mWidgetObserver);
    }

    public boolean dispatchKeyEvent(KeyEvent event)
    {
        if(event.getAction() == 0)
            switch(event.getKeyCode())
            {
            case 3: // '\003'
                return true;

            case 25: // '\031'
                if(SystemProperties.getInt("debug.launcher2.dumpstate", 0) != 0)
                {
                    dumpState();
                    return true;
                }
                break;
            }
        else
        if(event.getAction() == 1)
            switch(event.getKeyCode())
            {
            case 3: // '\003'
                return true;
            }
        return super.dispatchKeyEvent(event);
    }

    public void onBackPressed()
    {
        if(mState == State.APPS_CUSTOMIZE)
            showWorkspace(true);
        else
        if(mWorkspace.getOpenFolder() != null)
        {
            Folder openFolder = mWorkspace.getOpenFolder();
            if(openFolder.isEditingName())
                openFolder.dismissEditingName();
            else
                closeFolder();
        } else
        {
            mWorkspace.exitWidgetResizeMode();
            mWorkspace.showOutlinesTemporarily();
        }
    }

    private void onAppWidgetReset()
    {
        if(mAppWidgetHost != null)
            mAppWidgetHost.startListening();
    }

    private void unbindWorkspaceAndHotseatItems()
    {
        if(mModel != null)
            mModel.unbindWorkspaceItems();
    }

    public void onClick(View v)
    {
        if(v.getWindowToken() == null)
            return;
        if(mWorkspace.isSwitchingState())
            return;
        Object tag = v.getTag();
        if(tag instanceof ShortcutInfo)
        {
            Intent intent = ((ShortcutInfo)tag).intent;
            int pos[] = new int[2];
            v.getLocationOnScreen(pos);
            intent.setSourceBounds(new Rect(pos[0], pos[1], pos[0] + v.getWidth(), pos[1] + v.getHeight()));
            boolean success = startActivitySafely(intent, tag);
            if(success && (v instanceof BubbleTextView))
            {
                mWaitingForResume = (BubbleTextView)v;
                mWaitingForResume.setStayPressed(true);
            }
        } else
        if(tag instanceof FolderInfo)
        {
            if(v instanceof FolderIcon)
            {
                FolderIcon fi = (FolderIcon)v;
                handleFolderClick(fi);
            }
        } else
        if(v == mAllAppsButton)
            if(mState == State.APPS_CUSTOMIZE)
                showWorkspace(true);
            else
                onClickAllAppsButton(v);
    }

    public boolean onTouch(View v, MotionEvent event)
    {
        showWorkspace(true);
        return false;
    }

    public void onClickSearchButton(View v)
    {
        onSearchRequested();
    }

    public void onClickVoiceButton(View v)
    {
        startVoiceSearch();
    }

    private void startVoiceSearch()
    {
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        intent.setFlags(0x10800000);
        startActivity(intent);
    }

    public void onClickAllAppsButton(View v)
    {
        showAllApps(true);
    }

    public void onTouchDownAllAppsButton(View v)
    {
        v.performHapticFeedback(1);
    }

    public void onClickAppMarketButton(View v)
    {
        if(mAppMarketIntent != null)
            startActivitySafely(mAppMarketIntent, "app market");
    }

    void startApplicationDetailsActivity(ComponentName componentName)
    {
        String packageName = componentName.getPackageName();
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.fromParts("package", packageName, null));
        intent.setFlags(0x10800000);
        startActivity(intent);
    }

    void startApplicationUninstallActivity(com.android.launcher2.ApplicationInfo appInfo)
    {
        if((appInfo.flags & 1) == 0)
        {
            int messageId = 0x7f0c0041;
            Toast.makeText(this, messageId, 0).show();
        } else
        {
            String packageName = appInfo.componentName.getPackageName();
            String className = appInfo.componentName.getClassName();
            Intent intent = new Intent("android.intent.action.DELETE", Uri.fromParts("package", packageName, className));
            intent.setFlags(0x10800000);
            startActivity(intent);
        }
    }

    boolean startActivitySafely(Intent intent, Object tag)
    {
        intent.addFlags(0x10000000);
        startActivity(intent);
        return true;
        ActivityNotFoundException e;
        e;
        Toast.makeText(this, 0x7f0c0006, 0).show();
        Log.e("Launcher", (new StringBuilder("Unable to launch. tag=")).append(tag).append(" intent=").append(intent).toString(), e);
        break MISSING_BLOCK_LABEL_132;
        e;
        Toast.makeText(this, 0x7f0c0006, 0).show();
        Log.e("Launcher", (new StringBuilder("Launcher does not have the permission to launch ")).append(intent).append(". Make sure to create a MAIN intent-filter for the corresponding activity ").append("or use the exported attribute for this activity. ").append("tag=").append(tag).append(" intent=").append(intent).toString(), e);
        return false;
    }

    void startActivityForResultSafely(Intent intent, int requestCode)
    {
        try
        {
            startActivityForResult(intent, requestCode);
        }
        catch(ActivityNotFoundException e)
        {
            Toast.makeText(this, 0x7f0c0006, 0).show();
        }
        catch(SecurityException e)
        {
            Toast.makeText(this, 0x7f0c0006, 0).show();
            Log.e("Launcher", (new StringBuilder("Launcher does not have the permission to launch ")).append(intent).append(". Make sure to create a MAIN intent-filter for the corresponding activity ").append("or use the exported attribute for this activity.").toString(), e);
        }
    }

    private void handleFolderClick(FolderIcon folderIcon)
    {
        FolderInfo info = folderIcon.mInfo;
        Folder openFolder = mWorkspace.getFolderForTag(info);
        if(info.opened && openFolder == null)
        {
            Log.d("Launcher", (new StringBuilder("Folder info marked as open, but associated folder is not open. Screen: ")).append(info.screen).append(" (").append(info.cellX).append(", ").append(info.cellY).append(")").toString());
            info.opened = false;
        }
        if(!info.opened)
        {
            closeFolder();
            openFolder(folderIcon);
        } else
        if(openFolder != null)
        {
            int folderScreen = mWorkspace.getPageForView(openFolder);
            closeFolder(openFolder);
            if(folderScreen != mWorkspace.getCurrentPage())
            {
                closeFolder();
                openFolder(folderIcon);
            }
        }
    }

    private void growAndFadeOutFolderIcon(FolderIcon fi)
    {
        if(fi == null)
            return;
        PropertyValuesHolder alpha = PropertyValuesHolder.ofFloat("alpha", new float[] {
            0.0F
        });
        PropertyValuesHolder scaleX = PropertyValuesHolder.ofFloat("scaleX", new float[] {
            1.5F
        });
        PropertyValuesHolder scaleY = PropertyValuesHolder.ofFloat("scaleY", new float[] {
            1.5F
        });
        FolderInfo info = (FolderInfo)fi.getTag();
        if(info.container == -101L)
        {
            CellLayout cl = (CellLayout)fi.getParent().getParent();
            CellLayout.LayoutParams lp = (CellLayout.LayoutParams)fi.getLayoutParams();
            cl.setFolderLeaveBehindCell(lp.cellX, lp.cellY);
        }
        ObjectAnimator oa = ObjectAnimator.ofPropertyValuesHolder(fi, new PropertyValuesHolder[] {
            alpha, scaleX, scaleY
        });
        oa.setDuration(getResources().getInteger(0x7f09001d));
        oa.start();
    }

    private void shrinkAndFadeInFolderIcon(FolderIcon fi)
    {
        if(fi == null)
            return;
        PropertyValuesHolder alpha = PropertyValuesHolder.ofFloat("alpha", new float[] {
            1.0F
        });
        PropertyValuesHolder scaleX = PropertyValuesHolder.ofFloat("scaleX", new float[] {
            1.0F
        });
        PropertyValuesHolder scaleY = PropertyValuesHolder.ofFloat("scaleY", new float[] {
            1.0F
        });
        FolderInfo info = (FolderInfo)fi.getTag();
        CellLayout cl = null;
        if(info.container == -101L)
            cl = (CellLayout)fi.getParent().getParent();
        final CellLayout layout = cl;
        ObjectAnimator oa = ObjectAnimator.ofPropertyValuesHolder(fi, new PropertyValuesHolder[] {
            alpha, scaleX, scaleY
        });
        oa.setDuration(getResources().getInteger(0x7f09001d));
        oa.addListener(new AnimatorListenerAdapter() {

            public void onAnimationEnd(Animator animation)
            {
                if(layout != null)
                    layout.clearFolderLeaveBehind();
            }

            final Launcher this$0;
            private final CellLayout val$layout;

            
            {
                this$0 = Launcher.this;
                layout = celllayout;
                super();
            }
        }
);
        oa.start();
    }

    public void openFolder(FolderIcon folderIcon)
    {
        Folder folder = folderIcon.mFolder;
        FolderInfo info = folder.mInfo;
        growAndFadeOutFolderIcon(folderIcon);
        info.opened = true;
        if(folder.getParent() == null)
        {
            mDragLayer.addView(folder);
            mDragController.addDropTarget(folder);
        } else
        {
            Log.w("Launcher", (new StringBuilder("Opening folder (")).append(folder).append(") which already has a parent (").append(folder.getParent()).append(").").toString());
        }
        folder.animateOpen();
    }

    public void closeFolder()
    {
        Folder folder = mWorkspace.getOpenFolder();
        if(folder != null)
        {
            if(folder.isEditingName())
                folder.dismissEditingName();
            closeFolder(folder);
            dismissFolderCling(null);
        }
    }

    void closeFolder(Folder folder)
    {
        folder.getInfo().opened = false;
        ViewGroup parent = (ViewGroup)folder.getParent().getParent();
        if(parent != null)
        {
            FolderIcon fi = (FolderIcon)mWorkspace.getViewForTag(folder.mInfo);
            shrinkAndFadeInFolderIcon(fi);
        }
        folder.animateClosed();
    }

    public boolean onLongClick(View v)
    {
        if(mState != State.WORKSPACE)
            return false;
        if(isWorkspaceLocked())
            return false;
        if(!(v instanceof CellLayout))
            v = (View)v.getParent().getParent();
        resetAddInfo();
        CellLayout.CellInfo longClickCellInfo = (CellLayout.CellInfo)v.getTag();
        if(longClickCellInfo == null)
            return true;
        View itemUnderLongClick = longClickCellInfo.cell;
        boolean allowLongPress = isHotseatLayout(v) || mWorkspace.allowLongPress();
        if(allowLongPress && !mDragController.isDragging())
            if(itemUnderLongClick == null)
            {
                mWorkspace.performHapticFeedback(0, 1);
                startWallpaper();
            } else
            if(!(itemUnderLongClick instanceof Folder))
                mWorkspace.startDrag(longClickCellInfo);
        return true;
    }

    boolean isHotseatLayout(View layout)
    {
        return mHotseat != null && layout != null && (layout instanceof CellLayout) && layout == mHotseat.getLayout();
    }

    Hotseat getHotseat()
    {
        return mHotseat;
    }

    CellLayout getCellLayout(long container, int screen)
    {
        if(container == -101L)
        {
            if(mHotseat != null)
                return mHotseat.getLayout();
            else
                return null;
        } else
        {
            return (CellLayout)mWorkspace.getChildAt(screen);
        }
    }

    Workspace getWorkspace()
    {
        return mWorkspace;
    }

    protected Dialog onCreateDialog(int id)
    {
        switch(id)
        {
        case 1: // '\001'
            return (new CreateShortcut(null)).createDialog();

        case 2: // '\002'
            return (new RenameFolder(null)).createDialog();
        }
        return super.onCreateDialog(id);
    }

    protected void onPrepareDialog(int id, Dialog dialog)
    {
        switch(id)
        {
        case 1: // '\001'
        default:
            break;

        case 2: // '\002'
            if(mFolderInfo != null)
            {
                EditText input = (EditText)dialog.findViewById(0x7f06002a);
                CharSequence text = mFolderInfo.title;
                input.setText(text);
                input.setSelection(0, text.length());
            }
            break;
        }
    }

    void showRenameDialog(FolderInfo info)
    {
        mFolderInfo = info;
        mWaitingForResult = true;
        showDialog(2);
    }

    private void showAddDialog()
    {
        resetAddInfo();
        mPendingAddInfo.container = -100L;
        mPendingAddInfo.screen = mWorkspace.getCurrentPage();
        mWaitingForResult = true;
        showDialog(1);
    }

    public boolean isAllAppsVisible()
    {
        return mState == State.APPS_CUSTOMIZE;
    }

    public void zoomed(float zoom)
    {
        if(zoom == 1.0F)
            mWorkspace.setVisibility(8);
    }

    private void setPivotsForZoom(View view, State state, float scaleFactor)
    {
        view.setPivotX((float)view.getWidth() / 2.0F);
        view.setPivotY((float)view.getHeight() / 2.0F);
    }

    void updateWallpaperVisibility(boolean visible)
    {
        int wpflags = visible ? 0x100000 : 0;
        int curflags = getWindow().getAttributes().flags & 0x100000;
        if(wpflags != curflags)
            getWindow().setFlags(wpflags, 0x100000);
    }

    private void cameraZoomOut(State toState, boolean animated, final boolean springLoaded)
    {
        Resources res = getResources();
        final Launcher instance = this;
        int duration = res.getInteger(0x7f09000b);
        int fadeDuration = res.getInteger(0x7f09000e);
        final float scale = res.getInteger(0x7f09000d);
        final View toView = mAppsCustomizeTabHost;
        int startDelay = res.getInteger(0x7f090012);
        setPivotsForZoom(toView, toState, scale);
        mWorkspace.changeState(Workspace.State.SMALL, animated);
        if(animated)
        {
            final ValueAnimator scaleAnim = ValueAnimator.ofFloat(new float[] {
                0.0F, 1.0F
            }).setDuration(duration);
            scaleAnim.setInterpolator(new Workspace.ZoomOutInterpolator());
            scaleAnim.addUpdateListener(new LauncherAnimatorUpdateListener() {

                public void onAnimationUpdate(float a, float b)
                {
                    ((View)toView.getParent()).invalidate();
                    toView.fastInvalidate();
                    toView.setFastScaleX(a * scale + b * 1.0F);
                    toView.setFastScaleY(a * scale + b * 1.0F);
                }

                final Launcher this$0;
                private final View val$toView;
                private final float val$scale;

            
            {
                this$0 = Launcher.this;
                toView = view;
                scale = f;
                super();
            }
            }
);
            toView.setVisibility(0);
            toView.setFastAlpha(0.0F);
            ValueAnimator alphaAnim = ValueAnimator.ofFloat(new float[] {
                0.0F, 1.0F
            }).setDuration(fadeDuration);
            alphaAnim.setInterpolator(new DecelerateInterpolator(1.5F));
            alphaAnim.addUpdateListener(new LauncherAnimatorUpdateListener() {

                public void onAnimationUpdate(float a, float b)
                {
                    toView.setFastAlpha(a * 0.0F + b * 1.0F);
                }

                final Launcher this$0;
                private final View val$toView;

            
            {
                this$0 = Launcher.this;
                toView = view;
                super();
            }
            }
);
            alphaAnim.setStartDelay(startDelay);
            alphaAnim.start();
            if(toView instanceof LauncherTransitionable)
                ((LauncherTransitionable)toView).onLauncherTransitionStart(instance, scaleAnim, false);
            scaleAnim.addListener(new AnimatorListenerAdapter() {

                public void onAnimationStart(Animator animation)
                {
                    updateWallpaperVisibility(true);
                    toView.setTranslationX(0.0F);
                    toView.setTranslationY(0.0F);
                    toView.setVisibility(0);
                    toView.bringToFront();
                }

                public void onAnimationEnd(Animator animation)
                {
                    toView.setScaleX(1.0F);
                    toView.setScaleY(1.0F);
                    if(toView instanceof LauncherTransitionable)
                        ((LauncherTransitionable)toView).onLauncherTransitionEnd(instance, scaleAnim, false);
                    if(!springLoaded && !LauncherApplication.isScreenLarge())
                    {
                        mWorkspace.hideScrollingIndicator(true);
                        mWorkspace.hideDockDivider(true);
                    }
                    if(!animationCancelled)
                        updateWallpaperVisibility(false);
                }

                public void onAnimationCancel(Animator animation)
                {
                    animationCancelled = true;
                }

                boolean animationCancelled;
                final Launcher this$0;
                private final View val$toView;
                private final Launcher val$instance;
                private final ValueAnimator val$scaleAnim;
                private final boolean val$springLoaded;

            
            {
                this$0 = Launcher.this;
                toView = view;
                instance = launcher1;
                scaleAnim = valueanimator;
                springLoaded = flag;
                super();
                animationCancelled = false;
            }
            }
);
            if(mStateAnimation != null)
                mStateAnimation.cancel();
            mStateAnimation = new AnimatorSet();
            mStateAnimation.play(scaleAnim).after(startDelay);
            mStateAnimation.start();
        } else
        {
            toView.setTranslationX(0.0F);
            toView.setTranslationY(0.0F);
            toView.setScaleX(1.0F);
            toView.setScaleY(1.0F);
            toView.setVisibility(0);
            toView.bringToFront();
            if(toView instanceof LauncherTransitionable)
            {
                ((LauncherTransitionable)toView).onLauncherTransitionStart(instance, null, false);
                ((LauncherTransitionable)toView).onLauncherTransitionEnd(instance, null, false);
                if(!springLoaded && !LauncherApplication.isScreenLarge())
                {
                    mWorkspace.hideScrollingIndicator(true);
                    mWorkspace.hideDockDivider(true);
                }
            }
            updateWallpaperVisibility(false);
        }
    }

    private void cameraZoomIn(State fromState, boolean animated, boolean springLoaded)
    {
        Resources res = getResources();
        final Launcher instance = this;
        int duration = res.getInteger(0x7f09000c);
        final float scaleFactor = res.getInteger(0x7f09000d);
        final View fromView = mAppsCustomizeTabHost;
        setPivotsForZoom(fromView, fromState, scaleFactor);
        updateWallpaperVisibility(true);
        showHotseat(animated);
        if(animated)
        {
            if(mStateAnimation != null)
                mStateAnimation.cancel();
            mStateAnimation = new AnimatorSet();
            final float oldScaleX = fromView.getScaleX();
            final float oldScaleY = fromView.getScaleY();
            ValueAnimator scaleAnim = ValueAnimator.ofFloat(new float[] {
                0.0F, 1.0F
            }).setDuration(duration);
            scaleAnim.setInterpolator(new Workspace.ZoomInInterpolator());
            scaleAnim.addUpdateListener(new LauncherAnimatorUpdateListener() {

                public void onAnimationUpdate(float a, float b)
                {
                    ((View)fromView.getParent()).fastInvalidate();
                    fromView.setFastScaleX(a * oldScaleX + b * scaleFactor);
                    fromView.setFastScaleY(a * oldScaleY + b * scaleFactor);
                }

                final Launcher this$0;
                private final View val$fromView;
                private final float val$oldScaleX;
                private final float val$scaleFactor;
                private final float val$oldScaleY;

            
            {
                this$0 = Launcher.this;
                fromView = view;
                oldScaleX = f;
                scaleFactor = f1;
                oldScaleY = f2;
                super();
            }
            }
);
            final ValueAnimator alphaAnim = ValueAnimator.ofFloat(new float[] {
                0.0F, 1.0F
            });
            alphaAnim.setDuration(res.getInteger(0x7f09000f));
            alphaAnim.setInterpolator(new AccelerateDecelerateInterpolator());
            alphaAnim.addUpdateListener(new LauncherAnimatorUpdateListener() {

                public void onAnimationUpdate(float a, float b)
                {
                    fromView.setFastAlpha(a * 1.0F + b * 0.0F);
                }

                final Launcher this$0;
                private final View val$fromView;

            
            {
                this$0 = Launcher.this;
                fromView = view;
                super();
            }
            }
);
            if(fromView instanceof LauncherTransitionable)
                ((LauncherTransitionable)fromView).onLauncherTransitionStart(instance, alphaAnim, true);
            alphaAnim.addListener(new AnimatorListenerAdapter() {

                public void onAnimationEnd(Animator animation)
                {
                    updateWallpaperVisibility(true);
                    fromView.setVisibility(8);
                    if(fromView instanceof LauncherTransitionable)
                        ((LauncherTransitionable)fromView).onLauncherTransitionEnd(instance, alphaAnim, true);
                    mWorkspace.hideScrollingIndicator(false);
                }

                final Launcher this$0;
                private final View val$fromView;
                private final Launcher val$instance;
                private final ValueAnimator val$alphaAnim;

            
            {
                this$0 = Launcher.this;
                fromView = view;
                instance = launcher1;
                alphaAnim = valueanimator;
                super();
            }
            }
);
            mStateAnimation.playTogether(new Animator[] {
                scaleAnim, alphaAnim
            });
            mStateAnimation.start();
        } else
        {
            fromView.setVisibility(8);
            if(fromView instanceof LauncherTransitionable)
            {
                ((LauncherTransitionable)fromView).onLauncherTransitionStart(instance, null, true);
                ((LauncherTransitionable)fromView).onLauncherTransitionEnd(instance, null, true);
            }
        }
    }

    void showWorkspace(boolean animated)
    {
        Resources res = getResources();
        int stagger = res.getInteger(0x7f090011);
        mWorkspace.changeState(Workspace.State.NORMAL, animated, stagger);
        if(mState == State.APPS_CUSTOMIZE)
            closeAllApps(animated);
        mWorkspace.showDockDivider(!animated);
        mWorkspace.flashScrollingIndicator();
        mState = State.WORKSPACE;
        mUserPresent = true;
        updateRunning();
        getWindow().getDecorView().sendAccessibilityEvent(4);
    }

    void enterSpringLoadedDragMode()
    {
        if(mState == State.APPS_CUSTOMIZE)
        {
            mWorkspace.changeState(Workspace.State.SPRING_LOADED);
            cameraZoomIn(State.APPS_CUSTOMIZE, true, true);
            mState = State.APPS_CUSTOMIZE_SPRING_LOADED;
        }
    }

    void exitSpringLoadedDragModeDelayed(final boolean successfulDrop, boolean extendedDelay)
    {
        if(mState != State.APPS_CUSTOMIZE_SPRING_LOADED)
        {
            return;
        } else
        {
            mHandler.postDelayed(new Runnable() {

                public void run()
                {
                    if(successfulDrop)
                    {
                        mAppsCustomizeTabHost.setVisibility(8);
                        mSearchDropTargetBar.showSearchBar(true);
                        showWorkspace(true);
                    } else
                    {
                        exitSpringLoadedDragMode();
                    }
                }

                final Launcher this$0;
                private final boolean val$successfulDrop;

            
            {
                this$0 = Launcher.this;
                successfulDrop = flag;
                super();
            }
            }
, extendedDelay ? 600 : '\u012C');
            return;
        }
    }

    void exitSpringLoadedDragMode()
    {
        if(mState == State.APPS_CUSTOMIZE_SPRING_LOADED)
        {
            cameraZoomOut(State.APPS_CUSTOMIZE, true, true);
            mState = State.APPS_CUSTOMIZE;
        }
    }

    public boolean isAllAppsCustomizeOpen()
    {
        return mState == State.APPS_CUSTOMIZE;
    }

    void showHotseat(boolean animated)
    {
        if(!LauncherApplication.isScreenLarge())
            if(animated)
            {
                int duration = mSearchDropTargetBar.getTransitionInDuration();
                mHotseat.animate().alpha(1.0F).setDuration(duration);
            } else
            {
                mHotseat.setAlpha(1.0F);
            }
    }

    void hideHotseat(boolean animated)
    {
        if(!LauncherApplication.isScreenLarge())
            if(animated)
            {
                int duration = mSearchDropTargetBar.getTransitionOutDuration();
                mHotseat.animate().alpha(0.0F).setDuration(duration);
            } else
            {
                mHotseat.setAlpha(0.0F);
            }
    }

    void showAllApps(boolean animated)
    {
        if(mState != State.WORKSPACE)
        {
            return;
        } else
        {
            cameraZoomOut(State.APPS_CUSTOMIZE, animated, false);
            mAppsCustomizeTabHost.requestFocus();
            mSearchDropTargetBar.hideSearchBar(animated);
            mState = State.APPS_CUSTOMIZE;
            mUserPresent = false;
            updateRunning();
            closeFolder();
            getWindow().getDecorView().sendAccessibilityEvent(4);
            return;
        }
    }

    void closeAllApps(boolean animated)
    {
        if(mState == State.APPS_CUSTOMIZE || mState == State.APPS_CUSTOMIZE_SPRING_LOADED)
        {
            mWorkspace.setVisibility(0);
            cameraZoomIn(State.APPS_CUSTOMIZE, animated, false);
            mSearchDropTargetBar.showSearchBar(animated);
            if(mAllAppsButton != null)
                mAllAppsButton.requestFocus();
        }
    }

    void lockAllApps()
    {
    }

    void unlockAllApps()
    {
    }

    void addExternalItemToScreen(ItemInfo itemInfo, CellLayout layout)
    {
        if(!mWorkspace.addExternalItemToScreen(itemInfo, layout))
            showOutOfSpaceMessage();
        else
            layout.animateDrop();
    }

    private int getCurrentOrientationIndexForGlobalIcons()
    {
        switch(getResources().getConfiguration().orientation)
        {
        case 2: // '\002'
            return 1;
        }
        return 0;
    }

    private Drawable getExternalPackageToolbarIcon(ComponentName activityName)
    {
        try
        {
            PackageManager packageManager = getPackageManager();
            Bundle metaData = packageManager.getActivityInfo(activityName, 128).metaData;
            if(metaData != null)
            {
                int iconResId = metaData.getInt("com.android.launcher.toolbar_icon");
                if(iconResId != 0)
                {
                    Resources res = packageManager.getResourcesForActivity(activityName);
                    return res.getDrawable(iconResId);
                }
            }
        }
        catch(android.content.pm.PackageManager.NameNotFoundException e)
        {
            Log.w("Launcher", (new StringBuilder("Failed to load toolbar icon; ")).append(activityName.flattenToShortString()).append(" not found").toString(), e);
        }
        catch(android.content.res.Resources.NotFoundException nfe)
        {
            Log.w("Launcher", (new StringBuilder("Failed to load toolbar icon from ")).append(activityName.flattenToShortString()).toString(), nfe);
        }
        return null;
    }

    private android.graphics.drawable.Drawable.ConstantState updateTextButtonWithIconFromExternalActivity(int buttonId, ComponentName activityName, int fallbackDrawableId)
    {
        TextView button = (TextView)findViewById(buttonId);
        Drawable toolbarIcon = getExternalPackageToolbarIcon(activityName);
        Resources r = getResources();
        int w = r.getDimensionPixelSize(0x7f0a0018);
        int h = r.getDimensionPixelSize(0x7f0a0019);
        if(toolbarIcon == null)
        {
            toolbarIcon = r.getDrawable(fallbackDrawableId);
            toolbarIcon.setBounds(0, 0, w, h);
            button.setCompoundDrawables(toolbarIcon, null, null, null);
            return null;
        } else
        {
            toolbarIcon.setBounds(0, 0, w, h);
            button.setCompoundDrawables(toolbarIcon, null, null, null);
            return toolbarIcon.getConstantState();
        }
    }

    private android.graphics.drawable.Drawable.ConstantState updateButtonWithIconFromExternalActivity(int buttonId, ComponentName activityName, int fallbackDrawableId)
    {
        ImageView button = (ImageView)findViewById(buttonId);
        Drawable toolbarIcon = getExternalPackageToolbarIcon(activityName);
        if(button != null)
            if(toolbarIcon == null)
                button.setImageResource(fallbackDrawableId);
            else
                button.setImageDrawable(toolbarIcon);
        return toolbarIcon == null ? null : toolbarIcon.getConstantState();
    }

    private void updateTextButtonWithDrawable(int buttonId, android.graphics.drawable.Drawable.ConstantState d)
    {
        TextView button = (TextView)findViewById(buttonId);
        button.setCompoundDrawables(d.newDrawable(getResources()), null, null, null);
    }

    private void updateButtonWithDrawable(int buttonId, android.graphics.drawable.Drawable.ConstantState d)
    {
        ImageView button = (ImageView)findViewById(buttonId);
        button.setImageDrawable(d.newDrawable(getResources()));
    }

    private boolean updateGlobalSearchIcon()
    {
        View searchButtonContainer = findViewById(0x7f06002e);
        ImageView searchButton = (ImageView)findViewById(0x7f06002b);
        View searchDivider = findViewById(0x7f06002c);
        View voiceButtonContainer = findViewById(0x7f06002f);
        View voiceButton = findViewById(0x7f06002d);
        SearchManager searchManager = (SearchManager)getSystemService("search");
        ComponentName activityName = searchManager.getGlobalSearchActivity();
        if(activityName != null)
        {
            int coi = getCurrentOrientationIndexForGlobalIcons();
            sGlobalSearchIcon[coi] = updateButtonWithIconFromExternalActivity(0x7f06002b, activityName, 0x7f020030);
            if(searchDivider != null)
                searchDivider.setVisibility(0);
            if(searchButtonContainer != null)
                searchButtonContainer.setVisibility(0);
            searchButton.setVisibility(0);
            return true;
        }
        if(searchDivider != null)
            searchDivider.setVisibility(8);
        if(searchButtonContainer != null)
            searchButtonContainer.setVisibility(8);
        if(voiceButtonContainer != null)
            voiceButtonContainer.setVisibility(8);
        searchButton.setVisibility(8);
        voiceButton.setVisibility(8);
        return false;
    }

    private void updateGlobalSearchIcon(android.graphics.drawable.Drawable.ConstantState d)
    {
        updateButtonWithDrawable(0x7f06002b, d);
    }

    private boolean updateVoiceSearchIcon(boolean searchVisible)
    {
        View searchDivider = findViewById(0x7f06002c);
        View voiceButtonContainer = findViewById(0x7f06002f);
        View voiceButton = findViewById(0x7f06002d);
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        ComponentName activityName = intent.resolveActivity(getPackageManager());
        if(searchVisible && activityName != null)
        {
            int coi = getCurrentOrientationIndexForGlobalIcons();
            sVoiceSearchIcon[coi] = updateButtonWithIconFromExternalActivity(0x7f06002d, activityName, 0x7f020031);
            if(searchDivider != null)
                searchDivider.setVisibility(0);
            if(voiceButtonContainer != null)
                voiceButtonContainer.setVisibility(0);
            voiceButton.setVisibility(0);
            return true;
        }
        if(searchDivider != null)
            searchDivider.setVisibility(8);
        if(voiceButtonContainer != null)
            voiceButtonContainer.setVisibility(8);
        voiceButton.setVisibility(8);
        return false;
    }

    private void updateVoiceSearchIcon(android.graphics.drawable.Drawable.ConstantState d)
    {
        updateButtonWithDrawable(0x7f06002d, d);
    }

    private void updateAppMarketIcon()
    {
        View marketButton = findViewById(0x7f060007);
        Intent intent = (new Intent("android.intent.action.MAIN")).addCategory("android.intent.category.APP_MARKET");
        ComponentName activityName = intent.resolveActivity(getPackageManager());
        if(activityName != null)
        {
            int coi = getCurrentOrientationIndexForGlobalIcons();
            mAppMarketIntent = intent;
            sAppMarketIcon[coi] = updateTextButtonWithIconFromExternalActivity(0x7f060007, activityName, 0x7f020036);
            marketButton.setVisibility(0);
        } else
        {
            marketButton.setVisibility(8);
            marketButton.setEnabled(false);
        }
    }

    private void updateAppMarketIcon(android.graphics.drawable.Drawable.ConstantState d)
    {
        updateTextButtonWithDrawable(0x7f060007, d);
    }

    public boolean setLoadOnResume()
    {
        if(mPaused)
        {
            Log.i("Launcher", "setLoadOnResume");
            mOnResumeNeedsLoad = true;
            return true;
        } else
        {
            return false;
        }
    }

    public int getCurrentWorkspaceScreen()
    {
        if(mWorkspace != null)
            return mWorkspace.getCurrentPage();
        else
            return 2;
    }

    public void startBinding()
    {
        Workspace workspace = mWorkspace;
        mWorkspace.clearDropTargets();
        int count = workspace.getChildCount();
        for(int i = 0; i < count; i++)
        {
            CellLayout layoutParent = (CellLayout)workspace.getChildAt(i);
            layoutParent.removeAllViewsInLayout();
        }

        if(mHotseat != null)
            mHotseat.resetLayout();
    }

    public void bindItems(ArrayList shortcuts, int start, int end)
    {
        setLoadOnResume();
        Workspace workspace = mWorkspace;
        for(int i = start; i < end; i++)
        {
            ItemInfo item = (ItemInfo)shortcuts.get(i);
            if(item.container != -101L || mHotseat != null)
                switch(item.itemType)
                {
                case 0: // '\0'
                case 1: // '\001'
                    View shortcut = createShortcut((ShortcutInfo)item);
                    workspace.addInScreen(shortcut, item.container, item.screen, item.cellX, item.cellY, 1, 1, false);
                    break;

                case 2: // '\002'
                    FolderIcon newFolder = FolderIcon.fromXml(0x7f03000a, this, (ViewGroup)workspace.getChildAt(workspace.getCurrentPage()), (FolderInfo)item, mIconCache);
                    workspace.addInScreen(newFolder, item.container, item.screen, item.cellX, item.cellY, 1, 1, false);
                    break;
                }
        }

        workspace.requestLayout();
    }

    public void bindFolders(HashMap folders)
    {
        setLoadOnResume();
        sFolders.clear();
        sFolders.putAll(folders);
    }

    public void bindAppWidget(LauncherAppWidgetInfo item)
    {
        setLoadOnResume();
        long start = 0L;
        Workspace workspace = mWorkspace;
        int appWidgetId = item.appWidgetId;
        AppWidgetProviderInfo appWidgetInfo = mAppWidgetManager.getAppWidgetInfo(appWidgetId);
        item.hostView = mAppWidgetHost.createView(this, appWidgetId, appWidgetInfo);
        item.hostView.setAppWidget(appWidgetId, appWidgetInfo);
        item.hostView.setTag(item);
        workspace.addInScreen(item.hostView, item.container, item.screen, item.cellX, item.cellY, item.spanX, item.spanY, false);
        addWidgetToAutoAdvanceIfNeeded(item.hostView, appWidgetInfo);
        workspace.requestLayout();
    }

    public void finishBindingItems()
    {
        setLoadOnResume();
        if(mSavedState != null)
        {
            if(!mWorkspace.hasFocus())
                mWorkspace.getChildAt(mWorkspace.getCurrentPage()).requestFocus();
            mSavedState = null;
        }
        if(mSavedInstanceState != null)
        {
            super.onRestoreInstanceState(mSavedInstanceState);
            mSavedInstanceState = null;
        }
        mWorkspaceLoading = false;
        for(int i = 0; i < sPendingAddList.size(); i++)
            completeAdd((PendingAddArguments)sPendingAddList.get(i));

        sPendingAddList.clear();
        updateAppMarketIcon();
        mWorkspace.post(mBuildLayersRunnable);
    }

    public void bindSearchablesChanged()
    {
        boolean searchVisible = updateGlobalSearchIcon();
        boolean voiceVisible = updateVoiceSearchIcon(searchVisible);
        mSearchDropTargetBar.onSearchPackagesChanged(searchVisible, voiceVisible);
    }

    public void bindAllApplications(final ArrayList apps)
    {
        View progressBar = mAppsCustomizeTabHost.findViewById(0x7f06000c);
        if(progressBar != null)
            ((ViewGroup)progressBar.getParent()).removeView(progressBar);
        mAppsCustomizeTabHost.post(new Runnable() {

            public void run()
            {
                if(mAppsCustomizeContent != null)
                    mAppsCustomizeContent.setApps(apps);
            }

            final Launcher this$0;
            private final ArrayList val$apps;

            
            {
                this$0 = Launcher.this;
                apps = arraylist;
                super();
            }
        }
);
    }

    public void bindAppsAdded(ArrayList apps)
    {
        setLoadOnResume();
        removeDialog(1);
        if(mAppsCustomizeContent != null)
            mAppsCustomizeContent.addApps(apps);
    }

    public void bindAppsUpdated(ArrayList apps)
    {
        setLoadOnResume();
        removeDialog(1);
        if(mWorkspace != null)
            mWorkspace.updateShortcuts(apps);
        if(mAppsCustomizeContent != null)
            mAppsCustomizeContent.updateApps(apps);
    }

    public void bindAppsRemoved(ArrayList apps, boolean permanent)
    {
        removeDialog(1);
        if(permanent)
            mWorkspace.removeItems(apps);
        if(mAppsCustomizeContent != null)
            mAppsCustomizeContent.removeApps(apps);
        mDragController.onAppsRemoved(apps, this);
    }

    public void bindPackagesUpdated()
    {
        if(mAppsCustomizeContent != null)
            mAppsCustomizeContent.onPackagesUpdated();
    }

    private int mapConfigurationOriActivityInfoOri(int configOri)
    {
        Display d = getWindowManager().getDefaultDisplay();
        int naturalOri = 2;
        switch(d.getRotation())
        {
        case 0: // '\0'
        case 2: // '\002'
            naturalOri = configOri;
            break;

        case 1: // '\001'
        case 3: // '\003'
            naturalOri = configOri != 2 ? 2 : 1;
            break;
        }
        int oriMap[] = {
            1, 0, 9, 8
        };
        int indexOffset = 0;
        if(naturalOri == 2)
            indexOffset = 1;
        return oriMap[(d.getRotation() + indexOffset) % 4];
    }

    public void lockScreenOrientationOnLargeUI()
    {
        if(LauncherApplication.isScreenLarge())
            setRequestedOrientation(mapConfigurationOriActivityInfoOri(getResources().getConfiguration().orientation));
    }

    public void unlockScreenOrientationOnLargeUI()
    {
        if(LauncherApplication.isScreenLarge())
            mHandler.postDelayed(new Runnable() {

                public void run()
                {
                    setRequestedOrientation(-1);
                }

                final Launcher this$0;

            
            {
                this$0 = Launcher.this;
                super();
            }
            }
, 500L);
    }

    private boolean isClingsEnabled()
    {
        if(LauncherApplication.isScreenLarge())
            return false;
        return !ActivityManager.isRunningInTestHarness();
    }

    private Cling initCling(int clingId, int positionData[], boolean animate, int delay)
    {
        Cling cling = (Cling)findViewById(clingId);
        if(cling != null)
        {
            cling.init(this, positionData);
            cling.setVisibility(0);
            cling.setLayerType(2, null);
            if(animate)
            {
                cling.buildLayer();
                cling.setAlpha(0.0F);
                cling.animate().alpha(1.0F).setInterpolator(new AccelerateInterpolator()).setDuration(550L).setStartDelay(delay).start();
            } else
            {
                cling.setAlpha(1.0F);
            }
        }
        return cling;
    }

    private void dismissCling(final Cling cling, final String flag, int duration)
    {
        if(cling != null)
        {
            ObjectAnimator anim = ObjectAnimator.ofFloat(cling, "alpha", new float[] {
                0.0F
            });
            anim.setDuration(duration);
            anim.addListener(new AnimatorListenerAdapter() {

                public void onAnimationEnd(Animator animation)
                {
                    cling.setVisibility(8);
                    cling.cleanup();
                    SharedPreferences prefs = getSharedPreferences("com.android.launcher2.prefs", 0);
                    android.content.SharedPreferences.Editor editor = prefs.edit();
                    editor.putBoolean(flag, true);
                    editor.commit();
                }

                final Launcher this$0;
                private final Cling val$cling;
                private final String val$flag;

            
            {
                this$0 = Launcher.this;
                cling = cling1;
                flag = s;
                super();
            }
            }
);
            anim.start();
        }
    }

    private void removeCling(int id)
    {
        final View cling = findViewById(id);
        if(cling != null)
        {
            final ViewGroup parent = (ViewGroup)cling.getParent();
            parent.post(new Runnable() {

                public void run()
                {
                    parent.removeView(cling);
                }

                final Launcher this$0;
                private final ViewGroup val$parent;
                private final View val$cling;

            
            {
                this$0 = Launcher.this;
                parent = viewgroup;
                cling = view;
                super();
            }
            }
);
        }
    }

    public void showFirstRunWorkspaceCling()
    {
        SharedPreferences prefs = getSharedPreferences("com.android.launcher2.prefs", 0);
        if(isClingsEnabled() && !prefs.getBoolean("cling.workspace.dismissed", false))
            initCling(0x7f060023, null, false, 0);
        else
            removeCling(0x7f060023);
    }

    public void showFirstRunAllAppsCling(int position[])
    {
        SharedPreferences prefs = getSharedPreferences("com.android.launcher2.prefs", 0);
        if(isClingsEnabled() && !prefs.getBoolean("cling.allapps.dismissed", false))
            initCling(0x7f06000b, position, true, 0);
        else
            removeCling(0x7f06000b);
    }

    public Cling showFirstRunFoldersCling()
    {
        SharedPreferences prefs = getSharedPreferences("com.android.launcher2.prefs", 0);
        Cling cling = null;
        if(isClingsEnabled() && !prefs.getBoolean("cling.folder.dismissed", false))
            cling = initCling(0x7f060024, null, true, 0);
        else
            removeCling(0x7f060024);
        return cling;
    }

    public boolean isFolderClingVisible()
    {
        Cling cling = (Cling)findViewById(0x7f060024);
        if(cling != null)
            return cling.getVisibility() == 0;
        else
            return false;
    }

    public void dismissWorkspaceCling(View v)
    {
        Cling cling = (Cling)findViewById(0x7f060023);
        dismissCling(cling, "cling.workspace.dismissed", 250);
    }

    public void dismissAllAppsCling(View v)
    {
        Cling cling = (Cling)findViewById(0x7f06000b);
        dismissCling(cling, "cling.allapps.dismissed", 250);
    }

    public void dismissFolderCling(View v)
    {
        Cling cling = (Cling)findViewById(0x7f060024);
        dismissCling(cling, "cling.folder.dismissed", 250);
    }

    public void dumpState()
    {
        Log.d("Launcher", (new StringBuilder("BEGIN launcher2 dump state for launcher ")).append(this).toString());
        Log.d("Launcher", (new StringBuilder("mSavedState=")).append(mSavedState).toString());
        Log.d("Launcher", (new StringBuilder("mWorkspaceLoading=")).append(mWorkspaceLoading).toString());
        Log.d("Launcher", (new StringBuilder("mRestoring=")).append(mRestoring).toString());
        Log.d("Launcher", (new StringBuilder("mWaitingForResult=")).append(mWaitingForResult).toString());
        Log.d("Launcher", (new StringBuilder("mSavedInstanceState=")).append(mSavedInstanceState).toString());
        Log.d("Launcher", (new StringBuilder("sFolders.size=")).append(sFolders.size()).toString());
        mModel.dumpState();
        if(mAppsCustomizeContent != null)
            mAppsCustomizeContent.dumpState();
        Log.d("Launcher", "END launcher2 dump state");
    }

    public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String args[])
    {
        super.dump(prefix, fd, writer, args);
        writer.println(" ");
        writer.println("Debug logs: ");
        for(int i = 0; i < sDumpLogs.size(); i++)
            writer.println((new StringBuilder("  ")).append((String)sDumpLogs.get(i)).toString());

    }

    static final String TAG = "Launcher";
    static final boolean LOGD = false;
    static final boolean PROFILE_STARTUP = false;
    static final boolean DEBUG_WIDGETS = false;
    private static final int MENU_GROUP_WALLPAPER = 1;
    private static final int MENU_WALLPAPER_SETTINGS = 2;
    private static final int MENU_MANAGE_APPS = 3;
    private static final int MENU_SYSTEM_SETTINGS = 4;
    private static final int MENU_HELP = 5;
    private static final int REQUEST_CREATE_SHORTCUT = 1;
    private static final int REQUEST_CREATE_APPWIDGET = 5;
    private static final int REQUEST_PICK_APPLICATION = 6;
    private static final int REQUEST_PICK_SHORTCUT = 7;
    private static final int REQUEST_PICK_APPWIDGET = 9;
    private static final int REQUEST_PICK_WALLPAPER = 10;
    static final String EXTRA_SHORTCUT_DUPLICATE = "duplicate";
    static final int SCREEN_COUNT = 5;
    static final int DEFAULT_SCREEN = 2;
    static final int DIALOG_CREATE_SHORTCUT = 1;
    static final int DIALOG_RENAME_FOLDER = 2;
    private static final String PREFERENCES = "launcher.preferences";
    private static final String RUNTIME_STATE_CURRENT_SCREEN = "launcher.current_screen";
    private static final String RUNTIME_STATE = "launcher.state";
    private static final String RUNTIME_STATE_PENDING_ADD_CONTAINER = "launcher.add_container";
    private static final String RUNTIME_STATE_PENDING_ADD_SCREEN = "launcher.add_screen";
    private static final String RUNTIME_STATE_PENDING_ADD_CELL_X = "launcher.add_cell_x";
    private static final String RUNTIME_STATE_PENDING_ADD_CELL_Y = "launcher.add_cell_y";
    private static final String RUNTIME_STATE_PENDING_FOLDER_RENAME = "launcher.rename_folder";
    private static final String RUNTIME_STATE_PENDING_FOLDER_RENAME_ID = "launcher.rename_folder_id";
    private static final String TOOLBAR_ICON_METADATA_NAME = "com.android.launcher.toolbar_icon";
    private State mState;
    private AnimatorSet mStateAnimation;
    static final int APPWIDGET_HOST_ID = 1024;
    private static final int EXIT_SPRINGLOADED_MODE_SHORT_TIMEOUT = 300;
    private static final int EXIT_SPRINGLOADED_MODE_LONG_TIMEOUT = 600;
    private static final int SHOW_CLING_DURATION = 550;
    private static final int DISMISS_CLING_DURATION = 250;
    private static final Object sLock = new Object();
    private static int sScreen = 2;
    private final BroadcastReceiver mCloseSystemDialogsReceiver = new CloseSystemDialogsIntentReceiver(null);
    private final ContentObserver mWidgetObserver = new AppWidgetResetObserver();
    private LayoutInflater mInflater;
    private DragController mDragController;
    private Workspace mWorkspace;
    private AppWidgetManager mAppWidgetManager;
    private LauncherAppWidgetHost mAppWidgetHost;
    private ItemInfo mPendingAddInfo;
    private int mTmpAddItemCellCoordinates[];
    private FolderInfo mFolderInfo;
    private Hotseat mHotseat;
    private View mAllAppsButton;
    private SearchDropTargetBar mSearchDropTargetBar;
    private AppsCustomizeTabHost mAppsCustomizeTabHost;
    private AppsCustomizePagedView mAppsCustomizeContent;
    private boolean mAutoAdvanceRunning;
    private Bundle mSavedState;
    private SpannableStringBuilder mDefaultKeySsb;
    private boolean mWorkspaceLoading;
    private boolean mPaused;
    private boolean mRestoring;
    private boolean mWaitingForResult;
    private boolean mOnResumeNeedsLoad;
    private Bundle mSavedInstanceState;
    private LauncherModel mModel;
    private IconCache mIconCache;
    private boolean mUserPresent;
    private boolean mVisible;
    private boolean mAttached;
    private static LocaleConfiguration sLocaleConfiguration = null;
    private static HashMap sFolders = new HashMap();
    private Intent mAppMarketIntent;
    private final int ADVANCE_MSG = 1;
    private final int mAdvanceInterval = 20000;
    private final int mAdvanceStagger = 250;
    private long mAutoAdvanceSentTime;
    private long mAutoAdvanceTimeLeft;
    private HashMap mWidgetsToAdvance;
    private final int mRestoreScreenOrientationDelay = 500;
    private static android.graphics.drawable.Drawable.ConstantState sGlobalSearchIcon[] = new android.graphics.drawable.Drawable.ConstantState[2];
    private static android.graphics.drawable.Drawable.ConstantState sVoiceSearchIcon[] = new android.graphics.drawable.Drawable.ConstantState[2];
    private static android.graphics.drawable.Drawable.ConstantState sAppMarketIcon[] = new android.graphics.drawable.Drawable.ConstantState[2];
    static final ArrayList sDumpLogs = new ArrayList();
    private DragLayer mDragLayer;
    private BubbleTextView mWaitingForResume;
    private Runnable mBuildLayersRunnable;
    private static ArrayList sPendingAddList = new ArrayList();
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() {

        public void onReceive(Context context, Intent intent)
        {
            String action = intent.getAction();
            if("android.intent.action.SCREEN_OFF".equals(action))
            {
                mUserPresent = false;
                mDragLayer.clearAllResizeFrames();
                updateRunning();
                if(mAppsCustomizeTabHost != null && mPendingAddInfo.container == -1L)
                {
                    mAppsCustomizeTabHost.reset();
                    showWorkspace(false);
                }
            } else
            if("android.intent.action.USER_PRESENT".equals(action))
            {
                mUserPresent = true;
                updateRunning();
            }
        }

        final Launcher this$0;

            
            {
                this$0 = Launcher.this;
                super();
            }
    }
;
    private final Handler mHandler = new Handler() {

        public void handleMessage(Message msg)
        {
            if(msg.what == 1)
            {
                int i = 0;
                for(Iterator iterator = mWidgetsToAdvance.keySet().iterator(); iterator.hasNext();)
                {
                    View key = (View)iterator.next();
                    final View v = key.findViewById(((AppWidgetProviderInfo)mWidgetsToAdvance.get(key)).autoAdvanceViewId);
                    int delay = 250 * i;
                    if(v instanceof Advanceable)
                        postDelayed(new Runnable() {

                            public void run()
                            {
                                ((Advanceable)v).advance();
                            }

                            final _cls3 this$1;
                            private final View val$v;

                    
                    {
                        this$1 = _cls3.this;
                        v = view;
                        super();
                    }
                        }
, delay);
                    i++;
                }

                sendAdvanceMessage(20000L);
            }
        }

        final Launcher this$0;

            
            {
                this$0 = Launcher.this;
                super();
            }
    }
;
    private static final String PREFS_KEY = "com.android.launcher2.prefs";

























}
