.class public final enum La/a/b/b;
.super Ljava/lang/Enum;


# static fields
.field private static enum a:La/a/b/b;

.field private static enum b:La/a/b/b;

.field private static enum c:La/a/b/b;

.field private static enum d:La/a/b/b;

.field private static final e:[La/a/b/b;

.field private static final synthetic g:[La/a/b/b;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, La/a/b/b;

    const-string v1, "L"

    invoke-direct {v0, v1, v2, v3}, La/a/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/b/b;->a:La/a/b/b;

    new-instance v0, La/a/b/b;

    const-string v1, "M"

    invoke-direct {v0, v1, v3, v2}, La/a/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/b/b;->b:La/a/b/b;

    new-instance v0, La/a/b/b;

    const-string v1, "Q"

    invoke-direct {v0, v1, v4, v5}, La/a/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/b/b;->c:La/a/b/b;

    new-instance v0, La/a/b/b;

    const-string v1, "H"

    invoke-direct {v0, v1, v5, v4}, La/a/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/a/b/b;->d:La/a/b/b;

    new-array v0, v6, [La/a/b/b;

    sget-object v1, La/a/b/b;->a:La/a/b/b;

    aput-object v1, v0, v2

    sget-object v1, La/a/b/b;->b:La/a/b/b;

    aput-object v1, v0, v3

    sget-object v1, La/a/b/b;->c:La/a/b/b;

    aput-object v1, v0, v4

    sget-object v1, La/a/b/b;->d:La/a/b/b;

    aput-object v1, v0, v5

    sput-object v0, La/a/b/b;->g:[La/a/b/b;

    new-array v0, v6, [La/a/b/b;

    sget-object v1, La/a/b/b;->b:La/a/b/b;

    aput-object v1, v0, v2

    sget-object v1, La/a/b/b;->a:La/a/b/b;

    aput-object v1, v0, v3

    sget-object v1, La/a/b/b;->d:La/a/b/b;

    aput-object v1, v0, v4

    sget-object v1, La/a/b/b;->c:La/a/b/b;

    aput-object v1, v0, v5

    sput-object v0, La/a/b/b;->e:[La/a/b/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, La/a/b/b;->f:I

    return-void
.end method

.method public static a(I)La/a/b/b;
    .locals 1

    if-ltz p0, :cond_0

    sget-object v0, La/a/b/b;->e:[La/a/b/b;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, La/a/b/b;->e:[La/a/b/b;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)La/a/b/b;
    .locals 1

    const-class v0, La/a/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a/b/b;

    return-object v0
.end method

.method public static values()[La/a/b/b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, La/a/b/b;->g:[La/a/b/b;

    array-length v1, v0

    new-array v2, v1, [La/a/b/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
