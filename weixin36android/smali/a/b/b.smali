.class public abstract La/b/b;
.super Ljava/lang/Object;


# static fields
.field private static a:La/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/b/j;

    invoke-direct {v0}, La/b/j;-><init>()V

    sput-object v0, La/b/b;->a:La/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()La/b/b;
    .locals 1

    sget-object v0, La/b/b;->a:La/b/b;

    return-object v0
.end method

.method protected static a(La/b/a;[F)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    invoke-virtual {p0}, La/b/a;->c()I

    move-result v4

    invoke-virtual {p0}, La/b/a;->d()I

    move-result v5

    move v0, v1

    move v2, v3

    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_0

    if-nez v2, :cond_2

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    move v0, v3

    :goto_1
    if-ltz v2, :cond_1

    if-nez v0, :cond_8

    :cond_1
    return-void

    :cond_2
    aget v2, p1, v0

    float-to-int v2, v2

    add-int/lit8 v6, v0, 0x1

    aget v6, p1, v6

    float-to-int v6, v6

    if-lt v2, v7, :cond_3

    if-gt v2, v4, :cond_3

    if-lt v6, v7, :cond_3

    if-le v6, v5, :cond_4

    :cond_3
    invoke-static {}, La/g;->a()La/g;

    move-result-object v0

    throw v0

    :cond_4
    if-ne v2, v7, :cond_6

    aput v8, p1, v0

    move v2, v3

    :goto_2
    if-ne v6, v7, :cond_7

    add-int/lit8 v2, v0, 0x1

    aput v8, p1, v2

    move v2, v3

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_6
    if-ne v2, v4, :cond_f

    add-int/lit8 v2, v4, -0x1

    int-to-float v2, v2

    aput v2, p1, v0

    move v2, v3

    goto :goto_2

    :cond_7
    if-ne v6, v5, :cond_5

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v6, v5, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    move v2, v3

    goto :goto_3

    :cond_8
    aget v0, p1, v2

    float-to-int v0, v0

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v6, v6

    if-lt v0, v7, :cond_9

    if-gt v0, v4, :cond_9

    if-lt v6, v7, :cond_9

    if-le v6, v5, :cond_a

    :cond_9
    invoke-static {}, La/g;->a()La/g;

    move-result-object v0

    throw v0

    :cond_a
    if-ne v0, v7, :cond_c

    aput v8, p1, v2

    move v0, v3

    :goto_4
    if-ne v6, v7, :cond_d

    add-int/lit8 v0, v2, 0x1

    aput v8, p1, v0

    move v0, v3

    :cond_b
    :goto_5
    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    :cond_c
    if-ne v0, v4, :cond_e

    add-int/lit8 v0, v4, -0x1

    int-to-float v0, v0

    aput v0, p1, v2

    move v0, v3

    goto :goto_4

    :cond_d
    if-ne v6, v5, :cond_b

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v6, v5, -0x1

    int-to-float v6, v6

    aput v6, p1, v0

    move v0, v3

    goto :goto_5

    :cond_e
    move v0, v1

    goto :goto_4

    :cond_f
    move v2, v1

    goto :goto_2
.end method


# virtual methods
.method public abstract a(La/b/a;IILa/b/d;)La/b/a;
.end method
