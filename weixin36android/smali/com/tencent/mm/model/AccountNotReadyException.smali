.class public Lcom/tencent/mm/model/AccountNotReadyException;
.super Ljava/lang/RuntimeException;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/model/AccountNotReadyException;->a:I

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/model/AccountNotReadyException;->a:I

    return-void
.end method
