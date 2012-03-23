.class Lcom/tencent/mm/ui/chatting/SendMessageFaster;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# instance fields
.field private b:I

.field private c:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2710

    sput v0, Lcom/tencent/mm/ui/chatting/SendMessageFaster;->a:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/SendMessageFaster;->b:I

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/chatting/SendMessageFaster$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/SendMessageFaster$1;-><init>(Lcom/tencent/mm/ui/chatting/SendMessageFaster;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SendMessageFaster;->c:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/SendMessageFaster;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SendMessageFaster;->b:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/SendMessageFaster;->b:I

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SendMessageFaster;->c:Lcom/tencent/mm/platformtools/MTimerHandler;

    sget v1, Lcom/tencent/mm/ui/chatting/SendMessageFaster;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/ui/chatting/SendMessageFaster;->b:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/ui/chatting/SendMessageFaster;->b:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SendMessageFaster;->c:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    return-void
.end method
