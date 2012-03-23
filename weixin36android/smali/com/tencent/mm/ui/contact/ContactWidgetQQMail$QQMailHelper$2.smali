.class Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Landroid/widget/EditText;

.field private synthetic c:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;ZLandroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$2;->c:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;

    iput-boolean p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$2;->a:Z

    iput-object p3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$2;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$2;->a:Z

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$2;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;-><init>(ZLjava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$2;->c:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$2;->c:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->a(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$2;->c:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;

    invoke-static {v3}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->a(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0253

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$2;->c:Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;

    invoke-static {v4}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->a(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0026

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$2$1;

    invoke-direct {v6, p0, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$2$1;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper$2;Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
