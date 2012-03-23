.class final La/a/b/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/b/a;

.field private b:La/a/b/q;

.field private c:La/a/b/s;


# direct methods
.method constructor <init>(La/b/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, La/b/a;->d()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0

    :cond_1
    iput-object p1, p0, La/a/b/h;->a:La/b/a;

    return-void
.end method

.method private a(III)I
    .locals 1

    iget-object v0, p0, La/a/b/h;->a:La/b/a;

    invoke-virtual {v0, p1, p2}, La/b/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    shl-int/lit8 v0, p3, 0x1

    or-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    shl-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a()La/a/b/s;
    .locals 6

    const/4 v4, 0x7

    const/4 v1, 0x0

    const/16 v5, 0x8

    iget-object v0, p0, La/a/b/h;->c:La/a/b/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/b/h;->c:La/a/b/s;

    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    move v2, v1

    :goto_1
    const/4 v3, 0x6

    if-lt v0, v3, :cond_1

    invoke-direct {p0, v4, v5, v2}, La/a/b/h;->a(III)I

    move-result v0

    invoke-direct {p0, v5, v5, v0}, La/a/b/h;->a(III)I

    move-result v0

    invoke-direct {p0, v5, v4, v0}, La/a/b/h;->a(III)I

    move-result v2

    const/4 v0, 0x5

    :goto_2
    if-gez v0, :cond_2

    iget-object v0, p0, La/a/b/h;->a:La/b/a;

    invoke-virtual {v0}, La/b/a;->d()I

    move-result v3

    add-int/lit8 v4, v3, -0x7

    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-ge v0, v4, :cond_3

    add-int/lit8 v0, v3, -0x8

    :goto_4
    if-lt v0, v3, :cond_4

    invoke-static {v2, v1}, La/a/b/s;->b(II)La/a/b/s;

    move-result-object v0

    iput-object v0, p0, La/a/b/h;->c:La/a/b/s;

    iget-object v0, p0, La/a/b/h;->c:La/a/b/s;

    if-eqz v0, :cond_5

    iget-object v0, p0, La/a/b/h;->c:La/a/b/s;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v5, v2}, La/a/b/h;->a(III)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v5, v0, v2}, La/a/b/h;->a(III)I

    move-result v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0, v5, v0, v1}, La/a/b/h;->a(III)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    invoke-direct {p0, v0, v5, v1}, La/a/b/h;->a(III)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0
.end method

.method final b()La/a/b/q;
    .locals 7

    const/4 v1, 0x5

    const/4 v2, 0x0

    iget-object v0, p0, La/a/b/h;->b:La/a/b/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/b/h;->b:La/a/b/q;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/b/h;->a:La/b/a;

    invoke-virtual {v0}, La/b/a;->d()I

    move-result v5

    add-int/lit8 v0, v5, -0x11

    shr-int/lit8 v0, v0, 0x2

    const/4 v3, 0x6

    if-gt v0, v3, :cond_1

    invoke-static {v0}, La/a/b/q;->b(I)La/a/b/q;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v5, -0xb

    move v4, v1

    move v3, v2

    :goto_1
    if-gez v4, :cond_2

    invoke-static {v3}, La/a/b/q;->c(I)La/a/b/q;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, La/a/b/q;->d()I

    move-result v3

    if-ne v3, v5, :cond_4

    iput-object v0, p0, La/a/b/h;->b:La/a/b/q;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v5, -0x9

    :goto_2
    if-ge v0, v6, :cond_3

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0, v4, v3}, La/a/b/h;->a(III)I

    move-result v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    move v0, v1

    move v1, v2

    :goto_3
    if-gez v0, :cond_5

    invoke-static {v1}, La/a/b/q;->c(I)La/a/b/q;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, La/a/b/q;->d()I

    move-result v1

    if-ne v1, v5, :cond_7

    iput-object v0, p0, La/a/b/h;->b:La/a/b/q;

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v5, -0x9

    :goto_4
    if-ge v2, v6, :cond_6

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    invoke-direct {p0, v0, v2, v1}, La/a/b/h;->a(III)I

    move-result v3

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v3

    goto :goto_4

    :cond_7
    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0
.end method

.method final c()[B
    .locals 15

    const/4 v4, 0x0

    invoke-virtual {p0}, La/a/b/h;->a()La/a/b/s;

    move-result-object v0

    invoke-virtual {p0}, La/a/b/h;->b()La/a/b/q;

    move-result-object v9

    invoke-virtual {v0}, La/a/b/s;->b()B

    move-result v0

    invoke-static {v0}, La/a/b/n;->a(I)La/a/b/n;

    move-result-object v0

    iget-object v1, p0, La/a/b/h;->a:La/b/a;

    invoke-virtual {v1}, La/b/a;->d()I

    move-result v10

    iget-object v1, p0, La/a/b/h;->a:La/b/a;

    invoke-virtual {v0, v1, v10}, La/a/b/n;->a(La/b/a;I)V

    invoke-virtual {v9}, La/a/b/q;->e()La/b/a;

    move-result-object v11

    const/4 v1, 0x1

    invoke-virtual {v9}, La/a/b/q;->c()I

    move-result v0

    new-array v12, v0, [B

    add-int/lit8 v0, v10, -0x1

    move v3, v4

    move v5, v4

    move v6, v4

    move v8, v1

    :goto_0
    if-gtz v0, :cond_0

    invoke-virtual {v9}, La/a/b/q;->c()I

    move-result v0

    if-eq v6, v0, :cond_7

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    move v2, v4

    :goto_1
    if-lt v2, v10, :cond_2

    xor-int/lit8 v1, v8, 0x1

    add-int/lit8 v0, v0, -0x2

    move v8, v1

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    add-int/lit8 v1, v10, -0x1

    sub-int/2addr v1, v2

    :goto_2
    move v7, v4

    :goto_3
    const/4 v13, 0x2

    if-lt v7, v13, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    sub-int v13, v0, v7

    invoke-virtual {v11, v13, v1}, La/b/a;->a(II)Z

    move-result v13

    if-nez v13, :cond_6

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v5, v5, 0x1

    iget-object v13, p0, La/a/b/h;->a:La/b/a;

    sub-int v14, v0, v7

    invoke-virtual {v13, v14, v1}, La/b/a;->a(II)Z

    move-result v13

    if-eqz v13, :cond_5

    or-int/lit8 v5, v5, 0x1

    :cond_5
    const/16 v13, 0x8

    if-ne v3, v13, :cond_6

    add-int/lit8 v3, v6, 0x1

    int-to-byte v5, v5

    aput-byte v5, v12, v6

    move v5, v4

    move v6, v3

    move v3, v4

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    return-object v12
.end method
