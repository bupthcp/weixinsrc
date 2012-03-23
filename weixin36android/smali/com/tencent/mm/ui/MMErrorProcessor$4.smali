.class final Lcom/tencent/mm/ui/MMErrorProcessor$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MMActivity;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MMActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMErrorProcessor$4;->a:Lcom/tencent/mm/ui/MMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMErrorProcessor$4;->a:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMActivity;->finish()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMErrorProcessor$4;->a:Lcom/tencent/mm/ui/MMActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMAppMgr;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMErrorProcessor$4;->a:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMActivity;->finish()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMErrorProcessor$4;->a:Lcom/tencent/mm/ui/MMActivity;

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/MMAppMgr;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
