.class Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;
.implements Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;

.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/mm/ui/contact/HelperHeaderPreference;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->b:Landroid/content/Context;

    const v1, 0x7f0a024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    const-string v0, "MicroMsg.QQMailHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneEnd : unExpected type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->b(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->b(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;

    invoke-static {v1, v5}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->c(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->c(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->d(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;)Landroid/app/ProgressDialog;

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_7

    if-nez p2, :cond_7

    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->f()Z

    move-result v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const/16 v3, 0x11

    if-eqz v1, :cond_5

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->c()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->c:Lcom/tencent/mm/ui/contact/HelperHeaderPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->c:Lcom/tencent/mm/ui/contact/HelperHeaderPreference;

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->a(Z)V

    :cond_4
    :goto_2
    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->e()Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;Z)V

    goto :goto_2

    :cond_7
    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->f()Z

    move-result v1

    const-string v2, "MicroMsg.QQMailHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetSceneSwitchPushMail fail : errType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    if-ne p1, v2, :cond_8

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "MicroMsg.QQMailHelper"

    const-string v2, "need second pass"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->b:Landroid/content/Context;

    const v2, 0x7f0300cf

    invoke-static {v0, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f07022e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->b:Landroid/content/Context;

    const v5, 0x7f0a0256

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$2;

    invoke-direct {v5, p0, v1, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$2;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;ZLandroid/widget/EditText;)V

    invoke-static {v3, v4, v2, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "MicroMsg.QQMailHelper"

    const-string v3, "onSceneEnd, sys err"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->c()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->b:Landroid/content/Context;

    if-eqz v1, :cond_9

    const v1, 0x7f0a01ab

    :goto_3
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->e()Z

    goto/16 :goto_0

    :cond_9
    const v1, 0x7f0a01ac

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->b:Landroid/content/Context;

    const v2, 0x7f0a00b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1f -> :sswitch_0
        -0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/tencent/mm/ui/contact/HelperHeaderPreference;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->b()V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->c:Lcom/tencent/mm/ui/contact/HelperHeaderPreference;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->a(Z)V

    return-void
.end method

.method public final a(Z)Z
    .locals 7

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;-><init>(ZLjava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->b:Landroid/content/Context;

    const-string v3, ""

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->b:Landroid/content/Context;

    const v5, 0x7f0a0026

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$1;

    invoke-direct {v6, p0, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$1;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->c:Lcom/tencent/mm/ui/contact/HelperHeaderPreference;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method
