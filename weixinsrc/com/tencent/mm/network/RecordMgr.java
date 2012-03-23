// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network;

import android.os.RemoteException;
import com.tencent.mm.network.connpool.IRecord;
import com.tencent.mm.network.connpool.IRecordMgr;

// Referenced classes of package com.tencent.mm.network:
//            GYNetContext, IReqResp_AIDL

class RecordMgr
    implements IRecordMgr
{

    public RecordMgr()
    {
        a();
    }

    public final int a(IRecord irecord, int i)
    {
        if(i < 0 || i >= a || b[i] != null) goto _L2; else goto _L1
_L1:
        b[i] = irecord;
_L4:
        return i;
_L2:
        int j = 0;
        do
        {
            if(j >= a)
                break;
            if(b[j] == null)
            {
                b[j] = irecord;
                i = j;
                continue; /* Loop/switch isn't completed */
            }
            j++;
        } while(true);
        if(a >= 10)
        {
            i = -1;
        } else
        {
            b[a] = irecord;
            i = a;
            a = i + 1;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final IRecord a(int i)
    {
        IRecord irecord = b[i];
        b[i] = null;
        return irecord;
    }

    public final void a()
    {
        for(int i = 0; i < a; i++)
        {
            GYNetContext gynetcontext = (GYNetContext)b[i];
            if(gynetcontext != null)
                gynetcontext.d = true;
        }

        a = 0;
        b = new IRecord[10];
    }

    protected final int b(int i)
    {
        if(i >= 0 && i < b.length) goto _L2; else goto _L1
_L1:
        int j = -1;
_L4:
        return j;
_L2:
        GYNetContext gynetcontext;
        gynetcontext = (GYNetContext)b[i];
        if(gynetcontext == null)
        {
            j = -1;
            continue; /* Loop/switch isn't completed */
        }
        int k = gynetcontext.c.a();
        j = k;
        continue; /* Loop/switch isn't completed */
        RemoteException remoteexception;
        remoteexception;
        j = -1;
        if(true) goto _L4; else goto _L3
_L3:
    }

    private int a;
    private IRecord b[];
}
