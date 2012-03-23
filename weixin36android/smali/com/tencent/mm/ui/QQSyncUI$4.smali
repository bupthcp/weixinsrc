.class Lcom/tencent/mm/ui/QQSyncUI$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/QQSyncUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/QQSyncUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/QQSyncUI$4;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$4;->a:Lcom/tencent/mm/ui/QQSyncUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/QQSyncUI;->a(Lcom/tencent/mm/ui/QQSyncUI;Z)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;

    const/4 v2, 0x6

    const-string v3, "6"

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;

    invoke-direct {v2, v0}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$4;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->c(Lcom/tencent/mm/ui/QQSyncUI;)V

    return-void
.end method
