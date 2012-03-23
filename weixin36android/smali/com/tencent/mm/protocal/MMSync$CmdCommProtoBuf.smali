.class public Lcom/tencent/mm/protocal/MMSync$CmdCommProtoBuf;
.super Lcom/tencent/mm/protocal/MMSync$CmdItem;


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/protocal/MMSync$CmdItem;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdCommProtoBuf;->a:[B

    return-void
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdCommProtoBuf;->a:[B

    return-object v0
.end method
