.class public Lcom/tencent/mm/ui/friend/QQFriendUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Lcom/tencent/mm/ui/friend/QQFriendAdapter;

.field private b:I

.field private c:Landroid/app/ProgressDialog;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->c:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/QQFriendUI;)Lcom/tencent/mm/ui/friend/QQFriendAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->a:Lcom/tencent/mm/ui/friend/QQFriendAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/QQFriendUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->d:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300a5

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 3

    const-string v0, "MicroMsg.QQFriendUI"

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

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->c:Landroid/app/ProgressDialog;

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_0

    :cond_3
    const v0, 0x7f0a0308

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->a:Lcom/tencent/mm/ui/friend/QQFriendAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->a:Lcom/tencent/mm/ui/friend/QQFriendAdapter;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->a:Lcom/tencent/mm/ui/friend/QQFriendAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "MicroMsg.QQFriendUI"

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
    .locals 8

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/QQFriendUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "qqgroup_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/QQFriendUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "qqgroup_id"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->b:I

    iget v0, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->b:I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->s()Lcom/tencent/mm/modelfriend/QQGroupStorage;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tencent/mm/modelfriend/QQGroupStorage;->a(I)Lcom/tencent/mm/modelfriend/QQGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->e()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;

    iget v4, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->b:I

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;-><init>(II)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/QQFriendUI;->c()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0010

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/friend/QQFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0a0307

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/friend/QQFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/tencent/mm/ui/friend/QQFriendUI$1;

    invoke-direct {v7, p0, v0}, Lcom/tencent/mm/ui/friend/QQFriendUI$1;-><init>(Lcom/tencent/mm/ui/friend/QQFriendUI;Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;)V

    invoke-static {v4, v5, v6, v1, v7}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->c:Landroid/app/ProgressDialog;

    :cond_0
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/friend/QQFriendUI;->d(Ljava/lang/String;)V

    const v0, 0x7f0701b3

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/QQFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f0300ce

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v1, 0x7f07022c

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f07022d

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v5, 0x7f02026b

    invoke-virtual {v1, v5, v3, v3, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    new-instance v3, Lcom/tencent/mm/ui/friend/QQFriendUI$2;

    invoke-direct {v3, p0, v2}, Lcom/tencent/mm/ui/friend/QQFriendUI$2;-><init>(Lcom/tencent/mm/ui/friend/QQFriendUI;Landroid/widget/Button;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v3, Lcom/tencent/mm/ui/friend/QQFriendUI$3;

    invoke-direct {v3, p0, v1}, Lcom/tencent/mm/ui/friend/QQFriendUI$3;-><init>(Lcom/tencent/mm/ui/friend/QQFriendUI;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    new-instance v1, Lcom/tencent/mm/ui/friend/QQFriendAdapter;

    iget v2, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->b:I

    invoke-direct {v1, p0, v2}, Lcom/tencent/mm/ui/friend/QQFriendAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->a:Lcom/tencent/mm/ui/friend/QQFriendAdapter;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->a:Lcom/tencent/mm/ui/friend/QQFriendAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/tencent/mm/ui/friend/QQFriendUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/QQFriendUI$4;-><init>(Lcom/tencent/mm/ui/friend/QQFriendUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/tencent/mm/ui/friend/QQFriendUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/QQFriendUI$5;-><init>(Lcom/tencent/mm/ui/friend/QQFriendUI;)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/QQFriendUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v1, Lcom/tencent/mm/ui/friend/QQFriendUI$6;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/ui/friend/QQFriendUI$6;-><init>(Lcom/tencent/mm/ui/friend/QQFriendUI;Landroid/widget/ListView;)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/QQFriendUI;->a(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    move v0, v3

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->a:Lcom/tencent/mm/ui/friend/QQFriendAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->n()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->v()Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->a()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "MicroMsg.QQFriendUI"

    const-string v1, "qq friend onKeyDown"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->q()Lcom/tencent/mm/modelfriend/QQListStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->a:Lcom/tencent/mm/ui/friend/QQFriendAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/QQListStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->q()Lcom/tencent/mm/modelfriend/QQListStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->a:Lcom/tencent/mm/ui/friend/QQFriendAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/QQListStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQFriendUI;->a:Lcom/tencent/mm/ui/friend/QQFriendAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/friend/QQFriendAdapter;->a_(Ljava/lang/String;)V

    return-void
.end method
