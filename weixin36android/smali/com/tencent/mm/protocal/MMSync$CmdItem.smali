.class public abstract Lcom/tencent/mm/protocal/MMSync$CmdItem;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdItem;->a:I

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdItem;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdItem;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdItem;->a:I

    return-void
.end method

.method public b()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
