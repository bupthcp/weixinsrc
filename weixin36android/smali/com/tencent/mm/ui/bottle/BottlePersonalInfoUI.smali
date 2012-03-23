.class public Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;
.super Lcom/tencent/mm/ui/MMPreference;

# interfaces
.implements Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:Landroid/app/AlertDialog;

.field private c:Lcom/tencent/mm/ui/bottle/BottleSettingLogic;

.field private d:I

.field private e:Ljava/util/HashMap;

.field private f:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->e:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->b:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private static o()V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const v6, 0x8000

    const/16 v5, 0xe

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bottle_settings_change_avatar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v1}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->b:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a01c5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x7f06

    new-instance v3, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI$3;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI$3;-><init>(Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a0015

    new-instance v3, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI$2;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI$2;-><init>(Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->b:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    const-string v3, "settings_district"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->c:Lcom/tencent/mm/ui/bottle/BottleSettingLogic;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleSettingLogic;->d()Z

    move-result v1

    goto :goto_0

    :cond_3
    const-string v3, "settings_signature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->c:Lcom/tencent/mm/ui/bottle/BottleSettingLogic;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleSettingLogic;->c()Z

    move-result v1

    goto :goto_0

    :cond_4
    const-string v3, "bottle_settings_show_at_main"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->f:Landroid/content/SharedPreferences;

    const-string v2, "bottle_settings_show_at_main"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "MicroMsg.BottleSettignsPersonalInfoUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch change : open = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " item value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " functionId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->d:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->d:I

    :goto_1
    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->e:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->d:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->d:I

    goto :goto_1

    :cond_6
    const/4 v0, 0x2

    goto :goto_2

    :cond_7
    move v1, v0

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020100

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v2, "bottle_settings_change_avatar"

    invoke-interface {v0, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/setting/HeadImgPreference;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/HeadImgPreference;->a(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public final d_()I
    .locals 1

    const/high16 v0, 0x7f05

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x4

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/tencent/mm/platformtools/CameraUtil;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "CropImage_OutputPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v6}, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "CropImage_OutputPath"

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v6}, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_0

    const-string v0, "CropImage_OutputPath"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.BottleSettignsPersonalInfoUI"

    const-string v1, "crop picture failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/tencent/mm/ui/setting/ProcessUploadHDHeadImg;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->c()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/ui/setting/ProcessUploadHDHeadImg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/setting/ProcessUploadHDHeadImg;->a(I)Z

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v2

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    const v0, 0x7f0a0187

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const v3, 0x7f050001

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(I)V

    const-string v0, "com.tencent.mm_preferences"

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->f:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->d:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "is_allow_set"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/ui/bottle/BottleSettingLogic;

    iget-object v3, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-direct {v0, p0, v3}, Lcom/tencent/mm/ui/bottle/BottleSettingLogic;-><init>(Lcom/tencent/mm/ui/MMActivity;Lcom/tencent/mm/ui/IPreferenceScreen;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->c:Lcom/tencent/mm/ui/bottle/BottleSettingLogic;

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v3, "bottle_settings_show_at_main"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget v3, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->d:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI$1;-><init>(Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void

    :cond_0
    iget-object v3, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v0, "settings_sex"

    invoke-interface {v3, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/ChoicePreference;

    invoke-interface {v3, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    const-string v0, "settings_district"

    invoke-interface {v3, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/KeyValuePreference;

    invoke-interface {v3, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    const-string v0, "settings_signature"

    invoke-interface {v3, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/KeyValuePreference;

    invoke-interface {v3, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    const-string v0, "bottle_settings_change_avatar_tip"

    invoke-interface {v3, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->o()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 6

    invoke-static {}, Lcom/tencent/mm/ui/bottle/BottleSettingLogic;->a()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/storage/OpLogStorage$OpFunctionSwitch;

    invoke-direct {v4, v1, v0}, Lcom/tencent/mm/storage/OpLogStorage$OpFunctionSwitch;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    const-string v3, "MicroMsg.BottleSettignsPersonalInfoUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switch  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->o()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "bottle_settings_change_avatar"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/setting/HeadImgPreference;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/HeadImgPreference;->a(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->c:Lcom/tencent/mm/ui/bottle/BottleSettingLogic;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;->c:Lcom/tencent/mm/ui/bottle/BottleSettingLogic;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleSettingLogic;->b()V

    :cond_2
    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onResume()V

    return-void
.end method
