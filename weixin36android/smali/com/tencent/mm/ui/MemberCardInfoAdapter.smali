.class Lcom/tencent/mm/ui/MemberCardInfoAdapter;
.super Lcom/tencent/mm/ui/AddressAdapter;

# interfaces
.implements Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;


# instance fields
.field private f:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/mm/ui/AddressAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/storage/Contact;Landroid/database/Cursor;)Lcom/tencent/mm/storage/Contact;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/storage/Contact;

    invoke-direct {p1}, Lcom/tencent/mm/storage/Contact;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/storage/Contact;->a(Landroid/database/Cursor;)V

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/tencent/mm/storage/Contact;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->a(Lcom/tencent/mm/storage/Contact;Landroid/database/Cursor;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->f:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ContactStorage;->d()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->a(Landroid/database/Cursor;)V

    :goto_0
    invoke-super {p0}, Lcom/tencent/mm/ui/AddressAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->a(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->k()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/Contact;

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f0300ca

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/tencent/mm/ui/MemberCardInfoAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/ui/MemberCardInfoAdapter$ViewHolder;-><init>()V

    const v1, 0x7f070227

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/MemberCardInfoAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const v1, 0x7f070106

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/MemberCardInfoAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    const v1, 0x7f070228

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/MemberCardInfoAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-object v2, p0, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/ui/MemberCardInfoAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/mm/ui/MemberCardInfoAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/tencent/mm/ui/MemberCardInfoAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/tencent/mm/ui/MemberCardInfoAdapter$ViewHolder;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f0a0389

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/MemberCardInfoAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/tencent/mm/ui/MemberCardInfoAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
