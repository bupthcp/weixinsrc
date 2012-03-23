.class Lcom/tencent/mm/ui/facebook/FacebookFriendUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/facebook/FacebookFriendUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/facebook/FacebookFriendUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$2;->a:Lcom/tencent/mm/ui/facebook/FacebookFriendUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$2;->a:Lcom/tencent/mm/ui/facebook/FacebookFriendUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->a(Lcom/tencent/mm/ui/facebook/FacebookFriendUI;)Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/FacebookFriend;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->f()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->f()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$2;->a:Lcom/tencent/mm/ui/facebook/FacebookFriendUI;

    const-class v3, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_Nick"

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_KFacebookId"

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->d()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "Contact_KFacebookName"

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_Scene"

    const/16 v3, 0x1f

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$2;->a:Lcom/tencent/mm/ui/facebook/FacebookFriendUI;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->f()I

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$2;->a:Lcom/tencent/mm/ui/facebook/FacebookFriendUI;

    const-class v3, Lcom/tencent/mm/ui/facebook/ShowNonWeixinFriendUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Contact_KFacebookId"

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->d()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "Contact_KFacebookName"

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$2;->a:Lcom/tencent/mm/ui/facebook/FacebookFriendUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
