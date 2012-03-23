.class final Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo$4;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/tencent/mm/ui/MListAdapter;


# direct methods
.method constructor <init>(ZLcom/tencent/mm/ui/MListAdapter;)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo$4;->a:Z

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo$4;->b:Lcom/tencent/mm/ui/MListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo$4;->a:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v1

    const-string v2, "@t.qq.com"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/RoleInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo;->a(Z)V

    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo;->a(Z)V

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo$4;->a:Z

    if-eqz v2, :cond_5

    const v2, -0x40001

    and-int v15, v1, v2

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;

    const/16 v4, 0x27

    new-instance v1, Lcom/tencent/mm/protocal/protobuf/PluginInstall;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/protobuf/PluginInstall;-><init>()V

    const/high16 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/protobuf/PluginInstall;->a(I)Lcom/tencent/mm/protocal/protobuf/PluginInstall;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo$4;->a:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v5, v1}, Lcom/tencent/mm/protocal/protobuf/PluginInstall;->b(I)Lcom/tencent/mm/protocal/protobuf/PluginInstall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/PluginInstall;->b()[B

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;-><init>(I[B)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
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

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo$4;->a:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo;->b()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo;->a(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo$4;->b:Lcom/tencent/mm/ui/MListAdapter;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo$4;->b:Lcom/tencent/mm/ui/MListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MListAdapter;->a_(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    const/high16 v2, 0x4

    or-int v15, v1, v2

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method
