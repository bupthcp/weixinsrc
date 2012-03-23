.class Lcom/tencent/mm/ui/login/LoginUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/login/LoginUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/LoginUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/LoginUI$3;->a:Lcom/tencent/mm/ui/login/LoginUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginUI$3;->a:Lcom/tencent/mm/ui/login/LoginUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/login/LoginUI;->n()V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginUI$3;->a:Lcom/tencent/mm/ui/login/LoginUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/login/LoginUI;->finish()V

    return-void
.end method
