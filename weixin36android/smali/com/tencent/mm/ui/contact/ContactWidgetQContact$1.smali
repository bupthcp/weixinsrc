.class Lcom/tencent/mm/ui/contact/ContactWidgetQContact$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;

.field private synthetic b:Lcom/tencent/mm/ui/contact/ContactWidgetQContact;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/ContactWidgetQContact;Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$1;->b:Lcom/tencent/mm/ui/contact/ContactWidgetQContact;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$1;->a:Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$1;->a:Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method
