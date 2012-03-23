.class public Lcom/tencent/mm/network/GYNet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/network/connpool/IConnPoolMoniter;
.implements Lcom/tencent/mm/network/connpool/IOnHttpRecv;
.implements Lcom/tencent/mm/network/connpool/IOnSocketRecv;


# static fields
.field private static s:I

.field private static t:I

.field private static u:I

.field private static v:I


# instance fields
.field public a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private final d:Lcom/tencent/mm/network/RecordMgr;

.field private final e:Lcom/tencent/mm/network/connpool/InAddrHost;

.field private final f:Lcom/tencent/mm/network/connpool/HttpMgr;

.field private final g:Lcom/tencent/mm/network/connpool/InAddrHost;

.field private final h:Lcom/tencent/mm/network/connpool/SocketMgr;

.field private final i:Lcom/tencent/mm/network/IOnGYNetNotify;

.field private j:[Lcom/tencent/mm/network/connpool/InAddress;

.field private k:[Lcom/tencent/mm/network/connpool/InAddress;

.field private l:Z

.field private m:I

.field private n:Lcom/tencent/mm/network/connpool/SpeedTest;

.field private final o:Lcom/tencent/mm/platformtools/FlowLimiter;

.field private p:I

.field private final q:Lcom/tencent/mm/platformtools/MAlarmHandler;

.field private r:Lcom/tencent/mm/platformtools/MAlarmHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/network/GYNet;->s:I

    sput v0, Lcom/tencent/mm/network/GYNet;->t:I

    sput v0, Lcom/tencent/mm/network/GYNet;->u:I

    sput v0, Lcom/tencent/mm/network/GYNet;->v:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/network/IOnGYNetNotify;Landroid/os/Looper;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/tencent/mm/network/GYNet;->c:I

    new-array v0, v4, [Lcom/tencent/mm/network/connpool/InAddress;

    iput-object v0, p0, Lcom/tencent/mm/network/GYNet;->j:[Lcom/tencent/mm/network/connpool/InAddress;

    new-array v0, v4, [Lcom/tencent/mm/network/connpool/InAddress;

    iput-object v0, p0, Lcom/tencent/mm/network/GYNet;->k:[Lcom/tencent/mm/network/connpool/InAddress;

    iput-boolean v4, p0, Lcom/tencent/mm/network/GYNet;->a:Z

    iput-boolean v4, p0, Lcom/tencent/mm/network/GYNet;->l:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/network/GYNet;->m:I

    new-instance v0, Lcom/tencent/mm/platformtools/FlowLimiter;

    const-wide/32 v1, 0x36ee80

    const/high16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/platformtools/FlowLimiter;-><init>(JI)V

    iput-object v0, p0, Lcom/tencent/mm/network/GYNet;->o:Lcom/tencent/mm/platformtools/FlowLimiter;

    const v0, 0xea60

    iput v0, p0, Lcom/tencent/mm/network/GYNet;->p:I

    new-instance v0, Lcom/tencent/mm/platformtools/MAlarmHandler;

    new-instance v1, Lcom/tencent/mm/network/GYNet$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/network/GYNet$1;-><init>(Lcom/tencent/mm/network/GYNet;)V

    invoke-direct {v0, v1, v5}, Lcom/tencent/mm/platformtools/MAlarmHandler;-><init>(Lcom/tencent/mm/platformtools/MAlarmHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/network/GYNet;->q:Lcom/tencent/mm/platformtools/MAlarmHandler;

    new-instance v0, Lcom/tencent/mm/network/RecordMgr;

    invoke-direct {v0}, Lcom/tencent/mm/network/RecordMgr;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/network/GYNet;->d:Lcom/tencent/mm/network/RecordMgr;

    new-instance v0, Lcom/tencent/mm/network/connpool/InAddrHost;

    const-string v1, "short.weixin.qq.com"

    new-array v2, v5, [I

    const/16 v3, 0x50

    aput v3, v2, v4

    new-instance v3, Lcom/tencent/mm/network/GYNet$2;

    invoke-direct {v3, p0}, Lcom/tencent/mm/network/GYNet$2;-><init>(Lcom/tencent/mm/network/GYNet;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/network/connpool/InAddrHost;-><init>(Ljava/lang/String;[ILcom/tencent/mm/network/connpool/InAddrHost$IAddrPlus;)V

    iput-object v0, p0, Lcom/tencent/mm/network/GYNet;->e:Lcom/tencent/mm/network/connpool/InAddrHost;

    new-instance v0, Lcom/tencent/mm/network/connpool/HttpMgr;

    iget-object v1, p0, Lcom/tencent/mm/network/GYNet;->d:Lcom/tencent/mm/network/RecordMgr;

    invoke-direct {v0, p0, v1, p2}, Lcom/tencent/mm/network/connpool/HttpMgr;-><init>(Lcom/tencent/mm/network/connpool/IOnHttpRecv;Lcom/tencent/mm/network/connpool/IRecordMgr;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/network/GYNet;->f:Lcom/tencent/mm/network/connpool/HttpMgr;

    new-instance v0, Lcom/tencent/mm/network/connpool/InAddrHost;

    const-string v1, "long.weixin.qq.com"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    new-instance v3, Lcom/tencent/mm/network/GYNet$3;

    invoke-direct {v3, p0}, Lcom/tencent/mm/network/GYNet$3;-><init>(Lcom/tencent/mm/network/GYNet;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/network/connpool/InAddrHost;-><init>(Ljava/lang/String;[ILcom/tencent/mm/network/connpool/InAddrHost$IAddrPlus;)V

    iput-object v0, p0, Lcom/tencent/mm/network/GYNet;->g:Lcom/tencent/mm/network/connpool/InAddrHost;

    new-instance v0, Lcom/tencent/mm/network/connpool/SocketMgr;

    iget-object v1, p0, Lcom/tencent/mm/network/GYNet;->g:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-direct {v0, v1, p0, p2}, Lcom/tencent/mm/network/connpool/SocketMgr;-><init>(Lcom/tencent/mm/network/connpool/InAddrHost;Lcom/tencent/mm/network/connpool/IOnSocketRecv;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/network/GYNet;->h:Lcom/tencent/mm/network/connpool/SocketMgr;

    iput-object p1, p0, Lcom/tencent/mm/network/GYNet;->i:Lcom/tencent/mm/network/IOnGYNetNotify;

    new-instance v0, Lcom/tencent/mm/network/connpool/SpeedTest;

    invoke-direct {v0, p2, v4}, Lcom/tencent/mm/network/connpool/SpeedTest;-><init>(Landroid/os/Looper;B)V

    iput-object v0, p0, Lcom/tencent/mm/network/GYNet;->n:Lcom/tencent/mm/network/connpool/SpeedTest;

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->f:Lcom/tencent/mm/network/connpool/HttpMgr;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/network/connpool/HttpMgr;->a(Lcom/tencent/mm/network/connpool/IConnPoolMoniter;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->h:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/network/connpool/SocketMgr;->a(Lcom/tencent/mm/network/connpool/IConnPoolMoniter;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->n:Lcom/tencent/mm/network/connpool/SpeedTest;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/network/connpool/SpeedTest;->a(Lcom/tencent/mm/network/connpool/IConnPoolMoniter;)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0xbbt 0x1t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private a(IZ)V
    .locals 4

    const v2, 0x927c0

    const v1, 0xea60

    iget-boolean v0, p0, Lcom/tencent/mm/network/GYNet;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/network/NetService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iput v1, p0, Lcom/tencent/mm/network/GYNet;->p:I

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->q:Lcom/tencent/mm/platformtools/MAlarmHandler;

    iget v1, p0, Lcom/tencent/mm/network/GYNet;->p:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MAlarmHandler;->a(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/network/GYNet;->a:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    iput v1, p0, Lcom/tencent/mm/network/GYNet;->p:I

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->q:Lcom/tencent/mm/platformtools/MAlarmHandler;

    iget v1, p0, Lcom/tencent/mm/network/GYNet;->p:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MAlarmHandler;->a(J)V

    goto :goto_0

    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget v0, p0, Lcom/tencent/mm/network/GYNet;->p:I

    if-eqz p2, :cond_4

    iput v1, p0, Lcom/tencent/mm/network/GYNet;->p:I

    :cond_3
    :goto_1
    const-string v1, "MicroMsg.GYNet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modify loop interval from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tencent/mm/network/GYNet;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms, type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", succ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->q:Lcom/tencent/mm/platformtools/MAlarmHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MAlarmHandler;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->q:Lcom/tencent/mm/platformtools/MAlarmHandler;

    iget v1, p0, Lcom/tencent/mm/network/GYNet;->p:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MAlarmHandler;->a(J)V

    const-string v0, "MicroMsg.GYNet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restart looper at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/network/GYNet;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/tencent/mm/network/GYNet;->p:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/tencent/mm/network/GYNet;->p:I

    iget v1, p0, Lcom/tencent/mm/network/GYNet;->p:I

    if-le v1, v2, :cond_3

    iput v2, p0, Lcom/tencent/mm/network/GYNet;->p:I

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/tencent/mm/network/GYNet;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/network/GYNet;->d()V

    return-void
.end method

.method private a(Lcom/tencent/mm/network/GYNetContext;)V
    .locals 14

    const/16 v11, 0x64

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v4, Lcom/tencent/mm/pointers/PByteArray;

    invoke-direct {v4}, Lcom/tencent/mm/pointers/PByteArray;-><init>()V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v7

    iget-object v0, p1, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v0

    iget-object v5, p1, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v5

    iget-object v9, p1, Lcom/tencent/mm/network/GYNetContext;->a:Lcom/tencent/mm/network/IAccInfo;

    invoke-interface {v9}, Lcom/tencent/mm/network/IAccInfo;->e()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/tencent/mm/network/GYNetContext;->a:Lcom/tencent/mm/network/IAccInfo;

    invoke-interface {v10}, Lcom/tencent/mm/network/IAccInfo;->f()[B

    move-result-object v10

    invoke-interface {v0, v5, v9, v10, v1}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->a(ILjava/lang/String;[BI)Z

    move-result v0

    const-string v5, "MicroMsg.GYNet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "encoding, type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v10}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/tencent/mm/network/GYNetContext;->a:Lcom/tencent/mm/network/IAccInfo;

    invoke-interface {v10}, Lcom/tencent/mm/network/IAccInfo;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7, v8}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v7

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.GYNet"

    const-string v1, "request to buffer using jni failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/mm/network/GYNetContext;->b:Lcom/tencent/mm/network/IOnGYNetEndNetwork;

    iget v1, p1, Lcom/tencent/mm/network/GYNetContext;->h:I

    const/4 v2, 0x6

    const-string v4, ""

    iget-object v5, p1, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IOnGYNetEndNetwork;->a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp_AIDL;[B)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->a()[B

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    iget-object v0, v4, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/network/NetService;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->o:Lcom/tencent/mm/platformtools/FlowLimiter;

    iget-object v5, v4, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    array-length v5, v5

    invoke-virtual {v0, v5}, Lcom/tencent/mm/platformtools/FlowLimiter;->a(I)I

    move-result v0

    if-ge v0, v11, :cond_1

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-lt v5, v0, :cond_1

    const-string v1, "MicroMsg.GYNet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flow control limited, fake send failed, rate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/mm/network/GYNetContext;->b:Lcom/tencent/mm/network/IOnGYNetEndNetwork;

    iget v1, p1, Lcom/tencent/mm/network/GYNetContext;->h:I

    const-string v4, ""

    iget-object v5, p1, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IOnGYNetEndNetwork;->a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp_AIDL;[B)V

    goto :goto_0

    :cond_1
    :sswitch_0
    iget-boolean v0, p0, Lcom/tencent/mm/network/GYNet;->l:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/network/NetService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    iget-object v5, p1, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v5

    iget-object v7, p1, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v7}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v7

    invoke-static {v5, v0, v7}, Lcom/tencent/mm/network/PktCmdKV;->a(IZLcom/tencent/mm/protocal/IMMBaseReq_AIDL;)Lcom/tencent/mm/network/PktCmdKV;

    move-result-object v5

    iget v0, v5, Lcom/tencent/mm/network/PktCmdKV;->a:I

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    iget-boolean v0, v5, Lcom/tencent/mm/network/PktCmdKV;->c:Z

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/tencent/mm/network/GYNetContext;->f:I

    if-lez v0, :cond_5

    iget v0, p1, Lcom/tencent/mm/network/GYNetContext;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/tencent/mm/network/GYNetContext;->f:I

    iget-object v7, p0, Lcom/tencent/mm/network/GYNet;->h:Lcom/tencent/mm/network/connpool/SocketMgr;

    iget v8, v5, Lcom/tencent/mm/network/PktCmdKV;->a:I

    iget-object v9, v4, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    iget v11, p1, Lcom/tencent/mm/network/GYNetContext;->h:I

    iget v0, v5, Lcom/tencent/mm/network/PktCmdKV;->a:I

    const/16 v4, 0x8

    if-ne v0, v4, :cond_4

    move v12, v2

    :goto_3
    move-object v10, p1

    invoke-virtual/range {v7 .. v12}, Lcom/tencent/mm/network/connpool/SocketMgr;->a(I[BLcom/tencent/mm/network/connpool/IRecord;IZ)I

    move-result v0

    if-ltz v0, :cond_a

    iput v0, p1, Lcom/tencent/mm/network/GYNetContext;->h:I

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v12, v1

    goto :goto_3

    :cond_5
    iget-boolean v0, v5, Lcom/tencent/mm/network/PktCmdKV;->b:Z

    if-eqz v0, :cond_6

    const-string v0, "MicroMsg.GYNet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "network not support, cmd id="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v5, Lcom/tencent/mm/network/PktCmdKV;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", socketRetry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/tencent/mm/network/GYNetContext;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p1, Lcom/tencent/mm/network/GYNetContext;->f:I

    iput v1, p1, Lcom/tencent/mm/network/GYNetContext;->g:I

    iget-object v0, p1, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/network/GYNet;->a(IZ)V

    iget-object v0, p1, Lcom/tencent/mm/network/GYNetContext;->b:Lcom/tencent/mm/network/IOnGYNetEndNetwork;

    iget v1, p1, Lcom/tencent/mm/network/GYNetContext;->h:I

    const-string v4, ""

    iget-object v5, p1, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IOnGYNetEndNetwork;->a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp_AIDL;[B)V

    iput v3, p1, Lcom/tencent/mm/network/GYNetContext;->h:I

    goto/16 :goto_0

    :cond_6
    iget v0, p1, Lcom/tencent/mm/network/GYNetContext;->g:I

    if-lez v0, :cond_a

    iget v0, p1, Lcom/tencent/mm/network/GYNetContext;->f:I

    if-lez v0, :cond_7

    iput v1, p1, Lcom/tencent/mm/network/GYNetContext;->f:I

    :cond_7
    iget v0, p1, Lcom/tencent/mm/network/GYNetContext;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/tencent/mm/network/GYNetContext;->g:I

    iget-object v7, p0, Lcom/tencent/mm/network/GYNet;->f:Lcom/tencent/mm/network/connpool/HttpMgr;

    iget-object v8, p0, Lcom/tencent/mm/network/GYNet;->e:Lcom/tencent/mm/network/connpool/InAddrHost;

    iget-object v0, p1, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->b()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v4, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    iget v0, p1, Lcom/tencent/mm/network/GYNetContext;->f:I

    if-gez v0, :cond_8

    move v12, v3

    :goto_4
    iget-boolean v0, v5, Lcom/tencent/mm/network/PktCmdKV;->c:Z

    if-nez v0, :cond_9

    move v13, v2

    :goto_5
    move-object v11, p1

    invoke-virtual/range {v7 .. v13}, Lcom/tencent/mm/network/connpool/HttpMgr;->a(Lcom/tencent/mm/network/connpool/InAddrHost;Ljava/lang/String;[BLcom/tencent/mm/network/connpool/IRecord;IZ)I

    move-result v0

    if-ltz v0, :cond_a

    iput v0, p1, Lcom/tencent/mm/network/GYNetContext;->h:I

    goto/16 :goto_0

    :cond_8
    iget v12, p1, Lcom/tencent/mm/network/GYNetContext;->h:I

    goto :goto_4

    :cond_9
    move v13, v1

    goto :goto_5

    :cond_a
    iget-object v0, p1, Lcom/tencent/mm/network/GYNetContext;->b:Lcom/tencent/mm/network/IOnGYNetEndNetwork;

    iget v1, p1, Lcom/tencent/mm/network/GYNetContext;->h:I

    const-string v4, ""

    iget-object v5, p1, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IOnGYNetEndNetwork;->a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp_AIDL;[B)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_0
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic b(Lcom/tencent/mm/network/GYNet;)Lcom/tencent/mm/network/IOnGYNetNotify;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->i:Lcom/tencent/mm/network/IOnGYNetNotify;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/network/GYNet;)[Lcom/tencent/mm/network/connpool/InAddress;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->j:[Lcom/tencent/mm/network/connpool/InAddress;

    return-object v0
.end method

.method private d()V
    .locals 2

    const-string v0, "MicroMsg.GYNet"

    const-string v1, "cancelPoller"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->r:Lcom/tencent/mm/platformtools/MAlarmHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->r:Lcom/tencent/mm/platformtools/MAlarmHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MAlarmHandler;->c()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/network/GYNet;->r:Lcom/tencent/mm/platformtools/MAlarmHandler;

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/network/GYNet;)[Lcom/tencent/mm/network/connpool/InAddress;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->k:[Lcom/tencent/mm/network/connpool/InAddress;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/INetContext;)Lcom/tencent/mm/network/INetContext;
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/network/GYNetContext;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mm/network/GYNetContext;->e:I

    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/network/GYNetContext;

    invoke-direct {p0, v0}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/GYNetContext;)V

    const-string v0, "MicroMsg.GYNet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/mm/network/INetContext;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/mm/network/INetContext;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/mm/network/INetContext;->c()Lcom/tencent/mm/network/IReqResp_AIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lcom/tencent/mm/network/IReqResp_AIDL;Lcom/tencent/mm/network/IOnGYNetEndNetwork;Lcom/tencent/mm/network/IAccInfo;)Lcom/tencent/mm/network/INetContext;
    .locals 3

    new-instance v0, Lcom/tencent/mm/network/GYNetContext;

    iget v1, p0, Lcom/tencent/mm/network/GYNet;->m:I

    iget v2, p0, Lcom/tencent/mm/network/GYNet;->m:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/network/GYNetContext;-><init>(II)V

    iput-object p2, v0, Lcom/tencent/mm/network/GYNetContext;->b:Lcom/tencent/mm/network/IOnGYNetEndNetwork;

    iput-object p1, v0, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    iput-object p3, v0, Lcom/tencent/mm/network/GYNetContext;->a:Lcom/tencent/mm/network/IAccInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/network/GYNetContext;->e:I

    return-object v0
.end method

.method public final a()V
    .locals 2

    const-string v0, "MicroMsg.GYNet"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->f:Lcom/tencent/mm/network/connpool/HttpMgr;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/HttpMgr;->b()V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->h:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketMgr;->b()V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->d:Lcom/tencent/mm/network/RecordMgr;

    invoke-virtual {v0}, Lcom/tencent/mm/network/RecordMgr;->a()V

    return-void
.end method

.method public final a(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 9

    const v7, 0x3fffffff

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/network/NetService;->b(Landroid/content/Context;)Z

    move-result v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v7, v2

    :goto_0
    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->b()Lcom/tencent/mm/network/NetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/network/NetService;->a()Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;

    move-result-object v8

    if-nez v8, :cond_5

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->c()Lcom/tencent/mm/network/NetworkEvent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/network/NetworkEvent;->a(I)V

    move v7, v2

    goto :goto_0

    :pswitch_2
    const/high16 v3, 0x4000

    and-int/2addr v3, p2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->d:Lcom/tencent/mm/network/RecordMgr;

    and-int v3, p2, v7

    invoke-virtual {v0, v3}, Lcom/tencent/mm/network/RecordMgr;->b(I)I

    move-result v0

    :goto_2
    :sswitch_0
    move p2, v0

    :cond_1
    packed-switch p1, :pswitch_data_1

    move v1, v2

    :goto_3
    move v7, v1

    goto :goto_0

    :cond_2
    const/high16 v3, -0x8000

    and-int/2addr v3, p2

    if-eqz v3, :cond_1

    and-int v3, p2, v7

    sparse-switch v3, :sswitch_data_0

    const/4 v0, -0x1

    goto :goto_2

    :sswitch_1
    move v0, v1

    goto :goto_2

    :sswitch_2
    const/16 v0, 0x26

    goto :goto_2

    :sswitch_3
    const/16 v0, 0xa

    goto :goto_2

    :sswitch_4
    const/16 v0, 0x9

    goto :goto_2

    :sswitch_5
    const/16 v0, 0x8

    goto :goto_2

    :sswitch_6
    const/16 v0, 0x27

    goto :goto_2

    :sswitch_7
    const/16 v0, 0x25

    goto :goto_2

    :sswitch_8
    const/16 v0, 0xc

    goto :goto_2

    :sswitch_9
    const/16 v0, 0xd

    goto :goto_2

    :sswitch_a
    const/16 v0, 0x15

    goto :goto_2

    :sswitch_b
    const/16 v0, 0x16

    goto :goto_2

    :sswitch_c
    const/16 v0, 0x29

    goto :goto_2

    :sswitch_d
    const/16 v0, 0x28

    goto :goto_2

    :sswitch_e
    const/16 v0, 0x4a

    goto :goto_2

    :sswitch_f
    const/16 v0, 0x46

    goto :goto_2

    :sswitch_10
    const/16 v0, 0x47

    goto :goto_2

    :sswitch_11
    const/16 v0, 0x48

    goto :goto_2

    :sswitch_12
    const/16 v0, 0x49

    goto :goto_2

    :sswitch_13
    const/16 v0, 0x4b

    goto :goto_2

    :sswitch_14
    const/16 v0, 0x55

    goto :goto_2

    :pswitch_3
    if-eqz v6, :cond_3

    sget v0, Lcom/tencent/mm/network/GYNet;->s:I

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    sput v0, Lcom/tencent/mm/network/GYNet;->s:I

    goto :goto_3

    :cond_3
    sget v0, Lcom/tencent/mm/network/GYNet;->t:I

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    sput v0, Lcom/tencent/mm/network/GYNet;->t:I

    goto :goto_3

    :pswitch_4
    if-eqz v6, :cond_4

    sget v0, Lcom/tencent/mm/network/GYNet;->u:I

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    sput v0, Lcom/tencent/mm/network/GYNet;->u:I

    goto :goto_3

    :cond_4
    sget v0, Lcom/tencent/mm/network/GYNet;->v:I

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    sput v0, Lcom/tencent/mm/network/GYNet;->v:I

    goto :goto_3

    :pswitch_5
    move v7, v2

    goto/16 :goto_0

    :pswitch_6
    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->c()Lcom/tencent/mm/network/NetworkEvent;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/network/NetworkEvent;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->a()Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v1, p1

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;->a(IILjava/lang/String;ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_6
    :goto_4
    if-nez v7, :cond_7

    const/4 v4, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-object v3, p3

    :try_start_1
    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;->a(IILjava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_7
    sget v0, Lcom/tencent/mm/network/GYNet;->s:I

    if-lez v0, :cond_8

    const/4 v1, 0x5

    sget v4, Lcom/tencent/mm/network/GYNet;->s:I

    const/4 v6, 0x1

    move-object v0, v8

    move v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;->a(IILjava/lang/String;ILjava/lang/String;Z)V

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/network/GYNet;->s:I

    :cond_8
    sget v0, Lcom/tencent/mm/network/GYNet;->t:I

    if-lez v0, :cond_9

    const/4 v1, 0x5

    sget v4, Lcom/tencent/mm/network/GYNet;->t:I

    const/4 v6, 0x0

    move-object v0, v8

    move v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;->a(IILjava/lang/String;ILjava/lang/String;Z)V

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/network/GYNet;->t:I

    :cond_9
    sget v0, Lcom/tencent/mm/network/GYNet;->u:I

    if-lez v0, :cond_a

    const/4 v1, 0x4

    sget v4, Lcom/tencent/mm/network/GYNet;->u:I

    const/4 v6, 0x1

    move-object v0, v8

    move v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;->a(IILjava/lang/String;ILjava/lang/String;Z)V

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/network/GYNet;->u:I

    :cond_a
    sget v0, Lcom/tencent/mm/network/GYNet;->v:I

    if-lez v0, :cond_0

    const/4 v1, 0x4

    sget v4, Lcom/tencent/mm/network/GYNet;->v:I

    const/4 v6, 0x0

    move-object v0, v8

    move v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;->a(IILjava/lang/String;ILjava/lang/String;Z)V

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/network/GYNet;->v:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0x10 -> :sswitch_8
        0x13 -> :sswitch_a
        0x14 -> :sswitch_b
        0x17 -> :sswitch_9
        0x19 -> :sswitch_6
        0x1a -> :sswitch_2
        0x1b -> :sswitch_7
        0x27 -> :sswitch_c
        0x28 -> :sswitch_d
        0x3e -> :sswitch_e
        0x3f -> :sswitch_f
        0x40 -> :sswitch_10
        0x41 -> :sswitch_11
        0x42 -> :sswitch_12
        0x51 -> :sswitch_13
        0x54 -> :sswitch_14
        0x3b9aca01 -> :sswitch_1
        0x3b9aca02 -> :sswitch_0
        0x3b9aca09 -> :sswitch_4
        0x3b9aca0a -> :sswitch_5
        0x3b9aca10 -> :sswitch_8
        0x3b9aca13 -> :sswitch_a
        0x3b9aca14 -> :sswitch_b
        0x3b9aca17 -> :sswitch_9
        0x3b9aca19 -> :sswitch_6
        0x3b9aca1a -> :sswitch_2
        0x3b9aca1b -> :sswitch_7
        0x3b9aca27 -> :sswitch_c
        0x3b9aca28 -> :sswitch_d
        0x3b9aca3e -> :sswitch_e
        0x3b9aca3f -> :sswitch_f
        0x3b9aca40 -> :sswitch_10
        0x3b9aca41 -> :sswitch_11
        0x3b9aca42 -> :sswitch_12
        0x3b9aca51 -> :sswitch_13
        0x3b9aca54 -> :sswitch_14
    .end sparse-switch
.end method

.method public final a(IILjava/lang/String;[BLjava/lang/Object;)V
    .locals 9

    :try_start_0
    instance-of v0, p5, Lcom/tencent/mm/network/GYNetContext;

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.GYNet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecv failed, threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    check-cast p5, Lcom/tencent/mm/network/GYNetContext;

    iget v0, p5, Lcom/tencent/mm/network/GYNetContext;->h:I

    if-eq p1, v0, :cond_1

    const-string v0, "MicroMsg.GYNet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught different threadId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p5, Lcom/tencent/mm/network/GYNetContext;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p5, Lcom/tencent/mm/network/GYNetContext;->d:Z

    if-eqz v0, :cond_2

    const-string v0, "MicroMsg.GYNet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context has been set to invalid, threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_6

    iget v0, p0, Lcom/tencent/mm/network/GYNet;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/network/GYNet;->c:I

    iget v0, p5, Lcom/tencent/mm/network/GYNetContext;->f:I

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/network/GYNet;->g:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v1}, Lcom/tencent/mm/network/connpool/InAddrHost;->b()Lcom/tencent/mm/network/connpool/InAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/network/GYNet;->b:Ljava/lang/String;

    :goto_1
    iget v0, p5, Lcom/tencent/mm/network/GYNetContext;->f:I

    if-gtz v0, :cond_3

    iget v0, p5, Lcom/tencent/mm/network/GYNetContext;->g:I

    if-lez v0, :cond_5

    :cond_3
    const-string v0, "MicroMsg.GYNet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network failed, remain retry: socket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p5, Lcom/tencent/mm/network/GYNetContext;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/http="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p5, Lcom/tencent/mm/network/GYNetContext;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/GYNetContext;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/network/GYNet;->e:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v1}, Lcom/tencent/mm/network/connpool/InAddrHost;->b()Lcom/tencent/mm/network/connpool/InAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/network/GYNet;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/network/GYNet;->a(IZ)V

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->c()Lcom/tencent/mm/network/NetworkEvent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/network/NetworkEvent;->a(I)V

    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->b:Lcom/tencent/mm/network/IOnGYNetEndNetwork;

    const/4 v2, 0x1

    iget-object v5, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    const/4 v6, 0x0

    move v1, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IOnGYNetEndNetwork;->a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp_AIDL;[B)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/network/GYNet;->c:I

    :cond_7
    if-eqz p4, :cond_8

    array-length v0, p4

    if-nez v0, :cond_c

    :cond_8
    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->b:Lcom/tencent/mm/network/IOnGYNetEndNetwork;

    const/4 v2, 0x0

    iget-object v5, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    const/4 v6, 0x0

    move v1, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IOnGYNetEndNetwork;->a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp_AIDL;[B)V

    goto/16 :goto_0

    :cond_9
    iget v0, p5, Lcom/tencent/mm/network/GYNetContext;->f:I

    if-gtz v0, :cond_a

    iget v0, p5, Lcom/tencent/mm/network/GYNetContext;->g:I

    if-lez v0, :cond_b

    :cond_a
    const-string v0, "MicroMsg.GYNet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "codec failed, remain retry: socket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p5, Lcom/tencent/mm/network/GYNetContext;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/http="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p5, Lcom/tencent/mm/network/GYNetContext;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/GYNetContext;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/network/GYNet;->a(IZ)V

    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->b:Lcom/tencent/mm/network/IOnGYNetEndNetwork;

    const/4 v2, 0x5

    const/4 v3, -0x1

    iget-object v5, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    const/4 v6, 0x0

    move v1, p1

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IOnGYNetEndNetwork;->a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp_AIDL;[B)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->a:Lcom/tencent/mm/network/IAccInfo;

    invoke-interface {v0}, Lcom/tencent/mm/network/IAccInfo;->e()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/tencent/mm/pointers/PByteArray;

    invoke-direct {v1}, Lcom/tencent/mm/pointers/PByteArray;-><init>()V

    iget-object v2, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp_AIDL;->c()Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v4

    iget-object v2, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v2

    invoke-interface {v3, v2, p4, v0}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;->a(I[BLjava/lang/String;)Z

    move-result v2

    const-string v6, "MicroMsg.GYNet"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decoding, type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v8}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", time="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_e

    invoke-interface {v3}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;->a()[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    invoke-static {}, Lcom/tencent/mm/test/Test;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, -0x1

    invoke-interface {v3, v0}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;->a(I)V

    :cond_d
    invoke-interface {v3}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;->b()I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->b:Lcom/tencent/mm/network/IOnGYNetEndNetwork;

    const/4 v2, 0x4

    invoke-interface {v3}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;->b()I

    move-result v3

    iget-object v5, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    iget-object v6, v1, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    move v1, p1

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IOnGYNetEndNetwork;->a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp_AIDL;[B)V

    goto/16 :goto_0

    :sswitch_0
    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->a:Lcom/tencent/mm/network/IAccInfo;

    invoke-interface {v0}, Lcom/tencent/mm/network/IAccInfo;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :sswitch_1
    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->h()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_e
    const-string v0, "MicroMsg.GYNet"

    const-string v1, "buf to resp failed, change server and try again"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->h:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketMgr;->c()V

    iget v0, p5, Lcom/tencent/mm/network/GYNetContext;->f:I

    if-gtz v0, :cond_f

    iget v0, p5, Lcom/tencent/mm/network/GYNetContext;->g:I

    if-lez v0, :cond_10

    :cond_f
    const-string v0, "MicroMsg.GYNet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network failed, remain retry: socket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p5, Lcom/tencent/mm/network/GYNetContext;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/http="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p5, Lcom/tencent/mm/network/GYNetContext;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/GYNetContext;)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/network/GYNet;->a(IZ)V

    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->b:Lcom/tencent/mm/network/IOnGYNetEndNetwork;

    const/4 v2, 0x5

    array-length v3, p4

    iget-object v5, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    const/4 v6, 0x0

    move v1, p1

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IOnGYNetEndNetwork;->a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp_AIDL;[B)V

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->c()Lcom/tencent/mm/network/NetworkEvent;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/tencent/mm/network/NetworkEvent;->a(I)V

    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/tencent/mm/network/GYNet;->a(IZ)V

    iget-object v0, p5, Lcom/tencent/mm/network/GYNetContext;->b:Lcom/tencent/mm/network/IOnGYNetEndNetwork;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p5, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    iget-object v6, v1, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    move v1, p1

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IOnGYNetEndNetwork;->a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp_AIDL;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
        0x17 -> :sswitch_0
        0x19 -> :sswitch_1
        0x22 -> :sswitch_1
        0x24 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(II[B)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x26

    const/4 v1, 0x0

    invoke-static {p3}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    const-string v0, "MicroMsg.GYNet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotify, seq(threadId)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", datalen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string v0, "MicroMsg.GYNet"

    const-string v2, "old notify"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->i:Lcom/tencent/mm/network/IOnGYNetNotify;

    const-string v3, ""

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/network/IOnGYNetNotify;->a(IILjava/lang/String;I[B)Z

    goto :goto_0

    :sswitch_2
    const-string v0, "MicroMsg.GYNet"

    const-string v2, "new notify"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->i:Lcom/tencent/mm/network/IOnGYNetNotify;

    const-string v3, ""

    move v2, v1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/network/IOnGYNetNotify;->a(IILjava/lang/String;I[B)Z

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->i:Lcom/tencent/mm/network/IOnGYNetNotify;

    const-string v3, ""

    const/16 v4, 0x4a

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/network/IOnGYNetNotify;->a(IILjava/lang/String;I[B)Z

    goto :goto_0

    :sswitch_4
    array-length v0, p3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->i:Lcom/tencent/mm/network/IOnGYNetNotify;

    const-string v3, ""

    const/16 v4, 0xa

    move v2, v1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/network/IOnGYNetNotify;->a(IILjava/lang/String;I[B)Z

    goto :goto_0

    :sswitch_5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0, p3}, Lcom/tencent/mm/network/connpool/SocketEngine$Helper;->a(Ljava/util/List;[B)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    const-string v0, "MicroMsg.GYNet"

    const-string v1, "empty target iplist while speed test"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/network/GYNet;->n:Lcom/tencent/mm/network/connpool/SpeedTest;

    new-array v1, v1, [Lcom/tencent/mm/network/connpool/InAddress;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/network/connpool/InAddress;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/network/connpool/SpeedTest;->a([Lcom/tencent/mm/network/connpool/InAddress;)V

    goto :goto_0

    :sswitch_6
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->g:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->h()[I

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/network/connpool/InAddress;

    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    aget v0, v0, v4

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lcom/tencent/mm/network/connpool/InAddress;-><init>(Ljava/net/InetAddress;IZ)V

    const-string v0, "MicroMsg.GYNet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "redirect addr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/network/connpool/InAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->g:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->e()[Lcom/tencent/mm/network/connpool/InAddress;

    move-result-object v0

    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lcom/tencent/mm/network/connpool/InAddress;

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    aget-object v4, v0, v1

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aput-object v2, v3, v1

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->g:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/network/connpool/InAddrHost;->a([Lcom/tencent/mm/network/connpool/InAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x8 -> :sswitch_4
        0xb -> :sswitch_0
        0xc -> :sswitch_6
        0x18 -> :sswitch_2
        0x3d -> :sswitch_3
        0x58 -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->e:Lcom/tencent/mm/network/connpool/InAddrHost;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x50

    aput v3, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/mm/network/connpool/InAddrHost;->a(Ljava/lang/String;[ILcom/tencent/mm/network/connpool/InAddrHost$IAddrPlus;)V

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;[I[III)V
    .locals 11

    iget-object v1, p0, Lcom/tencent/mm/network/GYNet;->e:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v1, p3}, Lcom/tencent/mm/network/connpool/InAddrHost;->a([I)V

    iget-object v1, p0, Lcom/tencent/mm/network/GYNet;->g:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v1, p4}, Lcom/tencent/mm/network/connpool/InAddrHost;->a([I)V

    iget-object v1, p0, Lcom/tencent/mm/network/GYNet;->e:Lcom/tencent/mm/network/connpool/InAddrHost;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->a(I)V

    iget-object v1, p0, Lcom/tencent/mm/network/GYNet;->g:Lcom/tencent/mm/network/connpool/InAddrHost;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->a(I)V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMBuiltInIP;

    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/network/GYNet;->e:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v2}, Lcom/tencent/mm/network/connpool/InAddrHost;->h()[I

    move-result-object v5

    array-length v6, v5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_0

    aget v7, v5, v2

    new-instance v8, Lcom/tencent/mm/network/connpool/InAddress;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMBuiltInIP;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/mm/platformtools/InetUtil;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v8, v9, v7, v10}, Lcom/tencent/mm/network/connpool/InAddress;-><init>(Ljava/net/InetAddress;IZ)V

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/tencent/mm/network/connpool/InAddress;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tencent/mm/network/connpool/InAddress;

    iput-object v1, p0, Lcom/tencent/mm/network/GYNet;->j:[Lcom/tencent/mm/network/connpool/InAddress;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMBuiltInIP;

    :try_start_1
    iget-object v2, p0, Lcom/tencent/mm/network/GYNet;->g:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v2}, Lcom/tencent/mm/network/connpool/InAddrHost;->h()[I

    move-result-object v5

    array-length v6, v5

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_2

    aget v7, v5, v2

    new-instance v8, Lcom/tencent/mm/network/connpool/InAddress;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMBuiltInIP;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/mm/platformtools/InetUtil;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v8, v9, v7, v10}, Lcom/tencent/mm/network/connpool/InAddress;-><init>(Ljava/net/InetAddress;IZ)V

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/tencent/mm/network/connpool/InAddress;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tencent/mm/network/connpool/InAddress;

    iput-object v1, p0, Lcom/tencent/mm/network/GYNet;->k:[Lcom/tencent/mm/network/connpool/InAddress;

    const-string v1, "MicroMsg.GYNet"

    const-string v2, "updated builtin short ips"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/protocal/MMBuiltInIP;->a(Ljava/util/List;)V

    const-string v1, "MicroMsg.GYNet"

    const-string v2, "updated builtin long ips"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/mm/protocal/MMBuiltInIP;->a(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/Map;Ljava/util/Queue;)V
    .locals 6

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    :try_start_0
    const-string v0, "MicroMsg.GYNet"

    const-string v1, "onDisconnect, empty records or queue"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "MicroMsg.GYNet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect, remain request count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/network/connpool/IRecord;

    instance-of v3, v0, Lcom/tencent/mm/network/GYNetContext;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/tencent/mm/network/GYNetContext;

    const-string v3, "MicroMsg.GYNet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect pending context t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " threadid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/tencent/mm/network/GYNetContext;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/tencent/mm/network/GYNetContext;->d:Z

    if-eqz v3, :cond_4

    const-string v0, "MicroMsg.GYNet"

    const-string v3, "onDisconnect context invalid"

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_4
    iget-object v3, v0, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-static {v3}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    const-string v3, "MicroMsg.GYNet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect context ok"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    iput v3, v0, Lcom/tencent/mm/network/GYNetContext;->f:I

    iget v3, v0, Lcom/tencent/mm/network/GYNetContext;->g:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/tencent/mm/network/GYNetContext;->g:I

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/tencent/mm/network/GYNetContext;

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/network/GYNetContext;

    if-eqz v0, :cond_6

    const-string v3, "MicroMsg.GYNet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect running context t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/mm/network/GYNetContext;->c:Lcom/tencent/mm/network/IReqResp_AIDL;

    invoke-interface {v5}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " threadid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/tencent/mm/network/GYNetContext;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/tencent/mm/network/GYNetContext;->d:Z

    if-eqz v3, :cond_7

    const-string v0, "MicroMsg.GYNet"

    const-string v3, "onDisconnect context invalid"

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string v3, "MicroMsg.GYNet"

    const-string v4, "onDisconnect context ok"

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    iput v3, v0, Lcom/tencent/mm/network/GYNetContext;->f:I

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :goto_4
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/network/GYNetContext;

    invoke-direct {p0, v0}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/GYNetContext;)V

    goto :goto_4

    :cond_9
    iget-boolean v0, p0, Lcom/tencent/mm/network/GYNet;->a:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x7530

    iput v0, p0, Lcom/tencent/mm/network/GYNet;->p:I

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->q:Lcom/tencent/mm/platformtools/MAlarmHandler;

    iget v1, p0, Lcom/tencent/mm/network/GYNet;->p:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MAlarmHandler;->a(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 2

    const-string v1, "MicroMsg.GYNet"

    if-eqz p1, :cond_1

    const-string v0, "network activated"

    :goto_0
    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/tencent/mm/network/GYNet;->a:Z

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->h:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/network/connpool/SocketMgr;->a(Z)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/network/GYNet;->c(Z)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "network deactivated"

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/network/GYNet;->c:I

    return v0
.end method

.method public final b(Lcom/tencent/mm/network/INetContext;)V
    .locals 3

    const-string v0, "MicroMsg.GYNet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/mm/network/INetContext;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/mm/network/INetContext;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/mm/network/INetContext;->c()Lcom/tencent/mm/network/IReqResp_AIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp_AIDL;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tencent/mm/network/INetContext;->a()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/network/GYNet;->f:Lcom/tencent/mm/network/connpool/HttpMgr;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/network/connpool/HttpMgr;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/network/GYNet;->h:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/network/connpool/SocketMgr;->a(I)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->g:Lcom/tencent/mm/network/connpool/InAddrHost;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/mm/network/connpool/InAddrHost;->a(Ljava/lang/String;[ILcom/tencent/mm/network/connpool/InAddrHost$IAddrPlus;)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0xbbt 0x1t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final b(Z)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v0, "MicroMsg.GYNet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start looping at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/network/GYNet;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->q:Lcom/tencent/mm/platformtools/MAlarmHandler;

    iget v1, p0, Lcom/tencent/mm/network/GYNet;->p:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MAlarmHandler;->a(J)V

    invoke-direct {p0}, Lcom/tencent/mm/network/GYNet;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "MicroMsg.GYNet"

    const-string v2, "cancel looping"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->q:Lcom/tencent/mm/platformtools/MAlarmHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MAlarmHandler;->b()V

    const-string v2, "MicroMsg.GYNet"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkStartPoller poller is null:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->r:Lcom/tencent/mm/platformtools/MAlarmHandler;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->r:Lcom/tencent/mm/platformtools/MAlarmHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/platformtools/MAlarmHandler;

    new-instance v2, Lcom/tencent/mm/network/GYNet$PollerCallBack;

    invoke-direct {v2, p0}, Lcom/tencent/mm/network/GYNet$PollerCallBack;-><init>(Lcom/tencent/mm/network/GYNet;)V

    invoke-direct {v0, v2, v1}, Lcom/tencent/mm/platformtools/MAlarmHandler;-><init>(Lcom/tencent/mm/platformtools/MAlarmHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/network/GYNet;->r:Lcom/tencent/mm/platformtools/MAlarmHandler;

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->r:Lcom/tencent/mm/platformtools/MAlarmHandler;

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MAlarmHandler;->a(J)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->e:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/network/connpool/InAddrHost;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet;->g:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/network/connpool/InAddrHost;->a(Z)V

    return-void
.end method
