.class public final La/a/a/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/b/a;

.field private b:La/b;


# direct methods
.method public constructor <init>(La/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/g;->a:La/b/a;

    return-void
.end method

.method private a(IIII)F
    .locals 7

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    invoke-direct {p0, p1, p2, p3, p4}, La/a/a/g;->b(IIII)F

    move-result v4

    sub-int v0, p3, p1

    sub-int v0, p1, v0

    if-gez v0, :cond_0

    int-to-float v3, p1

    sub-int v0, p1, v0

    int-to-float v0, v0

    div-float v0, v3, v0

    move v3, v2

    :goto_0
    int-to-float v5, p2

    sub-int v6, p4, p2

    int-to-float v6, v6

    mul-float/2addr v0, v6

    sub-float v0, v5, v0

    float-to-int v0, v0

    if-gez v0, :cond_1

    int-to-float v5, p2

    sub-int v0, p2, v0

    int-to-float v0, v0

    div-float v0, v5, v0

    :goto_1
    int-to-float v5, p1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, v0, v2}, La/a/a/g;->b(IIII)F

    move-result v0

    add-float/2addr v0, v4

    sub-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v3, p0, La/a/a/g;->a:La/b/a;

    invoke-virtual {v3}, La/b/a;->c()I

    move-result v3

    if-lt v0, v3, :cond_3

    iget-object v3, p0, La/a/a/g;->a:La/b/a;

    invoke-virtual {v3}, La/b/a;->c()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    sub-int/2addr v0, p1

    int-to-float v0, v0

    div-float v0, v3, v0

    iget-object v3, p0, La/a/a/g;->a:La/b/a;

    invoke-virtual {v3}, La/b/a;->c()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, La/a/a/g;->a:La/b/a;

    invoke-virtual {v2}, La/b/a;->d()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget-object v2, p0, La/a/a/g;->a:La/b/a;

    invoke-virtual {v2}, La/b/a;->d()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p2

    int-to-float v2, v2

    sub-int/2addr v0, p2

    int-to-float v0, v0

    div-float v0, v2, v0

    iget-object v2, p0, La/a/a/g;->a:La/b/a;

    invoke-virtual {v2}, La/b/a;->d()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_3
    move v3, v0

    move v0, v1

    goto :goto_0
.end method

.method private a(La/f;La/f;)F
    .locals 6

    const/high16 v5, 0x40e0

    invoke-virtual {p1}, La/f;->a()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, La/f;->b()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, La/f;->a()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, La/f;->b()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, La/a/a/g;->a(IIII)F

    move-result v0

    invoke-virtual {p2}, La/f;->a()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, La/f;->b()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, La/f;->a()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, La/f;->b()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v1, v2, v3, v4}, La/a/a/g;->a(IIII)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    div-float v0, v1, v5

    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    div-float/2addr v0, v5

    goto :goto_0

    :cond_1
    add-float/2addr v0, v1

    const/high16 v1, 0x4160

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private a(La/a/a/a;)La/b/h;
    .locals 20

    invoke-virtual/range {p1 .. p1}, La/a/a/a;->b()La/a/a/e;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, La/a/a/a;->c()La/a/a/e;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, La/a/a/a;->a()La/a/a/e;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, La/a/a/g;->a(La/f;La/f;)F

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, La/a/a/g;->a(La/f;La/f;)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v9, v3, v4

    const/high16 v3, 0x3f80

    cmpg-float v3, v9, v3

    if-gez v3, :cond_0

    invoke-static {}, La/g;->a()La/g;

    move-result-object v3

    throw v3

    :cond_0
    invoke-static/range {v17 .. v18}, La/f;->a(La/f;La/f;)F

    move-result v3

    div-float/2addr v3, v9

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, La/f;->a(La/f;La/f;)F

    move-result v4

    div-float/2addr v4, v9

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x7

    and-int/lit8 v4, v3, 0x3

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v15, v3

    :goto_0
    invoke-static {v15}, La/a/b/q;->a(I)La/a/b/q;

    move-result-object v3

    invoke-virtual {v3}, La/a/b/q;->d()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    const/4 v11, 0x0

    invoke-virtual {v3}, La/a/b/q;->b()[I

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    invoke-virtual/range {v18 .. v18}, La/a/a/e;->a()F

    move-result v3

    invoke-virtual/range {v17 .. v17}, La/a/a/e;->a()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-virtual/range {v19 .. v19}, La/a/a/e;->a()F

    move-result v5

    add-float/2addr v3, v5

    invoke-virtual/range {v18 .. v18}, La/a/a/e;->b()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, La/a/a/e;->b()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual/range {v19 .. v19}, La/a/a/e;->b()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x3f80

    const/high16 v7, 0x4040

    int-to-float v4, v4

    div-float v4, v7, v4

    sub-float v4, v6, v4

    invoke-virtual/range {v17 .. v17}, La/a/a/e;->a()F

    move-result v6

    invoke-virtual/range {v17 .. v17}, La/a/a/e;->a()F

    move-result v7

    sub-float/2addr v3, v7

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v13, v3

    invoke-virtual/range {v17 .. v17}, La/a/a/e;->b()F

    move-result v3

    invoke-virtual/range {v17 .. v17}, La/a/a/e;->b()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v14, v3

    const/4 v3, 0x4

    move v12, v3

    :goto_1
    const/16 v3, 0x10

    if-le v12, v3, :cond_2

    :cond_1
    move-object/from16 v16, v11

    :goto_2
    int-to-float v3, v15

    const/high16 v4, 0x4060

    sub-float/2addr v3, v4

    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, La/f;->a()F

    move-result v11

    invoke-virtual/range {v16 .. v16}, La/f;->b()F

    move-result v12

    const/high16 v4, 0x4040

    sub-float v4, v3, v4

    move v5, v4

    :goto_3
    invoke-virtual/range {v17 .. v17}, La/f;->a()F

    move-result v7

    invoke-virtual/range {v17 .. v17}, La/f;->b()F

    move-result v8

    invoke-virtual/range {v18 .. v18}, La/f;->a()F

    move-result v9

    invoke-virtual/range {v18 .. v18}, La/f;->b()F

    move-result v10

    invoke-virtual/range {v19 .. v19}, La/f;->a()F

    move-result v13

    invoke-virtual/range {v19 .. v19}, La/f;->b()F

    move-result v14

    move v6, v3

    invoke-static/range {v3 .. v14}, La/b/d;->a(FFFFFFFFFFFF)La/b/d;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, La/a/a/g;->a:La/b/a;

    invoke-static {}, La/b/b;->a()La/b/b;

    move-result-object v5

    invoke-virtual {v5, v4, v15, v15, v3}, La/b/b;->a(La/b/a;IILa/b/d;)La/b/a;

    move-result-object v4

    if-nez v16, :cond_6

    const/4 v3, 0x3

    new-array v3, v3, [La/f;

    const/4 v5, 0x0

    aput-object v19, v3, v5

    const/4 v5, 0x1

    aput-object v17, v3, v5

    const/4 v5, 0x2

    aput-object v18, v3, v5

    :goto_4
    new-instance v5, La/b/h;

    invoke-direct {v5, v4, v3}, La/b/h;-><init>(La/b/a;[La/f;)V

    return-object v5

    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    move v15, v3

    goto/16 :goto_0

    :pswitch_2
    add-int/lit8 v3, v3, -0x1

    move v15, v3

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, La/g;->a()La/g;

    move-result-object v3

    throw v3

    :cond_2
    int-to-float v3, v12

    mul-float/2addr v3, v9

    float-to-int v3, v3

    const/4 v4, 0x0

    sub-int v5, v13, v3

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, La/a/a/g;->a:La/b/a;

    invoke-virtual {v4}, La/b/a;->c()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int v6, v13, v3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v4, v7, v5

    int-to-float v4, v4

    const/high16 v6, 0x4040

    mul-float/2addr v6, v9

    cmpg-float v4, v4, v6

    if-gez v4, :cond_3

    invoke-static {}, La/g;->a()La/g;

    move-result-object v3

    throw v3

    :catch_0
    move-exception v3

    shl-int/lit8 v3, v12, 0x1

    move v12, v3

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x0

    sub-int v6, v14, v3

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, La/a/a/g;->a:La/b/a;

    invoke-virtual {v4}, La/b/a;->d()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v14

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v3, v8, v6

    int-to-float v3, v3

    const/high16 v4, 0x4040

    mul-float/2addr v4, v9

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    invoke-static {}, La/g;->a()La/g;

    move-result-object v3

    throw v3

    :cond_4
    new-instance v3, La/a/a/c;

    move-object/from16 v0, p0

    iget-object v4, v0, La/a/a/g;->a:La/b/a;

    sub-int/2addr v7, v5

    sub-int/2addr v8, v6

    move-object/from16 v0, p0

    iget-object v10, v0, La/a/a/g;->b:La/b;

    invoke-direct/range {v3 .. v10}, La/a/a/c;-><init>(La/b/a;IIIIFLa/b;)V

    invoke-virtual {v3}, La/a/a/c;->a()La/a/a/d;
    :try_end_0
    .catch La/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object/from16 v16, v3

    goto/16 :goto_2

    :cond_5
    invoke-virtual/range {v18 .. v18}, La/f;->a()F

    move-result v4

    invoke-virtual/range {v17 .. v17}, La/f;->a()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {v19 .. v19}, La/f;->a()F

    move-result v5

    add-float v11, v4, v5

    invoke-virtual/range {v18 .. v18}, La/f;->b()F

    move-result v4

    invoke-virtual/range {v17 .. v17}, La/f;->b()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {v19 .. v19}, La/f;->b()F

    move-result v5

    add-float v12, v4, v5

    move v4, v3

    move v5, v3

    goto/16 :goto_3

    :cond_6
    const/4 v3, 0x4

    new-array v3, v3, [La/f;

    const/4 v5, 0x0

    aput-object v19, v3, v5

    const/4 v5, 0x1

    aput-object v17, v3, v5

    const/4 v5, 0x2

    aput-object v18, v3, v5

    const/4 v5, 0x3

    aput-object v16, v3, v5

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(IIII)F
    .locals 18

    sub-int v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, p3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    move v11, v2

    :goto_0
    if-eqz v11, :cond_c

    :goto_1
    sub-int v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    sub-int v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v13

    neg-int v2, v12

    shr-int/lit8 v4, v2, 0x1

    move/from16 v0, p2

    move/from16 v1, p4

    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    move v10, v2

    :goto_2
    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    const/4 v2, 0x1

    :goto_3
    const/4 v5, 0x0

    add-int v14, p4, v10

    move/from16 v7, p2

    move v9, v4

    move/from16 v4, p1

    :goto_4
    if-ne v7, v14, :cond_3

    move v2, v5

    :goto_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    add-int v2, p4, v10

    sub-int v2, v2, p2

    sub-int v3, p3, p1

    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    :goto_6
    return v2

    :cond_0
    const/4 v2, 0x0

    move v11, v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    move v10, v2

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    goto :goto_3

    :cond_3
    if-eqz v11, :cond_4

    move v8, v4

    :goto_7
    if-eqz v11, :cond_5

    move v6, v7

    :goto_8
    const/4 v3, 0x1

    if-ne v5, v3, :cond_6

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, La/a/a/g;->a:La/b/a;

    invoke-virtual {v15, v8, v6}, La/b/a;->a(II)Z

    move-result v6

    if-ne v3, v6, :cond_b

    const/4 v3, 0x2

    if-ne v5, v3, :cond_7

    sub-int v2, v7, p2

    sub-int v3, v4, p1

    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_6

    :cond_4
    move v8, v7

    goto :goto_7

    :cond_5
    move v6, v4

    goto :goto_8

    :cond_6
    const/4 v3, 0x0

    goto :goto_9

    :cond_7
    add-int/lit8 v6, v5, 0x1

    :goto_a
    add-int v5, v9, v13

    if-lez v5, :cond_a

    move/from16 v0, p3

    if-eq v4, v0, :cond_9

    add-int v3, v4, v2

    sub-int v4, v5, v12

    :goto_b
    add-int/2addr v7, v10

    move v5, v6

    move v9, v4

    move v4, v3

    goto :goto_4

    :cond_8
    const/high16 v2, 0x7fc0

    goto :goto_6

    :cond_9
    move v2, v6

    goto :goto_5

    :cond_a
    move v3, v4

    move v4, v5

    goto :goto_b

    :cond_b
    move v6, v5

    goto :goto_a

    :cond_c
    move/from16 v16, p4

    move/from16 p4, p3

    move/from16 p3, v16

    move/from16 v17, p2

    move/from16 p2, p1

    move/from16 p1, v17

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/Map;)La/b/h;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, La/a/a/g;->b:La/b;

    new-instance v0, La/a/a/h;

    iget-object v1, p0, La/a/a/g;->a:La/b/a;

    iget-object v2, p0, La/a/a/g;->b:La/b;

    invoke-direct {v0, v1, v2}, La/a/a/h;-><init>(La/b/a;La/b;)V

    invoke-virtual {v0, p1}, La/a/a/h;->a(Ljava/util/Map;)La/a/a/a;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/a/g;->a(La/a/a/a;)La/b/h;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, La/l;->e:La/l;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b;

    goto :goto_0
.end method
