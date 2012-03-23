// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.tccsync;

import com.tencent.qqpim.dao.ConfigDao;
import com.tencent.qqpim.interfaces.IConfigDao;

// Referenced classes of package com.tencent.tccsync:
//            SyncException, ITccSyncDbAdapter, RemoteSyncObserver

public class RemoteSync
{

    public RemoteSync()
    {
        cppInstance = newRemoteSyncInstance();
        if(cppInstance == 0)
            throw new OutOfMemoryError();
        else
            return;
    }

    private native byte[] GetPostBuf(int i);

    private native byte[] GetRecvBuf(int i);

    private native int addDataSource(int i, int j, ITccSyncDbAdapter itccsyncdbadapter, String s);

    private native void deleteRemoteSyncObject(int i);

    private native void end(int i);

    private native int getLastError(int i);

    private native String getPostUrl(int i);

    private native int newRemoteSyncInstance();

    private native int next(int i);

    private native int nextStep(int i);

    private native int setConfigure(int i, String s, String s1, String s2, String s3, RemoteSyncObserver remotesyncobserver, int j, 
            int k);

    private native int start(int i);

    private void throwIfError(int i)
    {
        switch(i)
        {
        default:
            throw new SyncException(i);

        case -4: 
            throw new OutOfMemoryError();

        case 0: // '\0'
            return;
        }
    }

    private native void writeBackRecvBuf(int i, byte abyte0[]);

    public byte[] GetPostBuf()
    {
        return GetPostBuf(cppInstance);
    }

    public byte[] GetRecvBuf()
    {
        return GetRecvBuf(cppInstance);
    }

    public void addDataSource(SyncType synctype, ITccSyncDbAdapter itccsyncdbadapter, String s)
    {
        throwIfError(addDataSource(cppInstance, synctype.toInt(), itccsyncdbadapter, s));
    }

    public void end()
    {
        end(cppInstance);
        if(cppInstance != 0)
        {
            deleteRemoteSyncObject(cppInstance);
            cppInstance = 0;
        }
    }

    protected void finalize()
    {
        if(cppInstance != 0)
        {
            deleteRemoteSyncObject(cppInstance);
            cppInstance = 0;
        }
    }

    public int getLastError()
    {
        return getLastError(cppInstance);
    }

    public String getPostUrl()
    {
        return getPostUrl(cppInstance);
    }

    public int next()
    {
        return next(cppInstance);
    }

    public int nextStep()
    {
        return nextStep(cppInstance);
    }

    public void setConfigure(String s, String s1, String s2, String s3, RemoteSyncObserver remotesyncobserver, int i, int j)
    {
        throwIfError(setConfigure(cppInstance, s, s1, s2, s3, remotesyncobserver, i, j));
    }

    public int start()
    {
        return start(cppInstance);
    }

    public void writeBackRecvBuf(byte abyte0[])
    {
        writeBackRecvBuf(cppInstance, abyte0);
    }

    public static final int TCC_ERR_NONE = 0;
    public static final int TCC_ERR_SYNC_ALERT_FAIL = -32217;
    public static final int TCC_ERR_SYNC_DEVICE_FULL = -32220;
    public static final int TCC_ERR_SYNC_INVALID_CREDENTIALS = -32215;
    public static final int TCC_ERR_SYNC_LARGE_OBJECT_ERROR = -32219;
    public static final int TCC_ERR_SYNC_LARGE_OBJECT_SIZE_MISMATCH = -32218;
    public static final int TCC_ERR_SYNC_LOGIC = -32221;
    public static final int TCC_ERR_SYNC_TARGET_MISMATCH = -32214;
    public static final int TCC_SYNC_CRED_BASE64 = 0;
    public static final int TCC_SYNC_CRED_MD5 = 1;
    public static final int TCC_SYNC_CRED_QQMAIL = 2;
    public static final int TCC_SYNC_CRYPT_NONE = 0;
    public static final int TCC_SYNC_CRYPT_SSL = 32;
    public static final int TCC_SYNC_CRYPT_XXTEA = 16;
    public static final int TCC_SYNC_DEFLATE = 256;
    public static final int TCC_SYNC_GZIP = 512;
    public static final int TCC_URL_OPTION_WLAN = 8192;
    private int cppInstance;

    static 
    {
        ConfigDao.getInstance(null).loadLibrary(ConfigDao.LIB_NAME);
    }

    private class SyncType extends Enum
    {

        public static SyncType valueOf(String s)
        {
            return (SyncType)Enum.valueOf(com/tencent/tccsync/RemoteSync$SyncType, s);
        }

        public static SyncType[] values()
        {
            SyncType asynctype[] = ENUM$VALUES;
            int i = asynctype.length;
            SyncType asynctype1[] = new SyncType[i];
            System.arraycopy(asynctype, 0, asynctype1, 0, i);
            return asynctype1;
        }

        public final int toInt()
        {
            return value;
        }

        private static final SyncType ENUM$VALUES[];
        public static final SyncType SYNC_COVER_SERVER;
        public static final SyncType SYNC_NONE;
        public static final SyncType SYNC_ONE_WAY_FROM_CLIENT;
        public static final SyncType SYNC_ONE_WAY_FROM_SERVER;
        public static final SyncType SYNC_REFRESH_FROM_CLIENT;
        public static final SyncType SYNC_REFRESH_FROM_SERVER;
        public static final SyncType SYNC_RESTORE_FROM_SERVER;
        public static final SyncType SYNC_SLOW_SYNC;
        public static final SyncType SYNC_TWO_WAY;
        private int value;

        static 
        {
            SYNC_NONE = new SyncType("SYNC_NONE", 0, 0);
            SYNC_TWO_WAY = new SyncType("SYNC_TWO_WAY", 1, 200);
            SYNC_SLOW_SYNC = new SyncType("SYNC_SLOW_SYNC", 2, 201);
            SYNC_ONE_WAY_FROM_CLIENT = new SyncType("SYNC_ONE_WAY_FROM_CLIENT", 3, 202);
            SYNC_REFRESH_FROM_CLIENT = new SyncType("SYNC_REFRESH_FROM_CLIENT", 4, 203);
            SYNC_ONE_WAY_FROM_SERVER = new SyncType("SYNC_ONE_WAY_FROM_SERVER", 5, 204);
            SYNC_REFRESH_FROM_SERVER = new SyncType("SYNC_REFRESH_FROM_SERVER", 6, 205);
            SYNC_RESTORE_FROM_SERVER = new SyncType("SYNC_RESTORE_FROM_SERVER", 7, 213);
            SYNC_COVER_SERVER = new SyncType("SYNC_COVER_SERVER", 8, 215);
            SyncType asynctype[] = new SyncType[9];
            asynctype[0] = SYNC_NONE;
            asynctype[1] = SYNC_TWO_WAY;
            asynctype[2] = SYNC_SLOW_SYNC;
            asynctype[3] = SYNC_ONE_WAY_FROM_CLIENT;
            asynctype[4] = SYNC_REFRESH_FROM_CLIENT;
            asynctype[5] = SYNC_ONE_WAY_FROM_SERVER;
            asynctype[6] = SYNC_REFRESH_FROM_SERVER;
            asynctype[7] = SYNC_RESTORE_FROM_SERVER;
            asynctype[8] = SYNC_COVER_SERVER;
            ENUM$VALUES = asynctype;
        }

        private SyncType(String s, int i, int j)
        {
            super(s, i);
            value = j;
        }
    }

}
