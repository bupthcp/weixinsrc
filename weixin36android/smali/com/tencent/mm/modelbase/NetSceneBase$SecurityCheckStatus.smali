.class public final enum Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

.field public static final enum b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

.field public static final enum c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

.field private static final synthetic d:[Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    const-string v1, "EUnchecked"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->a:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    new-instance v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    const-string v1, "EOk"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    new-instance v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    const-string v1, "EFailed"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    sget-object v1, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->a:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->d:[Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    const-class v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->d:[Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    invoke-virtual {v0}, [Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method
