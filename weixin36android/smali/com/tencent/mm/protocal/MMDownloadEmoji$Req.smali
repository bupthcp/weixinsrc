.class public Lcom/tencent/mm/protocal/MMDownloadEmoji$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req;->a:Ljava/util/List;

    return-object v0
.end method
