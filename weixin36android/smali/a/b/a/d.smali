.class public final La/b/a/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/b/a/c;


# direct methods
.method public constructor <init>(La/b/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/a/d;->a:La/b/a/c;

    return-void
.end method


# virtual methods
.method public final a([II)V
    .locals 15

    new-instance v4, La/b/a/a;

    iget-object v1, p0, La/b/a/d;->a:La/b/a/c;

    move-object/from16 v0, p1

    invoke-direct {v4, v1, v0}, La/b/a/a;-><init>(La/b/a/c;[I)V

    move/from16 v0, p2

    new-array v5, v0, [I

    iget-object v1, p0, La/b/a/d;->a:La/b/a/c;

    sget-object v2, La/b/a/c;->b:La/b/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, p2

    if-lt v2, v0, :cond_1

    if-eqz v3, :cond_3

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, La/b/a/d;->a:La/b/a/c;

    if-eqz v8, :cond_2

    add-int/lit8 v1, v2, 0x1

    :goto_1
    invoke-virtual {v6, v1}, La/b/a/c;->a(I)I

    move-result v1

    invoke-virtual {v4, v1}, La/b/a/a;->b(I)I

    move-result v1

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v2

    aput v1, v5, v6

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    new-instance v2, La/b/a/a;

    iget-object v1, p0, La/b/a/d;->a:La/b/a/c;

    invoke-direct {v2, v1, v5}, La/b/a/a;-><init>(La/b/a/c;[I)V

    iget-object v1, p0, La/b/a/d;->a:La/b/a/c;

    const/4 v3, 0x1

    move/from16 v0, p2

    invoke-virtual {v1, v0, v3}, La/b/a/c;->a(II)La/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, La/b/a/a;->a()I

    move-result v3

    invoke-virtual {v2}, La/b/a/a;->a()I

    move-result v4

    if-ge v3, v4, :cond_14

    :goto_3
    iget-object v3, p0, La/b/a/d;->a:La/b/a/c;

    invoke-virtual {v3}, La/b/a/c;->b()La/b/a/a;

    move-result-object v6

    iget-object v3, p0, La/b/a/d;->a:La/b/a/c;

    invoke-virtual {v3}, La/b/a/c;->a()La/b/a/a;

    move-result-object v5

    iget-object v3, p0, La/b/a/d;->a:La/b/a/c;

    invoke-virtual {v3}, La/b/a/c;->a()La/b/a/a;

    move-result-object v4

    iget-object v3, p0, La/b/a/d;->a:La/b/a/c;

    invoke-virtual {v3}, La/b/a/c;->b()La/b/a/a;

    move-result-object v3

    move-object v7, v1

    move-object v1, v2

    :goto_4
    invoke-virtual {v7}, La/b/a/a;->a()I

    move-result v2

    div-int/lit8 v9, p2, 0x2

    if-ge v2, v9, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, La/b/a/a;->a(I)I

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, La/b/a/b;

    const-string v2, "sigmaTilde(0) was zero"

    invoke-direct {v1, v2}, La/b/a/b;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {v7}, La/b/a/a;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, La/b/a/b;

    const-string v2, "r_{i-1} was zero"

    invoke-direct {v1, v2}, La/b/a/b;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v2, p0, La/b/a/d;->a:La/b/a/c;

    invoke-virtual {v2}, La/b/a/c;->a()La/b/a/a;

    move-result-object v2

    invoke-virtual {v7}, La/b/a/a;->a()I

    move-result v9

    invoke-virtual {v7, v9}, La/b/a/a;->a(I)I

    move-result v9

    iget-object v10, p0, La/b/a/d;->a:La/b/a/c;

    invoke-virtual {v10, v9}, La/b/a/c;->c(I)I

    move-result v9

    :goto_5
    invoke-virtual {v1}, La/b/a/a;->a()I

    move-result v10

    invoke-virtual {v7}, La/b/a/a;->a()I

    move-result v11

    if-lt v10, v11, :cond_6

    invoke-virtual {v1}, La/b/a/a;->b()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    invoke-virtual {v2, v5}, La/b/a/a;->b(La/b/a/a;)La/b/a/a;

    move-result-object v9

    invoke-virtual {v9, v6}, La/b/a/a;->a(La/b/a/a;)La/b/a/a;

    move-result-object v6

    invoke-virtual {v2, v3}, La/b/a/a;->b(La/b/a/a;)La/b/a/a;

    move-result-object v2

    invoke-virtual {v2, v4}, La/b/a/a;->a(La/b/a/a;)La/b/a/a;

    move-result-object v2

    move-object v4, v3

    move-object v3, v2

    move-object v13, v6

    move-object v6, v5

    move-object v5, v13

    move-object v14, v7

    move-object v7, v1

    move-object v1, v14

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, La/b/a/a;->a()I

    move-result v10

    invoke-virtual {v7}, La/b/a/a;->a()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, La/b/a/d;->a:La/b/a/c;

    invoke-virtual {v1}, La/b/a/a;->a()I

    move-result v12

    invoke-virtual {v1, v12}, La/b/a/a;->a(I)I

    move-result v12

    invoke-virtual {v11, v12, v9}, La/b/a/c;->c(II)I

    move-result v11

    iget-object v12, p0, La/b/a/d;->a:La/b/a/c;

    invoke-virtual {v12, v10, v11}, La/b/a/c;->a(II)La/b/a/a;

    move-result-object v12

    invoke-virtual {v2, v12}, La/b/a/a;->a(La/b/a/a;)La/b/a/a;

    move-result-object v2

    invoke-virtual {v7, v10, v11}, La/b/a/a;->a(II)La/b/a/a;

    move-result-object v10

    invoke-virtual {v1, v10}, La/b/a/a;->a(La/b/a/a;)La/b/a/a;

    move-result-object v1

    goto :goto_5

    :cond_8
    iget-object v2, p0, La/b/a/d;->a:La/b/a/c;

    invoke-virtual {v2, v1}, La/b/a/c;->c(I)I

    move-result v1

    invoke-virtual {v3, v1}, La/b/a/a;->c(I)La/b/a/a;

    move-result-object v2

    invoke-virtual {v7, v1}, La/b/a/a;->c(I)La/b/a/a;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [La/b/a/a;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x0

    aget-object v4, v3, v1

    const/4 v1, 0x1

    aget-object v6, v3, v1

    invoke-virtual {v4}, La/b/a/a;->a()I

    move-result v5

    const/4 v1, 0x1

    if-ne v5, v1, :cond_9

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, La/b/a/a;->a(I)I

    move-result v3

    aput v3, v1, v2

    :goto_6
    array-length v7, v1

    new-array v9, v7, [I

    const/4 v2, 0x0

    move v4, v2

    :goto_7
    if-lt v4, v7, :cond_e

    const/4 v2, 0x0

    :goto_8
    array-length v3, v1

    if-ge v2, v3, :cond_0

    move-object/from16 v0, p1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, La/b/a/d;->a:La/b/a/c;

    aget v5, v1, v2

    invoke-virtual {v4, v5}, La/b/a/c;->b(I)I

    move-result v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_12

    new-instance v1, La/b/a/b;

    const-string v2, "Bad error location"

    invoke-direct {v1, v2}, La/b/a/b;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-array v3, v5, [I

    const/4 v2, 0x0

    const/4 v1, 0x1

    :goto_9
    iget-object v7, p0, La/b/a/d;->a:La/b/a/c;

    invoke-virtual {v7}, La/b/a/c;->c()I

    move-result v7

    if-ge v1, v7, :cond_a

    if-lt v2, v5, :cond_b

    :cond_a
    if-eq v2, v5, :cond_d

    new-instance v1, La/b/a/b;

    const-string v2, "Error locator degree does not match number of roots"

    invoke-direct {v1, v2}, La/b/a/b;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-virtual {v4, v1}, La/b/a/a;->b(I)I

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, La/b/a/d;->a:La/b/a/c;

    invoke-virtual {v7, v1}, La/b/a/c;->c(I)I

    move-result v7

    aput v7, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_d
    move-object v1, v3

    goto :goto_6

    :cond_e
    iget-object v2, p0, La/b/a/d;->a:La/b/a/c;

    aget v3, v1, v4

    invoke-virtual {v2, v3}, La/b/a/c;->c(I)I

    move-result v10

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v5, v2

    :goto_a
    if-lt v5, v7, :cond_10

    iget-object v2, p0, La/b/a/d;->a:La/b/a/c;

    invoke-virtual {v6, v10}, La/b/a/a;->b(I)I

    move-result v5

    iget-object v11, p0, La/b/a/d;->a:La/b/a/c;

    invoke-virtual {v11, v3}, La/b/a/c;->c(I)I

    move-result v3

    invoke-virtual {v2, v5, v3}, La/b/a/c;->c(II)I

    move-result v2

    aput v2, v9, v4

    if-eqz v8, :cond_f

    iget-object v2, p0, La/b/a/d;->a:La/b/a/c;

    aget v3, v9, v4

    invoke-virtual {v2, v3, v10}, La/b/a/c;->c(II)I

    move-result v2

    aput v2, v9, v4

    :cond_f
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_7

    :cond_10
    if-eq v4, v5, :cond_13

    iget-object v2, p0, La/b/a/d;->a:La/b/a/c;

    aget v11, v1, v5

    invoke-virtual {v2, v11, v10}, La/b/a/c;->c(II)I

    move-result v2

    and-int/lit8 v11, v2, 0x1

    if-nez v11, :cond_11

    or-int/lit8 v2, v2, 0x1

    :goto_b
    iget-object v11, p0, La/b/a/d;->a:La/b/a/c;

    invoke-virtual {v11, v3, v2}, La/b/a/c;->c(II)I

    move-result v2

    :goto_c
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    goto :goto_a

    :cond_11
    and-int/lit8 v2, v2, -0x2

    goto :goto_b

    :cond_12
    aget v4, p1, v3

    aget v5, v9, v2

    invoke-static {v4, v5}, La/b/a/c;->b(II)I

    move-result v4

    aput v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_13
    move v2, v3

    goto :goto_c

    :cond_14
    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_3

    :cond_15
    move v1, v3

    goto/16 :goto_2
.end method
