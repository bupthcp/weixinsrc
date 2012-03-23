.class Lcom/tencent/mm/ui/Updater$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo;

.field private synthetic b:I

.field private synthetic c:Lcom/tencent/mm/ui/Updater;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/Updater;Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/Updater$3;->c:Lcom/tencent/mm/ui/Updater;

    iput-object p2, p0, Lcom/tencent/mm/ui/Updater$3;->a:Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo;

    iput p3, p0, Lcom/tencent/mm/ui/Updater$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/high16 v4, 0x1000

    const/16 v3, 0x8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater$3;->c:Lcom/tencent/mm/ui/Updater;

    invoke-static {v0}, Lcom/tencent/mm/ui/Updater;->a(Lcom/tencent/mm/ui/Updater;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater$3;->c:Lcom/tencent/mm/ui/Updater;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/Updater;->getContext()Landroid/content/Context;

    sget v0, Lcom/tencent/mm/platformtools/ChannelUtil;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const-string v0, "MicroMsg.Updater"

    const-string v1, "package has set external update mode"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "market://details?id=com.tencent.mm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater$3;->c:Lcom/tencent/mm/ui/Updater;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/Updater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "MicroMsg.Updater"

    const-string v1, "parse market uri failed, jump to weixin.qq.com"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://weixin.qq.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/Updater$3;->c:Lcom/tencent/mm/ui/Updater;

    invoke-static {v1}, Lcom/tencent/mm/ui/Updater;->b(Lcom/tencent/mm/ui/Updater;)Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;->a(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "MicroMsg.Updater"

    const-string v2, "parse market uri ok"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater$3;->c:Lcom/tencent/mm/ui/Updater;

    invoke-static {v0}, Lcom/tencent/mm/ui/Updater;->b(Lcom/tencent/mm/ui/Updater;)Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/Updater$3;->a:Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/mm/storage/ConstantsStorage;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    invoke-static {v0, v6, v2}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MicroMsg.NetSceneGetUpdatePack"

    const-string v2, "getReadyPack update pack ok"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/mm/ui/Updater;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater$3;->c:Lcom/tencent/mm/ui/Updater;

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;

    iget-object v2, p0, Lcom/tencent/mm/ui/Updater$3;->a:Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo;->g()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/Updater$3;->a:Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo;->h()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/ui/Updater$3;->b:I

    iget-object v5, p0, Lcom/tencent/mm/ui/Updater$3;->c:Lcom/tencent/mm/ui/Updater;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;-><init>(ILjava/lang/String;ILcom/tencent/mm/modelbase/IOnSceneProgressEnd;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/Updater;->a(Lcom/tencent/mm/ui/Updater;Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;)Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/Updater$3;->c:Lcom/tencent/mm/ui/Updater;

    invoke-static {v1}, Lcom/tencent/mm/ui/Updater;->c(Lcom/tencent/mm/ui/Updater;)Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater$3;->c:Lcom/tencent/mm/ui/Updater;

    invoke-static {v0}, Lcom/tencent/mm/ui/Updater;->d(Lcom/tencent/mm/ui/Updater;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a00d4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/Updater$3;->c:Lcom/tencent/mm/ui/Updater;

    invoke-static {v0}, Lcom/tencent/mm/ui/Updater;->d(Lcom/tencent/mm/ui/Updater;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "MicroMsg.NetSceneGetUpdatePack"

    const-string v2, "getReadyPack: update pack MD5 not same"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lcom/tencent/mm/ui/Updater;->a(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/Updater$3;->c:Lcom/tencent/mm/ui/Updater;

    invoke-static {v1}, Lcom/tencent/mm/ui/Updater;->b(Lcom/tencent/mm/ui/Updater;)Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;

    move-result-object v1

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;->a(Landroid/content/Intent;)V

    goto :goto_2
.end method
