.class final Lcom/tencent/mm/ui/Updater$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/tencent/mm/ui/Updater;

.field private synthetic c:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/Updater;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/Updater$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/ui/Updater$2;->b:Lcom/tencent/mm/ui/Updater;

    iput-object p3, p0, Lcom/tencent/mm/ui/Updater$2;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater$2;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/mm/ui/Updater;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater$2;->b:Lcom/tencent/mm/ui/Updater;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/Updater;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater$2;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method
