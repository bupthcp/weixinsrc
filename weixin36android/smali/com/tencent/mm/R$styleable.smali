.class public final Lcom/tencent/mm/R$styleable;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field public static final b:[I

.field private static c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/mm/R$styleable;->a:[I

    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/tencent/mm/R$styleable;->c:[I

    new-array v0, v3, [I

    const v1, 0x7f010003

    aput v1, v0, v2

    sput-object v0, Lcom/tencent/mm/R$styleable;->b:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
