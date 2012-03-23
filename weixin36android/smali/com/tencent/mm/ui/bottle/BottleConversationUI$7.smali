.class Lcom/tencent/mm/ui/bottle/BottleConversationUI$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$7;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    if-nez p1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$7;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->d(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpDelContactMsg;

    iget-object v3, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$7;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->d(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->c()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/tencent/mm/storage/OpLogStorage$OpDelContactMsg;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpDeleteBottle;

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$7;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->d(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/storage/OpLogStorage$OpDeleteBottle;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$7;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->d(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->d(Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$7;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->d(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->H()Lcom/tencent/mm/modelbottle/BottleInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$7;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->d(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/modelbottle/BottleLogic;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbottle/BottleInfoStorage;->c(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
