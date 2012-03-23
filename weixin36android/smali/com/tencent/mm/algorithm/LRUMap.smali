.class public Lcom/tencent/mm/algorithm/LRUMap;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/algorithm/LRUMap;->a:Ljava/util/Map;

    iput p1, p0, Lcom/tencent/mm/algorithm/LRUMap;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/algorithm/LRUMap;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/algorithm/LRUMap;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/algorithm/LRUMap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/algorithm/LRUMap;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final a(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/tencent/mm/algorithm/LRUMap;->b:I

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/algorithm/LRUMap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;

    if-nez v0, :cond_3

    new-instance v0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;

    invoke-direct {v0, p0, p2}, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;-><init>(Lcom/tencent/mm/algorithm/LRUMap;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/algorithm/LRUMap;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/algorithm/LRUMap;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/mm/algorithm/LRUMap;->b:I

    if-le v0, v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tencent/mm/algorithm/LRUMap;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/tencent/mm/algorithm/LRUMap$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/algorithm/LRUMap$1;-><init>(Lcom/tencent/mm/algorithm/LRUMap;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget v0, p0, Lcom/tencent/mm/algorithm/LRUMap;->c:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/tencent/mm/algorithm/LRUMap;->b:I

    div-int/lit8 v0, v0, 0xa

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/algorithm/LRUMap;->c(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, -0x1

    if-gtz v0, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget v0, p0, Lcom/tencent/mm/algorithm/LRUMap;->c:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/algorithm/LRUMap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;

    invoke-virtual {v0}, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;->a()V

    iget-object v0, p0, Lcom/tencent/mm/algorithm/LRUMap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;

    iput-object p2, v0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;->a:Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/algorithm/LRUMap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/algorithm/LRUMap;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;

    invoke-virtual {v1}, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;->a()V

    iget-object v0, v0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/algorithm/LRUMap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
