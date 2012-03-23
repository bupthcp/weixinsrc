.class Lcom/tencent/mm/ui/bottle/BottleWizardStep2$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/BottleWizardStep2;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/BottleWizardStep2;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep2$2;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const v3, 0x7f0a0010

    invoke-static {}, Lcom/tencent/mm/ui/bottle/BottleSettingLogic;->a()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep2$2;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep2;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep2$2;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep2;

    const v2, 0x7f0a03ed

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep2$2;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep2;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x3005

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x3004

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep2$2;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep2;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep2$2;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep2;

    const v2, 0x7f0a03ee

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep2$2;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep2;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep2$2;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep2;

    const-class v2, Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep2$2;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep2;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep2$2;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep2;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->finish()V

    goto :goto_0
.end method
