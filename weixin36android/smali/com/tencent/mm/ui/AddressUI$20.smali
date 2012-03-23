.class Lcom/tencent/mm/ui/AddressUI$20;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/tencent/mm/ui/AddressUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/AddressUI;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/AddressUI$20;->b:Lcom/tencent/mm/ui/AddressUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/AddressUI$20;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI$20;->a:Landroid/content/Context;

    const v1, 0x7f0a01a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;-><init>(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI$20;->b:Lcom/tencent/mm/ui/AddressUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressUI$20;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/mm/ui/AddressUI$20;->a:Landroid/content/Context;

    const v5, 0x7f0a0010

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/tencent/mm/ui/AddressUI$20$1;

    invoke-direct {v6, p0, v1}, Lcom/tencent/mm/ui/AddressUI$20$1;-><init>(Lcom/tencent/mm/ui/AddressUI$20;Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;)V

    invoke-static {v3, v4, v0, v5, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/ui/AddressUI;->a(Lcom/tencent/mm/ui/AddressUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI$20;->b:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/AddressUI;->n(Lcom/tencent/mm/ui/AddressUI;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
