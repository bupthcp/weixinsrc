.class public final enum Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

.field public static final enum VBOOKMARK:Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

.field public static final enum VCALLLOG:Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

.field public static final enum VCARD:Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

.field public static final enum VMESSAGE:Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    const-string v1, "VCARD"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;->VCARD:Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    const-string v1, "VMESSAGE"

    invoke-direct {v0, v1, v3}, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;->VMESSAGE:Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    const-string v1, "VCALLLOG"

    invoke-direct {v0, v1, v4}, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;->VCALLLOG:Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    const-string v1, "VBOOKMARK"

    invoke-direct {v0, v1, v5}, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;->VBOOKMARK:Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    sget-object v1, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;->VCARD:Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;->VMESSAGE:Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;->VCALLLOG:Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;->VBOOKMARK:Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;->ENUM$VALUES:[Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;
    .locals 1

    const-class v0, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;->ENUM$VALUES:[Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
