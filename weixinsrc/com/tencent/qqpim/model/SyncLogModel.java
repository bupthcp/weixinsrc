// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.model;

import android.content.Context;
import com.tencent.qqpim.dao.SyncLogDao;
import com.tencent.qqpim.interfaces.ISyncLogModel;
import com.tencent.qqpim.object.SyncLogEntity;

public class SyncLogModel
    implements ISyncLogModel
{

    public SyncLogModel(Context context1)
    {
        context = context1;
    }

    public long add(String s, int i, long l, long l1, int j, 
            int k, int i1, int j1, long l2, long l3, 
            int k1, int i2, int j2, int k2, int i3, int j3, int k3, 
            int i4, int j4)
    {
        SyncLogDao synclogdao = SyncLogDao.getSingleInstance(context);
        long l4;
        if(synclogdao == null)
        {
            l4 = 0L;
        } else
        {
            SyncLogEntity synclogentity = new SyncLogEntity();
            synclogentity.setQq_account(s);
            synclogentity.setType(i);
            synclogentity.setStart(l);
            synclogentity.setEnd(l1);
            synclogentity.setAdd(j);
            synclogentity.setModify(k);
            synclogentity.setDelete(i1);
            synclogentity.setBackup_or_restore(j1);
            synclogentity.setUpload(l2);
            synclogentity.setDownload(l3);
            synclogentity.setSucceed(k1);
            synclogentity.setClient_add_num(i2);
            synclogentity.setClient_modify_num(j2);
            synclogentity.setClient_delete_num(k2);
            synclogentity.setServer_add_num(i3);
            synclogentity.setServer_modify_num(j3);
            synclogentity.setServer_delete_num(k3);
            synclogentity.setSync_method(i4);
            synclogentity.setLocal_backup_id(j4);
            l4 = synclogdao.addSyncLog(synclogentity);
        }
        return l4;
    }

    public int delAllSyncLogData()
    {
        SyncLogDao synclogdao = SyncLogDao.getSingleInstance(context);
        int i;
        if(synclogdao == null)
            i = 0;
        else
            i = synclogdao.deleteAllSyncLog();
        return i;
    }

    public int delAllSyncLogData(String s)
    {
        SyncLogDao synclogdao = SyncLogDao.getSingleInstance(context);
        int i;
        if(synclogdao == null)
            i = 0;
        else
            i = synclogdao.deleteAllSyncLog(s);
        return i;
    }

    public int delSyncLogData(String s)
    {
        SyncLogDao synclogdao = SyncLogDao.getSingleInstance(context);
        int i;
        if(synclogdao == null)
            i = 0;
        else
            i = synclogdao.deleteSyncLog(s);
        return i;
    }

    private Context context;
}
