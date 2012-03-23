.class public final La/b/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:F


# direct methods
.method private constructor <init>(FFFFFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/b/d;->a:F

    iput p4, p0, La/b/d;->b:F

    iput p7, p0, La/b/d;->c:F

    iput p2, p0, La/b/d;->d:F

    iput p5, p0, La/b/d;->e:F

    iput p8, p0, La/b/d;->f:F

    iput p3, p0, La/b/d;->g:F

    iput p6, p0, La/b/d;->h:F

    iput p9, p0, La/b/d;->i:F

    return-void
.end method

.method private static a(FFFFFFFF)La/b/d;
    .locals 10

    sub-float v0, p7, p5

    sub-float v1, p1, p3

    add-float/2addr v1, p5

    sub-float v1, v1, p7

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    new-instance v0, La/b/d;

    sub-float v1, p2, p0

    sub-float v2, p4, p2

    sub-float v4, p3, p1

    sub-float v5, p5, p3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    move v3, p0

    move v6, p1

    invoke-direct/range {v0 .. v9}, La/b/d;-><init>(FFFFFFFFF)V

    :goto_0
    return-object v0

    :cond_0
    sub-float v2, p2, p4

    sub-float v3, p6, p4

    sub-float v4, p0, p2

    add-float/2addr v4, p4

    sub-float v4, v4, p6

    sub-float v5, p3, p5

    mul-float v6, v2, v0

    mul-float v7, v3, v5

    sub-float/2addr v6, v7

    mul-float/2addr v0, v4

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    div-float v7, v0, v6

    mul-float v0, v2, v1

    mul-float v1, v4, v5

    sub-float/2addr v0, v1

    div-float v8, v0, v6

    new-instance v0, La/b/d;

    sub-float v1, p2, p0

    mul-float v2, v7, p2

    add-float/2addr v1, v2

    sub-float v2, p6, p0

    mul-float v3, v8, p6

    add-float/2addr v2, v3

    sub-float v3, p3, p1

    mul-float v4, v7, p3

    add-float/2addr v4, v3

    sub-float v3, p7, p1

    mul-float v5, v8, p7

    add-float/2addr v5, v3

    const/high16 v9, 0x3f80

    move v3, p0

    move v6, p1

    invoke-direct/range {v0 .. v9}, La/b/d;-><init>(FFFFFFFFF)V

    goto :goto_0
.end method

.method public static a(FFFFFFFFFFFF)La/b/d;
    .locals 14

    const/high16 v0, 0x4060

    const/high16 v1, 0x4060

    const/high16 v3, 0x4060

    const/high16 v6, 0x4060

    move v2, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v7, p3

    invoke-static/range {v0 .. v7}, La/b/d;->a(FFFFFFFF)La/b/d;

    move-result-object v9

    new-instance v0, La/b/d;

    iget v1, v9, La/b/d;->e:F

    iget v2, v9, La/b/d;->i:F

    mul-float/2addr v1, v2

    iget v2, v9, La/b/d;->f:F

    iget v3, v9, La/b/d;->h:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, v9, La/b/d;->f:F

    iget v3, v9, La/b/d;->g:F

    mul-float/2addr v2, v3

    iget v3, v9, La/b/d;->d:F

    iget v4, v9, La/b/d;->i:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, v9, La/b/d;->d:F

    iget v4, v9, La/b/d;->h:F

    mul-float/2addr v3, v4

    iget v4, v9, La/b/d;->e:F

    iget v5, v9, La/b/d;->g:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, v9, La/b/d;->c:F

    iget v5, v9, La/b/d;->h:F

    mul-float/2addr v4, v5

    iget v5, v9, La/b/d;->b:F

    iget v6, v9, La/b/d;->i:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, v9, La/b/d;->a:F

    iget v6, v9, La/b/d;->i:F

    mul-float/2addr v5, v6

    iget v6, v9, La/b/d;->c:F

    iget v7, v9, La/b/d;->g:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, v9, La/b/d;->b:F

    iget v7, v9, La/b/d;->g:F

    mul-float/2addr v6, v7

    iget v7, v9, La/b/d;->a:F

    iget v8, v9, La/b/d;->h:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, v9, La/b/d;->b:F

    iget v8, v9, La/b/d;->f:F

    mul-float/2addr v7, v8

    iget v8, v9, La/b/d;->c:F

    iget v10, v9, La/b/d;->e:F

    mul-float/2addr v8, v10

    sub-float/2addr v7, v8

    iget v8, v9, La/b/d;->c:F

    iget v10, v9, La/b/d;->d:F

    mul-float/2addr v8, v10

    iget v10, v9, La/b/d;->a:F

    iget v11, v9, La/b/d;->f:F

    mul-float/2addr v10, v11

    sub-float/2addr v8, v10

    iget v10, v9, La/b/d;->a:F

    iget v11, v9, La/b/d;->e:F

    mul-float/2addr v10, v11

    iget v11, v9, La/b/d;->b:F

    iget v9, v9, La/b/d;->d:F

    mul-float/2addr v9, v11

    sub-float v9, v10, v9

    invoke-direct/range {v0 .. v9}, La/b/d;-><init>(FFFFFFFFF)V

    invoke-static/range {p4 .. p11}, La/b/d;->a(FFFFFFFF)La/b/d;

    move-result-object v9

    new-instance v10, La/b/d;

    iget v1, v9, La/b/d;->a:F

    iget v2, v0, La/b/d;->a:F

    mul-float/2addr v1, v2

    iget v2, v9, La/b/d;->d:F

    iget v3, v0, La/b/d;->b:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, v9, La/b/d;->g:F

    iget v3, v0, La/b/d;->c:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, v9, La/b/d;->a:F

    iget v3, v0, La/b/d;->d:F

    mul-float/2addr v2, v3

    iget v3, v9, La/b/d;->d:F

    iget v4, v0, La/b/d;->e:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v9, La/b/d;->g:F

    iget v4, v0, La/b/d;->f:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v9, La/b/d;->a:F

    iget v4, v0, La/b/d;->g:F

    mul-float/2addr v3, v4

    iget v4, v9, La/b/d;->d:F

    iget v5, v0, La/b/d;->h:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v9, La/b/d;->g:F

    iget v5, v0, La/b/d;->i:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v9, La/b/d;->b:F

    iget v5, v0, La/b/d;->a:F

    mul-float/2addr v4, v5

    iget v5, v9, La/b/d;->e:F

    iget v6, v0, La/b/d;->b:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v9, La/b/d;->h:F

    iget v6, v0, La/b/d;->c:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v9, La/b/d;->b:F

    iget v6, v0, La/b/d;->d:F

    mul-float/2addr v5, v6

    iget v6, v9, La/b/d;->e:F

    iget v7, v0, La/b/d;->e:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, v9, La/b/d;->h:F

    iget v7, v0, La/b/d;->f:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, v9, La/b/d;->b:F

    iget v7, v0, La/b/d;->g:F

    mul-float/2addr v6, v7

    iget v7, v9, La/b/d;->e:F

    iget v8, v0, La/b/d;->h:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v9, La/b/d;->h:F

    iget v8, v0, La/b/d;->i:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v9, La/b/d;->c:F

    iget v8, v0, La/b/d;->a:F

    mul-float/2addr v7, v8

    iget v8, v9, La/b/d;->f:F

    iget v11, v0, La/b/d;->b:F

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    iget v8, v9, La/b/d;->i:F

    iget v11, v0, La/b/d;->c:F

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    iget v8, v9, La/b/d;->c:F

    iget v11, v0, La/b/d;->d:F

    mul-float/2addr v8, v11

    iget v11, v9, La/b/d;->f:F

    iget v12, v0, La/b/d;->e:F

    mul-float/2addr v11, v12

    add-float/2addr v8, v11

    iget v11, v9, La/b/d;->i:F

    iget v12, v0, La/b/d;->f:F

    mul-float/2addr v11, v12

    add-float/2addr v8, v11

    iget v11, v9, La/b/d;->c:F

    iget v12, v0, La/b/d;->g:F

    mul-float/2addr v11, v12

    iget v12, v9, La/b/d;->f:F

    iget v13, v0, La/b/d;->h:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iget v9, v9, La/b/d;->i:F

    iget v0, v0, La/b/d;->i:F

    mul-float/2addr v0, v9

    add-float v9, v11, v0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, La/b/d;-><init>(FFFFFFFFF)V

    return-object v10
.end method


# virtual methods
.method public final a([F)V
    .locals 17

    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p0

    iget v3, v0, La/b/d;->a:F

    move-object/from16 v0, p0

    iget v4, v0, La/b/d;->b:F

    move-object/from16 v0, p0

    iget v5, v0, La/b/d;->c:F

    move-object/from16 v0, p0

    iget v6, v0, La/b/d;->d:F

    move-object/from16 v0, p0

    iget v7, v0, La/b/d;->e:F

    move-object/from16 v0, p0

    iget v8, v0, La/b/d;->f:F

    move-object/from16 v0, p0

    iget v9, v0, La/b/d;->g:F

    move-object/from16 v0, p0

    iget v10, v0, La/b/d;->h:F

    move-object/from16 v0, p0

    iget v11, v0, La/b/d;->i:F

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    aget v12, p1, v1

    add-int/lit8 v13, v1, 0x1

    aget v13, p1, v13

    mul-float v14, v5, v12

    mul-float v15, v8, v13

    add-float/2addr v14, v15

    add-float/2addr v14, v11

    mul-float v15, v3, v12

    mul-float v16, v6, v13

    add-float v15, v15, v16

    add-float/2addr v15, v9

    div-float/2addr v15, v14

    aput v15, p1, v1

    add-int/lit8 v15, v1, 0x1

    mul-float/2addr v12, v4

    mul-float/2addr v13, v7

    add-float/2addr v12, v13

    add-float/2addr v12, v10

    div-float/2addr v12, v14

    aput v12, p1, v15

    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method
