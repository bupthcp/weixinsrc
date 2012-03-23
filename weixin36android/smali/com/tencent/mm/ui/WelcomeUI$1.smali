.class Lcom/tencent/mm/ui/WelcomeUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/WelcomeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/WelcomeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/WelcomeUI$1;->a:Lcom/tencent/mm/ui/WelcomeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/WelcomeUI$1;->a:Lcom/tencent/mm/ui/WelcomeUI;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/WelcomeUI;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/WelcomeUI$1;->a:Lcom/tencent/mm/ui/WelcomeUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/WelcomeUI;->finish()V

    return-void
.end method
