.class Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$9;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$9;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->l(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    new-instance v1, Lcom/tencent/mm/modelsimple/NetSceneExpose;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$9;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v2, v2, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/modelsimple/NetSceneExpose;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$9;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->k(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$9;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->k(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v1

    const v2, 0x7f0a024a

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$9;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v2, v2, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->k(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v2

    const v3, 0x7f0a0016

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$9;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->m(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$9;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->m(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$9;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->m(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
