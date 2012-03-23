.class Lcom/tencent/mm/ui/friend/MobileFriendAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/tencent/mm/modelfriend/AddrUpload;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-direct {p1}, Lcom/tencent/mm/modelfriend/AddrUpload;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(Landroid/database/Cursor;)V

    return-object p1
.end method

.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/MobileFriendAdapter;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->d()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/MobileFriendAdapter;->a(Landroid/database/Cursor;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/friend/MobileFriendAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/AddrUpload;

    if-nez p2, :cond_1

    new-instance v2, Lcom/tencent/mm/ui/friend/MobileFriendAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/ui/friend/MobileFriendAdapter$ViewHolder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/MobileFriendAdapter;->d:Landroid/content/Context;

    const v3, 0x7f030098

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f070192

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/MobileFriendAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const v1, 0x7f070193

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/MobileFriendAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v1, 0x7f070195

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/MobileFriendAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    const v1, 0x7f070194

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/MobileFriendAdapter$ViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/MobileFriendAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/tencent/mm/ui/friend/MobileFriendAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->h()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/tencent/mm/ui/friend/MobileFriendAdapter$ViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->h()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->h()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    :cond_0
    iget-object v0, v1, Lcom/tencent/mm/ui/friend/MobileFriendAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/friend/MobileFriendAdapter$ViewHolder;

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/MobileFriendAdapter$ViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/tencent/mm/ui/friend/MobileFriendAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
