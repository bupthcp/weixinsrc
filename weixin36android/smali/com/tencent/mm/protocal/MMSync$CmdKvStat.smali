.class public Lcom/tencent/mm/protocal/MMSync$CmdKvStat;
.super Lcom/tencent/mm/protocal/MMSync$CmdItem;


# instance fields
.field private a:I

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lcom/tencent/mm/protocal/MMSync$CmdItem;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdKvStat;->a:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdKvStat;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdKvStat;->b:Ljava/util/List;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdKvStat;->a:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdKvStat;->a:I

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdKvStat;->b:Ljava/util/List;

    return-object v0
.end method
