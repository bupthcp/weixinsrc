.class public final enum La/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:La/c;

.field public static final enum b:La/c;

.field private static enum c:La/c;

.field private static enum d:La/c;

.field private static enum e:La/c;

.field private static enum f:La/c;

.field private static enum g:La/c;

.field private static final synthetic h:[La/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, La/c;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, La/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/c;->c:La/c;

    new-instance v0, La/c;

    const-string v1, "ORIENTATION"

    invoke-direct {v0, v1, v4}, La/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/c;->d:La/c;

    new-instance v0, La/c;

    const-string v1, "BYTE_SEGMENTS"

    invoke-direct {v0, v1, v5}, La/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/c;->a:La/c;

    new-instance v0, La/c;

    const-string v1, "ERROR_CORRECTION_LEVEL"

    invoke-direct {v0, v1, v6}, La/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/c;->b:La/c;

    new-instance v0, La/c;

    const-string v1, "ISSUE_NUMBER"

    invoke-direct {v0, v1, v7}, La/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/c;->e:La/c;

    new-instance v0, La/c;

    const-string v1, "SUGGESTED_PRICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, La/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/c;->f:La/c;

    new-instance v0, La/c;

    const-string v1, "POSSIBLE_COUNTRY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, La/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/c;->g:La/c;

    const/4 v0, 0x7

    new-array v0, v0, [La/c;

    sget-object v1, La/c;->c:La/c;

    aput-object v1, v0, v3

    sget-object v1, La/c;->d:La/c;

    aput-object v1, v0, v4

    sget-object v1, La/c;->a:La/c;

    aput-object v1, v0, v5

    sget-object v1, La/c;->b:La/c;

    aput-object v1, v0, v6

    sget-object v1, La/c;->e:La/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, La/c;->f:La/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, La/c;->g:La/c;

    aput-object v2, v0, v1

    sput-object v0, La/c;->h:[La/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/c;
    .locals 1

    const-class v0, La/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/c;

    return-object v0
.end method

.method public static values()[La/c;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, La/c;->h:[La/c;

    array-length v1, v0

    new-array v2, v1, [La/c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
