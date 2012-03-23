.class final Lcom/tencent/mm/storage/OpLogStorage$Helper;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3

    array-length v0, p0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    aget-object v0, p0, v1

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    aput-object v0, v2, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    goto :goto_1

    :cond_1
    return-object v2
.end method
