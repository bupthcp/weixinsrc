.class Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$3;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$3;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->g(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$3;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    const-class v3, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Contact_User"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$3;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$3;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    const-class v3, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_Alias"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_Nick"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_Distance"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_Signature"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_Province"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_City"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_Sex"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->f()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Contact_IsLBSFriend"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "Contact_Scene"

    const/16 v3, 0x12

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Contact_VUser_Info"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_VUser_Info_Flag"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->j()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Contact_KWeibo_flag"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->m()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Contact_KWeibo"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_KWeiboNick"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp$LbsContactInfo;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$3;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
