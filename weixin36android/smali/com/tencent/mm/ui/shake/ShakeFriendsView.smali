.class public Lcom/tencent/mm/ui/shake/ShakeFriendsView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;


# instance fields
.field private a:Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/view/View;

.field private d:Lcom/tencent/mm/ui/shake/ShakeReportUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 5

    const v4, 0x7f070257

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->d:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v0, 0x7f03009b

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v1

    const v0, 0x7f07019f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->d:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300e1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/ui/shake/ShakeFriendsView$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/shake/ShakeFriendsView$1;-><init>(Lcom/tencent/mm/ui/shake/ShakeFriendsView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->d:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-direct {v0, v2}, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->a:Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->a:Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->b:Landroid/widget/ListView;

    new-instance v2, Lcom/tencent/mm/ui/shake/ShakeFriendsView$2;

    invoke-direct {v2, p0, v1}, Lcom/tencent/mm/ui/shake/ShakeFriendsView$2;-><init>(Lcom/tencent/mm/ui/shake/ShakeFriendsView;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/shake/ShakeFriendsView;)Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->a:Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/shake/ShakeFriendsView;)Lcom/tencent/mm/ui/shake/ShakeReportUI;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->d:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->I()Lcom/tencent/mm/modelshake/ShakeItemStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->a:Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    const-string v0, "MicroMsg.ShakeFriendsView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->a:Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->c:Landroid/view/View;

    const v1, 0x7f070257

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->a:Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->n()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->a:Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected final c()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->I()Lcom/tencent/mm/modelshake/ShakeItemStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->a:Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->a:Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->a()V

    const-string v0, "MicroMsg.ShakeFriendsView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    return v0
.end method
