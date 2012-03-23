.class public Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;
.super Lcom/tencent/mm/ui/MMPreference;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings_invite_qq_friends"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/friend/RecommendFriendUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "recommend_type"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v1, "settings_recommend_by_mail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/friend/RecommendFriendUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "recommend_type"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "settings_recommend_by_mb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/friend/RecommendFriendUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "recommend_type"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "settings_invite_mobile_friends"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "sms_body"

    const v2, 0x7f0a00c6

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const v0, 0x7f0a00c4

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f05001a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a02a7

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    new-instance v0, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI$1;-><init>(Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_invite_qq_friends"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->a()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_recommend_by_mail"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->a()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_recommend_by_mb"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v1

    const-string v2, "@t.qq.com"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_invite_mobile_friends"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    const v1, 0x7f02014e

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const v1, 0x7f020124

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f02014d

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    const v1, 0x7f020298

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
