.class Lcom/tencent/mm/storage/ConfigDBStorage$TypeVal;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/storage/ConfigDBStorage$TypeVal;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/storage/ConfigDBStorage$TypeVal;->b:Ljava/lang/String;

    return-void
.end method
