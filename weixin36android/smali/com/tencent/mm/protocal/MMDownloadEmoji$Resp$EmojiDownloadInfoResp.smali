.class public Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[B

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->a:I

    iput v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->b:I

    iput v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->d:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->e:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->d:[B

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->b:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->f:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->c:I

    return-void
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->d:[B

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->f:Ljava/lang/String;

    goto :goto_0
.end method
