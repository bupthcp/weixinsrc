.class Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler$1;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler$1;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->k(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Contact_User"

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler$1;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler;

    iget-object v2, v2, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_Scene"

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler$1;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler;

    iget-object v2, v2, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->l(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler$1;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->k(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MMActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
