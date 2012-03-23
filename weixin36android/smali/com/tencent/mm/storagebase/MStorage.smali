.class public Lcom/tencent/mm/storagebase/MStorage;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/tencent/mm/storagebase/MStorageEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/mm/storagebase/MStorage$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/storagebase/MStorage$1;-><init>(Lcom/tencent/mm/storagebase/MStorage;)V

    iput-object v0, p0, Lcom/tencent/mm/storagebase/MStorage;->a:Lcom/tencent/mm/storagebase/MStorageEvent;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MStorage;->a:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storagebase/MStorageEvent;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MStorage;->a:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storagebase/MStorageEvent;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MStorage;->a:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storagebase/MStorageEvent;->b(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MStorage;->a:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/MStorageEvent;->a()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MStorage;->a:Lcom/tencent/mm/storagebase/MStorageEvent;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/MStorageEvent;->b(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MStorage;->a:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/MStorageEvent;->a()V

    return-void
.end method
