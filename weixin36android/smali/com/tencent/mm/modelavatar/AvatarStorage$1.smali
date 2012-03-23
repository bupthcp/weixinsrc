.class Lcom/tencent/mm/modelavatar/AvatarStorage$1;
.super Lcom/tencent/mm/storagebase/MStorageEvent;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelavatar/AvatarStorage;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelavatar/AvatarStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelavatar/AvatarStorage$1;->a:Lcom/tencent/mm/modelavatar/AvatarStorage;

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorageEvent;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;->b(Ljava/lang/String;)V

    return-void
.end method
