.class Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a0247

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v4, v4, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v4}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0a0010

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0a001f

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f0a0020

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3$1;

    invoke-direct {v6, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3$1;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;)V

    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020129

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a0246

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v4, v4, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v4}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0
.end method
