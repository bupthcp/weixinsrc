.class public Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;
.super Landroid/preference/Preference;

# interfaces
.implements Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Lcom/tencent/mm/storage/Contact;

.field private p:I

.field private q:I

.field private r:J

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->n:Z

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->n:Z

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->a:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .locals 8

    const/4 v1, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "MicroMsg.VertifyUserHeaderPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView : bindView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "contact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->q:I

    const/16 v3, 0x25

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->p:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->b:Landroid/widget/TextView;

    const v3, 0x7f0a015e

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->L()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->L()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->L()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/model/ContactStorageLogic;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->K()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->K()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->g(Lcom/tencent/mm/storage/Contact;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->S()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->S()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->U()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->a:Landroid/content/Context;

    const v5, 0x7f0a018e

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/Contact;->S()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/mm/model/ContactStorageLogic;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_6
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->p()I

    move-result v0

    if-ne v0, v1, :cond_c

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->a:Landroid/content/Context;

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f02013a

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->b:Landroid/widget/TextView;

    const v3, 0x7f0a015a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->b:Landroid/widget/TextView;

    const v3, 0x7f0a015b

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->b:Landroid/widget/TextView;

    const v3, 0x7f0a0351

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->b:Landroid/widget/TextView;

    const v3, 0x7f0a015c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_5
    iget v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->q:I

    const/16 v3, 0x28

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->p:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->b:Landroid/widget/TextView;

    const v3, 0x7f0a0163

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->b:Landroid/widget/TextView;

    const v3, 0x7f0a0167

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->a:Landroid/content/Context;

    const v3, 0x7f0a0164

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->r:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :sswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->a:Landroid/content/Context;

    const v3, 0x7f0a0165

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->b:Landroid/widget/TextView;

    const v4, 0x7f0a0168

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->s:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    invoke-static {v5}, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->d:Landroid/widget/ImageView;

    const v3, 0x7f020100

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->p()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->a:Landroid/content/Context;

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f020139

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

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

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "MicroMsg.VertifyUserHeaderPreference"

    const-string v1, "getLocalMobileRemark : phoneMD5 null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/AddrUpload;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const-string v0, "MicroMsg.VertifyUserHeaderPreference"

    const-string v1, "getLocalMobileRemark : not in phone addr"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/tencent/mm/storage/Contact;IIJLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ContactStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_Content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->o:Lcom/tencent/mm/storage/Contact;

    iput p2, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->p:I

    iput p3, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->q:I

    iput-wide p4, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->r:J

    iput-object p6, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->s:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->t:Ljava/lang/String;

    const-string v1, "initView: contact username is null"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->a()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    const-string v0, "MicroMsg.VertifyUserHeaderPreference"

    const-string v1, "onBindView"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0700f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->b:Landroid/widget/TextView;

    const v0, 0x7f0700f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->c:Landroid/widget/TextView;

    const v0, 0x7f0700f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->d:Landroid/widget/ImageView;

    const v0, 0x7f0700f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->e:Landroid/widget/TextView;

    const v0, 0x7f0700eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->f:Landroid/widget/ImageView;

    const v0, 0x7f0700f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->g:Landroid/widget/TextView;

    const v0, 0x7f0700fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->h:Landroid/widget/TextView;

    const v0, 0x7f0700fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->i:Landroid/widget/TextView;

    const v0, 0x7f0700f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->j:Landroid/widget/TextView;

    const v0, 0x7f0700f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->k:Landroid/widget/TextView;

    const v0, 0x7f0700f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->l:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->n:Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->a()V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method
