.class public Lcom/tencent/mm/protocal/MMSendInviteEmail$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;


# instance fields
.field private a:I

.field private b:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSendInviteEmail$Req;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method public a([I)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSendInviteEmail$Req;->b:[I

    array-length v0, p1

    iput v0, p0, Lcom/tencent/mm/protocal/MMSendInviteEmail$Req;->a:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSendInviteEmail$Req;->a:I

    return v0
.end method
