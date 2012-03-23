.class public Lcom/tencent/qqpim/model/SyncLogModel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/interfaces/ISyncLogModel;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qqpim/model/SyncLogModel;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;IJJIIIIJJIIIIIIIII)J
    .locals 4

    iget-object v2, p0, Lcom/tencent/qqpim/model/SyncLogModel;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/qqpim/dao/SyncLogDao;->getSingleInstance(Landroid/content/Context;)Lcom/tencent/qqpim/dao/SyncLogDao;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    new-instance v3, Lcom/tencent/qqpim/object/SyncLogEntity;

    invoke-direct {v3}, Lcom/tencent/qqpim/object/SyncLogEntity;-><init>()V

    invoke-virtual {v3, p1}, Lcom/tencent/qqpim/object/SyncLogEntity;->setQq_account(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lcom/tencent/qqpim/object/SyncLogEntity;->setType(I)V

    invoke-virtual {v3, p3, p4}, Lcom/tencent/qqpim/object/SyncLogEntity;->setStart(J)V

    invoke-virtual {v3, p5, p6}, Lcom/tencent/qqpim/object/SyncLogEntity;->setEnd(J)V

    invoke-virtual {v3, p7}, Lcom/tencent/qqpim/object/SyncLogEntity;->setAdd(I)V

    invoke-virtual {v3, p8}, Lcom/tencent/qqpim/object/SyncLogEntity;->setModify(I)V

    invoke-virtual {v3, p9}, Lcom/tencent/qqpim/object/SyncLogEntity;->setDelete(I)V

    invoke-virtual {v3, p10}, Lcom/tencent/qqpim/object/SyncLogEntity;->setBackup_or_restore(I)V

    move-wide v0, p11

    invoke-virtual {v3, v0, v1}, Lcom/tencent/qqpim/object/SyncLogEntity;->setUpload(J)V

    move-wide/from16 v0, p13

    invoke-virtual {v3, v0, v1}, Lcom/tencent/qqpim/object/SyncLogEntity;->setDownload(J)V

    move/from16 v0, p15

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/object/SyncLogEntity;->setSucceed(I)V

    move/from16 v0, p16

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/object/SyncLogEntity;->setClient_add_num(I)V

    move/from16 v0, p17

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/object/SyncLogEntity;->setClient_modify_num(I)V

    move/from16 v0, p18

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/object/SyncLogEntity;->setClient_delete_num(I)V

    move/from16 v0, p19

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/object/SyncLogEntity;->setServer_add_num(I)V

    move/from16 v0, p20

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/object/SyncLogEntity;->setServer_modify_num(I)V

    move/from16 v0, p21

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/object/SyncLogEntity;->setServer_delete_num(I)V

    move/from16 v0, p22

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/object/SyncLogEntity;->setSync_method(I)V

    move/from16 v0, p23

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/object/SyncLogEntity;->setLocal_backup_id(I)V

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/dao/SyncLogDao;->addSyncLog(Lcom/tencent/qqpim/object/SyncLogEntity;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public delAllSyncLogData()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncLogModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/dao/SyncLogDao;->getSingleInstance(Landroid/content/Context;)Lcom/tencent/qqpim/dao/SyncLogDao;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qqpim/dao/SyncLogDao;->deleteAllSyncLog()I

    move-result v0

    goto :goto_0
.end method

.method public delAllSyncLogData(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncLogModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/dao/SyncLogDao;->getSingleInstance(Landroid/content/Context;)Lcom/tencent/qqpim/dao/SyncLogDao;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/dao/SyncLogDao;->deleteAllSyncLog(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public delSyncLogData(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncLogModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/dao/SyncLogDao;->getSingleInstance(Landroid/content/Context;)Lcom/tencent/qqpim/dao/SyncLogDao;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/dao/SyncLogDao;->deleteSyncLog(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
