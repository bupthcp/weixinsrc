.class final Lcom/tencent/mm/ui/MMErrorProcessor$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MMActivity;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MMActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMErrorProcessor$6;->a:Lcom/tencent/mm/ui/MMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->e()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/mm/ui/Updater;->a(I)V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMErrorProcessor$6;->a:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMActivity;->finish()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMErrorProcessor$6;->a:Lcom/tencent/mm/ui/MMActivity;

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/MMAppMgr;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
