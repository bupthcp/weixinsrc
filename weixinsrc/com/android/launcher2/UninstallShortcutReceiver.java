// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   UninstallShortcutReceiver.java

package com.android.launcher2;

import android.content.*;
import android.database.Cursor;
import android.widget.Toast;
import java.net.URISyntaxException;

// Referenced classes of package com.android.launcher2:
//            LauncherSettings

public class UninstallShortcutReceiver extends BroadcastReceiver
{

    public UninstallShortcutReceiver()
    {
    }

    public void onReceive(Context context, Intent data)
    {
        Intent intent;
        String name;
        boolean duplicate;
        ContentResolver cr;
        Cursor c;
        int intentIndex;
        int idIndex;
        boolean changed;
        if(!"com.android.launcher.action.UNINSTALL_SHORTCUT".equals(data.getAction()))
            return;
        intent = (Intent)data.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        name = data.getStringExtra("android.intent.extra.shortcut.NAME");
        duplicate = data.getBooleanExtra("duplicate", true);
        if(intent == null || name == null)
            break MISSING_BLOCK_LABEL_250;
        cr = context.getContentResolver();
        c = cr.query(LauncherSettings.Favorites.CONTENT_URI, new String[] {
            "_id", "intent"
        }, "title=?", new String[] {
            name
        }, null);
        intentIndex = c.getColumnIndexOrThrow("intent");
        idIndex = c.getColumnIndexOrThrow("_id");
        changed = false;
          goto _L1
_L3:
        if(!intent.filterEquals(Intent.parseUri(c.getString(intentIndex), 0)))
            continue; /* Loop/switch isn't completed */
        long id = c.getLong(idIndex);
        android.net.Uri uri = LauncherSettings.Favorites.getContentUri(id, false);
        cr.delete(uri, null, null);
        changed = true;
        if(!duplicate)
            break; /* Loop/switch isn't completed */
        continue; /* Loop/switch isn't completed */
        URISyntaxException urisyntaxexception;
        urisyntaxexception;
_L1:
        if(c.moveToNext()) goto _L3; else goto _L2
        Exception exception;
        exception;
        c.close();
        throw exception;
_L2:
        c.close();
        if(changed)
        {
            cr.notifyChange(LauncherSettings.Favorites.CONTENT_URI, null);
            Toast.makeText(context, context.getString(0x7f0c001a, new Object[] {
                name
            }), 0).show();
        }
    }

    private static final String ACTION_UNINSTALL_SHORTCUT = "com.android.launcher.action.UNINSTALL_SHORTCUT";
}
