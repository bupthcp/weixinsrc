.class Lcom/tencent/mm/storage/NotifyInfo;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/tencent/mm/storage/MsgInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/storage/MsgInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/storage/NotifyInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/storage/NotifyInfo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/storage/NotifyInfo;->c:Lcom/tencent/mm/storage/MsgInfo;

    return-void
.end method
