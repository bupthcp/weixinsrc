.class Lcom/tencent/mm/network/connpool/HttpResponse;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Lorg/apache/http/util/ByteArrayBuffer;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/network/connpool/HttpResponse;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/network/connpool/HttpResponse;->a:Z

    iput v0, p0, Lcom/tencent/mm/network/connpool/HttpResponse;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/network/connpool/HttpResponse;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/HttpResponse;->d:Ljava/lang/String;

    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/HttpResponse;->e:Lorg/apache/http/util/ByteArrayBuffer;

    return-void
.end method
