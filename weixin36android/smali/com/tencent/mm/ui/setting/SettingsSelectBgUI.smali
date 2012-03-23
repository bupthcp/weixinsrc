.class public Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;

.field private b:Landroid/widget/GridView;

.field private c:Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

.field private d:Ljava/util/List;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->d:Ljava/util/List;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;)Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c:Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    return-object p1
.end method

.method static synthetic a(ILjava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->f()I

    move-result v2

    if-ne v2, p0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->f()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->f(II)V

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)V
    .locals 3

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v2, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;

    add-int/lit8 v0, v0, -0x3c

    div-int/lit8 v0, v0, 0x3

    invoke-direct {v1, p0, p0, v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;-><init>(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;

    const v0, 0x7f07024f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->b:Landroid/widget/GridView;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->b:Landroid/widget/GridView;

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;-><init>(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;I)V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, 0x10504

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x3017

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->V()Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelpackage/ChattingBgInfo;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/tencent/mm/modelpackage/ChattingBgInfo;

    invoke-direct {v1}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->a(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;->a(Lcom/tencent/mm/modelpackage/ChattingBgInfo;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->a(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;->b(Lcom/tencent/mm/modelpackage/ChattingBgInfo;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c:Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c:Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c:Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c:Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300df

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 3

    const/16 v2, 0x41

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->a(Ljava/util/List;)V

    :cond_2
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a021e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->d(I)V

    new-instance v0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$2;-><init>(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isApplyToAll"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->e:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x41

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;-><init>(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c:Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c:Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c:Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    invoke-virtual {v1}, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->f()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->f(II)V

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->f()I

    move-result v0

    invoke-virtual {v3, v0, v4}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->f(II)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x41

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method
