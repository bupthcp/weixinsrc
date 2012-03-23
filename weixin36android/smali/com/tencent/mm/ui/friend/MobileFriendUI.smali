.class public Lcom/tencent/mm/ui/friend/MobileFriendUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/tencent/mm/ui/friend/MobileFriendAdapter;

.field private c:Landroid/view/View;

.field private d:Landroid/app/ProgressDialog;

.field private e:Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->d:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/MobileFriendUI;)Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->e:Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/friend/MobileFriendUI;)Lcom/tencent/mm/ui/friend/MobileFriendAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->b:Lcom/tencent/mm/ui/friend/MobileFriendAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/friend/MobileFriendUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->a:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030097

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x20

    const-string v0, "MicroMsg.MobileFriendUI"

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

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v4, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->d:Landroid/app/ProgressDialog;

    :cond_0
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :cond_1
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->b:Lcom/tencent/mm/ui/friend/MobileFriendAdapter;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/friend/MobileFriendAdapter;->a_(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_2

    :cond_4
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    if-ne v0, v3, :cond_2

    const v0, 0x7f0a02ff

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const v2, 0x7f0a0010

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a02fd

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/MobileFriendUI;->d(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v3, 0x1d

    invoke-virtual {v0, v3, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    const v0, 0x7f07018f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/MobileFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->a:Landroid/widget/ListView;

    new-instance v0, Lcom/tencent/mm/ui/friend/MobileFriendAdapter;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/MobileFriendAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->b:Lcom/tencent/mm/ui/friend/MobileFriendAdapter;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->a:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->b:Lcom/tencent/mm/ui/friend/MobileFriendAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->a:Landroid/widget/ListView;

    new-instance v3, Lcom/tencent/mm/ui/friend/MobileFriendUI$2;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/friend/MobileFriendUI$2;-><init>(Lcom/tencent/mm/ui/friend/MobileFriendUI;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/tencent/mm/modelfriend/FriendLogic;->b()Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;

    move-result-object v0

    sget-object v3, Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;->c:Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;

    if-eq v0, v3, :cond_0

    const v0, 0x7f070190

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/MobileFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->c:Landroid/view/View;

    new-instance v3, Lcom/tencent/mm/ui/friend/MobileFriendUI$3;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/friend/MobileFriendUI$3;-><init>(Lcom/tencent/mm/ui/friend/MobileFriendUI;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->a:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/friend/MobileFriendUI$4;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/MobileFriendUI$4;-><init>(Lcom/tencent/mm/ui/friend/MobileFriendUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/MobileFriendUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/friend/MobileFriendUI$5;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/MobileFriendUI$5;-><init>(Lcom/tencent/mm/ui/friend/MobileFriendUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/MobileFriendUI;->a(Landroid/view/View$OnClickListener;)V

    const-string v0, "MicroMsg.FriendLogic"

    const-string v3, "isTipInMobileFriend"

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/modelfriend/FriendLogic;->b()Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;

    move-result-object v0

    sget-object v3, Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;->c:Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;

    if-ne v0, v3, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v3, 0x3022

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v7}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v7

    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f0a02c9

    const v3, 0x7f0a0016

    const v4, 0x7f0a0015

    new-instance v5, Lcom/tencent/mm/ui/friend/MobileFriendUI$6;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/friend/MobileFriendUI$6;-><init>(Lcom/tencent/mm/ui/friend/MobileFriendUI;)V

    new-instance v6, Lcom/tencent/mm/ui/friend/MobileFriendUI$7;

    invoke-direct {v6, p0}, Lcom/tencent/mm/ui/friend/MobileFriendUI$7;-><init>(Lcom/tencent/mm/ui/friend/MobileFriendUI;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelfriend/FriendLogic;->b()Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;->c:Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/MobileFriendUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/friend/MobileFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a02fe

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/friend/MobileFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/friend/MobileFriendUI$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/friend/MobileFriendUI$1;-><init>(Lcom/tencent/mm/ui/friend/MobileFriendUI;)V

    invoke-static {v0, v1, v2, v7, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->d:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->b:Lcom/tencent/mm/ui/friend/MobileFriendAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/friend/MobileFriendAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/MobileFriendUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/FriendLogic;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v8, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->d:Landroid/app/ProgressDialog;

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/modelfriend/FriendLogic;->a(J)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/MobileFriendUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/FriendLogic;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v8, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->d:Landroid/app/ProgressDialog;

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;

    invoke-static {}, Lcom/tencent/mm/modelfriend/FriendLogic;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/modelfriend/FriendLogic;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->e:Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->e:Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->b:Lcom/tencent/mm/ui/friend/MobileFriendAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/friend/MobileFriendAdapter;->n()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->b:Lcom/tencent/mm/ui/friend/MobileFriendAdapter;

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

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->b:Lcom/tencent/mm/ui/friend/MobileFriendAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/MobileFriendUI;->b:Lcom/tencent/mm/ui/friend/MobileFriendAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/friend/MobileFriendAdapter;->a_(Ljava/lang/String;)V

    return-void
.end method
