.class Lcom/tencent/mm/network/connpool/OutOfBandException;
.super Lcom/tencent/mm/network/connpool/DiagnosticException;


# instance fields
.field final a:I

.field final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/DiagnosticException;-><init>()V

    iput p1, p0, Lcom/tencent/mm/network/connpool/OutOfBandException;->a:I

    iput-wide p2, p0, Lcom/tencent/mm/network/connpool/OutOfBandException;->b:J

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server out of bind:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/network/connpool/OutOfBandException;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/network/connpool/OutOfBandException;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
