.class Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2$1;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2$1;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2$1;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Lcom/tencent/mm/storage/Contact;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2$1;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->c(Lcom/tencent/mm/storage/Contact;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2$1;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler$2;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler;->a()V

    return-void
.end method
