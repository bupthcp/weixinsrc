.class Lcom/tencent/mm/platformtools/SyncTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/platformtools/SyncTask;


# direct methods
.method constructor <init>(Lcom/tencent/mm/platformtools/SyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/platformtools/SyncTask$1;->a:Lcom/tencent/mm/platformtools/SyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/platformtools/SyncTask$1;->a:Lcom/tencent/mm/platformtools/SyncTask;

    iget-object v1, p0, Lcom/tencent/mm/platformtools/SyncTask$1;->a:Lcom/tencent/mm/platformtools/SyncTask;

    invoke-virtual {v1}, Lcom/tencent/mm/platformtools/SyncTask;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/platformtools/SyncTask;->a(Ljava/lang/Object;)V

    return-void
.end method
