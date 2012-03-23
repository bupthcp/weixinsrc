.class Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$4;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$4;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;->finish()V

    return-void
.end method
