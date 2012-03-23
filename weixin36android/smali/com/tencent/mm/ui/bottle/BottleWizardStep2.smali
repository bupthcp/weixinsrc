.class public Lcom/tencent/mm/ui/bottle/BottleWizardStep2;
.super Lcom/tencent/mm/ui/MMPreference;


# instance fields
.field private a:Lcom/tencent/mm/ui/bottle/BottleSettingLogic;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/BottleWizardStep2;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->o()V

    return-void
.end method

.method private o()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->n()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->finish()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings_district"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->a:Lcom/tencent/mm/ui/bottle/BottleSettingLogic;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleSettingLogic;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v1, "settings_signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->a:Lcom/tencent/mm/ui/bottle/BottleSettingLogic;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleSettingLogic;->c()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f050001

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0189

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/bottle/BottleSettingLogic;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/ui/bottle/BottleSettingLogic;-><init>(Lcom/tencent/mm/ui/MMActivity;Lcom/tencent/mm/ui/IPreferenceScreen;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->a:Lcom/tencent/mm/ui/bottle/BottleSettingLogic;

    new-instance v0, Lcom/tencent/mm/ui/bottle/BottleWizardStep2$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2$1;-><init>(Lcom/tencent/mm/ui/bottle/BottleWizardStep2;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a001a

    new-instance v1, Lcom/tencent/mm/ui/bottle/BottleWizardStep2$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2$2;-><init>(Lcom/tencent/mm/ui/bottle/BottleWizardStep2;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->o()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMPreference;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onResume()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep2;->a:Lcom/tencent/mm/ui/bottle/BottleSettingLogic;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleSettingLogic;->b()V

    return-void
.end method
