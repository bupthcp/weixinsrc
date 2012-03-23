.class final enum Lcom/tencent/mm/modelqrcode/CaptureHandler$State;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

.field public static final enum b:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

.field public static final enum c:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

.field private static final synthetic d:[Lcom/tencent/mm/modelqrcode/CaptureHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->a:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    new-instance v0, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->b:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    new-instance v0, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->c:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    sget-object v1, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->a:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->b:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->c:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->d:[Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/modelqrcode/CaptureHandler$State;
    .locals 1

    const-class v0, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/modelqrcode/CaptureHandler$State;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->d:[Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    invoke-virtual {v0}, [Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    return-object v0
.end method
