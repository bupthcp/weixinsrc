.class Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler$2;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler$2;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->a(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->e()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->r()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler$2;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Intro_Switch"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler$2;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
