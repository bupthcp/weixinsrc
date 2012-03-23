.class Lcom/tencent/mm/ui/friend/FriendListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Z

.field private e:[Z


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->e:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->e:[Z

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->e:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    aput-boolean v0, v1, p1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->c:Ljava/util/List;

    return-void
.end method

.method public final a(Ljava/util/List;I)V
    .locals 3

    if-gez p2, :cond_1

    iput-object p1, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->e:[Z

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->b:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;->c()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->d:Z

    return-void
.end method

.method public final a()[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->e:[Z

    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-boolean v5, v3, v2

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array v4, v0, [Ljava/lang/String;

    move v2, v1

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->e:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3

    add-int/lit8 v3, v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    move v0, v3

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_2
    return-object v4

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final b(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetInviteFriend$FriendGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$FriendGroup;->a()I

    move-result v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->d:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->c:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetInviteFriend$FriendGroup;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;->f:I

    if-eq v1, v6, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030059

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;-><init>()V

    iput v6, v2, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;->f:I

    const v1, 0x7f070135

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-object v1, v1, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$FriendGroup;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;->f:I

    if-eq v1, v7, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030058

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;-><init>()V

    iput v7, v2, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;->f:I

    const v1, 0x7f070131

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v1, 0x7f070132

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const v1, 0x7f070134

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;->e:Landroid/widget/CheckBox;

    const v1, 0x7f070133

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->P()Lcom/tencent/mm/modelfriend/InviteFriendOpenStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/modelfriend/InviteFriendOpenStorage;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v3, v1, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    :cond_4
    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;->b()I

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;->a()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;->e:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FriendListAdapter;->e:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;

    goto :goto_2

    :cond_6
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/FriendListAdapter$ViewHolder;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_4

    :cond_8
    new-instance v2, Lcom/tencent/mm/algorithm/UIN;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;->d()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/tencent/mm/algorithm/UIN;-><init>(I)V

    invoke-virtual {v2}, Lcom/tencent/mm/algorithm/UIN;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_4

    :cond_9
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_4

    :cond_a
    const-string v2, ""

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;->b()I

    move-result v3

    if-ne v3, v6, :cond_c

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;->b()I

    move-result v3

    if-ne v3, v7, :cond_f

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$RespCmd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    array-length v3, v0

    if-lt v3, v6, :cond_d

    aget-object v3, v0, v5

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    const-string v0, ""

    goto :goto_5

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_f
    const-string v0, ""

    goto/16 :goto_5
.end method
