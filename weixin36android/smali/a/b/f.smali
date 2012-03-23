.class public final La/b/f;
.super La/b/c;


# instance fields
.field private a:La/b/a;

.field private b:Z


# direct methods
.method public constructor <init>(La/o;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/b/f;-><init>(La/o;B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/b/f;->b:Z

    return-void
.end method

.method public constructor <init>(La/o;B)V
    .locals 1

    invoke-direct {p0, p1}, La/b/c;-><init>(La/o;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/b/f;->b:Z

    return-void
.end method


# virtual methods
.method public final a()La/b/a;
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v2, v0, La/b/f;->b:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, La/b/f;->a:La/b/a;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, La/b/f;->a:La/b/a;

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, La/b/f;->b()La/o;

    move-result-object v2

    invoke-virtual {v2}, La/o;->a()[B

    move-result-object v12

    invoke-virtual {v2}, La/o;->c()I

    move-result v13

    invoke-virtual {v2}, La/o;->d()I

    move-result v14

    invoke-virtual {v2}, La/o;->c()I

    move-result v3

    const/16 v4, 0x28

    if-lt v3, v4, :cond_1

    invoke-virtual {v2}, La/o;->d()I

    move-result v2

    const/16 v3, 0x28

    if-ge v2, v3, :cond_2

    :cond_1
    invoke-super/range {p0 .. p0}, La/b/c;->a()La/b/a;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, La/b/f;->a:La/b/a;

    move-object/from16 v0, p0

    iget-object v2, v0, La/b/f;->a:La/b/a;

    goto :goto_0

    :cond_2
    new-instance v5, La/b/a;

    invoke-direct {v5, v13, v14}, La/b/a;-><init>(II)V

    filled-new-array {v14, v13}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    aget-byte v6, v12, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v4

    const/4 v3, 0x1

    :goto_1
    if-lt v3, v13, :cond_3

    const/4 v3, 0x1

    move v4, v3

    :goto_2
    if-lt v4, v14, :cond_4

    filled-new-array {v14, v13}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    const/4 v4, 0x0

    move v6, v4

    :goto_3
    if-lt v6, v14, :cond_6

    add-int/lit8 v3, v14, -0x1

    aget-object v3, v2, v3

    add-int/lit8 v4, v13, -0x1

    aget v3, v3, v4

    mul-int v4, v14, v13

    div-int v15, v3, v4

    const/4 v3, 0x0

    move v6, v3

    :goto_4
    if-lt v6, v14, :cond_8

    move-object/from16 v0, p0

    iput-object v5, v0, La/b/f;->a:La/b/a;

    move-object v2, v5

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v6, 0x0

    aget-object v6, v2, v6

    add-int/lit8 v7, v3, -0x1

    aget v6, v6, v7

    aget-byte v7, v12, v3

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    aput v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    aget-object v3, v2, v4

    const/4 v6, 0x0

    add-int/lit8 v7, v4, -0x1

    aget-object v7, v2, v7

    const/4 v8, 0x0

    aget v7, v7, v8

    mul-int v8, v4, v13

    aget-byte v8, v12, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    aput v7, v3, v6

    const/4 v3, 0x1

    :goto_5
    if-lt v3, v13, :cond_5

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    :cond_5
    aget-object v6, v2, v4

    add-int/lit8 v7, v4, -0x1

    aget-object v7, v2, v7

    aget v7, v7, v3

    aget-object v8, v2, v4

    add-int/lit8 v9, v3, -0x1

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/lit8 v8, v4, -0x1

    aget-object v8, v2, v8

    add-int/lit8 v9, v3, -0x1

    aget v8, v8, v9

    sub-int/2addr v7, v8

    mul-int v8, v4, v13

    add-int/2addr v8, v3

    aget-byte v8, v12, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_6
    if-lt v4, v13, :cond_7

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_3

    :cond_7
    aget-object v7, v3, v6

    const/4 v8, 0x0

    aput-boolean v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    move v7, v3

    :goto_7
    if-lt v7, v13, :cond_9

    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_4

    :cond_9
    mul-int v3, v6, v13

    add-int/2addr v3, v7

    aget-byte v3, v12, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v3, v0

    int-to-double v8, v15

    const-wide v10, 0x3fe3333333333333L

    mul-double/2addr v8, v10

    cmpg-double v3, v3, v8

    if-gez v3, :cond_b

    invoke-virtual {v5, v7, v6}, La/b/a;->b(II)V

    :cond_a
    :goto_8
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_7

    :cond_b
    move/from16 v0, v16

    int-to-double v3, v0

    int-to-double v8, v15

    const-wide v10, 0x3ff4cccccccccccdL

    mul-double/2addr v8, v10

    cmpl-double v3, v3, v8

    if-gtz v3, :cond_a

    shr-int/lit8 v11, v13, 0x1

    shr-int/lit8 v8, v14, 0x1

    :cond_c
    shr-int/lit8 v3, v11, 0x1

    sub-int v10, v7, v3

    shr-int/lit8 v3, v11, 0x1

    add-int v9, v7, v3

    shr-int/lit8 v3, v8, 0x1

    sub-int v4, v6, v3

    shr-int/lit8 v3, v8, 0x1

    add-int/2addr v3, v6

    if-gez v10, :cond_d

    const/4 v10, 0x0

    move v9, v11

    :cond_d
    if-lt v9, v13, :cond_e

    add-int/lit8 v9, v13, -0x1

    sub-int v10, v13, v11

    :cond_e
    if-gez v4, :cond_f

    const/4 v4, 0x0

    move v3, v8

    :cond_f
    if-lt v3, v14, :cond_10

    add-int/lit8 v3, v14, -0x1

    sub-int v4, v14, v8

    :cond_10
    sub-int v17, v3, v4

    sub-int v18, v9, v10

    mul-int v17, v17, v18

    aget-object v18, v2, v3

    aget v18, v18, v9

    aget-object v19, v2, v4

    aget v9, v19, v9

    sub-int v9, v18, v9

    aget-object v3, v2, v3

    aget v3, v3, v10

    sub-int v3, v9, v3

    aget-object v4, v2, v4

    aget v4, v4, v10

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    move/from16 v0, v17

    int-to-float v4, v0

    div-float/2addr v3, v4

    move/from16 v0, v16

    int-to-float v4, v0

    const v9, 0x3f333333

    mul-float/2addr v9, v3

    cmpg-float v4, v4, v9

    if-ltz v4, :cond_13

    move/from16 v0, v16

    int-to-float v4, v0

    const v9, 0x3f99999a

    mul-float/2addr v9, v3

    cmpl-float v4, v4, v9

    if-lez v4, :cond_11

    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_a

    invoke-virtual {v5, v7, v6}, La/b/a;->b(II)V

    goto :goto_8

    :cond_11
    shr-int/lit8 v8, v8, 0x1

    shr-int/lit8 v11, v11, 0x1

    const/16 v4, 0x28

    if-le v8, v4, :cond_12

    const/16 v4, 0x28

    if-gt v11, v4, :cond_c

    :cond_12
    const/16 v4, 0x3c

    move/from16 v0, v16

    if-lt v0, v4, :cond_13

    move/from16 v0, v16

    int-to-double v8, v0

    float-to-double v3, v3

    const-wide v10, 0x3feccccccccccccdL

    mul-double/2addr v3, v10

    cmpg-double v3, v8, v3

    if-ltz v3, :cond_13

    const/4 v3, 0x0

    goto :goto_9

    :cond_13
    const/4 v3, 0x1

    goto :goto_9

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, La/b/f;->a:La/b/a;

    if-nez v2, :cond_15

    invoke-virtual/range {p0 .. p0}, La/b/f;->b()La/o;

    move-result-object v2

    invoke-virtual {v2}, La/o;->c()I

    move-result v3

    const/16 v4, 0x28

    if-lt v3, v4, :cond_28

    invoke-virtual {v2}, La/o;->d()I

    move-result v3

    const/16 v4, 0x28

    if-lt v3, v4, :cond_28

    invoke-virtual {v2}, La/o;->a()[B

    move-result-object v16

    invoke-virtual {v2}, La/o;->c()I

    move-result v7

    invoke-virtual {v2}, La/o;->d()I

    move-result v17

    shr-int/lit8 v2, v7, 0x3

    and-int/lit8 v3, v7, 0x7

    if-eqz v3, :cond_2e

    add-int/lit8 v2, v2, 0x1

    move v15, v2

    :goto_a
    shr-int/lit8 v2, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-eqz v3, :cond_2d

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    :goto_b
    filled-new-array {v3, v15}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    const/4 v4, 0x0

    move v14, v4

    :goto_c
    if-lt v14, v3, :cond_16

    new-instance v13, La/b/a;

    move/from16 v0, v17

    invoke-direct {v13, v7, v0}, La/b/a;-><init>(II)V

    const/4 v4, 0x0

    move v6, v4

    :goto_d
    if-lt v6, v3, :cond_1e

    move-object/from16 v0, p0

    iput-object v13, v0, La/b/f;->a:La/b/a;

    :cond_15
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, La/b/f;->a:La/b/a;

    goto/16 :goto_0

    :cond_16
    shl-int/lit8 v4, v14, 0x3

    add-int/lit8 v5, v4, 0x8

    move/from16 v0, v17

    if-lt v5, v0, :cond_17

    add-int/lit8 v4, v17, -0x8

    :cond_17
    const/4 v5, 0x0

    move v13, v5

    :goto_f
    if-lt v13, v15, :cond_18

    add-int/lit8 v4, v14, 0x1

    move v14, v4

    goto :goto_c

    :cond_18
    shl-int/lit8 v5, v13, 0x3

    add-int/lit8 v6, v5, 0x8

    if-lt v6, v7, :cond_19

    add-int/lit8 v5, v7, -0x8

    :cond_19
    const/4 v10, 0x0

    const/16 v9, 0xff

    const/4 v8, 0x0

    const/4 v6, 0x0

    mul-int v11, v4, v7

    add-int/2addr v5, v11

    move v11, v5

    move v12, v6

    move v6, v8

    move v8, v9

    move v9, v10

    :goto_10
    const/16 v5, 0x8

    if-lt v12, v5, :cond_1b

    shr-int/lit8 v5, v9, 0x6

    sub-int/2addr v6, v8

    const/16 v9, 0x18

    if-gt v6, v9, :cond_1a

    shr-int/lit8 v6, v8, 0x1

    if-lez v14, :cond_2b

    if-lez v13, :cond_2b

    add-int/lit8 v5, v14, -0x1

    aget-object v5, v2, v5

    aget v5, v5, v13

    aget-object v9, v2, v14

    add-int/lit8 v10, v13, -0x1

    aget v9, v9, v10

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    add-int/lit8 v9, v14, -0x1

    aget-object v9, v2, v9

    add-int/lit8 v10, v13, -0x1

    aget v9, v9, v10

    add-int/2addr v5, v9

    shr-int/lit8 v5, v5, 0x2

    if-ge v8, v5, :cond_2b

    :cond_1a
    :goto_11
    aget-object v6, v2, v14

    aput v5, v6, v13

    add-int/lit8 v5, v13, 0x1

    move v13, v5

    goto :goto_f

    :cond_1b
    const/4 v5, 0x0

    move v10, v9

    move v9, v5

    :goto_12
    const/16 v5, 0x8

    if-lt v9, v5, :cond_1c

    add-int/lit8 v9, v12, 0x1

    add-int v5, v11, v7

    move v11, v5

    move v12, v9

    move v9, v10

    goto :goto_10

    :cond_1c
    add-int v5, v11, v9

    aget-byte v5, v16, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v10, v5

    if-ge v5, v8, :cond_1d

    move v8, v5

    :cond_1d
    if-le v5, v6, :cond_2c

    :goto_13
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v6, v5

    goto :goto_12

    :cond_1e
    shl-int/lit8 v4, v6, 0x3

    add-int/lit8 v5, v4, 0x8

    move/from16 v0, v17

    if-lt v5, v0, :cond_29

    add-int/lit8 v4, v17, -0x8

    move v5, v4

    :goto_14
    const/4 v11, 0x0

    :goto_15
    if-lt v11, v15, :cond_1f

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_d

    :cond_1f
    shl-int/lit8 v4, v11, 0x3

    add-int/lit8 v8, v4, 0x8

    if-lt v8, v7, :cond_2a

    add-int/lit8 v4, v7, -0x8

    move v12, v4

    :goto_16
    const/4 v4, 0x1

    if-le v11, v4, :cond_20

    move v4, v11

    :goto_17
    add-int/lit8 v8, v15, -0x2

    if-ge v4, v8, :cond_21

    move v10, v4

    :goto_18
    const/4 v4, 0x1

    if-le v6, v4, :cond_22

    move v4, v6

    :goto_19
    add-int/lit8 v8, v3, -0x2

    if-ge v4, v8, :cond_23

    :goto_1a
    const/4 v9, 0x0

    const/4 v8, -0x2

    :goto_1b
    const/4 v14, 0x2

    if-le v8, v14, :cond_24

    div-int/lit8 v10, v9, 0x19

    const/4 v8, 0x0

    mul-int v4, v5, v7

    add-int/2addr v4, v12

    move v9, v8

    move v8, v4

    :goto_1c
    const/16 v4, 0x8

    if-lt v9, v4, :cond_25

    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_20
    const/4 v4, 0x2

    goto :goto_17

    :cond_21
    add-int/lit8 v4, v15, -0x3

    move v10, v4

    goto :goto_18

    :cond_22
    const/4 v4, 0x2

    goto :goto_19

    :cond_23
    add-int/lit8 v4, v3, -0x3

    goto :goto_1a

    :cond_24
    add-int v14, v4, v8

    aget-object v14, v2, v14

    add-int/lit8 v18, v10, -0x2

    aget v18, v14, v18

    add-int/lit8 v19, v10, -0x1

    aget v19, v14, v19

    add-int v18, v18, v19

    aget v19, v14, v10

    add-int v18, v18, v19

    add-int/lit8 v19, v10, 0x1

    aget v19, v14, v19

    add-int v18, v18, v19

    add-int/lit8 v19, v10, 0x2

    aget v14, v14, v19

    add-int v14, v14, v18

    add-int/2addr v9, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_25
    const/4 v4, 0x0

    :goto_1d
    const/16 v14, 0x8

    if-lt v4, v14, :cond_26

    add-int/lit8 v9, v9, 0x1

    add-int v4, v8, v7

    move v8, v4

    goto :goto_1c

    :cond_26
    add-int v14, v8, v4

    aget-byte v14, v16, v14

    and-int/lit16 v14, v14, 0xff

    int-to-double v0, v14

    move-wide/from16 v18, v0

    int-to-double v0, v10

    move-wide/from16 v20, v0

    const-wide v22, 0x3feccccccccccccdL

    mul-double v20, v20, v22

    cmpg-double v14, v18, v20

    if-gtz v14, :cond_27

    add-int v14, v12, v4

    add-int v18, v5, v9

    move/from16 v0, v18

    invoke-virtual {v13, v14, v0}, La/b/a;->b(II)V

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_28
    invoke-super/range {p0 .. p0}, La/b/c;->a()La/b/a;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, La/b/f;->a:La/b/a;

    goto/16 :goto_e

    :cond_29
    move v5, v4

    goto/16 :goto_14

    :cond_2a
    move v12, v4

    goto/16 :goto_16

    :cond_2b
    move v5, v6

    goto/16 :goto_11

    :cond_2c
    move v5, v6

    goto/16 :goto_13

    :cond_2d
    move v3, v2

    goto/16 :goto_b

    :cond_2e
    move v15, v2

    goto/16 :goto_a
.end method
