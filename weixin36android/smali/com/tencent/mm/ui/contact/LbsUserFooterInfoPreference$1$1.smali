.class Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1$1;->a:Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1$1;->a:Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;

    iget-object v8, v0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;->a:Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    const/4 v1, 0x2

    const-string v6, ""

    const-string v7, ""

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;-><init>(IFFIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v0}, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->a(Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;Lcom/tencent/mm/modelsimple/NetSceneLbsFind;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1$1;->a:Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;->a:Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->b(Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1$1;->a:Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;->a:Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1$1;->a:Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;->a:Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->a(Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1$1;->a:Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;

    iget-object v2, v2, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;->a:Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->a(Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1$1;->a:Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;

    iget-object v3, v3, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;->a:Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;

    invoke-static {v3}, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->a(Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v3

    const v4, 0x7f0a03ca

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1$1$1;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1$1$1;-><init>(Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1$1;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->a(Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
