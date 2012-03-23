.class public Lcom/tencent/mm/modelvideo/ImportVideo;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/tencent/mm/modelvideo/ImportVideo$OnImportFinishListener;

.field c:Ljava/lang/String;

.field d:I

.field e:Landroid/content/Intent;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field private i:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->b:Lcom/tencent/mm/modelvideo/ImportVideo$OnImportFinishListener;

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->d:I

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->e:Landroid/content/Intent;

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->h:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/modelvideo/ImportVideo$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelvideo/ImportVideo$1;-><init>(Lcom/tencent/mm/modelvideo/ImportVideo;)V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->i:Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->b:Lcom/tencent/mm/modelvideo/ImportVideo$OnImportFinishListener;

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/mm/modelvideo/ImportVideo$OnImportFinishListener;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->e:Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->f:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->g:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->b:Lcom/tencent/mm/modelvideo/ImportVideo$OnImportFinishListener;

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/ImportVideo;->i:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
