.class Lcom/tencent/mm/ui/friend/QQFriendAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;


# instance fields
.field private a:I

.field private b:Lcom/tencent/mm/ui/MMActivity;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    new-instance v0, Lcom/tencent/mm/modelfriend/QQList;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/QQList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    iput p2, p0, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->a:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/tencent/mm/modelfriend/QQList;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/modelfriend/QQList;

    invoke-direct {p1}, Lcom/tencent/mm/modelfriend/QQList;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/modelfriend/QQList;->a(Landroid/database/Cursor;)V

    return-object p1
.end method

.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->b()V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->q()Lcom/tencent/mm/modelfriend/QQListStorage;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/QQListStorage;->b(I)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->a(Landroid/database/Cursor;)V

    :goto_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->q()Lcom/tencent/mm/modelfriend/QQListStorage;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->a:I

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelfriend/QQListStorage;->a(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->a(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->n()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->b()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v3, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/QQList;

    if-nez p2, :cond_1

    new-instance v2, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v4, 0x7f0300a6

    invoke-static {v1, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0700fe

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    const v1, 0x7f0701b4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const v1, 0x7f0701b5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const v1, 0x7f0701b7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    const v1, 0x7f0701b6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQList;->i()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v2, v4, v5}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    iget-object v4, v1, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQList;->c()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQList;->d()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQList;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQList;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/algorithm/UIN;->a(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQList;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(J)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v4, 0x7f020184

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQList;->d()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQList;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    :cond_0
    iget-object v0, v1, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;

    goto/16 :goto_0

    :cond_2
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_4
    iget-object v0, v1, Lcom/tencent/mm/ui/friend/QQFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    move-object v2, v3

    goto :goto_2
.end method
