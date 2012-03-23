.class public Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

.field private c:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

.field private f:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

.field private g:Ljava/util/List;

.field private h:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->a:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$2;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->h:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->a:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;Lcom/tencent/mm/modelsimple/NetSceneLbsFind;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->e:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Lcom/tencent/mm/ui/nearbyfriends/LBSManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->b:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;Lcom/tencent/mm/modelsimple/NetSceneLbsFind;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->f:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->h:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Lcom/tencent/mm/ui/nearbyfriends/LBSManager;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->b:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->e:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->a:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->f:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f03009b

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->e:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    if-nez v0, :cond_1

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->f()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->f:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    if-nez v0, :cond_2

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->f()I

    move-result v0

    if-eq v0, v5, :cond_0

    :cond_2
    const-string v0, "MicroMsg.NearbyFriend"

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

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v4, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->a:Landroid/app/ProgressDialog;

    :cond_3
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->f()I

    move-result v0

    if-ne v0, v3, :cond_6

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->c:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const v0, 0x7f07019d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_5
    iput-object v4, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->e:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    :cond_6
    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->f()I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a03c8

    const v2, 0x7f0a0010

    new-instance v3, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$7;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$7;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    iput-object v4, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->f:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    goto/16 :goto_0

    :cond_7
    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->f()I

    move-result v0

    if-ne v0, v3, :cond_8

    const v0, 0x7f07019d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, -0x7d1

    if-ne p2, v1, :cond_9

    const v1, 0x7f0a03bf

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    iput-object v4, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->e:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    :cond_8
    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->f()I

    move-result v0

    if-ne v0, v5, :cond_0

    const v0, 0x7f0a03c9

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-object v4, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->f:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    goto/16 :goto_0

    :cond_9
    const v1, 0x7f0a03be

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->c:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a03b2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->d(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g:Ljava/util/List;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    const v0, 0x7f07019f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->d:Landroid/widget/ListView;

    new-instance v0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;

    invoke-direct {v0, p0, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->c:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->c:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$3;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/AvatarWrapperScrollListener;

    invoke-direct {v1}, Lcom/tencent/mm/ui/AvatarWrapperScrollListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$4;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$4;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$5;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$5;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->a(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0201c9

    new-instance v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->c(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03b7

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$1;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$1;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->a:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->h:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->b:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->b:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->b:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->b:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->d()V

    iput-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->h:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

    iput-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->b:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->v()Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->a()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    invoke-static {p0}, Lcom/tencent/mm/ui/AvatarDrawable;->b(Lcom/tencent/mm/ui/MMActivity;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->b:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->b:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->b()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    invoke-static {p0}, Lcom/tencent/mm/ui/AvatarDrawable;->a(Lcom/tencent/mm/ui/MMActivity;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->b:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->b:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->c()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->c:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$NearbyFriendAdapter;->notifyDataSetChanged()V

    return-void
.end method
