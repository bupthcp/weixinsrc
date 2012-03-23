.class Lcom/tencent/mm/ui/friend/InviteFriendUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/friend/InviteFriendUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/friend/InviteFriendUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI$1;->a:Lcom/tencent/mm/ui/friend/InviteFriendUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI$1;->a:Lcom/tencent/mm/ui/friend/InviteFriendUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->a(Lcom/tencent/mm/ui/friend/InviteFriendUI;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI$1;->a:Lcom/tencent/mm/ui/friend/InviteFriendUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->b(Lcom/tencent/mm/ui/friend/InviteFriendUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "sms_body"

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI$1;->a:Lcom/tencent/mm/ui/friend/InviteFriendUI;

    const v3, 0x7f0a00c6

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI$1;->a:Lcom/tencent/mm/ui/friend/InviteFriendUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI$1;->a:Lcom/tencent/mm/ui/friend/InviteFriendUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI$1;->a:Lcom/tencent/mm/ui/friend/InviteFriendUI;

    const v1, 0x7f0a00c4

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    new-array v0, v7, [I

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI$1;->a:Lcom/tencent/mm/ui/friend/InviteFriendUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->b(Lcom/tencent/mm/ui/friend/InviteFriendUI;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/algorithm/UIN;->a(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v8

    new-instance v1, Lcom/tencent/mm/modelsimple/NetSceneSendInviteEmail;

    invoke-direct {v1, v0}, Lcom/tencent/mm/modelsimple/NetSceneSendInviteEmail;-><init>([I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI$1;->a:Lcom/tencent/mm/ui/friend/InviteFriendUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI$1;->a:Lcom/tencent/mm/ui/friend/InviteFriendUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI$1;->a:Lcom/tencent/mm/ui/friend/InviteFriendUI;

    const v4, 0x7f0a030f

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI$1;->a:Lcom/tencent/mm/ui/friend/InviteFriendUI;

    const v5, 0x7f0a0312

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/friend/InviteFriendUI$1$1;

    invoke-direct {v5, p0, v1}, Lcom/tencent/mm/ui/friend/InviteFriendUI$1$1;-><init>(Lcom/tencent/mm/ui/friend/InviteFriendUI$1;Lcom/tencent/mm/modelsimple/NetSceneSendInviteEmail;)V

    invoke-static {v2, v3, v4, v7, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->a(Lcom/tencent/mm/ui/friend/InviteFriendUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
