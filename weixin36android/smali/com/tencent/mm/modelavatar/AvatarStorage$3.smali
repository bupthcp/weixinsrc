.class Lcom/tencent/mm/modelavatar/AvatarStorage$3;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Ljava/util/Set;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Landroid/graphics/Bitmap;

.field private synthetic d:Lcom/tencent/mm/modelavatar/AvatarStorage;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelavatar/AvatarStorage;Ljava/util/Set;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelavatar/AvatarStorage$3;->d:Lcom/tencent/mm/modelavatar/AvatarStorage;

    iput-object p2, p0, Lcom/tencent/mm/modelavatar/AvatarStorage$3;->a:Ljava/util/Set;

    iput-object p3, p0, Lcom/tencent/mm/modelavatar/AvatarStorage$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/mm/modelavatar/AvatarStorage$3;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/AvatarStorage$3;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage$SmallBM;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage$3;->a:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage$3;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/AvatarStorage$3;->d:Lcom/tencent/mm/modelavatar/AvatarStorage;

    invoke-static {v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Lcom/tencent/mm/modelavatar/AvatarStorage;)Lcom/tencent/mm/algorithm/LRUMap;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelavatar/AvatarStorage$3;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/algorithm/LRUMap;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage$3;->d:Lcom/tencent/mm/modelavatar/AvatarStorage;

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Lcom/tencent/mm/modelavatar/AvatarStorage;)Lcom/tencent/mm/storagebase/MStorageEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/MStorageEvent;->a()V

    return-void
.end method
