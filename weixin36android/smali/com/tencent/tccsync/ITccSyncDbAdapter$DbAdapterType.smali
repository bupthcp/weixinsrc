.class public final enum Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum BOOKMARK:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field private static final synthetic ENUM$VALUES:[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum EVENT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum MMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum NOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum TNOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum TODO:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public static final enum UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "CONTACT"

    invoke-direct {v0, v1, v5, v5}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v6, v6}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->EVENT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "SMS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "MMS"

    invoke-direct {v0, v1, v7, v8}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->MMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "CALLLOG"

    const/4 v2, 0x5

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "BOOKMARK"

    const/4 v2, 0x6

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BOOKMARK:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "TODO"

    const/4 v2, 0x7

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TODO:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "NOTE"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v8, v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->NOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const-string v1, "TNOTE"

    const/16 v2, 0x9

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TNOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->EVENT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->MMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BOOKMARK:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TODO:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->NOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v1, v0, v8

    const/16 v1, 0x9

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TNOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ENUM$VALUES:[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;
    .locals 1

    const-class v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    return-object v0
.end method

.method public static values()[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ENUM$VALUES:[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->value:I

    return v0
.end method
