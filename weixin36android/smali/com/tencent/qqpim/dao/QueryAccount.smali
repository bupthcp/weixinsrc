.class public Lcom/tencent/qqpim/dao/QueryAccount;
.super Ljava/lang/Object;


# instance fields
.field public name:Ljava/lang/String;

.field public ringtone:Ljava/lang/String;

.field public starred:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/dao/QueryAccount;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/dao/QueryAccount;->type:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/dao/QueryAccount;->starred:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/dao/QueryAccount;->ringtone:Ljava/lang/String;

    return-void
.end method
