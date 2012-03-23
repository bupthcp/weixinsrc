.class Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->a:I

    iput p2, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->b:I

    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->c:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    iput-object p5, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->e:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->e:Ljava/lang/Object;

    :goto_0
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
