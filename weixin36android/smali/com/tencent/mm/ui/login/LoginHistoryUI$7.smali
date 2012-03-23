.class Lcom/tencent/mm/ui/login/LoginHistoryUI$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/login/LoginHistoryUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/LoginHistoryUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI$7;->a:Lcom/tencent/mm/ui/login/LoginHistoryUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI$7;->a:Lcom/tencent/mm/ui/login/LoginHistoryUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->f(Lcom/tencent/mm/ui/login/LoginHistoryUI;)Lcom/tencent/mm/ui/SecurityImage;

    return-void
.end method
