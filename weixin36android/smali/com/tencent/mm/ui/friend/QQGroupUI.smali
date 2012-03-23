.class public Lcom/tencent/mm/ui/friend/QQGroupUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;

.field private c:Landroid/app/ProgressDialog;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->c:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->d:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/QQGroupUI;)Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->b:Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/friend/QQGroupUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->a:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300a7

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 3

    const-string v0, "MicroMsg.QQGroupUI"

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

    check-cast p4, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;

    invoke-virtual {p4}, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->f()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->c:Landroid/app/ProgressDialog;

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_0

    :cond_3
    const v0, 0x7f0a0303

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "MicroMsg.QQGroupUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0301

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/QQGroupUI;->d(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v3, 0x1f

    invoke-virtual {v0, v3, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    const v0, 0x7f0701b8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/QQGroupUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->a:Landroid/widget/ListView;

    new-instance v0, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;

    invoke-direct {v0, p0, p0}, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;-><init>(Lcom/tencent/mm/ui/friend/QQGroupUI;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->b:Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->a:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->b:Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->a:Landroid/widget/ListView;

    new-instance v3, Lcom/tencent/mm/ui/friend/QQGroupUI$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/friend/QQGroupUI$1;-><init>(Lcom/tencent/mm/ui/friend/QQGroupUI;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0701b9

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/QQGroupUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->d:Landroid/view/View;

    new-instance v3, Lcom/tencent/mm/ui/friend/QQGroupUI$2;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/friend/QQGroupUI$2;-><init>(Lcom/tencent/mm/ui/friend/QQGroupUI;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_1
    new-instance v0, Lcom/tencent/mm/ui/friend/QQGroupUI$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/QQGroupUI$3;-><init>(Lcom/tencent/mm/ui/friend/QQGroupUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/QQGroupUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/friend/QQGroupUI$4;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/QQGroupUI$4;-><init>(Lcom/tencent/mm/ui/friend/QQGroupUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/QQGroupUI;->a(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;

    invoke-direct {v0, v2, v2}, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;-><init>(II)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/QQGroupUI;->c()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/friend/QQGroupUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a0302

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/friend/QQGroupUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/friend/QQGroupUI$5;

    invoke-direct {v5, p0, v0}, Lcom/tencent/mm/ui/friend/QQGroupUI$5;-><init>(Lcom/tencent/mm/ui/friend/QQGroupUI;Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;)V

    invoke-static {v2, v3, v4, v1, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->c:Landroid/app/ProgressDialog;

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->b:Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;->n()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "MicroMsg.QQGroupUI"

    const-string v1, "qq group onKeyDown"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->s()Lcom/tencent/mm/modelfriend/QQGroupStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->b:Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/QQGroupStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->s()Lcom/tencent/mm/modelfriend/QQGroupStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/QQGroupUI;->b:Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/QQGroupStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    return-void
.end method
