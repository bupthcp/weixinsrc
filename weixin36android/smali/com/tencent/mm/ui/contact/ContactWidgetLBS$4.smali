.class Lcom/tencent/mm/ui/contact/ContactWidgetLBS$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/contact/ContactWidgetLBS;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$4;->a:Lcom/tencent/mm/ui/contact/ContactWidgetLBS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$4;->a:Lcom/tencent/mm/ui/contact/ContactWidgetLBS;

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    const/4 v1, 0x2

    const-string v6, ""

    const-string v7, ""

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;-><init>(IFFIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;Lcom/tencent/mm/modelsimple/NetSceneLbsFind;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$4;->a:Lcom/tencent/mm/ui/contact/ContactWidgetLBS;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->c(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$4;->a:Lcom/tencent/mm/ui/contact/ContactWidgetLBS;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$4;->a:Lcom/tencent/mm/ui/contact/ContactWidgetLBS;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$4;->a:Lcom/tencent/mm/ui/contact/ContactWidgetLBS;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$4;->a:Lcom/tencent/mm/ui/contact/ContactWidgetLBS;

    invoke-static {v3}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a03ca

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$4$1;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$4$1;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetLBS$4;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
