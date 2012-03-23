.class Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$4;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$4;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$4;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0237

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$4;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v2, v2, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0236

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$4$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$4$1;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$4;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method
