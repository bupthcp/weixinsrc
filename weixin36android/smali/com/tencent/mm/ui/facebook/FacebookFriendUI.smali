.class public Lcom/tencent/mm/ui/facebook/FacebookFriendUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;

.field private c:Landroid/view/View;

.field private d:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->d:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/facebook/FacebookFriendUI;)Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->b:Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/facebook/FacebookFriendUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->a:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030097

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "MicroMsg.FacebookFriendUI"

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

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v3, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->d:Landroid/app/ProgressDialog;

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/16 v0, -0x44

    if-ne p2, v0, :cond_3

    invoke-static {p3}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p3, "error"

    :cond_2
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$8;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$8;-><init>(Lcom/tencent/mm/ui/facebook/FacebookFriendUI;)V

    invoke-static {p0, p3, v0, v1, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->b:Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;->a_(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const v0, 0x7f0a02ff

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v5, 0x10125

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0486

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->d(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    const v0, 0x7f07018f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->a:Landroid/widget/ListView;

    const v0, 0x7f07018e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0489

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;

    new-instance v2, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$1;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$1;-><init>(Lcom/tencent/mm/ui/facebook/FacebookFriendUI;Landroid/widget/TextView;)V

    invoke-direct {v1, p0, v2}, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/MListAdapter$CallBack;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->b:Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->b:Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f070190

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$2;-><init>(Lcom/tencent/mm/ui/facebook/FacebookFriendUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "MicroMsg.FacebookFriendUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBindForFacebookApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->m()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;

    invoke-direct {v1}, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->g()V

    new-instance v2, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$3;

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$3;-><init>(Lcom/tencent/mm/ui/facebook/FacebookFriendUI;Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;)V

    invoke-direct {v2, v0, v3}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->c()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0a0010

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a0307

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$4;

    invoke-direct {v5, p0, v2, v1}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$4;-><init>(Lcom/tencent/mm/ui/facebook/FacebookFriendUI;Lcom/tencent/mm/platformtools/MTimerHandler;Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;)V

    invoke-static {v0, v3, v4, v6, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->d:Landroid/app/ProgressDialog;

    :goto_1
    new-instance v0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$6;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$6;-><init>(Lcom/tencent/mm/ui/facebook/FacebookFriendUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$7;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$7;-><init>(Lcom/tencent/mm/ui/facebook/FacebookFriendUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->a(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070191

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0488

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->c:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$5;-><init>(Lcom/tencent/mm/ui/facebook/FacebookFriendUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->b:Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;->n()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->b:Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->b:Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->b:Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/facebook/FacebookFriendAdapter;->a_(Ljava/lang/String;)V

    return-void
.end method
