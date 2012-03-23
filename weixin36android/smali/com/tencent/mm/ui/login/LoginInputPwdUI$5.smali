.class Lcom/tencent/mm/ui/login/LoginInputPwdUI$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/login/LoginInputPwdUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/LoginInputPwdUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$5;->a:Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$5;->a:Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->c(Lcom/tencent/mm/ui/login/LoginInputPwdUI;)Lcom/tencent/mm/ui/SecurityImage;

    return-void
.end method
