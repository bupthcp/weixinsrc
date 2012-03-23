// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storage;

import android.os.Environment;
import java.io.File;

public final class ConstantsStorage
{

    private ConstantsStorage()
    {
    }

    public static final String a = Environment.getExternalStorageDirectory().getAbsolutePath();
    public static final String b = (new StringBuilder()).append(a).append("/tencent/MicroMsg/").toString();
    public static final String c = (new StringBuilder()).append(a).append("/tencent/MicroMsg/Camera/").toString();
    public static final String d = (new StringBuilder()).append(a).append("/tencent/MicroMsg/Video/").toString();
    public static final String e = b;

}
