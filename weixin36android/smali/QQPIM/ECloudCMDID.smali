.class public final LQQPIM/ECloudCMDID;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ECCID_ConfUpdate:LQQPIM/ECloudCMDID; = null

.field public static final ECCID_DeleteFile:LQQPIM/ECloudCMDID; = null

.field public static final ECCID_END:LQQPIM/ECloudCMDID; = null

.field public static final ECCID_ForbidInstall:LQQPIM/ECloudCMDID; = null

.field public static final ECCID_Install:LQQPIM/ECloudCMDID; = null

.field public static final ECCID_KillPorcess:LQQPIM/ECloudCMDID; = null

.field public static final ECCID_MQQSecRun:LQQPIM/ECloudCMDID; = null

.field public static final ECCID_None:LQQPIM/ECloudCMDID; = null

.field public static final ECCID_OpenLink:LQQPIM/ECloudCMDID; = null

.field public static final ECCID_OpenUI:LQQPIM/ECloudCMDID; = null

.field public static final ECCID_PurgeIpTables:LQQPIM/ECloudCMDID; = null

.field public static final ECCID_Reboot:LQQPIM/ECloudCMDID; = null

.field public static final ECCID_SoftUpdate:LQQPIM/ECloudCMDID; = null

.field public static final ECCID_Uninstall:LQQPIM/ECloudCMDID; = null

.field public static final _ECCID_ConfUpdate:I = 0xc9

.field public static final _ECCID_DeleteFile:I = 0x4

.field public static final _ECCID_END:I = 0xca

.field public static final _ECCID_ForbidInstall:I = 0x2

.field public static final _ECCID_Install:I = 0x6

.field public static final _ECCID_KillPorcess:I = 0x3

.field public static final _ECCID_MQQSecRun:I = 0x7

.field public static final _ECCID_None:I = 0x0

.field public static final _ECCID_OpenLink:I = 0x65

.field public static final _ECCID_OpenUI:I = 0x64

.field public static final _ECCID_PurgeIpTables:I = 0x8

.field public static final _ECCID_Reboot:I = 0x5

.field public static final _ECCID_SoftUpdate:I = 0xc8

.field public static final _ECCID_Uninstall:I = 0x1

.field private static __values:[LQQPIM/ECloudCMDID;


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

    const-class v0, LQQPIM/ECloudCMDID;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/ECloudCMDID;->$assertionsDisabled:Z

    const/16 v0, 0xe

    new-array v0, v0, [LQQPIM/ECloudCMDID;

    sput-object v0, LQQPIM/ECloudCMDID;->__values:[LQQPIM/ECloudCMDID;

    new-instance v0, LQQPIM/ECloudCMDID;

    const-string v3, "ECCID_None"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/ECloudCMDID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ECloudCMDID;->ECCID_None:LQQPIM/ECloudCMDID;

    new-instance v0, LQQPIM/ECloudCMDID;

    const-string v2, "ECCID_Uninstall"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/ECloudCMDID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ECloudCMDID;->ECCID_Uninstall:LQQPIM/ECloudCMDID;

    new-instance v0, LQQPIM/ECloudCMDID;

    const-string v1, "ECCID_ForbidInstall"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/ECloudCMDID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ECloudCMDID;->ECCID_ForbidInstall:LQQPIM/ECloudCMDID;

    new-instance v0, LQQPIM/ECloudCMDID;

    const-string v1, "ECCID_KillPorcess"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/ECloudCMDID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ECloudCMDID;->ECCID_KillPorcess:LQQPIM/ECloudCMDID;

    new-instance v0, LQQPIM/ECloudCMDID;

    const-string v1, "ECCID_DeleteFile"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/ECloudCMDID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ECloudCMDID;->ECCID_DeleteFile:LQQPIM/ECloudCMDID;

    new-instance v0, LQQPIM/ECloudCMDID;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "ECCID_Reboot"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ECloudCMDID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ECloudCMDID;->ECCID_Reboot:LQQPIM/ECloudCMDID;

    new-instance v0, LQQPIM/ECloudCMDID;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "ECCID_Install"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ECloudCMDID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ECloudCMDID;->ECCID_Install:LQQPIM/ECloudCMDID;

    new-instance v0, LQQPIM/ECloudCMDID;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "ECCID_MQQSecRun"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ECloudCMDID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ECloudCMDID;->ECCID_MQQSecRun:LQQPIM/ECloudCMDID;

    new-instance v0, LQQPIM/ECloudCMDID;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "ECCID_PurgeIpTables"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ECloudCMDID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ECloudCMDID;->ECCID_PurgeIpTables:LQQPIM/ECloudCMDID;

    new-instance v0, LQQPIM/ECloudCMDID;

    const/16 v1, 0x9

    const/16 v2, 0x64

    const-string v3, "ECCID_OpenUI"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ECloudCMDID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ECloudCMDID;->ECCID_OpenUI:LQQPIM/ECloudCMDID;

    new-instance v0, LQQPIM/ECloudCMDID;

    const/16 v1, 0xa

    const/16 v2, 0x65

    const-string v3, "ECCID_OpenLink"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ECloudCMDID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ECloudCMDID;->ECCID_OpenLink:LQQPIM/ECloudCMDID;

    new-instance v0, LQQPIM/ECloudCMDID;

    const/16 v1, 0xb

    const/16 v2, 0xc8

    const-string v3, "ECCID_SoftUpdate"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ECloudCMDID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ECloudCMDID;->ECCID_SoftUpdate:LQQPIM/ECloudCMDID;

    new-instance v0, LQQPIM/ECloudCMDID;

    const/16 v1, 0xc

    const/16 v2, 0xc9

    const-string v3, "ECCID_ConfUpdate"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ECloudCMDID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ECloudCMDID;->ECCID_ConfUpdate:LQQPIM/ECloudCMDID;

    new-instance v0, LQQPIM/ECloudCMDID;

    const/16 v1, 0xd

    const/16 v2, 0xca

    const-string v3, "ECCID_END"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ECloudCMDID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ECloudCMDID;->ECCID_END:LQQPIM/ECloudCMDID;

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

    iput-object v0, p0, LQQPIM/ECloudCMDID;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/ECloudCMDID;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/ECloudCMDID;->__value:I

    sget-object v0, LQQPIM/ECloudCMDID;->__values:[LQQPIM/ECloudCMDID;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/ECloudCMDID;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/ECloudCMDID;->__values:[LQQPIM/ECloudCMDID;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/ECloudCMDID;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/ECloudCMDID;->__values:[LQQPIM/ECloudCMDID;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/ECloudCMDID;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/ECloudCMDID;->__values:[LQQPIM/ECloudCMDID;

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

.method public static convert(Ljava/lang/String;)LQQPIM/ECloudCMDID;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/ECloudCMDID;->__values:[LQQPIM/ECloudCMDID;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/ECloudCMDID;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/ECloudCMDID;->__values:[LQQPIM/ECloudCMDID;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/ECloudCMDID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/ECloudCMDID;->__values:[LQQPIM/ECloudCMDID;

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

    iget-object v0, p0, LQQPIM/ECloudCMDID;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/ECloudCMDID;->__value:I

    return v0
.end method
