// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.object;


public class SyncLogEntity
{

    public SyncLogEntity()
    {
    }

    public int getAdd()
    {
        return add;
    }

    public int getBackup_or_restore()
    {
        return backup_or_restore;
    }

    public int getClient_add_num()
    {
        return client_add_num;
    }

    public int getClient_delete_num()
    {
        return client_delete_num;
    }

    public int getClient_modify_num()
    {
        return client_modify_num;
    }

    public int getDelete()
    {
        return delete;
    }

    public long getDownload()
    {
        return download;
    }

    public long getEnd()
    {
        return end;
    }

    public int getLocal_backup_id()
    {
        return local_backup_id;
    }

    public int getModify()
    {
        return modify;
    }

    public String getQq_account()
    {
        return qq_account;
    }

    public int getServer_add_num()
    {
        return server_add_num;
    }

    public int getServer_delete_num()
    {
        return server_delete_num;
    }

    public int getServer_modify_num()
    {
        return server_modify_num;
    }

    public long getStart()
    {
        return start;
    }

    public int getSucceed()
    {
        return succeed;
    }

    public int getSync_method()
    {
        return sync_method;
    }

    public int getType()
    {
        return type;
    }

    public long getUpload()
    {
        return upload;
    }

    public int get_id()
    {
        return _id;
    }

    public void setAdd(int i)
    {
        add = i;
    }

    public void setBackup_or_restore(int i)
    {
        backup_or_restore = i;
    }

    public void setClient_add_num(int i)
    {
        client_add_num = i;
    }

    public void setClient_delete_num(int i)
    {
        client_delete_num = i;
    }

    public void setClient_modify_num(int i)
    {
        client_modify_num = i;
    }

    public void setDelete(int i)
    {
        delete = i;
    }

    public void setDownload(long l)
    {
        download = l;
    }

    public void setEnd(long l)
    {
        end = l;
    }

    public void setLocal_backup_id(int i)
    {
        local_backup_id = i;
    }

    public void setModify(int i)
    {
        modify = i;
    }

    public void setQq_account(String s)
    {
        qq_account = s;
    }

    public void setServer_add_num(int i)
    {
        server_add_num = i;
    }

    public void setServer_delete_num(int i)
    {
        server_delete_num = i;
    }

    public void setServer_modify_num(int i)
    {
        server_modify_num = i;
    }

    public void setStart(long l)
    {
        start = l;
    }

    public void setSucceed(int i)
    {
        succeed = i;
    }

    public void setSync_method(int i)
    {
        sync_method = i;
    }

    public void setType(int i)
    {
        type = i;
    }

    public void setUpload(long l)
    {
        upload = l;
    }

    public void set_id(int i)
    {
        _id = i;
    }

    public static int BACKUP = 0;
    public static int RESTORE = 1;
    public static int SYNC = 2;
    private int _id;
    private int add;
    private int backup_or_restore;
    private int client_add_num;
    private int client_delete_num;
    private int client_modify_num;
    private int delete;
    private long download;
    private long end;
    private int local_backup_id;
    private int modify;
    private String qq_account;
    private int server_add_num;
    private int server_delete_num;
    private int server_modify_num;
    private long start;
    private int succeed;
    private int sync_method;
    private int type;
    private long upload;

}
