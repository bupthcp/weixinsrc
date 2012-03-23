// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   InstallShortcutReceiver.java

package com.android.launcher2;

import android.content.*;
import android.widget.Toast;
import java.util.ArrayList;

// Referenced classes of package com.android.launcher2:
//            Launcher, LauncherModel, LauncherApplication, ItemInfo, 
//            CellLayout

public class InstallShortcutReceiver extends BroadcastReceiver
{

    public InstallShortcutReceiver()
    {
    }

    public void onReceive(Context context, Intent data)
    {
        if(!"com.android.launcher.action.INSTALL_SHORTCUT".equals(data.getAction()))
            return;
        int screen = Launcher.getScreen();
        if(!installShortcut(context, data, screen))
        {
            for(int i = 0; i < 5; i++)
                if(i != screen && installShortcut(context, data, i))
                    break;

        }
    }

    private boolean installShortcut(Context context, Intent data, int screen)
    {
        String name = data.getStringExtra("android.intent.extra.shortcut.NAME");
        if(findEmptyCell(context, mCoordinates, screen))
        {
            Intent intent = (Intent)data.getParcelableExtra("android.intent.extra.shortcut.INTENT");
            if(intent != null)
            {
                if(intent.getAction() == null)
                    intent.setAction("android.intent.action.VIEW");
                boolean duplicate = data.getBooleanExtra("duplicate", true);
                if(duplicate || !LauncherModel.shortcutExists(context, name, intent))
                {
                    LauncherApplication app = (LauncherApplication)context.getApplicationContext();
                    app.getModel().addShortcut(context, data, -100L, screen, mCoordinates[0], mCoordinates[1], true);
                    Toast.makeText(context, context.getString(0x7f0c0019, new Object[] {
                        name
                    }), 0).show();
                } else
                {
                    Toast.makeText(context, context.getString(0x7f0c001b, new Object[] {
                        name
                    }), 0).show();
                }
                return true;
            }
        } else
        {
            Toast.makeText(context, context.getString(0x7f0c0017), 0).show();
        }
        return false;
    }

    private static boolean findEmptyCell(Context context, int xy[], int screen)
    {
        int xCount = LauncherModel.getCellCountX();
        int yCount = LauncherModel.getCellCountY();
        boolean occupied[][] = new boolean[xCount][yCount];
        ArrayList items = LauncherModel.getItemsInLocalCoordinates(context);
        ItemInfo item = null;
        for(int i = 0; i < items.size(); i++)
        {
            item = (ItemInfo)items.get(i);
            if(item.container == -100L && item.screen == screen)
            {
                int cellX = item.cellX;
                int cellY = item.cellY;
                int spanX = item.spanX;
                int spanY = item.spanY;
                for(int x = cellX; x < cellX + spanX && x < xCount; x++)
                {
                    for(int y = cellY; y < cellY + spanY && y < yCount; y++)
                        occupied[x][y] = true;

                }

            }
        }

        return CellLayout.findVacantCell(xy, 1, 1, xCount, yCount, occupied);
    }

    public static final String ACTION_INSTALL_SHORTCUT = "com.android.launcher.action.INSTALL_SHORTCUT";
    public static final String SHORTCUT_MIMETYPE = "com.android.launcher/shortcut";
    private final int mCoordinates[] = new int[2];
}
