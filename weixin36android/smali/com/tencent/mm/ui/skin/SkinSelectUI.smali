.class public Lcom/tencent/mm/ui/skin/SkinSelectUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/tencent/mm/ui/skin/SkinAdapter;

.field private c:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/skin/SkinSelectUI;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->d()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x37

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x36

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/skin/SkinSelectUI;)Lcom/tencent/mm/ui/skin/SkinAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI;->b:Lcom/tencent/mm/ui/skin/SkinAdapter;

    return-object v0
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.SkinSelectUI"

    const-string v1, "already getting theme list now"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;

    invoke-direct {v0}, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    const/4 v1, 0x0

    const v2, 0x7f0a035a

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/skin/SkinSelectUI$4;

    invoke-direct {v4, p0, v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI$4;-><init>(Lcom/tencent/mm/ui/skin/SkinSelectUI;Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;)V

    invoke-static {p0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI;->c:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/skin/SkinSelectUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->b()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300ed

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 3

    const-string v0, "MicroMsg.SkinSelectUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneEnd: errType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI;->c:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0196

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->d(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x37

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x36

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    const v0, 0x7f070286

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI;->a:Landroid/widget/ListView;

    new-instance v0, Lcom/tencent/mm/ui/skin/SkinAdapter;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/skin/SkinAdapter;-><init>(Lcom/tencent/mm/ui/skin/SkinSelectUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI;->b:Lcom/tencent/mm/ui/skin/SkinAdapter;

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI;->b:Lcom/tencent/mm/ui/skin/SkinAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/skin/SkinSelectUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/skin/SkinSelectUI$1;-><init>(Lcom/tencent/mm/ui/skin/SkinSelectUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a035b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/skin/SkinSelectUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/skin/SkinSelectUI$2;-><init>(Lcom/tencent/mm/ui/skin/SkinSelectUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/skin/SkinSelectUI$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/skin/SkinSelectUI$3;-><init>(Lcom/tencent/mm/ui/skin/SkinSelectUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x37

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x36

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI;->b:Lcom/tencent/mm/ui/skin/SkinAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/SkinAdapter;->n()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MainTabUI;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/MainTabUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI;->b:Lcom/tencent/mm/ui/skin/SkinAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI;->b:Lcom/tencent/mm/ui/skin/SkinAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->b()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI;->b:Lcom/tencent/mm/ui/skin/SkinAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/skin/SkinAdapter;->a_(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modeltheme/ThemeInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    const/16 v2, 0x3ea

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modeltheme/ThemeInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->b(Lcom/tencent/mm/modeltheme/ThemeInfo;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->e()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f(I)V

    goto :goto_1
.end method
