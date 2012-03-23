.class Lcom/tencent/mm/ui/AddressUI$17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelmulti/NetSceneSync;

.field private synthetic b:Lcom/tencent/mm/ui/AddressUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/AddressUI;Lcom/tencent/mm/modelmulti/NetSceneSync;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/AddressUI$17;->b:Lcom/tencent/mm/ui/AddressUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/AddressUI$17;->a:Lcom/tencent/mm/modelmulti/NetSceneSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI$17;->a:Lcom/tencent/mm/modelmulti/NetSceneSync;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method
