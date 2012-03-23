.class public Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/storage/OpLogStorage$Operation;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;->a:I

    iput v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;->d:Ljava/lang/String;

    iput p1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;->a:I

    iput p2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;->b:I

    invoke-static {p3}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;->c:Ljava/lang/String;

    invoke-static {p4}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x67

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/mm/storage/OpLogStorage$Concat;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
