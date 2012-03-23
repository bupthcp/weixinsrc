.class public final LQQPIM/EOptionID;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EOI_Cancel:LQQPIM/EOptionID; = null

.field public static final EOI_CloudCheck:LQQPIM/EOptionID; = null

.field public static final EOI_DeductibleScan:LQQPIM/EOptionID; = null

.field public static final EOI_END:LQQPIM/EOptionID; = null

.field public static final EOI_Examination:LQQPIM/EOptionID; = null

.field public static final EOI_Force:LQQPIM/EOptionID; = null

.field public static final EOI_None:LQQPIM/EOptionID; = null

.field public static final EOI_Normal:LQQPIM/EOptionID; = null

.field public static final EOI_OpenRootLauch:LQQPIM/EOptionID; = null

.field public static final EOI_OpenSecServ:LQQPIM/EOptionID; = null

.field public static final EOI_OpenTrafficStat:LQQPIM/EOptionID; = null

.field public static final EOI_Reboot:LQQPIM/EOptionID; = null

.field public static final EOI_Silent:LQQPIM/EOptionID; = null

.field public static final EOI_Virus_Scan:LQQPIM/EOptionID; = null

.field public static final _EOI_Cancel:I = 0x4

.field public static final _EOI_CloudCheck:I = 0x9

.field public static final _EOI_DeductibleScan:I = 0x7

.field public static final _EOI_END:I = 0xd

.field public static final _EOI_Examination:I = 0x8

.field public static final _EOI_Force:I = 0x2

.field public static final _EOI_None:I = 0x0

.field public static final _EOI_Normal:I = 0x1

.field public static final _EOI_OpenRootLauch:I = 0xc

.field public static final _EOI_OpenSecServ:I = 0xa

.field public static final _EOI_OpenTrafficStat:I = 0xb

.field public static final _EOI_Reboot:I = 0x3

.field public static final _EOI_Silent:I = 0x5

.field public static final _EOI_Virus_Scan:I = 0x6

.field private static __values:[LQQPIM/EOptionID;


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

    const-class v0, LQQPIM/EOptionID;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EOptionID;->$assertionsDisabled:Z

    const/16 v0, 0xe

    new-array v0, v0, [LQQPIM/EOptionID;

    sput-object v0, LQQPIM/EOptionID;->__values:[LQQPIM/EOptionID;

    new-instance v0, LQQPIM/EOptionID;

    const-string v3, "EOI_None"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/EOptionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EOptionID;->EOI_None:LQQPIM/EOptionID;

    new-instance v0, LQQPIM/EOptionID;

    const-string v2, "EOI_Normal"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/EOptionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EOptionID;->EOI_Normal:LQQPIM/EOptionID;

    new-instance v0, LQQPIM/EOptionID;

    const-string v1, "EOI_Force"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/EOptionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EOptionID;->EOI_Force:LQQPIM/EOptionID;

    new-instance v0, LQQPIM/EOptionID;

    const-string v1, "EOI_Reboot"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/EOptionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EOptionID;->EOI_Reboot:LQQPIM/EOptionID;

    new-instance v0, LQQPIM/EOptionID;

    const-string v1, "EOI_Cancel"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/EOptionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EOptionID;->EOI_Cancel:LQQPIM/EOptionID;

    new-instance v0, LQQPIM/EOptionID;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "EOI_Silent"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EOptionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EOptionID;->EOI_Silent:LQQPIM/EOptionID;

    new-instance v0, LQQPIM/EOptionID;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "EOI_Virus_Scan"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EOptionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EOptionID;->EOI_Virus_Scan:LQQPIM/EOptionID;

    new-instance v0, LQQPIM/EOptionID;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "EOI_DeductibleScan"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EOptionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EOptionID;->EOI_DeductibleScan:LQQPIM/EOptionID;

    new-instance v0, LQQPIM/EOptionID;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "EOI_Examination"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EOptionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EOptionID;->EOI_Examination:LQQPIM/EOptionID;

    new-instance v0, LQQPIM/EOptionID;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const-string v3, "EOI_CloudCheck"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EOptionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EOptionID;->EOI_CloudCheck:LQQPIM/EOptionID;

    new-instance v0, LQQPIM/EOptionID;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-string v3, "EOI_OpenSecServ"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EOptionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EOptionID;->EOI_OpenSecServ:LQQPIM/EOptionID;

    new-instance v0, LQQPIM/EOptionID;

    const/16 v1, 0xb

    const/16 v2, 0xb

    const-string v3, "EOI_OpenTrafficStat"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EOptionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EOptionID;->EOI_OpenTrafficStat:LQQPIM/EOptionID;

    new-instance v0, LQQPIM/EOptionID;

    const/16 v1, 0xc

    const/16 v2, 0xc

    const-string v3, "EOI_OpenRootLauch"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EOptionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EOptionID;->EOI_OpenRootLauch:LQQPIM/EOptionID;

    new-instance v0, LQQPIM/EOptionID;

    const/16 v1, 0xd

    const/16 v2, 0xd

    const-string v3, "EOI_END"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EOptionID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EOptionID;->EOI_END:LQQPIM/EOptionID;

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

    iput-object v0, p0, LQQPIM/EOptionID;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/EOptionID;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/EOptionID;->__value:I

    sget-object v0, LQQPIM/EOptionID;->__values:[LQQPIM/EOptionID;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/EOptionID;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EOptionID;->__values:[LQQPIM/EOptionID;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EOptionID;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EOptionID;->__values:[LQQPIM/EOptionID;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EOptionID;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/EOptionID;->__values:[LQQPIM/EOptionID;

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

.method public static convert(Ljava/lang/String;)LQQPIM/EOptionID;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EOptionID;->__values:[LQQPIM/EOptionID;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EOptionID;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EOptionID;->__values:[LQQPIM/EOptionID;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EOptionID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/EOptionID;->__values:[LQQPIM/EOptionID;

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

    iget-object v0, p0, LQQPIM/EOptionID;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/EOptionID;->__value:I

    return v0
.end method
