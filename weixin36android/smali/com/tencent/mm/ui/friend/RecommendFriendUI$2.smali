.class Lcom/tencent/mm/ui/friend/RecommendFriendUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/friend/RecommendFriendUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/friend/RecommendFriendUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI$2;->a:Lcom/tencent/mm/ui/friend/RecommendFriendUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI$2;->a:Lcom/tencent/mm/ui/friend/RecommendFriendUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->b(Lcom/tencent/mm/ui/friend/RecommendFriendUI;)Lcom/tencent/mm/ui/friend/FriendListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/friend/FriendListAdapter;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI$2;->a:Lcom/tencent/mm/ui/friend/RecommendFriendUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->c()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI$2;->a:Lcom/tencent/mm/ui/friend/RecommendFriendUI;

    const v3, 0x7f0a0310

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/RecommendFriendUI$2;->a:Lcom/tencent/mm/ui/friend/RecommendFriendUI;

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/friend/RecommendFriendUI$2$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI$2$1;-><init>(Lcom/tencent/mm/ui/friend/RecommendFriendUI$2;)V

    new-instance v4, Lcom/tencent/mm/ui/friend/RecommendFriendUI$2$2;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI$2$2;-><init>(Lcom/tencent/mm/ui/friend/RecommendFriendUI$2;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method
