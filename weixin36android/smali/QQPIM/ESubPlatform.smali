.class public final LQQPIM/ESubPlatform;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ESP_Android_General:LQQPIM/ESubPlatform; = null

.field public static final ESP_Iphone_General:LQQPIM/ESubPlatform; = null

.field public static final ESP_Kjava_General:LQQPIM/ESubPlatform; = null

.field public static final ESP_NONE:LQQPIM/ESubPlatform; = null

.field public static final ESP_Symbian_V3:LQQPIM/ESubPlatform; = null

.field public static final ESP_Symbian_V5:LQQPIM/ESubPlatform; = null

.field public static final _ESP_Android_General:I = 0xc9

.field public static final _ESP_Iphone_General:I = 0x12d

.field public static final _ESP_Kjava_General:I = 0x191

.field public static final _ESP_NONE:I = 0x0

.field public static final _ESP_Symbian_V3:I = 0x65

.field public static final _ESP_Symbian_V5:I = 0x66

.field private static __values:[LQQPIM/ESubPlatform;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LQQPIM/ESubPlatform;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/ESubPlatform;->$assertionsDisabled:Z

    const/4 v0, 0x6

    new-array v0, v0, [LQQPIM/ESubPlatform;

    sput-object v0, LQQPIM/ESubPlatform;->__values:[LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const-string v3, "ESP_NONE"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_NONE:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/16 v2, 0x65

    const-string v3, "ESP_Symbian_V3"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Symbian_V3:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/4 v1, 0x2

    const/16 v2, 0x66

    const-string v3, "ESP_Symbian_V5"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Symbian_V5:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/4 v1, 0x3

    const/16 v2, 0xc9

    const-string v3, "ESP_Android_General"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Android_General:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/4 v1, 0x4

    const/16 v2, 0x12d

    const-string v3, "ESP_Iphone_General"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Iphone_General:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/4 v1, 0x5

    const/16 v2, 0x191

    const-string v3, "ESP_Kjava_General"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Kjava_General:LQQPIM/ESubPlatform;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LQQPIM/ESubPlatform;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/ESubPlatform;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/ESubPlatform;->__value:I

    sget-object v0, LQQPIM/ESubPlatform;->__values:[LQQPIM/ESubPlatform;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/ESubPlatform;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/ESubPlatform;->__values:[LQQPIM/ESubPlatform;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/ESubPlatform;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/ESubPlatform;->__values:[LQQPIM/ESubPlatform;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/ESubPlatform;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/ESubPlatform;->__values:[LQQPIM/ESubPlatform;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static convert(Ljava/lang/String;)LQQPIM/ESubPlatform;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/ESubPlatform;->__values:[LQQPIM/ESubPlatform;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/ESubPlatform;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/ESubPlatform;->__values:[LQQPIM/ESubPlatform;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/ESubPlatform;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/ESubPlatform;->__values:[LQQPIM/ESubPlatform;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ESubPlatform;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/ESubPlatform;->__value:I

    return v0
.end method
