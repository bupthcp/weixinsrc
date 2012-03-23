.class Lcom/tencent/mm/modelbase/NetSceneQueue$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lcom/tencent/mm/modelbase/NetSceneBase;

.field private synthetic f:Lcom/tencent/mm/modelbase/NetSceneQueue;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelbase/NetSceneQueue;IIILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$5;->f:Lcom/tencent/mm/modelbase/NetSceneQueue;

    iput p2, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$5;->a:I

    iput p3, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$5;->b:I

    iput p4, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$5;->c:I

    iput-object p5, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$5;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$5;->e:Lcom/tencent/mm/modelbase/NetSceneBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$5;->f:Lcom/tencent/mm/modelbase/NetSceneQueue;

    invoke-static {v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->e(Lcom/tencent/mm/modelbase/NetSceneQueue;)[Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$5;->a:I

    aget-object v2, v0, v1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/IOnSceneEnd;

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$5;->b:I

    iget v4, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$5;->c:I

    iget-object v5, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$5;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$5;->e:Lcom/tencent/mm/modelbase/NetSceneBase;

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
