.class Lcom/tencent/mm/algorithm/MyByteArray;
.super Ljava/lang/Object;


# instance fields
.field public a:[B

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    return-void
.end method

.method public constructor <init>(B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte p1, v0, v1

    iput-object v0, p0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    iput-object p1, p0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    return-void
.end method
