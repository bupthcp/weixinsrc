.class public Lcom/tencent/mm/algorithm/LRUMap$TimeVal;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Long;

.field private synthetic c:Lcom/tencent/mm/algorithm/LRUMap;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/algorithm/LRUMap;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/algorithm/LRUMap$TimeVal;->b:Ljava/lang/Long;

    return-void
.end method
