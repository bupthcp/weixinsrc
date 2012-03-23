.class public final enum Lcom/tencent/a/a/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/tencent/a/a/c;

.field public static final enum b:Lcom/tencent/a/a/c;

.field public static final enum c:Lcom/tencent/a/a/c;

.field private static final synthetic e:[Lcom/tencent/a/a/c;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/tencent/a/a/c;

    const-string v1, "GSM"

    const-string v2, "GSM"

    invoke-direct {v0, v1, v3, v2}, Lcom/tencent/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/a/a/c;->a:Lcom/tencent/a/a/c;

    new-instance v0, Lcom/tencent/a/a/c;

    const-string v1, "CDMA"

    const-string v2, "CDMA"

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/a/a/c;->b:Lcom/tencent/a/a/c;

    new-instance v0, Lcom/tencent/a/a/c;

    const-string v1, "UNKNOWN"

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/a/a/c;->c:Lcom/tencent/a/a/c;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/a/a/c;

    sget-object v1, Lcom/tencent/a/a/c;->a:Lcom/tencent/a/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/a/a/c;->b:Lcom/tencent/a/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/a/a/c;->c:Lcom/tencent/a/a/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/a/a/c;->e:[Lcom/tencent/a/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/a/a/c;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/a/a/c;
    .locals 1

    const-class v0, Lcom/tencent/a/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/a/c;

    return-object v0
.end method

.method public static values()[Lcom/tencent/a/a/c;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/a/a/c;->e:[Lcom/tencent/a/a/c;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/a/a/c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
