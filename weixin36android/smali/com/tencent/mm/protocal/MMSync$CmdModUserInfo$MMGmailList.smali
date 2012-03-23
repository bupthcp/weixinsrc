.class public Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo$MMGmailList;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo$MMGmailList;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo$MMGmailList;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo$MMGmailList;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo$MMGmailList;->a:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo$MMGmailList;->b:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo$MMGmailList;->b:Ljava/util/List;

    return-object v0
.end method
