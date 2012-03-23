.class public Lcom/tencent/mm/protocal/MMSynCheck$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    const-wide/16 v0, 0x7

    iput-wide v0, p0, Lcom/tencent/mm/protocal/MMSynCheck$Resp;->a:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/protocal/MMSynCheck$Resp;->a:J

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/protocal/MMSynCheck$Resp;->a:J

    return-wide v0
.end method
