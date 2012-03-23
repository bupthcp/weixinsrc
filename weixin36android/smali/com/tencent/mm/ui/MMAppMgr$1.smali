.class Lcom/tencent/mm/ui/MMAppMgr$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MMAppMgr;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MMAppMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMAppMgr$1;->a:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMAppMgr$1;->a:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->a(Lcom/tencent/mm/ui/MMAppMgr;)Z

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MMAppMgr$1;->a:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {v1}, Lcom/tencent/mm/ui/MMAppMgr;->b(Lcom/tencent/mm/ui/MMAppMgr;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "MicroMsg.MMAppMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status not changed, cur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/MMAppMgr$1;->a:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {v2}, Lcom/tencent/mm/ui/MMAppMgr;->a(Lcom/tencent/mm/ui/MMAppMgr;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMAppMgr$1;->a:Lcom/tencent/mm/ui/MMAppMgr;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMAppMgr$1;->a:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {v1}, Lcom/tencent/mm/ui/MMAppMgr;->b(Lcom/tencent/mm/ui/MMAppMgr;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMAppMgr;->a(Lcom/tencent/mm/ui/MMAppMgr;Z)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/MMAppMgr$1;->a:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->a(Lcom/tencent/mm/ui/MMAppMgr;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MicroMsg.MMAppMgr"

    const-string v1, "[ACTIVATED MODE]"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->w()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->i()Lcom/tencent/mm/modelvoice/SceneVoice$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Service;->a()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->j()Lcom/tencent/mm/modelvideo/VideoService$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoService$Service;->a()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->l()Lcom/tencent/mm/modelimage/ImgService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgService;->a()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->m()Lcom/tencent/mm/modelemoji/EmojiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiService;->a()V

    :cond_1
    invoke-static {v3}, Lcom/tencent/mm/model/MMCore;->a(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "MicroMsg.MMAppMgr"

    const-string v1, "[DEACTIVATED MODE]"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/PostTaskFMessageCardStat;->b()V

    invoke-static {}, Lcom/tencent/mm/model/PostTaskLocationOpenStat;->a()V

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->a(Z)V

    goto/16 :goto_0
.end method
