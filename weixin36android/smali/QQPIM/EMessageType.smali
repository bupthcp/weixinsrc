.class public final LQQPIM/EMessageType;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EMT_Android_Notice_Bar:LQQPIM/EMessageType; = null

.field public static final EMT_Android_Pop_Up:LQQPIM/EMessageType; = null

.field public static final EMT_Android_Top:LQQPIM/EMessageType; = null

.field public static final EMT_END:LQQPIM/EMessageType; = null

.field public static final EMT_None:LQQPIM/EMessageType; = null

.field public static final EMT_Notice_Bar:LQQPIM/EMessageType; = null

.field public static final EMT_Pop_UP:LQQPIM/EMessageType; = null

.field public static final EMT_Symbian_Pop_Up:LQQPIM/EMessageType; = null

.field public static final EMT_Symbian_Top:LQQPIM/EMessageType; = null

.field public static final EMT_Top:LQQPIM/EMessageType; = null

.field public static final _EMT_Android_Notice_Bar:I = 0x8

.field public static final _EMT_Android_Pop_Up:I = 0x6

.field public static final _EMT_Android_Top:I = 0x7

.field public static final _EMT_END:I = 0x9

.field public static final _EMT_None:I = 0x0

.field public static final _EMT_Notice_Bar:I = 0x3

.field public static final _EMT_Pop_UP:I = 0x1

.field public static final _EMT_Symbian_Pop_Up:I = 0x4

.field public static final _EMT_Symbian_Top:I = 0x5

.field public static final _EMT_Top:I = 0x2

.field private static __values:[LQQPIM/EMessageType;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LQQPIM/EMessageType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EMessageType;->$assertionsDisabled:Z

    const/16 v0, 0xa

    new-array v0, v0, [LQQPIM/EMessageType;

    sput-object v0, LQQPIM/EMessageType;->__values:[LQQPIM/EMessageType;

    new-instance v0, LQQPIM/EMessageType;

    const-string v3, "EMT_None"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/EMessageType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMessageType;->EMT_None:LQQPIM/EMessageType;

    new-instance v0, LQQPIM/EMessageType;

    const-string v2, "EMT_Pop_UP"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/EMessageType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMessageType;->EMT_Pop_UP:LQQPIM/EMessageType;

    new-instance v0, LQQPIM/EMessageType;

    const-string v1, "EMT_Top"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/EMessageType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMessageType;->EMT_Top:LQQPIM/EMessageType;

    new-instance v0, LQQPIM/EMessageType;

    const-string v1, "EMT_Notice_Bar"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/EMessageType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMessageType;->EMT_Notice_Bar:LQQPIM/EMessageType;

    new-instance v0, LQQPIM/EMessageType;

    const-string v1, "EMT_Symbian_Pop_Up"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/EMessageType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMessageType;->EMT_Symbian_Pop_Up:LQQPIM/EMessageType;

    new-instance v0, LQQPIM/EMessageType;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "EMT_Symbian_Top"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EMessageType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMessageType;->EMT_Symbian_Top:LQQPIM/EMessageType;

    new-instance v0, LQQPIM/EMessageType;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "EMT_Android_Pop_Up"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EMessageType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMessageType;->EMT_Android_Pop_Up:LQQPIM/EMessageType;

    new-instance v0, LQQPIM/EMessageType;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "EMT_Android_Top"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EMessageType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMessageType;->EMT_Android_Top:LQQPIM/EMessageType;

    new-instance v0, LQQPIM/EMessageType;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "EMT_Android_Notice_Bar"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EMessageType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMessageType;->EMT_Android_Notice_Bar:LQQPIM/EMessageType;

    new-instance v0, LQQPIM/EMessageType;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const-string v3, "EMT_END"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EMessageType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMessageType;->EMT_END:LQQPIM/EMessageType;

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

    iput-object v0, p0, LQQPIM/EMessageType;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/EMessageType;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/EMessageType;->__value:I

    sget-object v0, LQQPIM/EMessageType;->__values:[LQQPIM/EMessageType;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/EMessageType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EMessageType;->__values:[LQQPIM/EMessageType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EMessageType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EMessageType;->__values:[LQQPIM/EMessageType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EMessageType;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/EMessageType;->__values:[LQQPIM/EMessageType;

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

.method public static convert(Ljava/lang/String;)LQQPIM/EMessageType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EMessageType;->__values:[LQQPIM/EMessageType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EMessageType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EMessageType;->__values:[LQQPIM/EMessageType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EMessageType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/EMessageType;->__values:[LQQPIM/EMessageType;

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

    iget-object v0, p0, LQQPIM/EMessageType;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/EMessageType;->__value:I

    return v0
.end method
