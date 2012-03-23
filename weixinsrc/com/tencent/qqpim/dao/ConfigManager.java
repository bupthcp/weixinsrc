// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import android.content.Context;
import android.content.res.AssetManager;
import com.tencent.qqpim.utils.XxteaCryptor;
import java.io.*;
import java.util.Properties;

public final class ConfigManager
{

    public ConfigManager(Context context)
    {
        AssetManager assetmanager;
        InputStream inputstream;
        CHANNEL = "channel";
        LC = "lc";
        VERSION = "version";
        BUILD = "build";
        PLATFORM = "platform";
        mVersion = "0.0";
        mBuild = "000";
        mLC = "";
        mChannel = "00000";
        mPlatform = "0";
        assetmanager = context.getAssets();
        inputstream = null;
        InputStream inputstream2 = assetmanager.open("config.properties");
        inputstream = inputstream2;
        byte abyte0[];
        int i;
        byte abyte1[];
        int j;
        abyte0 = new byte[1024];
        i = inputstream.read(abyte0);
        abyte1 = new byte[i];
        j = 0;
_L3:
        if(j < i) goto _L2; else goto _L1
_L1:
        byte abyte2[] = XxteaCryptor.decrypt(abyte1, "DFG#$%^#%$RGHR(&*M<><".getBytes("UTF-8"));
        Properties properties = new Properties();
        properties.load(new ByteArrayInputStream(abyte2));
        mVersion = properties.getProperty("version");
        mBuild = properties.getProperty("build");
        mLC = properties.getProperty("lc");
        mChannel = properties.getProperty("channel");
        mPlatform = properties.getProperty("platform");
        if(inputstream == null)
            break MISSING_BLOCK_LABEL_213;
        inputstream.close();
_L4:
        return;
_L2:
        abyte1[j] = abyte0[j];
        j++;
          goto _L3
        IOException ioexception1;
        ioexception1;
        mVersion = "0.0";
        mBuild = "000";
        mLC = "";
        mChannel = "00000";
        if(inputstream != null)
            try
            {
                inputstream.close();
            }
            catch(IOException ioexception2) { }
          goto _L4
        Exception exception;
        exception;
        InputStream inputstream1;
        Exception exception1;
        inputstream1 = inputstream;
        exception1 = exception;
_L5:
        if(inputstream1 != null)
            try
            {
                inputstream1.close();
            }
            catch(IOException ioexception) { }
        throw exception1;
        IOException ioexception3;
        ioexception3;
          goto _L4
        Exception exception2;
        exception2;
        inputstream1 = inputstream;
        exception1 = exception2;
          goto _L5
    }

    public final String getBuild()
    {
        return mBuild;
    }

    public final String getChannel()
    {
        return mChannel;
    }

    public final String getLC()
    {
        return mLC;
    }

    public final String getVersion()
    {
        return mVersion;
    }

    public final String toString()
    {
        return (new StringBuilder("platform:")).append(mPlatform).append("channel:").append(mChannel).append("\nlc:").append(mLC).append("\nbuild:").append(mBuild).append("\nversion:").append(mVersion).toString();
    }

    private static final String XXTEA_KEY = "DFG#$%^#%$RGHR(&*M<><";
    private final String BUILD;
    private final String CHANNEL;
    private final String LC;
    private final String PLATFORM;
    private final String VERSION;
    private String mBuild;
    private String mChannel;
    private String mLC;
    private String mPlatform;
    private String mVersion;
}
