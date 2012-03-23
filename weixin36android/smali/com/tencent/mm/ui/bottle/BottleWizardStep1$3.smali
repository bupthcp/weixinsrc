.class Lcom/tencent/mm/ui/bottle/BottleWizardStep1$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/BottleWizardStep1;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/BottleWizardStep1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$3;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$3;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep1;

    const-class v2, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$3;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep1;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$3;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep1;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->finish()V

    return-void
.end method
