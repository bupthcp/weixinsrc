.class final Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppNews$3;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/tencent/mm/ui/MListAdapter;


# direct methods
.method constructor <init>(ZLcom/tencent/mm/ui/MListAdapter;)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppNews$3;->a:Z

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppNews$3;->b:Lcom/tencent/mm/ui/MListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppNews$3;->a:Z

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppNews;->a(Z)V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    iget-boolean v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppNews$3;->a:Z

    if-eqz v3, :cond_3

    and-int/lit16 v0, v0, -0x4001

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    const/16 v4, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;

    const/16 v5, 0x27

    new-instance v0, Lcom/tencent/mm/protocal/protobuf/PluginInstall;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/protobuf/PluginInstall;-><init>()V

    const/16 v6, 0x4000

    invoke-virtual {v0, v6}, Lcom/tencent/mm/protocal/protobuf/PluginInstall;->a(I)Lcom/tencent/mm/protocal/protobuf/PluginInstall;

    move-result-object v6

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppNews$3;->a:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Lcom/tencent/mm/protocal/protobuf/PluginInstall;->b(I)Lcom/tencent/mm/protocal/protobuf/PluginInstall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/PluginInstall;->b()[B

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;-><init>(I[B)V

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppNews$3;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppNews;->b()V

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppNews;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppNews$3;->b:Lcom/tencent/mm/ui/MListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppNews$3;->b:Lcom/tencent/mm/ui/MListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MListAdapter;->a_(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method
