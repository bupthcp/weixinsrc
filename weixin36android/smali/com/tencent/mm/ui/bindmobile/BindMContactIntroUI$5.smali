.class Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$5;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$5;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->b(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;)Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;->d:Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/modelfriend/FriendLogic;->a()V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->d()I

    move-result v0

    invoke-static {}, Lcom/tencent/mm/modelfriend/FriendLogic;->a()V

    const v1, -0x20001

    and-int/2addr v0, v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpFunctionSwitch;

    const/16 v2, 0x11

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/storage/OpLogStorage$OpFunctionSwitch;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$5;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->c(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$5;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    const v2, 0x7f0a02c1

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$5;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/FriendLogic;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$5;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    sget-object v1, Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;->c:Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->a(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;)Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$5;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    const-class v2, Lcom/tencent/mm/ui/friend/MobileFriendUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$5;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$5;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->finish()V

    goto :goto_0
.end method
