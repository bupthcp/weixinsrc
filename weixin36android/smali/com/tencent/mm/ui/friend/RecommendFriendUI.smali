.class public Lcom/tencent/mm/ui/friend/RecommendFriendUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Lcom/tencent/mm/ui/friend/FriendListAdapter;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->a:Landroid/app/ProgressDialog;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->e:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->f:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/RecommendFriendUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->h(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/RecommendFriendUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/friend/RecommendFriendUI;)Lcom/tencent/mm/ui/friend/FriendListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b:Lcom/tencent/mm/ui/friend/FriendListAdapter;

    return-object v0
.end method

.method private b()V
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->g:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->i:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->finish()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->p()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/friend/RecommendFriendUI;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b:Lcom/tencent/mm/ui/friend/FriendListAdapter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/friend/FriendListAdapter;->a()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpInviteFriendOpen;

    iget-object v3, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b:Lcom/tencent/mm/ui/friend/FriendListAdapter;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/friend/FriendListAdapter;->a()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    iget v4, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->g:I

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpInviteFriendOpen;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    new-instance v1, Lcom/tencent/mm/modelfriend/InviteFriendOpen;

    invoke-direct {v1}, Lcom/tencent/mm/modelfriend/InviteFriendOpen;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b:Lcom/tencent/mm/ui/friend/FriendListAdapter;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/friend/FriendListAdapter;->a()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelfriend/InviteFriendOpen;->a(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->g:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelfriend/InviteFriendOpen;->a(I)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelfriend/InviteFriendOpen;->b(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->P()Lcom/tencent/mm/modelfriend/InviteFriendOpenStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelfriend/InviteFriendOpenStorage;->a(Lcom/tencent/mm/modelfriend/InviteFriendOpen;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0311

    const v2, 0x7f0a0010

    new-instance v3, Lcom/tencent/mm/ui/friend/RecommendFriendUI$6;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI$6;-><init>(Lcom/tencent/mm/ui/friend/RecommendFriendUI;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/friend/RecommendFriendUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/ui/friend/RecommendFriendUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method private h(I)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "MicroMsg.RecommendFriendUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dealGetInviteFriendSuccess  respList.size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b:Lcom/tencent/mm/ui/friend/FriendListAdapter;

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->e:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Lcom/tencent/mm/ui/friend/FriendListAdapter;->a(Ljava/util/List;I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b:Lcom/tencent/mm/ui/friend/FriendListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-boolean v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->h:Z

    iget v1, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->g:I

    if-nez v1, :cond_1

    const-string v1, ""

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetInviteFriend$FriendGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$FriendGroup;->a()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetInviteFriend$FriendGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetInviteFriend$FriendGroup;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->d(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b:Lcom/tencent/mm/ui/friend/FriendListAdapter;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->h:Z

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/friend/FriendListAdapter;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b:Lcom/tencent/mm/ui/friend/FriendListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/friend/FriendListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->c:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method private p()V
    .locals 4

    const/4 v1, 0x1

    const-string v2, "dealGetInviteFriendGroupSuccess just only qq"

    iget v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->g:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const-string v0, "MicroMsg.RecommendFriendUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dealGetInviteFriendGroupSuccess  respList.size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b:Lcom/tencent/mm/ui/friend/FriendListAdapter;

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->f:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/friend/FriendListAdapter;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b:Lcom/tencent/mm/ui/friend/FriendListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->e(I)V

    iput-boolean v1, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->h:Z

    const v0, 0x7f0a01bf

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->d(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b:Lcom/tencent/mm/ui/friend/FriendListAdapter;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->h:Z

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/friend/FriendListAdapter;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b:Lcom/tencent/mm/ui/friend/FriendListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/friend/FriendListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030057

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 3

    const-string v0, "MicroMsg.RecommendFriendUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneEnd: errType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->a:Landroid/app/ProgressDialog;

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->o()V

    :goto_0
    return-void

    :cond_2
    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/NetSceneGetInviteFriend;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneGetInviteFriend;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->e:Ljava/util/List;

    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneGetInviteFriend;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneGetInviteFriend;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->i:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-direct {p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->o()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->g:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    invoke-direct {p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->o()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->g:I

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->h(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->p()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "recommend_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->h:Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    const v0, 0x7f070130

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->d:Landroid/widget/TextView;

    iget v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->g:I

    if-ne v0, v5, :cond_0

    const v0, 0x7f0a01ba

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->d(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->d:Landroid/widget/TextView;

    const v1, 0x7f0a01be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    new-instance v0, Lcom/tencent/mm/ui/friend/FriendListAdapter;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/friend/FriendListAdapter;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b:Lcom/tencent/mm/ui/friend/FriendListAdapter;

    const v0, 0x7f07012f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/friend/RecommendFriendUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI$1;-><init>(Lcom/tencent/mm/ui/friend/RecommendFriendUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b:Lcom/tencent/mm/ui/friend/FriendListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0a030e

    new-instance v1, Lcom/tencent/mm/ui/friend/RecommendFriendUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI$2;-><init>(Lcom/tencent/mm/ui/friend/RecommendFriendUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->e(I)V

    iput-boolean v5, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->i:Z

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneGetInviteFriend;

    iget v1, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->g:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelsimple/NetSceneGetInviteFriend;-><init>(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0313

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/ui/friend/RecommendFriendUI$5;

    invoke-direct {v4, p0, v0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI$5;-><init>(Lcom/tencent/mm/ui/friend/RecommendFriendUI;Lcom/tencent/mm/modelsimple/NetSceneGetInviteFriend;)V

    invoke-static {v1, v2, v3, v5, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->a:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/tencent/mm/ui/friend/RecommendFriendUI$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI$3;-><init>(Lcom/tencent/mm/ui/friend/RecommendFriendUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/friend/RecommendFriendUI$4;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI$4;-><init>(Lcom/tencent/mm/ui/friend/RecommendFriendUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->a(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f0a01bb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->d(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->d:Landroid/widget/TextView;

    const v1, 0x7f0a01bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f0a01bf

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->d(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->d:Landroid/widget/TextView;

    const v1, 0x7f0a01bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
