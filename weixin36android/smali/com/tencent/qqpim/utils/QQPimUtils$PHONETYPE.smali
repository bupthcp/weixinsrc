.class public final enum Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

.field public static final enum GENERAL:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

.field public static final enum HUAWEI_U8500:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

.field public static final enum OPHONE:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

.field public static final enum UNKNOWN:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    const-string v1, "OPHONE"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->OPHONE:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    new-instance v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    const-string v1, "GENERAL"

    invoke-direct {v0, v1, v3}, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->GENERAL:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    new-instance v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    const-string v1, "HUAWEI_U8500"

    invoke-direct {v0, v1, v4}, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->HUAWEI_U8500:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    new-instance v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->UNKNOWN:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    sget-object v1, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->OPHONE:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->GENERAL:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->HUAWEI_U8500:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->UNKNOWN:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->ENUM$VALUES:[Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;
    .locals 1

    const-class v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->ENUM$VALUES:[Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
