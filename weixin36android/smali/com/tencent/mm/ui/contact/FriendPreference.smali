.class public Lcom/tencent/mm/ui/contact/FriendPreference;
.super Landroid/preference/Preference;

# interfaces
.implements Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;
.implements Lcom/tencent/mm/ui/contact/ContactInfoUI$IFriendWidget;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Z

.field private e:Lcom/tencent/mm/storage/Contact;

.field private f:Lcom/tencent/mm/modelfriend/AddrUpload;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:J

.field private j:I

.field private k:Lcom/tencent/mm/ui/MMActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->k:Lcom/tencent/mm/ui/MMActivity;

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/FriendPreference;->setLayoutResource(I)V

    const v0, 0x7f030091

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/FriendPreference;->setWidgetLayoutResource(I)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->d:Z

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->e:Lcom/tencent/mm/storage/Contact;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->g:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->h:J

    iput-wide v2, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->i:J

    iput v1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->j:I

    return-void
.end method

.method private e()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->e:Lcom/tencent/mm/storage/Contact;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->d:Z

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "MicroMsg.FriendPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView : contact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->e:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bindView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->g()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->h()V

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->f()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    const/16 v3, 0x30

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->e:Lcom/tencent/mm/storage/Contact;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->d:Z

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "MicroMsg.FriendPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView : contact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->e:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bindView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->j:I

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a005c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->e:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/a/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-static {v0, v3, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->k:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f020184

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    const/16 v3, 0x30

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->e:Lcom/tencent/mm/storage/Contact;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->d:Z

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "MicroMsg.FriendPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView : contact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->e:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bindView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->j:I

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a024b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->h:J

    invoke-static {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(J)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/a/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-static {v0, v3, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->k:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f020184

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private h()V
    .locals 4

    const/16 v3, 0x30

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->e:Lcom/tencent/mm/storage/Contact;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->d:Z

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "MicroMsg.FriendPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView : contact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->e:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bindView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->j:I

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a024c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/AddrUpload;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lb/a/o;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->k:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f020102

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-static {v0, v3, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->j:I

    return v0
.end method

.method public final a(Lcom/tencent/mm/storage/Contact;Ljava/lang/String;JLjava/lang/String;J)Z
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->e:Lcom/tencent/mm/storage/Contact;

    iput-wide p3, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->h:J

    iput-object p5, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->g:Ljava/lang/String;

    iput-wide p6, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->i:J

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/AddrUpload;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    const-string v0, "MicroMsg.FriendPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error : this is not the mobile contact, MD5 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->c()Z

    :goto_2
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelfriend/AddrUpload;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-virtual {v3}, Lcom/tencent/mm/modelfriend/AddrUpload;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->f:Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->a(Ljava/lang/String;Lcom/tencent/mm/modelfriend/AddrUpload;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    const-string v0, "MicroMsg.FriendPreference"

    const-string v1, "update mobile contact username failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->c()Z

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->h()V

    move v2, v1

    goto :goto_2

    :cond_6
    cmp-long v0, p3, v3

    if-lez v0, :cond_7

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->g()V

    move v2, v1

    goto :goto_2

    :cond_7
    cmp-long v0, p6, v3

    if-lez v0, :cond_8

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->f()V

    move v2, v1

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->c()Z

    goto :goto_2
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->d(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->h:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->e()V

    :cond_0
    invoke-static {p1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->c(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->i:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->e()V

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getSummary()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f070124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->a:Landroid/widget/TextView;

    const v0, 0x7f070178

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->b:Landroid/widget/TextView;

    const v0, 0x7f070177

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->c:Landroid/widget/ImageView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/FriendPreference;->d:Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->e()V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/FriendPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f070117

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    const v3, 0x7f03007e

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-object v2
.end method
