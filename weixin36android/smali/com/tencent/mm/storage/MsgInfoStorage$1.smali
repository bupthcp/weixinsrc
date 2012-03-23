.class Lcom/tencent/mm/storage/MsgInfoStorage$1;
.super Lcom/tencent/mm/storagebase/MStorageEvent;


# instance fields
.field private synthetic a:Lcom/tencent/mm/storage/MsgInfoStorage;


# direct methods
.method constructor <init>(Lcom/tencent/mm/storage/MsgInfoStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/storage/MsgInfoStorage$1;->a:Lcom/tencent/mm/storage/MsgInfoStorage;

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorageEvent;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/tencent/mm/storage/IOnMsgChange;

    check-cast p2, Lcom/tencent/mm/storage/NotifyInfo;

    iget-object v0, p0, Lcom/tencent/mm/storage/MsgInfoStorage$1;->a:Lcom/tencent/mm/storage/MsgInfoStorage;

    invoke-interface {p1, v0, p2}, Lcom/tencent/mm/storage/IOnMsgChange;->a(Lcom/tencent/mm/storage/MsgInfoStorage;Lcom/tencent/mm/storage/NotifyInfo;)V

    return-void
.end method
