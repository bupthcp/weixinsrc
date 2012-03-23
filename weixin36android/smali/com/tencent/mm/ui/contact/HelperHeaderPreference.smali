.class public Lcom/tencent/mm/ui/contact/HelperHeaderPreference;
.super Landroid/preference/Preference;

# interfaces
.implements Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/tencent/mm/storage/Contact;

.field private f:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->g:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MicroMsg.HelperHeaderPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAvatar : user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->e:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->b:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->e:Lcom/tencent/mm/storage/Contact;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "MicroMsg.HelperHeaderPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView : bindView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "contact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->e:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->e:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->e:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->f:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->f:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    invoke-interface {v0, p0}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;->a(Lcom/tencent/mm/ui/contact/HelperHeaderPreference;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->f:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    invoke-interface {v0}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;->a()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->f:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->f:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    invoke-interface {v0}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;->b()V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    return-void
.end method

.method public final a(Lcom/tencent/mm/storage/Contact;Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->a()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->e:Lcom/tencent/mm/storage/Contact;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->f:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->b()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->f:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->a(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->c:Landroid/widget/TextView;

    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->c:Landroid/widget/TextView;

    const v1, 0x7f0202b2

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->b(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->c:Landroid/widget/TextView;

    const v1, 0x7f0a019c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->c:Landroid/widget/TextView;

    const v1, 0x7f0202b1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0700e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->b:Landroid/widget/ImageView;

    const v0, 0x7f0700e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->c:Landroid/widget/TextView;

    const v0, 0x7f0700e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->a:Landroid/widget/TextView;

    const v0, 0x7f0700ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->d:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->g:Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->b()V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method
