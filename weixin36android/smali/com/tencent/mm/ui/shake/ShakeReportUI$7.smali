.class Lcom/tencent/mm/ui/shake/ShakeReportUI$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/shake/ShakeReportUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$7;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$7;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->r(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->I()Lcom/tencent/mm/modelshake/ShakeItemStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$7;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->r(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelshake/ShakeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$7;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const-class v3, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Contact_User"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$7;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$7;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const-class v3, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_Nick"

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_Distance"

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_Signature"

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_Province"

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_City"

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_Sex"

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->i()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Contact_IsLBSFriend"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "Contact_VUser_Info"

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_VUser_Info_Flag"

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->n()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Contact_Scene"

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$7;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->s(Lcom/tencent/mm/ui/shake/ShakeReportUI;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$7;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
