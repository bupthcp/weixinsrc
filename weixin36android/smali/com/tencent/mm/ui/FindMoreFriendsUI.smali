.class public Lcom/tencent/mm/ui/FindMoreFriendsUI;
.super Lcom/tencent/mm/ui/MMPreference;

# interfaces
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:Landroid/app/AlertDialog;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->b:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->e:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/FindMoreFriendsUI;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->c:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private o()V
    .locals 11

    const v10, 0x7f0202c1

    const v9, 0x7f020120

    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const v2, 0x7f050018

    invoke-interface {v0, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->b(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->e:Z

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_b

    move v2, v1

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v4, "find_friends_by_near"

    invoke-interface {v0, v4}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->g()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0, v8}, Lcom/tencent/mm/ui/IconPreference;->b(I)V

    :goto_1
    if-nez v2, :cond_d

    iget-object v4, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v4, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v4, "find_friends_by_qrcode"

    invoke-interface {v0, v4}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    if-eqz v0, :cond_1

    const v4, 0x7f02011f

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v4, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->e:Z

    if-eqz v4, :cond_e

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/IconPreference;->a(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a0029

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v10}, Lcom/tencent/mm/ui/IconPreference;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v4, "find_friends_by_micromsg"

    invoke-interface {v0, v4}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    if-eqz v0, :cond_2

    const v4, 0x7f02011e

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v4, "find_friends_by_qq"

    invoke-interface {v0, v4}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v4

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v4, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v4, "find_friends_by_mobile"

    invoke-interface {v0, v4}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    if-eqz v0, :cond_4

    const v4, 0x7f020122

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v4, "find_friends_by_facebook"

    invoke-interface {v0, v4}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->l()Z

    move-result v4

    if-eqz v4, :cond_10

    const v4, 0x7f020121

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_5
    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_11

    move v4, v1

    :goto_6
    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v5, "find_friends_by_shake"

    invoke-interface {v0, v5}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    if-eqz v0, :cond_6

    if-nez v4, :cond_12

    iget-object v5, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v5, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    :cond_6
    :goto_7
    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v5, "send_card_to_microblog"

    invoke-interface {v0, v5}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    if-eqz v0, :cond_7

    const v5, 0x7f020271

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_13

    :goto_8
    iput-boolean v1, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->f:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "voice_bottle"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->f:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    :cond_8
    :goto_9
    if-nez v2, :cond_9

    if-nez v4, :cond_9

    iget-boolean v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->f:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v1, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v2, "find_friends_cat"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "album_dyna_photo_ui_title"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v9}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    return-void

    :cond_b
    move v2, v3

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/IconPreference;->b(I)V

    const-string v4, ""

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/IconPreference;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const v4, 0x7f020123

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v0, v8}, Lcom/tencent/mm/ui/IconPreference;->a(I)V

    goto/16 :goto_3

    :cond_f
    const v4, 0x7f020124

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_10
    iget-object v4, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v4, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_11
    move v4, v3

    goto/16 :goto_6

    :cond_12
    const v5, 0x7f020125

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    :cond_13
    move v1, v3

    goto/16 :goto_8

    :cond_14
    iget-boolean v1, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->f:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v5, "voice_bottle"

    invoke-interface {v1, v5}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/IconPreference;

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ConversationStorage;->e()I

    move-result v5

    if-lez v5, :cond_15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v10}, Lcom/tencent/mm/ui/IconPreference;->a(Ljava/lang/String;I)V

    :cond_15
    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->d()I

    move-result v6

    if-lez v5, :cond_17

    const v5, 0x8000

    and-int/2addr v5, v6

    if-nez v5, :cond_17

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/IconPreference;->a(I)V

    :cond_16
    :goto_a
    invoke-virtual {p0, v9}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    :cond_17
    invoke-virtual {v1, v8}, Lcom/tencent/mm/ui/IconPreference;->a(I)V

    goto :goto_a
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "find_friends_by_qrcode"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v0, "find_friends_by_micromsg"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/ContactSearchUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "find_friends_by_qq"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/friend/QQGroupUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "find_friends_by_mobile"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/friend/MobileFriendUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v0, "find_friends_by_facebook"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v0, "find_friends_by_near"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x1007

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->b(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/tencent/mm/model/SelfPersonCard;->b()Lcom/tencent/mm/model/SelfPersonCard;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/tencent/mm/model/SelfPersonCard;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/model/SelfPersonCard;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/model/SelfPersonCard;->d()I

    move-result v0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    if-nez v0, :cond_9

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x1008

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    const-string v2, "tab_find_friend"

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/MainTabUI;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->b:Landroid/app/AlertDialog;

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->c()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a0010

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->d:Landroid/view/View;

    new-instance v4, Lcom/tencent/mm/ui/FindMoreFriendsUI$1;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/FindMoreFriendsUI$1;-><init>(Lcom/tencent/mm/ui/FindMoreFriendsUI;)V

    new-instance v5, Lcom/tencent/mm/ui/FindMoreFriendsUI$2;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/FindMoreFriendsUI$2;-><init>(Lcom/tencent/mm/ui/FindMoreFriendsUI;)V

    invoke-static {v0, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->b:Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :cond_d
    const-string v0, "voice_bottle"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v3, 0x3002

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v0

    if-lez v0, :cond_e

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x3005

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x3004

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    :goto_2
    move v0, v1

    goto/16 :goto_0

    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_10
    const-string v0, "find_friends_by_shake"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0

    :cond_11
    const-string v0, "album_dyna_photo_ui_title"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0

    :cond_12
    const-string v0, "send_card_to_microblog"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0

    :cond_13
    move v0, v2

    goto/16 :goto_0
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->o()V

    return-void
.end method

.method public final d_()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a02a2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const v0, 0x7f03005a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->d:Landroid/view/View;

    const v1, 0x7f070137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI;->c:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConversationStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onResume()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConversationStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->o()V

    return-void
.end method
