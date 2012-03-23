.class public Lcom/tencent/mm/network/connpool/SocketEngine$Header;
.super Ljava/lang/Object;


# instance fields
.field protected a:Z

.field protected b:I

.field protected c:S

.field protected d:S

.field protected e:I

.field protected f:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput-short v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->c:S

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->d:S

    iget-short v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->c:S

    add-int/2addr v0, p2

    iput v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->b:I

    iput p3, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    iput p1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->f:I

    return-void
.end method
