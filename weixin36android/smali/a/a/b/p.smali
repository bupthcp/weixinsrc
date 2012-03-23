.class public final La/a/b/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/b/a/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/b/a/d;

    sget-object v1, La/b/a/c;->a:La/b/a/c;

    invoke-direct {v0, v1}, La/b/a/d;-><init>(La/b/a/c;)V

    iput-object v0, p0, La/a/b/p;->a:La/b/a/d;

    return-void
.end method


# virtual methods
.method public final a(La/b/a;Ljava/util/Map;)La/b/k;
    .locals 13

    new-instance v0, La/a/b/h;

    invoke-direct {v0, p1}, La/a/b/h;-><init>(La/b/a;)V

    invoke-virtual {v0}, La/a/b/h;->b()La/a/b/q;

    move-result-object v4

    invoke-virtual {v0}, La/a/b/h;->a()La/a/b/s;

    move-result-object v1

    invoke-virtual {v1}, La/a/b/s;->a()La/a/b/b;

    move-result-object v5

    invoke-virtual {v0}, La/a/b/h;->c()[B

    move-result-object v0

    invoke-static {v0, v4, v5}, La/a/b/r;->a([BLa/a/b/q;La/a/b/b;)[La/a/b/r;

    move-result-object v6

    const/4 v1, 0x0

    array-length v2, v6

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    new-array v7, v1, [B

    const/4 v1, 0x0

    array-length v8, v6

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-lt v3, v8, :cond_1

    invoke-static {v7, v4, v5, p2}, La/a/b/a;->a([BLa/a/b/q;La/a/b/b;Ljava/util/Map;)La/b/k;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v3, v6, v0

    invoke-virtual {v3}, La/a/b/r;->a()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v0, v6, v3

    invoke-virtual {v0}, La/a/b/r;->b()[B

    move-result-object v9

    invoke-virtual {v0}, La/a/b/r;->a()I

    move-result v10

    array-length v2, v9

    new-array v11, v2, [I

    const/4 v0, 0x0

    :goto_2
    if-lt v0, v2, :cond_2

    array-length v0, v9

    sub-int/2addr v0, v10

    :try_start_0
    iget-object v2, p0, La/a/b/p;->a:La/b/a/d;

    invoke-virtual {v2, v11, v0}, La/b/a/d;->a([II)V
    :try_end_0
    .catch La/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_3
    if-lt v0, v10, :cond_3

    const/4 v0, 0x0

    :goto_4
    if-lt v0, v10, :cond_4

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    aget-byte v12, v9, v0

    and-int/lit16 v12, v12, 0xff

    aput v12, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, La/m;->a()La/m;

    move-result-object v0

    throw v0

    :cond_3
    aget v2, v11, v0

    int-to-byte v2, v2

    aput-byte v2, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v1, 0x1

    aget-byte v11, v9, v0

    aput-byte v11, v7, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_4
.end method
