.class public Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->a:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->b:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->a:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->c:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->d:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->d:Ljava/lang/String;

    goto :goto_0
.end method
