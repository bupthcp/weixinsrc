.class public Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private c:Lcom/tencent/mm/storage/Contact;

.field private d:Landroid/app/AlertDialog;

.field private e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->d:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->c:Lcom/tencent/mm/storage/Contact;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->e:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->e:Ljava/util/Map;

    const-string v1, "contact_info_header_normal"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a(Lcom/tencent/mm/storage/Contact;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->e:Ljava/util/Map;

    const-string v1, "contact_info_setavatar"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->d:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const-string v0, "MicroMsg.ContactWidgetSetAvatar"

    const-string v1, "settings handle"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/tencent/mm/platformtools/CameraUtil;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "CropImage_OutputPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "CropImage_OutputPath"

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_0

    const-string v0, "CropImage_OutputPath"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.ContactWidgetSetAvatar"

    const-string v1, "crop picture failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    new-instance v1, Lcom/tencent/mm/ui/setting/ProcessUploadHDHeadImg;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/ui/setting/ProcessUploadHDHeadImg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/tencent/mm/ui/setting/ProcessUploadHDHeadImg;->a(I)Z

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v2

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    const v0, 0x7f0a025f

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->a(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_header_normal"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Lcom/tencent/mm/storage/Contact;ZI)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    if-eqz p2, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ConfigStorageLogic;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->c:Lcom/tencent/mm/storage/Contact;

    const v0, 0x7f050013

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(I)V

    const-string v0, "contact_info_header_normal"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->e:Ljava/util/Map;

    const-string v3, "contact_info_header_normal"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "contact_info_setavatar"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->e:Ljava/util/Map;

    const-string v3, "contact_info_setavatar"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const v0, 0x7f0a025e

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->a(I)V

    return v1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const-string v0, "MicroMsg.ContactWidgetSetAvatar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent : key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "contact_info_setavatar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->d:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0a01c5

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x7f06

    new-instance v3, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar$2;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar$2;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a0015

    new-instance v3, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar$1;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->d:Landroid/app/AlertDialog;

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method
