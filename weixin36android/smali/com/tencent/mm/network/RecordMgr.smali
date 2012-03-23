.class Lcom/tencent/mm/network/RecordMgr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/network/connpool/IRecordMgr;


# instance fields
.field private a:I

.field private b:[Lcom/tencent/mm/network/connpool/IRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/network/RecordMgr;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/connpool/IRecord;I)I
    .locals 2

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/tencent/mm/network/RecordMgr;->a:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/RecordMgr;->b:[Lcom/tencent/mm/network/connpool/IRecord;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/RecordMgr;->b:[Lcom/tencent/mm/network/connpool/IRecord;

    aput-object p1, v0, p2

    :goto_0
    return p2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/tencent/mm/network/RecordMgr;->a:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/network/RecordMgr;->b:[Lcom/tencent/mm/network/connpool/IRecord;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/network/RecordMgr;->b:[Lcom/tencent/mm/network/connpool/IRecord;

    aput-object p1, v1, v0

    move p2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/tencent/mm/network/RecordMgr;->a:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    const/4 p2, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/network/RecordMgr;->b:[Lcom/tencent/mm/network/connpool/IRecord;

    iget v1, p0, Lcom/tencent/mm/network/RecordMgr;->a:I

    aput-object p1, v0, v1

    iget p2, p0, Lcom/tencent/mm/network/RecordMgr;->a:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/tencent/mm/network/RecordMgr;->a:I

    goto :goto_0
.end method

.method public final a(I)Lcom/tencent/mm/network/connpool/IRecord;
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/network/RecordMgr;->b:[Lcom/tencent/mm/network/connpool/IRecord;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/tencent/mm/network/RecordMgr;->b:[Lcom/tencent/mm/network/connpool/IRecord;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    return-object v0
.end method

.method public final a()V
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/tencent/mm/network/RecordMgr;->a:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/network/RecordMgr;->b:[Lcom/tencent/mm/network/connpool/IRecord;

    aget-object v0, v0, v1

    check-cast v0, Lcom/tencent/mm/network/GYNetContext;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/tencent/mm/network/GYNetContext;->d:Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/tencent/mm/network/RecordMgr;->a:I

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/tencent/mm/network/connpool/IRecord;

    iput-object v0, p0, Lcom/tencent/mm/network/RecordMgr;->b:[Lcom/tencent/mm/network/connpool/IRecord;

    return-void
.end method

.method protected final b(I)I
    .locals 2

    const/4 v1, -0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/RecordMgr;->b:[Lcom/tencent/mm/network/connpool/IRecord;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/network/RecordMgr;->b:[Lcom/tencent/mm/network/connpool/IRecord;

    aget-object v0, v0, p1

    check-cast v0, Lcom/tencent/mm/network/GYNetContext;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, v0, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
