.class abstract Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;
.super Ljava/lang/Object;


# instance fields
.field final synthetic c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->f(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->g(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->p(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Lcom/tencent/mm/storage/Contact;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->c(Lcom/tencent/mm/storage/Contact;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->a()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->f(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->g(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->p(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->d(Lcom/tencent/mm/storage/Contact;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->a()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->k(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->k(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v1

    const v2, 0x7f0a0249

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->k(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$9;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$9;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected final e()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->b(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$1;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->c(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$2;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->e(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->f(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$4;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->g(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$5;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->h(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$6;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$6;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->i(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$7;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$7;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$8;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$8;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
