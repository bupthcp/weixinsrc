.class Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/MListAdapter$CallBack;)V
    .locals 1

    new-instance v0, Lcom/tencent/mm/modelfriend/FacebookFriend;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-super {p0, p2}, Lcom/tencent/mm/ui/MListAdapter;->a(Lcom/tencent/mm/ui/MListAdapter$CallBack;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/tencent/mm/modelfriend/FacebookFriend;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/modelfriend/FacebookFriend;

    invoke-direct {p1}, Lcom/tencent/mm/modelfriend/FacebookFriend;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/modelfriend/FacebookFriend;->a(Landroid/database/Cursor;)V

    return-object p1
.end method

.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->x()Lcom/tencent/mm/modelfriend/FacebookFriendStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriendStorage;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;->a(Landroid/database/Cursor;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/FacebookFriend;

    if-nez p2, :cond_1

    new-instance v2, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;->d:Landroid/content/Context;

    const v3, 0x7f0300a6

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0700fe

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    const v1, 0x7f0701b4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const v1, 0x7f0701b5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const v1, 0x7f0701b7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    const v1, 0x7f0701b6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-object v2, v1, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->f()I

    move-result v2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->f()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->f()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_3

    :cond_0
    iget-object v2, v1, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v1, v1, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;->d:Landroid/content/Context;

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f020184

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;

    goto/16 :goto_0

    :cond_2
    iget-object v2, v1, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method
