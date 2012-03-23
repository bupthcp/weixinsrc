.class Lcom/tencent/mm/ui/bottle/BottleWizardStep1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/BottleWizardStep1;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/BottleWizardStep1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$2;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$2;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep1;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->n()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$2;->a:Lcom/tencent/mm/ui/bottle/BottleWizardStep1;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->finish()V

    return-void
.end method
