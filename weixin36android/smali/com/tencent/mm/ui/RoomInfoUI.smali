.class public Lcom/tencent/mm/ui/RoomInfoUI;
.super Lcom/tencent/mm/ui/MMPreference;

# interfaces
.implements Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private c:Landroid/content/SharedPreferences;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/tencent/mm/storage/Contact;

.field private g:Lcom/tencent/mm/ui/RoomInfoContPreference;

.field private h:Landroid/preference/Preference;

.field private i:Landroid/preference/CheckBoxPreference;

.field private j:Landroid/os/Handler;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->a:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/RoomInfoUI;)Lcom/tencent/mm/ui/RoomInfoContPreference;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/RoomInfoUI;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/mm/modelsimple/NetSceneDelChatRoomMember;

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/modelsimple/NetSceneDelChatRoomMember;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0a036a

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/RoomInfoUI$5;

    invoke-direct {v4, p0, v1}, Lcom/tencent/mm/ui/RoomInfoUI$5;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;Lcom/tencent/mm/modelsimple/NetSceneDelChatRoomMember;)V

    invoke-static {p0, v0, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->a:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/RoomInfoUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/RoomInfoUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/RoomInfoUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->v()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/ui/RoomInfoUI;)Lcom/tencent/mm/storage/Contact;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    return-object v0
.end method

.method private t()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private u()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->d:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->k:I

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/RoomInfoUI;->g(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->i:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->i:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "room_msg_notify"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->k:I

    if-ne v0, v3, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->g(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->i:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->i:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "room_msg_notify"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->j:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/RoomInfoUI$9;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/RoomInfoUI$9;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private w()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/RoomInfoContPreference;->notifyChanged()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 10

    const v9, 0x7f0a0362

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "MicroMsg.RoomInfoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSceneEnd: errType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " errCode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " errMsg = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_c

    :cond_1
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_3

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;

    if-eqz p2, :cond_5

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    const-string v4, ""

    const-string v1, ""

    const/16 v5, -0x17

    if-ne p2, v5, :cond_2

    const v1, 0x7f0a0385

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f0a0384

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->h()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_7

    const v0, 0x7f0a009e

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "\u3001"

    invoke-static {v5, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v9}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/RoomInfoUI$10;

    invoke-direct {v2, p0, v5}, Lcom/tencent/mm/ui/RoomInfoUI$10;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;Ljava/util/List;)V

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    :cond_3
    :goto_3
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x44

    if-ne v0, v1, :cond_4

    const/16 v0, -0x42

    if-ne p2, v0, :cond_4

    const v0, 0x7f0a0364

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->w()V

    :cond_4
    :goto_4
    return-void

    :cond_5
    move v1, v3

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    const v0, 0x7f0a009d

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "\u3001"

    invoke-static {v5, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->g()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    invoke-virtual {p0, v9}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v6, 0x7f0a0092

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "\u3001"

    invoke-static {v5, v8}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-virtual {p0, v6, v7}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual {p0, v9}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v5, 0x7f0a0093

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "\u3001"

    invoke-static {v0, v7}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    invoke-static {p0, v1, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto/16 :goto_3

    :cond_b
    const v0, 0x7f0a007e

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_c
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->w()V

    goto/16 :goto_4

    :sswitch_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->w()V

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x44 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9

    const/4 v8, 0x0

    const v6, 0x7f0a0010

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v0, "room_name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;

    invoke-virtual {v4, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "Contact_mode_name_type"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Contact_User"

    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->c()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const-string v0, "room_save_to_contact"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0a0370

    invoke-static {p0, v0, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    :cond_1
    :goto_0
    const-string v0, "room_msg_notify"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    const-wide/32 v4, 0x200000

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mm/storage/Contact;->a(J)V

    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->k:I

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->k:I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v0

    new-instance v4, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomNotify;

    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    iget v6, p0, Lcom/tencent/mm/ui/RoomInfoUI;->k:I

    invoke-direct {v4, v5, v6}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomNotify;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    iget v4, p0, Lcom/tencent/mm/ui/RoomInfoUI;->k:I

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/Contact;->h(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/storage/Contact;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v4, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->u()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->notifyDataSetChanged()V

    :cond_2
    const-string v0, "room_set_chatting_background"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "isApplyToAll"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "username"

    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v7}, Lcom/tencent/mm/ui/RoomInfoUI;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    const-string v0, "room_clear_chatting_history"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->d:Z

    if-eqz v0, :cond_9

    const v0, 0x7f0a008f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v4, v1, [Ljava/lang/String;

    const v5, 0x7f0a0379

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    new-instance v5, Lcom/tencent/mm/ui/RoomInfoUI$7;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/RoomInfoUI$7;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-static {p0, v0, v4, v8, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    :cond_4
    const-string v0, "room_del_quit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "MicroMsg.RoomInfoUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " quit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/String;

    const v1, 0x7f0a0382

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a0365

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/tencent/mm/ui/RoomInfoUI$6;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/RoomInfoUI$6;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-static {p0, v1, v0, v8, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    :cond_5
    return v2

    :cond_6
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->t()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->f(Lcom/tencent/mm/storage/Contact;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->v()V

    const v0, 0x7f0a0371

    invoke-static {p0, v0, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_7
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->c()Landroid/content/Context;

    move-result-object v0

    const-class v5, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "Contact_mode_name_type"

    invoke-virtual {v4, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Contact_User"

    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->c()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    const v0, 0x7f0a008d

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v0, v4}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MicroMsg.RoomInfoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/RoomInfoContPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MicroMsg.RoomInfoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roominfo touxiang :notifyChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/RoomInfoContPreference;->notifyChanged()V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f05001d

    return v0
.end method

.method public final o()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/ChatroomMembersLogic;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/AddressUI;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "Contact_Compose"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "List_Type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Contact_GroupFilter_Type"

    const-string v3, "@micromsg.qq.com"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Block_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/tencent/mm/ui/RoomInfoUI;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/AddressUI;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "Contact_GroupFilter_Type"

    const-string v3, "@micromsg.qq.com"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "List_Type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Block_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v0, -0x1

    const v6, 0x7f0a0010

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMPreference;->onActivityResult(IILandroid/content/Intent;)V

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p3, :cond_0

    const-string v0, "Select_Contact"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/model/ContactStorageLogic;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0a0386

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v3

    :cond_3
    :goto_1
    if-eqz v1, :cond_6

    const v0, 0x7f0a0366

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/ChatroomMembersLogic;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    :goto_3
    move v1, v0

    goto :goto_2

    :cond_6
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0a0361

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/tencent/mm/ui/RoomInfoUI$8;

    invoke-direct {v4, p0, v1}, Lcom/tencent/mm/ui/RoomInfoUI$8;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;)V

    invoke-static {p0, v0, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->a:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto/16 :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->finish()V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f03008f

    const v4, 0x7f030076

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x44

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ContactStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    const v0, 0x7f0a0360

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/tencent/mm/ui/RoomInfoUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->c:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Is_Chatroom"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->d:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RoomInfo_Id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Single_Chat_Talker"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->H()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->k:I

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "room_name"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->h:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "room_msg_notify"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->i:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "roominfo_contact"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/RoomInfoContPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->d:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/ui/RoomInfoContPreference;->a(Ljava/lang/String;ZI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    new-instance v1, Lcom/tencent/mm/ui/RoomInfoUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/RoomInfoUI$1;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/RoomInfoContPreference;->a(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    new-instance v1, Lcom/tencent/mm/ui/RoomInfoUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/RoomInfoUI$2;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/RoomInfoContPreference;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    new-instance v0, Lcom/tencent/mm/ui/RoomInfoUI$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/RoomInfoUI$3;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/RoomInfoUI$4;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/RoomInfoUI$4;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->j:Landroid/os/Handler;

    return-void

    :cond_2
    iput v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->k:I

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a()V

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    new-instance v0, Lcom/tencent/mm/ui/RoomInfoContPreference;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/RoomInfoContPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/RoomInfoContPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    const-string v1, "roominfo_contact"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/RoomInfoContPreference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    const v1, 0x7f0300cb

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/RoomInfoContPreference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->g:Lcom/tencent/mm/ui/RoomInfoContPreference;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0378

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    const-string v1, "room_set_chatting_background"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0379

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    const-string v1, "room_clear_chatting_history"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x44

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ContactStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->h:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    const v0, 0x7f0a0195

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->h:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->u()V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->notifyDataSetChanged()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onResume()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->h:Landroid/preference/Preference;

    const v1, 0x7f0a036b

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
