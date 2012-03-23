.class final enum Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;
.super Ljava/lang/Enum;


# static fields
.field public static final enum BOTH:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

.field public static final enum DANGEROUS_ONLY:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

.field private static final synthetic ENUM$VALUES:[Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

.field public static final enum NORMAL_ONLY:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

.field public static final enum NO_PERMS:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    const-string v1, "NO_PERMS"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;->NO_PERMS:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    new-instance v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    const-string v1, "DANGEROUS_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;->DANGEROUS_ONLY:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    new-instance v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    const-string v1, "NORMAL_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;->NORMAL_ONLY:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    new-instance v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v5}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;->BOTH:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    sget-object v1, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;->NO_PERMS:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;->DANGEROUS_ONLY:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;->NORMAL_ONLY:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;->BOTH:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;->ENUM$VALUES:[Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;
    .locals 1

    const-class v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;->ENUM$VALUES:[Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
