.class public final enum Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

.field public static final enum b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

.field private static final synthetic c:[Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

    const-string v1, "EStatusCheckFailed"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;->a:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

    new-instance v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

    const-string v1, "EReachMaxLimit"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

    sget-object v1, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;->a:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;->c:[Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;
    .locals 1

    const-class v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;->c:[Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

    invoke-virtual {v0}, [Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;

    return-object v0
.end method
