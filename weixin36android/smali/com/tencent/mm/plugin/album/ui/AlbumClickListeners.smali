.class Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/util/Map;

.field private c:Landroid/content/Context;

.field private d:Lcom/tencent/mm/plugin/album/ui/IAlbumEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/plugin/album/ui/IAlbumEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;->d:Lcom/tencent/mm/plugin/album/ui/IAlbumEvent;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/view/View$OnClickListener;
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners$ClickLikeListener;

    invoke-direct {v2, p0, p1}, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners$ClickLikeListener;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;->a:Ljava/util/Map;

    new-instance v1, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners$ClickAvatarListener;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners$ClickAvatarListener;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method
