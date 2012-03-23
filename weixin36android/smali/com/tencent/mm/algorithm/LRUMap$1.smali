.class Lcom/tencent/mm/algorithm/LRUMap$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lcom/tencent/mm/algorithm/LRUMap;


# direct methods
.method constructor <init>(Lcom/tencent/mm/algorithm/LRUMap;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/algorithm/LRUMap$1;->a:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;

    iget-object v1, v0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;->b:Ljava/lang/Long;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;

    iget-object v0, v0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;->b:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
