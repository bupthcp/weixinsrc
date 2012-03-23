.class Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private synthetic b:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->b:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->b:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->b:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    if-nez p2, :cond_1

    new-instance v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->a:Landroid/content/Context;

    const v2, 0x7f03009d

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0701a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f0701a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f0701a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0701a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    const v0, 0x7f0701a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->e:Landroid/widget/TextView;

    const v0, 0x7f0701a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->b:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, v0, v3}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->b:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->j()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->b:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->j()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/modelgetvuserinfo/SceneGetVUserInfo;->a(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x3fc0

    invoke-static {v0, v2}, Lb/a/e;->a(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    iget-object v2, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->b:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->b:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->b:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v0, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/AvatarDrawable;

    if-nez v0, :cond_5

    new-instance v0, Lcom/tencent/mm/ui/AvatarDrawable;

    iget-object v2, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mm/ui/AvatarDrawable;->a()I

    move-result v3

    invoke-static {}, Lcom/tencent/mm/ui/AvatarDrawable;->a()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/tencent/mm/ui/AvatarDrawable;-><init>(Landroid/widget/ImageView;II)V

    iget-object v2, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v2, v0

    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->b:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/AvatarDrawable;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->b:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->b:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, v0, v3}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    move-object v2, v0

    goto :goto_3
.end method
