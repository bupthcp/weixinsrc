.class public Lcom/tencent/mm/protocal/MMSync$CmdDelMsg;
.super Lcom/tencent/mm/protocal/MMSync$CmdItem;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/tencent/mm/protocal/MMSync$CmdItem;-><init>(I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdDelMsg;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdDelMsg;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdDelMsg;->b:Ljava/util/List;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdDelMsg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdDelMsg;->b:Ljava/util/List;

    return-object v0
.end method
