.class public Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/util/Map;

.field c:Ljava/util/Map;

.field d:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$UploadFile;


# direct methods
.method public constructor <init>(ILjava/util/Map;Ljava/util/Map;Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$UploadFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->a:I

    iput-object p2, p0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->d:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$UploadFile;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->b:Ljava/util/Map;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookie:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->c:Ljava/util/Map;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method
