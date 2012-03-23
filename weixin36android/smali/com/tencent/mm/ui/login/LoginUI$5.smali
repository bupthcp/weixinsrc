.class Lcom/tencent/mm/ui/login/LoginUI$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/login/LoginUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/LoginUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/LoginUI$5;->a:Lcom/tencent/mm/ui/login/LoginUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginUI$5;->a:Lcom/tencent/mm/ui/login/LoginUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/login/LoginUI;->e(Lcom/tencent/mm/ui/login/LoginUI;)Lcom/tencent/mm/ui/SecurityImage;

    return-void
.end method
