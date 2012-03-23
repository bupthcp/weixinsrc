.class public final Lcom/tencent/mm/protocal/ConstantsProtocal;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I

.field public static final c:[B

.field public static final d:[B

.field public static final e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/protocal/ConstantsProtocal;->a:Ljava/lang/String;

    const v0, 0x23060088

    sput v0, Lcom/tencent/mm/protocal/ConstantsProtocal;->b:I

    sput-object v2, Lcom/tencent/mm/protocal/ConstantsProtocal;->c:[B

    sput-object v2, Lcom/tencent/mm/protocal/ConstantsProtocal;->d:[B

    sput-object v2, Lcom/tencent/mm/protocal/ConstantsProtocal;->e:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/tencent/mm/protocal/ConstantsProtocal;->b:I

    return-void
.end method
