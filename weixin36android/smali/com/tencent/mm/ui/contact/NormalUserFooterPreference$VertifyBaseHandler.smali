.class Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;
.super Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->f()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method public a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 9

    const/4 v1, 0x0

    const/16 v8, 0xbb8

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v3

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->f()V

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->a:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->a:Landroid/app/ProgressDialog;

    :cond_2
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v3}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    const-wide/16 v3, -0x2

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/Contact;->a(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    const-string v3, "MicroMsg.NormalUserFooterPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert contact failed, username = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    :goto_2
    invoke-static {v2, v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;Lcom/tencent/mm/storage/Contact;)Lcom/tencent/mm/storage/Contact;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Lcom/tencent/mm/storage/Contact;)V

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->c()V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/mm/network/IDispatcher;->f()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/mm/network/IDispatcher;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ui/MMAppMgr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/network/NetService;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->a(Landroid/content/Context;)V

    move v0, v2

    goto/16 :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a007a

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    goto/16 :goto_1

    :pswitch_3
    const/16 v3, -0x64

    if-ne p2, v3, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0a012c

    const v4, 0x7f0a0010

    new-instance v5, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler$2;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler$2;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;)V

    invoke-static {v0, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move v0, v2

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a031f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected b()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->a:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->q(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->i(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->r(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->s(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->b(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->t(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->u(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->p(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->f()V

    return-void
.end method

.method protected c()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->v(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->v(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->b()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    new-instance v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$NormalHandler;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$NormalHandler;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->v(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->e()V

    return-void
.end method

.method protected final d()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0267

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler$1;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler$1;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->a:Landroid/app/ProgressDialog;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyBaseHandler;->b:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->l(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/modelverify/NetSceneVerifyUser;

    const/4 v4, 0x3

    const-string v5, ""

    invoke-direct {v3, v4, v0, v1, v5}, Lcom/tencent/mm/modelverify/NetSceneVerifyUser;-><init>(ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method
