.class Lcom/tencent/mm/ui/SecurityImage$HttpModel$HttpGetTask;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/SecurityImage$HttpModel;


# direct methods
.method synthetic constructor <init>(Lcom/tencent/mm/ui/SecurityImage$HttpModel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/SecurityImage$HttpModel$HttpGetTask;-><init>(Lcom/tencent/mm/ui/SecurityImage$HttpModel;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/ui/SecurityImage$HttpModel;B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/SecurityImage$HttpModel$HttpGetTask;->a:Lcom/tencent/mm/ui/SecurityImage$HttpModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage$HttpModel$HttpGetTask;->a:Lcom/tencent/mm/ui/SecurityImage$HttpModel;

    aget-object v1, p1, v2

    invoke-static {v1}, Lb/a/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/SecurityImage$HttpModel;->a(Lcom/tencent/mm/ui/SecurityImage$HttpModel;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage$HttpModel$HttpGetTask;->a:Lcom/tencent/mm/ui/SecurityImage$HttpModel;

    invoke-static {v0}, Lcom/tencent/mm/ui/SecurityImage$HttpModel;->b(Lcom/tencent/mm/ui/SecurityImage$HttpModel;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
