.class public final La/a/a;
.super Ljava/lang/Object;

# interfaces
.implements La/n;


# static fields
.field private static final a:[La/f;


# instance fields
.field private final b:La/a/b/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [La/f;

    sput-object v0, La/a/a;->a:[La/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/b/p;

    invoke-direct {v0}, La/a/b/p;-><init>()V

    iput-object v0, p0, La/a/a;->b:La/a/b/p;

    return-void
.end method


# virtual methods
.method public final a(La/k;Ljava/util/Map;)La/h;
    .locals 12

    const/4 v9, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_10

    sget-object v0, La/l;->a:La/l;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, La/k;->a()La/b/a;

    move-result-object v3

    invoke-virtual {v3}, La/b/a;->a()[I

    move-result-object v4

    invoke-virtual {v3}, La/b/a;->b()[I

    move-result-object v5

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    :cond_0
    invoke-static {}, La/g;->a()La/g;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {v3}, La/b/a;->d()I

    move-result v6

    invoke-virtual {v3}, La/b/a;->c()I

    move-result v7

    aget v2, v4, v1

    aget v0, v4, v9

    :goto_0
    if-ge v2, v7, :cond_2

    if-ge v0, v6, :cond_2

    invoke-virtual {v3, v2, v0}, La/b/a;->a(II)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_2
    if-eq v2, v7, :cond_3

    if-ne v0, v6, :cond_5

    :cond_3
    invoke-static {}, La/g;->a()La/g;

    move-result-object v0

    throw v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    aget v0, v4, v1

    sub-int v6, v2, v0

    if-nez v6, :cond_6

    invoke-static {}, La/g;->a()La/g;

    move-result-object v0

    throw v0

    :cond_6
    aget v2, v4, v9

    aget v7, v5, v9

    aget v4, v4, v1

    aget v0, v5, v1

    sub-int v5, v7, v2

    sub-int v8, v0, v4

    if-eq v5, v8, :cond_7

    sub-int v0, v7, v2

    add-int/2addr v0, v4

    :cond_7
    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    div-int v5, v0, v6

    sub-int v0, v7, v2

    add-int/lit8 v0, v0, 0x1

    div-int v7, v0, v6

    if-lez v5, :cond_8

    if-gtz v7, :cond_9

    :cond_8
    invoke-static {}, La/g;->a()La/g;

    move-result-object v0

    throw v0

    :cond_9
    if-eq v7, v5, :cond_a

    invoke-static {}, La/g;->a()La/g;

    move-result-object v0

    throw v0

    :cond_a
    shr-int/lit8 v0, v6, 0x1

    add-int v8, v2, v0

    add-int/2addr v4, v0

    new-instance v9, La/b/a;

    invoke-direct {v9, v5, v7}, La/b/a;-><init>(II)V

    move v2, v1

    :goto_1
    if-lt v2, v7, :cond_d

    iget-object v0, p0, La/a/a;->b:La/a/b/p;

    invoke-virtual {v0, v9, p2}, La/a/b/p;->a(La/b/a;Ljava/util/Map;)La/b/k;

    move-result-object v1

    sget-object v0, La/a/a;->a:[La/f;

    :goto_2
    new-instance v2, La/h;

    invoke-virtual {v1}, La/b/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, La/b/k;->a()[B

    move-result-object v4

    sget-object v5, La/a;->a:La/a;

    invoke-direct {v2, v3, v4, v0, v5}, La/h;-><init>(Ljava/lang/String;[B[La/f;La/a;)V

    invoke-virtual {v1}, La/b/k;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v3, La/c;->a:La/c;

    invoke-virtual {v2, v3, v0}, La/h;->a(La/c;Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {v1}, La/b/k;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-object v1, La/c;->b:La/c;

    invoke-virtual {v2, v1, v0}, La/h;->a(La/c;Ljava/lang/Object;)V

    :cond_c
    return-object v2

    :cond_d
    mul-int v0, v2, v6

    add-int v10, v8, v0

    move v0, v1

    :goto_3
    if-lt v0, v5, :cond_e

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_e
    mul-int v11, v0, v6

    add-int/2addr v11, v4

    invoke-virtual {v3, v11, v10}, La/b/a;->a(II)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v9, v0, v2}, La/b/a;->b(II)V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_10
    new-instance v0, La/a/a/g;

    invoke-virtual {p1}, La/k;->a()La/b/a;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/g;-><init>(La/b/a;)V

    invoke-virtual {v0, p2}, La/a/a/g;->a(Ljava/util/Map;)La/b/h;

    move-result-object v0

    iget-object v1, p0, La/a/a;->b:La/a/b/p;

    invoke-virtual {v0}, La/b/h;->a()La/b/a;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, La/a/b/p;->a(La/b/a;Ljava/util/Map;)La/b/k;

    move-result-object v1

    invoke-virtual {v0}, La/b/h;->b()[La/f;

    move-result-object v0

    goto :goto_2
.end method

.method public final a()V
    .locals 0

    return-void
.end method
