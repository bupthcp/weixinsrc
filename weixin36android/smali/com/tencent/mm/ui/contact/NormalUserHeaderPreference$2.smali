.class Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->b(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->b(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030101

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b004b

    invoke-direct {v2, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;Landroid/app/Dialog;)Landroid/app/Dialog;

    new-instance v0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2$1;-><init>(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->b(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->b(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->b(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    const v0, 0x7f0702ba

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    const v0, 0x7f0702bc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-static {v2, v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    const v2, 0x7f0702bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->c(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->h(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->e(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->c(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MicroMsg.ContactInfoHeader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the contact "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->c(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no hd head img"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->f(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->g(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->c(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "MicroMsg.ContactInfoHeader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The HDAvatar of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is already exists"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->c(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    const/16 v2, 0x2e

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto/16 :goto_0
.end method
