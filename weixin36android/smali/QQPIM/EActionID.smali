.class public final LQQPIM/EActionID;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EAID_Cloud_Cmd:LQQPIM/EActionID; = null

.field public static final EAID_Cloud_Info:LQQPIM/EActionID; = null

.field public static final EAID_Config_No_Note_Update:LQQPIM/EActionID; = null

.field public static final EAID_Config_Update:LQQPIM/EActionID; = null

.field public static final EAID_END:LQQPIM/EActionID; = null

.field public static final EAID_None:LQQPIM/EActionID; = null

.field public static final EAID_Show_Promote:LQQPIM/EActionID; = null

.field public static final EAID_Show_SecureWarn:LQQPIM/EActionID; = null

.field public static final EAID_Show_Tips:LQQPIM/EActionID; = null

.field public static final EAID_Soft_Force_Update:LQQPIM/EActionID; = null

.field public static final EAID_Soft_No_Note_Update:LQQPIM/EActionID; = null

.field public static final EAID_Soft_Update:LQQPIM/EActionID; = null

.field public static final _EAID_Cloud_Cmd:I = 0x1e

.field public static final _EAID_Cloud_Info:I = 0x13

.field public static final _EAID_Config_No_Note_Update:I = 0xb

.field public static final _EAID_Config_Update:I = 0xa

.field public static final _EAID_END:I = 0x1f

.field public static final _EAID_None:I = 0x0

.field public static final _EAID_Show_Promote:I = 0x15

.field public static final _EAID_Show_SecureWarn:I = 0x16

.field public static final _EAID_Show_Tips:I = 0x14

.field public static final _EAID_Soft_Force_Update:I = 0x3

.field public static final _EAID_Soft_No_Note_Update:I = 0x4

.field public static final _EAID_Soft_Update:I = 0x2

.field private static __values:[LQQPIM/EActionID;


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

    const-class v0, LQQPIM/EActionID;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EActionID;->$assertionsDisabled:Z

    const/16 v0, 0xc

    new-array v0, v0, [LQQPIM/EActionID;

    sput-object v0, LQQPIM/EActionID;->__values:[LQQPIM/EActionID;

    new-instance v0, LQQPIM/EActionID;

    const-string v3, "EAID_None"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/EActionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionID;->EAID_None:LQQPIM/EActionID;

    new-instance v0, LQQPIM/EActionID;

    const-string v2, "EAID_Soft_Update"

    invoke-direct {v0, v1, v4, v2}, LQQPIM/EActionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionID;->EAID_Soft_Update:LQQPIM/EActionID;

    new-instance v0, LQQPIM/EActionID;

    const-string v1, "EAID_Soft_Force_Update"

    invoke-direct {v0, v4, v5, v1}, LQQPIM/EActionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionID;->EAID_Soft_Force_Update:LQQPIM/EActionID;

    new-instance v0, LQQPIM/EActionID;

    const-string v1, "EAID_Soft_No_Note_Update"

    invoke-direct {v0, v5, v6, v1}, LQQPIM/EActionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionID;->EAID_Soft_No_Note_Update:LQQPIM/EActionID;

    new-instance v0, LQQPIM/EActionID;

    const/16 v1, 0xa

    const-string v2, "EAID_Config_Update"

    invoke-direct {v0, v6, v1, v2}, LQQPIM/EActionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionID;->EAID_Config_Update:LQQPIM/EActionID;

    new-instance v0, LQQPIM/EActionID;

    const/4 v1, 0x5

    const/16 v2, 0xb

    const-string v3, "EAID_Config_No_Note_Update"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EActionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionID;->EAID_Config_No_Note_Update:LQQPIM/EActionID;

    new-instance v0, LQQPIM/EActionID;

    const/4 v1, 0x6

    const/16 v2, 0x13

    const-string v3, "EAID_Cloud_Info"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EActionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionID;->EAID_Cloud_Info:LQQPIM/EActionID;

    new-instance v0, LQQPIM/EActionID;

    const/4 v1, 0x7

    const/16 v2, 0x14

    const-string v3, "EAID_Show_Tips"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EActionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionID;->EAID_Show_Tips:LQQPIM/EActionID;

    new-instance v0, LQQPIM/EActionID;

    const/16 v1, 0x8

    const/16 v2, 0x15

    const-string v3, "EAID_Show_Promote"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EActionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionID;->EAID_Show_Promote:LQQPIM/EActionID;

    new-instance v0, LQQPIM/EActionID;

    const/16 v1, 0x9

    const/16 v2, 0x16

    const-string v3, "EAID_Show_SecureWarn"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EActionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionID;->EAID_Show_SecureWarn:LQQPIM/EActionID;

    new-instance v0, LQQPIM/EActionID;

    const/16 v1, 0xa

    const/16 v2, 0x1e

    const-string v3, "EAID_Cloud_Cmd"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EActionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionID;->EAID_Cloud_Cmd:LQQPIM/EActionID;

    new-instance v0, LQQPIM/EActionID;

    const/16 v1, 0xb

    const/16 v2, 0x1f

    const-string v3, "EAID_END"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EActionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionID;->EAID_END:LQQPIM/EActionID;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LQQPIM/EActionID;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/EActionID;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/EActionID;->__value:I

    sget-object v0, LQQPIM/EActionID;->__values:[LQQPIM/EActionID;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/EActionID;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EActionID;->__values:[LQQPIM/EActionID;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EActionID;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EActionID;->__values:[LQQPIM/EActionID;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EActionID;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/EActionID;->__values:[LQQPIM/EActionID;

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

.method public static convert(Ljava/lang/String;)LQQPIM/EActionID;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EActionID;->__values:[LQQPIM/EActionID;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EActionID;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EActionID;->__values:[LQQPIM/EActionID;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EActionID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/EActionID;->__values:[LQQPIM/EActionID;

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

    iget-object v0, p0, LQQPIM/EActionID;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/EActionID;->__value:I

    return v0
.end method
