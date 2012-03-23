.class public Lcom/tencent/mm/protocal/MMSync$CmdModTXNewsCategory;
.super Lcom/tencent/mm/protocal/MMSync$CmdItem;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/tencent/mm/protocal/MMSync$CmdItem;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModTXNewsCategory;->a:I

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModTXNewsCategory;->a:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModTXNewsCategory;->a:I

    return v0
.end method
