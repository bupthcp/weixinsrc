.class Lcom/tencent/mm/ui/chatting/AvatarClickListeners;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/AvatarClickListeners;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a:Ljava/util/Map;

    new-instance v1, Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;-><init>(Lcom/tencent/mm/ui/chatting/AvatarClickListeners;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;

    return-object v0
.end method
