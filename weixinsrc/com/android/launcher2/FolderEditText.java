// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   FolderEditText.java

package com.android.launcher2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;

// Referenced classes of package com.android.launcher2:
//            Folder

public class FolderEditText extends EditText
{

    public FolderEditText(Context context)
    {
        super(context);
    }

    public FolderEditText(Context context, AttributeSet attrs)
    {
        super(context, attrs);
    }

    public FolderEditText(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
    }

    public void setFolder(Folder folder)
    {
        mFolder = folder;
    }

    public boolean onKeyPreIme(int keyCode, KeyEvent event)
    {
        if(event.getKeyCode() == 4)
            mFolder.doneEditingFolderName(true);
        return super.onKeyPreIme(keyCode, event);
    }

    private Folder mFolder;
}
