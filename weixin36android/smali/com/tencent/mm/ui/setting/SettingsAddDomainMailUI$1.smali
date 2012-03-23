.class Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI$1;->a:Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI$1;->a:Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->a(Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI$1;->a:Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->n()V

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI$1;->a:Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0212

    const v2, 0x7f0a0010

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI$1;->a:Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->b(Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;)V

    goto :goto_0
.end method
