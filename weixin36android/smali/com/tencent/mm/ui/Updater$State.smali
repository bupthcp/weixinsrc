.class public final enum Lcom/tencent/mm/ui/Updater$State;
.super Ljava/lang/Enum;


# static fields
.field private static enum a:Lcom/tencent/mm/ui/Updater$State;

.field private static enum b:Lcom/tencent/mm/ui/Updater$State;

.field private static enum c:Lcom/tencent/mm/ui/Updater$State;

.field private static enum d:Lcom/tencent/mm/ui/Updater$State;

.field private static final synthetic e:[Lcom/tencent/mm/ui/Updater$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/mm/ui/Updater$State;

    const-string v1, "ESGetUpdateFailed"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ui/Updater$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/Updater$State;->a:Lcom/tencent/mm/ui/Updater$State;

    new-instance v0, Lcom/tencent/mm/ui/Updater$State;

    const-string v1, "ESGetUpdateInfo"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/ui/Updater$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/Updater$State;->b:Lcom/tencent/mm/ui/Updater$State;

    new-instance v0, Lcom/tencent/mm/ui/Updater$State;

    const-string v1, "ESGetUpdatePack"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/ui/Updater$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/Updater$State;->c:Lcom/tencent/mm/ui/Updater$State;

    new-instance v0, Lcom/tencent/mm/ui/Updater$State;

    const-string v1, "ESGetUpdateDone"

    invoke-direct {v0, v1, v5}, Lcom/tencent/mm/ui/Updater$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/Updater$State;->d:Lcom/tencent/mm/ui/Updater$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/mm/ui/Updater$State;

    sget-object v1, Lcom/tencent/mm/ui/Updater$State;->a:Lcom/tencent/mm/ui/Updater$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/ui/Updater$State;->b:Lcom/tencent/mm/ui/Updater$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/ui/Updater$State;->c:Lcom/tencent/mm/ui/Updater$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/mm/ui/Updater$State;->d:Lcom/tencent/mm/ui/Updater$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/mm/ui/Updater$State;->e:[Lcom/tencent/mm/ui/Updater$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/ui/Updater$State;
    .locals 1

    const-class v0, Lcom/tencent/mm/ui/Updater$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/Updater$State;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/ui/Updater$State;
    .locals 1

    sget-object v0, Lcom/tencent/mm/ui/Updater$State;->e:[Lcom/tencent/mm/ui/Updater$State;

    invoke-virtual {v0}, [Lcom/tencent/mm/ui/Updater$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/ui/Updater$State;

    return-object v0
.end method
