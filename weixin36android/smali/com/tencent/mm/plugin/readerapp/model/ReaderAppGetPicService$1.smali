.class Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$1;->a:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$1;->a:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    iget-object v0, v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->a:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$OnDownSucc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$1;->a:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    iget-object v1, v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->a:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$OnDownSucc;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$OnDownSucc;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
