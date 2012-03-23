.class public final enum Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;
.super Ljava/lang/Enum;


# static fields
.field private static enum a:Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

.field private static enum b:Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

.field private static enum c:Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

.field private static final synthetic d:[Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

    const-string v1, "QQ_AVATAR"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;->a:Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

    new-instance v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

    const-string v1, "WEIXIN_AVATAR"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;->b:Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

    new-instance v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

    const-string v1, "MICROBLOG_TENCENT_AVATAR"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;->c:Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

    sget-object v1, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;->a:Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;->b:Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;->c:Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;->d:[Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;
    .locals 1

    const-class v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;->d:[Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

    invoke-virtual {v0}, [Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarType;

    return-object v0
.end method
