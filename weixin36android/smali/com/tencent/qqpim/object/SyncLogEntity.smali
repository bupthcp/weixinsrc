.class public Lcom/tencent/qqpim/object/SyncLogEntity;
.super Ljava/lang/Object;


# static fields
.field public static BACKUP:I

.field public static RESTORE:I

.field public static SYNC:I


# instance fields
.field private _id:I

.field private add:I

.field private backup_or_restore:I

.field private client_add_num:I

.field private client_delete_num:I

.field private client_modify_num:I

.field private delete:I

.field private download:J

.field private end:J

.field private local_backup_id:I

.field private modify:I

.field private qq_account:Ljava/lang/String;

.field private server_add_num:I

.field private server_delete_num:I

.field private server_modify_num:I

.field private start:J

.field private succeed:I

.field private sync_method:I

.field private type:I

.field private upload:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/qqpim/object/SyncLogEntity;->BACKUP:I

    const/4 v0, 0x1

    sput v0, Lcom/tencent/qqpim/object/SyncLogEntity;->RESTORE:I

    const/4 v0, 0x2

    sput v0, Lcom/tencent/qqpim/object/SyncLogEntity;->SYNC:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdd()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->add:I

    return v0
.end method

.method public getBackup_or_restore()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->backup_or_restore:I

    return v0
.end method

.method public getClient_add_num()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->client_add_num:I

    return v0
.end method

.method public getClient_delete_num()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->client_delete_num:I

    return v0
.end method

.method public getClient_modify_num()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->client_modify_num:I

    return v0
.end method

.method public getDelete()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->delete:I

    return v0
.end method

.method public getDownload()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->download:J

    return-wide v0
.end method

.method public getEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->end:J

    return-wide v0
.end method

.method public getLocal_backup_id()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->local_backup_id:I

    return v0
.end method

.method public getModify()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->modify:I

    return v0
.end method

.method public getQq_account()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->qq_account:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_add_num()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->server_add_num:I

    return v0
.end method

.method public getServer_delete_num()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->server_delete_num:I

    return v0
.end method

.method public getServer_modify_num()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->server_modify_num:I

    return v0
.end method

.method public getStart()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->start:J

    return-wide v0
.end method

.method public getSucceed()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->succeed:I

    return v0
.end method

.method public getSync_method()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->sync_method:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->type:I

    return v0
.end method

.method public getUpload()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->upload:J

    return-wide v0
.end method

.method public get_id()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->_id:I

    return v0
.end method

.method public setAdd(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->add:I

    return-void
.end method

.method public setBackup_or_restore(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->backup_or_restore:I

    return-void
.end method

.method public setClient_add_num(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->client_add_num:I

    return-void
.end method

.method public setClient_delete_num(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->client_delete_num:I

    return-void
.end method

.method public setClient_modify_num(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->client_modify_num:I

    return-void
.end method

.method public setDelete(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->delete:I

    return-void
.end method

.method public setDownload(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->download:J

    return-void
.end method

.method public setEnd(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->end:J

    return-void
.end method

.method public setLocal_backup_id(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->local_backup_id:I

    return-void
.end method

.method public setModify(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->modify:I

    return-void
.end method

.method public setQq_account(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->qq_account:Ljava/lang/String;

    return-void
.end method

.method public setServer_add_num(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->server_add_num:I

    return-void
.end method

.method public setServer_delete_num(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->server_delete_num:I

    return-void
.end method

.method public setServer_modify_num(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->server_modify_num:I

    return-void
.end method

.method public setStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->start:J

    return-void
.end method

.method public setSucceed(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->succeed:I

    return-void
.end method

.method public setSync_method(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->sync_method:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->type:I

    return-void
.end method

.method public setUpload(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->upload:J

    return-void
.end method

.method public set_id(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/SyncLogEntity;->_id:I

    return-void
.end method
