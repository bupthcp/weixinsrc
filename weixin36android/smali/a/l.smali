.class public final enum La/l;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:La/l;

.field public static final enum b:La/l;

.field public static final enum c:La/l;

.field public static final enum d:La/l;

.field public static final enum e:La/l;

.field private static enum f:La/l;

.field private static enum g:La/l;

.field private static enum h:La/l;

.field private static final synthetic i:[La/l;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, La/l;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, La/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/l;->f:La/l;

    new-instance v0, La/l;

    const-string v1, "PURE_BARCODE"

    invoke-direct {v0, v1, v4}, La/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/l;->a:La/l;

    new-instance v0, La/l;

    const-string v1, "POSSIBLE_FORMATS"

    invoke-direct {v0, v1, v5}, La/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/l;->b:La/l;

    new-instance v0, La/l;

    const-string v1, "TRY_HARDER"

    invoke-direct {v0, v1, v6}, La/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/l;->c:La/l;

    new-instance v0, La/l;

    const-string v1, "CHARACTER_SET"

    invoke-direct {v0, v1, v7}, La/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/l;->d:La/l;

    new-instance v0, La/l;

    const-string v1, "ALLOWED_LENGTHS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, La/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/l;->g:La/l;

    new-instance v0, La/l;

    const-string v1, "ASSUME_CODE_39_CHECK_DIGIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, La/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/l;->h:La/l;

    new-instance v0, La/l;

    const-string v1, "NEED_RESULT_POINT_CALLBACK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, La/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/l;->e:La/l;

    const/16 v0, 0x8

    new-array v0, v0, [La/l;

    sget-object v1, La/l;->f:La/l;

    aput-object v1, v0, v3

    sget-object v1, La/l;->a:La/l;

    aput-object v1, v0, v4

    sget-object v1, La/l;->b:La/l;

    aput-object v1, v0, v5

    sget-object v1, La/l;->c:La/l;

    aput-object v1, v0, v6

    sget-object v1, La/l;->d:La/l;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, La/l;->g:La/l;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, La/l;->h:La/l;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, La/l;->e:La/l;

    aput-object v2, v0, v1

    sput-object v0, La/l;->i:[La/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/l;
    .locals 1

    const-class v0, La/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/l;

    return-object v0
.end method

.method public static values()[La/l;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, La/l;->i:[La/l;

    array-length v1, v0

    new-array v2, v1, [La/l;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
