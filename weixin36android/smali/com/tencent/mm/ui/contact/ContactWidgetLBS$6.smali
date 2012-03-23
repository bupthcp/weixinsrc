.class final Lcom/tencent/mm/ui/contact/ContactWidgetLBS$6;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/tencent/mm/ui/MListAdapter;


# direct methods
.method constructor <init>(ZLcom/tencent/mm/ui/MListAdapter;)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$6;->a:Z

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$6;->b:Lcom/tencent/mm/ui/MListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 21

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$6;->a:Z

    if-eqz v2, :cond_2

    and-int/lit16 v15, v1, -0x201

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v20

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;

    const/16 v2, 0x800

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v16, ""

    const/16 v17, 0x0

    const-string v18, ""

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$6;->a:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$6;->b:Lcom/tencent/mm/ui/MListAdapter;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$6;->b:Lcom/tencent/mm/ui/MListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MListAdapter;->a_(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    or-int/lit16 v15, v1, 0x200

    goto :goto_0
.end method
