.class Lcom/tencent/mm/ui/Updater$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;

.field private synthetic b:Lcom/tencent/mm/ui/Updater;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/Updater;Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/Updater$4;->b:Lcom/tencent/mm/ui/Updater;

    iput-object p2, p0, Lcom/tencent/mm/ui/Updater$4;->a:Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater$4;->b:Lcom/tencent/mm/ui/Updater;

    invoke-static {v0}, Lcom/tencent/mm/ui/Updater;->e(Lcom/tencent/mm/ui/Updater;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater$4;->b:Lcom/tencent/mm/ui/Updater;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/Updater;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater$4;->a:Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;

    invoke-interface {v0}, Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;->a()V

    return-void
.end method
