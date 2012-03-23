.class public Lcom/tencent/mm/ui/MainUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;
.implements Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;


# instance fields
.field a:Ljava/lang/Runnable;

.field b:Landroid/os/Handler;

.field private c:Landroid/app/ProgressDialog;

.field private d:Landroid/app/AlertDialog;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/tencent/mm/ui/ConversationAdapter;

.field private h:Ljava/lang/String;

.field private i:Lcom/tencent/mm/ui/ADListView;

.field private j:Lcom/tencent/mm/ui/ADListAdapter;

.field private k:Landroid/widget/PopupWindow;

.field private l:Lcom/tencent/mm/network/IOnNetworkChange_AIDL;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/MainUI;->c:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/tencent/mm/ui/MainUI;->d:Landroid/app/AlertDialog;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/ui/MainUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/MainUI$1;-><init>(Lcom/tencent/mm/ui/MainUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MainUI;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MainUI;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MainUI;->k:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MainUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MainUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MainUI;->o()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MainUI;I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/MainUI;)Lcom/tencent/mm/ui/ConversationAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->g:Lcom/tencent/mm/ui/ConversationAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/MainUI;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->k:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/MainUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/MainUI;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->c:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private o()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->i:Lcom/tencent/mm/ui/ADListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->j:Lcom/tencent/mm/ui/ADListAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0701a8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/NetWarnView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/NetWarnView;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->i:Lcom/tencent/mm/ui/ADListView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/ADListView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/tencent/mm/modelpmsg/PushMessage;->a(Landroid/content/Context;)Lcom/tencent/mm/modelpmsg/PushMessage;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->i:Lcom/tencent/mm/ui/ADListView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/ADListView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI;->j:Lcom/tencent/mm/ui/ADListAdapter;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/ADListAdapter;->a(Lcom/tencent/mm/modelpmsg/PushMessage;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->j:Lcom/tencent/mm/ui/ADListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/ADListAdapter;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->i:Lcom/tencent/mm/ui/ADListView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/ADListView;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->i:Lcom/tencent/mm/ui/ADListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/ADListView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->i:Lcom/tencent/mm/ui/ADListView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/ADListView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030064

    return v0
.end method

.method public final a(IILcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 3

    invoke-virtual {p3}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_1

    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/tencent/mm/ui/MainUI$10;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/MainUI$10;-><init>(Lcom/tencent/mm/ui/MainUI;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "MicroMsg.MainUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSceneEnd: errType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errMsg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/MainUI;->c:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/MainUI;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v5, p0, Lcom/tencent/mm/ui/MainUI;->c:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/ui/MainUI;->d:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/ui/MainUI;->d:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v5, p0, Lcom/tencent/mm/ui/MainUI;->d:Landroid/app/AlertDialog;

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Intro_Switch"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, p1, p2, v2}, Lcom/tencent/mm/ui/MMErrorProcessor;->a(Lcom/tencent/mm/ui/MMActivity;IILandroid/content/Intent;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/ui/MainUI;->d:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/tencent/mm/ui/MainUI;->d:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    const-string v2, "MicroMsg.MMErrorProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "errType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :cond_4
    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_2

    check-cast p4, Lcom/tencent/mm/modelmulti/NetSceneSync;

    invoke-virtual {p4}, Lcom/tencent/mm/modelmulti/NetSceneSync;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/MainUI$9;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MainUI$9;-><init>(Lcom/tencent/mm/ui/MainUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->e()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->u()Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

    invoke-static {}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;->d()V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->e()I

    move-result v0

    and-int/lit16 v0, v0, -0x81

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->c()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00d7

    new-instance v4, Lcom/tencent/mm/ui/MMErrorProcessor$3;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/MMErrorProcessor$3;-><init>(Lcom/tencent/mm/ui/MMActivity;)V

    invoke-static {v2, v3, v4, v0}, Lcom/tencent/mm/ui/Updater;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnCancelListener;Z)Lcom/tencent/mm/ui/Updater;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/ui/MMErrorProcessor$4;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/MMErrorProcessor$4;-><init>(Lcom/tencent/mm/ui/MMActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/Updater;->a(ILcom/tencent/mm/ui/Updater$IOnUpdateEnd;)V

    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->e()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Util;->d(J)J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    move v0, v1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->c()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a00d6

    new-instance v3, Lcom/tencent/mm/ui/MMErrorProcessor$5;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/MMErrorProcessor$5;-><init>(Lcom/tencent/mm/ui/MMActivity;)V

    invoke-static {v0, v2, v3, v1}, Lcom/tencent/mm/ui/Updater;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnCancelListener;Z)Lcom/tencent/mm/ui/Updater;

    move-result-object v0

    const/4 v2, 0x2

    new-instance v3, Lcom/tencent/mm/ui/MMErrorProcessor$6;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/MMErrorProcessor$6;-><init>(Lcom/tencent/mm/ui/MMActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/ui/Updater;->a(ILcom/tencent/mm/ui/Updater$IOnUpdateEnd;)V

    move v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 1

    const-string v0, "8193"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MainUI;->o()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    const v2, 0x7f0a011f

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/model/ContactStorageLogic;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->h(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainUI;->d(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainUI;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MainUI;->o()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/MainUI;->o()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 23

    invoke-super/range {p0 .. p1}, Lcom/tencent/mm/ui/MMActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/storage/OpLogStorage$OpDelContactMsg;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->c()I

    move-result v1

    invoke-direct {v3, v4, v1}, Lcom/tencent/mm/storage/OpLogStorage$OpDelContactMsg;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->d(Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->k()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/storage/Contact;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConversationStorage;->a(Ljava/lang/String;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "MicroMsg.MainUI"

    const-string v2, "del all qmessage"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->c()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v1

    const-string v2, "@qqim"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConversationStorage;->c(Ljava/lang/String;)Z

    :cond_0
    :goto_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConversationStorage;->c(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->r()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;->b(I)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConversationStorage;->c(Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConversationStorage;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->u()Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;->a()V

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/storage/OpLogStorage$OpDelContactMsg;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->c()I

    move-result v1

    invoke-direct {v3, v4, v1}, Lcom/tencent/mm/storage/OpLogStorage$OpDelContactMsg;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->d(Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->k()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v22

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->p()I

    move-result v6

    const/16 v7, 0x3f

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->q()I

    move-result v8

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->D()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->E()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->F()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->C()I

    move-result v12

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->G()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->H()I

    move-result v14

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->J()I

    move-result v15

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->K()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->L()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->S()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->T()I

    move-result v20

    invoke-direct/range {v1 .. v20}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/storage/Contact;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConversationStorage;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MicroMsg.MainUI"

    const-string v2, "del all tmessage"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->d()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v1

    const-string v2, "@t.qq.com"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConversationStorage;->c(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "MicroMsg.MainUI"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f07014f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/MainUI;->f:Landroid/widget/TextView;

    const v0, 0x7f07014e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/MainUI;->e:Landroid/widget/ListView;

    new-instance v0, Lcom/tencent/mm/ui/ConversationAdapter;

    new-instance v1, Lcom/tencent/mm/ui/MainUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MainUI$3;-><init>(Lcom/tencent/mm/ui/MainUI;)V

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/ConversationAdapter;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/MListAdapter$CallBack;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MainUI;->g:Lcom/tencent/mm/ui/ConversationAdapter;

    const v0, 0x7f030004

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tencent/mm/ui/MainUI;->g:Lcom/tencent/mm/ui/ConversationAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/ADListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/MainUI;->i:Lcom/tencent/mm/ui/ADListView;

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->e:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainUI;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/MainUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MainUI$4;-><init>(Lcom/tencent/mm/ui/MainUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/MainUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MainUI$5;-><init>(Lcom/tencent/mm/ui/MainUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/AvatarWrapperScrollListener;

    new-instance v2, Lcom/tencent/mm/ui/MainUI$6;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/MainUI$6;-><init>(Lcom/tencent/mm/ui/MainUI;)V

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/AvatarWrapperScrollListener;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MainUI;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    const v0, 0x7f0201c4

    new-instance v1, Lcom/tencent/mm/ui/MainUI$7;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MainUI$7;-><init>(Lcom/tencent/mm/ui/MainUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/MainUI;->c(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/MainUI$8;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/MainUI$8;-><init>(Lcom/tencent/mm/ui/MainUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainUI;->a(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/tencent/mm/ui/MMAppMgr;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    invoke-static {p0}, Lcom/tencent/mm/ui/AvatarDrawable;->a(Lcom/tencent/mm/ui/MMActivity;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/MainUI;->b:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/ui/MainUI$INetworkChange;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/MainUI$INetworkChange;-><init>(Lcom/tencent/mm/ui/MainUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MainUI;->l:Lcom/tencent/mm/network/IOnNetworkChange_AIDL;

    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/network/IDispatcher;->g()Lcom/tencent/mm/network/INetworkEvent_AIDL;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI;->l:Lcom/tencent/mm/network/IOnNetworkChange_AIDL;

    invoke-interface {v0, v1}, Lcom/tencent/mm/network/INetworkEvent_AIDL;->a(Lcom/tencent/mm/network/IOnNetworkChange_AIDL;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/mm/modelmulti/NetSceneSync;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/MainUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0027

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/MainUI$2;

    invoke-direct {v4, p0, v0}, Lcom/tencent/mm/ui/MainUI$2;-><init>(Lcom/tencent/mm/ui/MainUI;Lcom/tencent/mm/modelmulti/NetSceneSync;)V

    invoke-static {p0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MainUI;->c:Landroid/app/ProgressDialog;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    const/4 v3, 0x7

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const v1, 0x7f0a0124

    invoke-interface {p1, v0, v3, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const v1, 0x7f0a0125

    invoke-interface {p1, v0, v3, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const v1, 0x7f0a0126

    invoke-interface {p1, v0, v3, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a0381

    :goto_1
    invoke-interface {p1, v1, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    const v0, 0x7f0a0122

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "MicroMsg.MainUI"

    const-string v1, "on destroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->g:Lcom/tencent/mm/ui/ConversationAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/ConversationAdapter;->n()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->g:Lcom/tencent/mm/ui/ConversationAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/ConversationAdapter;->m()V

    invoke-static {p0}, Lcom/tencent/mm/ui/AvatarDrawable;->b(Lcom/tencent/mm/ui/MMActivity;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->r()V

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/network/IDispatcher;->g()Lcom/tencent/mm/network/INetworkEvent_AIDL;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI;->l:Lcom/tencent/mm/network/IOnNetworkChange_AIDL;

    invoke-interface {v0, v1}, Lcom/tencent/mm/network/INetworkEvent_AIDL;->b(Lcom/tencent/mm/network/IOnNetworkChange_AIDL;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const v0, 0x7f0701a8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/NetWarnView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/NetWarnView;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->k:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v2, p0, Lcom/tencent/mm/ui/MainUI;->c:Landroid/app/ProgressDialog;

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/tencent/mm/ui/MainUI;->d:Landroid/app/AlertDialog;

    :cond_3
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->Z()V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->g()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConfigStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI;->g:Lcom/tencent/mm/ui/ConversationAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->z()Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI;->g:Lcom/tencent/mm/ui/ConversationAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    const-string v0, "MicroMsg.MainUI"

    const-string v1, "on pause"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    const-string v0, "MicroMsg.MainUI"

    const-string v1, "onresume"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/model/ContactStorageLogic;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->h(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->e()V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI;->g:Lcom/tencent/mm/ui/ConversationAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->z()Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI;->g:Lcom/tencent/mm/ui/ConversationAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI;->g:Lcom/tencent/mm/ui/ConversationAdapter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/ConversationAdapter;->getCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(I)V

    new-instance v0, Lcom/tencent/mm/ui/ADListAdapter;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/ADListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MainUI;->j:Lcom/tencent/mm/ui/ADListAdapter;

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->i:Lcom/tencent/mm/ui/ADListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI;->j:Lcom/tencent/mm/ui/ADListAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/ADListView;->a(Lcom/tencent/mm/ui/ADListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->i:Lcom/tencent/mm/ui/ADListView;

    new-instance v1, Lcom/tencent/mm/ui/MainUI$11;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MainUI$11;-><init>(Lcom/tencent/mm/ui/MainUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/ADListView;->a(Lcom/tencent/mm/ui/ADListView$ADEvent;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/MainUI;->o()V

    invoke-static {}, Lcom/tencent/mm/modelbottle/BottleLogic;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "floatbottle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI;->g:Lcom/tencent/mm/ui/ConversationAdapter;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/ConversationAdapter;->a(Ljava/util/List;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->g:Lcom/tencent/mm/ui/ConversationAdapter;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/ConversationAdapter;->a_(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConfigStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI;->g:Lcom/tencent/mm/ui/ConversationAdapter;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/ConversationAdapter;->a(Ljava/util/List;)V

    goto :goto_0
.end method
