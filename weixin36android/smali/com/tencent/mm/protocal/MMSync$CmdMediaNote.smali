.class public Lcom/tencent/mm/protocal/MMSync$CmdMediaNote;
.super Lcom/tencent/mm/protocal/MMSync$CmdItem;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lcom/tencent/mm/protocal/MMSync$CmdItem;-><init>(I)V

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdMediaNote;->a:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdMediaNote;->b:I

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdMediaNote;->a:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdMediaNote;->a:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdMediaNote;->b:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdMediaNote;->b:I

    return v0
.end method
