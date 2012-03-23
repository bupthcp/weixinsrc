.class Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1$1;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1$1;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;

    iget-object v0, v0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1$1;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;

    iget-object v1, v1, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;

    iget-object v1, v1, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->g(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1$1;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;

    iget-object v2, v2, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;

    iget-object v2, v2, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->h(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->a(Lcom/tencent/mm/ui/login/RegByMobileRegUI;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
