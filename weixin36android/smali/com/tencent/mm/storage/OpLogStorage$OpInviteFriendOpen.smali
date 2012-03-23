.class public Lcom/tencent/mm/storage/OpLogStorage$OpInviteFriendOpen;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/storage/OpLogStorage$Operation;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpInviteFriendOpen;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpInviteFriendOpen;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x7d

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpInviteFriendOpen;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpInviteFriendOpen;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x7d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpInviteFriendOpen;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpInviteFriendOpen;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/mm/storage/OpLogStorage$Concat;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
