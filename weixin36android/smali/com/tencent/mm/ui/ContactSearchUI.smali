.class public Lcom/tencent/mm/ui/ContactSearchUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/ContactSearchUI;->b:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/ContactSearchUI;)V
    .locals 6

    const v3, 0x7f0a0010

    iget-object v0, p0, Lcom/tencent/mm/ui/ContactSearchUI;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/ContactSearchUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00b8

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/ContactSearchUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a02a1

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/ContactSearchUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneSearchContact;

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelsimple/NetSceneSearchContact;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/ContactSearchUI;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/ContactSearchUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a022a

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/ContactSearchUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/ui/ContactSearchUI$5;

    invoke-direct {v5, p0, v0}, Lcom/tencent/mm/ui/ContactSearchUI$5;-><init>(Lcom/tencent/mm/ui/ContactSearchUI;Lcom/tencent/mm/modelsimple/NetSceneSearchContact;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/ContactSearchUI;->b:Landroid/app/ProgressDialog;

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030043

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 8

    const/4 v2, 0x3

    const/4 v0, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v3, "MicroMsg.ContactSearchUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSceneEnd: errType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errMsg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/ui/ContactSearchUI;->b:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/ui/ContactSearchUI;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tencent/mm/ui/ContactSearchUI;->b:Landroid/app/ProgressDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/ContactSearchUI;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, p2, v2}, Lcom/tencent/mm/ui/MMErrorProcessor$CertainError;->a(Landroid/content/Context;III)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    const/4 v3, -0x4

    if-ne p2, v3, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/ContactSearchUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a022b

    const v2, 0x7f0a0010

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    const v2, 0x7f0a007f

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/tencent/mm/ui/ContactSearchUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneSearchContact;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneSearchContact;->f()Lcom/tencent/mm/protocal/MMSearchContact$Resp;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v5

    if-eqz v5, :cond_6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "Contact_User"

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ContactSearchUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "Contact_User"

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Contact_Alias"

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Contact_Nick"

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Contact_PyInitial"

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Contact_QuanPin"

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Contact_Sex"

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->i()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "Contact_VUser_Info"

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Contact_VUser_Info_Flag"

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->n()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "Contact_KWeibo_flag"

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->q()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "Contact_KWeibo"

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Contact_KWeiboNick"

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Contact_Scene"

    iget-object v6, p0, Lcom/tencent/mm/ui/ContactSearchUI;->a:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/mm/platformtools/Util;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v0, v1

    :cond_7
    :goto_1
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Contact_KHideExpose"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "Contact_Province"

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_City"

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->h()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;[B)Z

    const-class v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v4, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/ContactSearchUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {v6}, Lcom/tencent/mm/platformtools/Util;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Lcom/tencent/mm/platformtools/Util;->d(Ljava/lang/String;)Z

    move v0, v2

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a029e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ContactSearchUI;->d(I)V

    const v0, 0x7f070104

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ContactSearchUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/ContactSearchUI;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/tencent/mm/ui/ContactSearchUI;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/ContactSearchUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/ContactSearchUI$1;-><init>(Lcom/tencent/mm/ui/ContactSearchUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ContactSearchUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/ContactSearchUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/ContactSearchUI$2;-><init>(Lcom/tencent/mm/ui/ContactSearchUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/ContactSearchUI;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/ContactSearchUI$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/ContactSearchUI$3;-><init>(Lcom/tencent/mm/ui/ContactSearchUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ContactSearchUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f070105

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ContactSearchUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/ContactSearchUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/ContactSearchUI$4;-><init>(Lcom/tencent/mm/ui/ContactSearchUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method
