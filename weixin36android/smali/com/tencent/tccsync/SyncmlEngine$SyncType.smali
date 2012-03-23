.class public final enum Lcom/tencent/tccsync/SyncmlEngine$SyncType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tencent/tccsync/SyncmlEngine$SyncType;

.field public static final enum SYNC_COVER_SERVER:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

.field public static final enum SYNC_NONE:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

.field public static final enum SYNC_ONE_WAY_FROM_CLIENT:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

.field public static final enum SYNC_ONE_WAY_FROM_SERVER:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

.field public static final enum SYNC_REFRESH_FROM_CLIENT:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

.field public static final enum SYNC_REFRESH_FROM_SERVER:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

.field public static final enum SYNC_RESTORE_FROM_SERVER:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

.field public static final enum SYNC_SLOW_SYNC:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

.field public static final enum SYNC_TWO_WAY:Lcom/tencent/tccsync/SyncmlEngine$SyncType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    const-string v1, "SYNC_NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/tccsync/SyncmlEngine$SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_NONE:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    new-instance v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    const-string v1, "SYNC_TWO_WAY"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/tccsync/SyncmlEngine$SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_TWO_WAY:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    new-instance v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    const-string v1, "SYNC_SLOW_SYNC"

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v6, v2}, Lcom/tencent/tccsync/SyncmlEngine$SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_SLOW_SYNC:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    new-instance v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    const-string v1, "SYNC_ONE_WAY_FROM_CLIENT"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/tccsync/SyncmlEngine$SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_ONE_WAY_FROM_CLIENT:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    new-instance v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    const-string v1, "SYNC_REFRESH_FROM_CLIENT"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v8, v2}, Lcom/tencent/tccsync/SyncmlEngine$SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_REFRESH_FROM_CLIENT:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    new-instance v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    const-string v1, "SYNC_ONE_WAY_FROM_SERVER"

    const/4 v2, 0x5

    const/16 v3, 0xcc

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tccsync/SyncmlEngine$SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_ONE_WAY_FROM_SERVER:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    new-instance v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    const-string v1, "SYNC_REFRESH_FROM_SERVER"

    const/4 v2, 0x6

    const/16 v3, 0xcd

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tccsync/SyncmlEngine$SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_REFRESH_FROM_SERVER:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    new-instance v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    const-string v1, "SYNC_RESTORE_FROM_SERVER"

    const/4 v2, 0x7

    const/16 v3, 0xd5

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tccsync/SyncmlEngine$SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_RESTORE_FROM_SERVER:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    new-instance v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    const-string v1, "SYNC_COVER_SERVER"

    const/16 v2, 0x8

    const/16 v3, 0xd7

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tccsync/SyncmlEngine$SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_COVER_SERVER:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    sget-object v1, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_NONE:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_TWO_WAY:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_SLOW_SYNC:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_ONE_WAY_FROM_CLIENT:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_REFRESH_FROM_CLIENT:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_ONE_WAY_FROM_SERVER:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_REFRESH_FROM_SERVER:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_RESTORE_FROM_SERVER:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->SYNC_COVER_SERVER:Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->ENUM$VALUES:[Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tccsync/SyncmlEngine$SyncType;
    .locals 1

    const-class v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    return-object v0
.end method

.method public static values()[Lcom/tencent/tccsync/SyncmlEngine$SyncType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->ENUM$VALUES:[Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/tccsync/SyncmlEngine$SyncType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/SyncmlEngine$SyncType;->value:I

    return v0
.end method
