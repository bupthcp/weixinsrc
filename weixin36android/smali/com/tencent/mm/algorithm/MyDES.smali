.class public Lcom/tencent/mm/algorithm/MyDES;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B[BJI[B)C
    .locals 25

    new-instance v3, Lcom/tencent/mm/algorithm/MyByteArray;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>([B)V

    new-instance v14, Lcom/tencent/mm/algorithm/MyByteArray;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>([B)V

    const/16 v4, 0x10

    new-array v5, v4, [Lcom/tencent/mm/algorithm/MyByteArray;

    const/4 v4, 0x0

    :goto_0
    const/16 v6, 0x10

    if-ge v4, v6, :cond_0

    new-instance v6, Lcom/tencent/mm/algorithm/MyByteArray;

    const/16 v7, 0x30

    new-array v7, v7, [B

    invoke-direct {v6, v7}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>([B)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v11, Lcom/tencent/mm/algorithm/MyByteArray;

    const/16 v4, 0x100

    new-array v4, v4, [B

    invoke-direct {v11, v4}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>([B)V

    new-instance v12, Lcom/tencent/mm/algorithm/MyByteArray;

    const/16 v4, 0x18

    new-array v4, v4, [B

    invoke-direct {v12, v4}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>([B)V

    new-instance v13, Lcom/tencent/mm/algorithm/MyByteArray;

    const/16 v4, 0x40

    new-array v4, v4, [B

    invoke-direct {v13, v4}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>([B)V

    new-instance v15, Lcom/tencent/mm/algorithm/MyByteArray;

    invoke-direct {v15}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>()V

    new-instance v16, Lcom/tencent/mm/algorithm/MyByteArray;

    invoke-direct/range {v16 .. v16}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>()V

    new-instance v9, Lcom/tencent/mm/algorithm/MyByteArray;

    invoke-direct {v9}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>()V

    new-instance v10, Lcom/tencent/mm/algorithm/MyByteArray;

    invoke-direct {v10}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>()V

    new-instance v6, Lcom/tencent/mm/algorithm/MyByteArray;

    const/16 v4, 0x40

    new-array v4, v4, [B

    invoke-direct {v6, v4}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>([B)V

    new-instance v7, Lcom/tencent/mm/algorithm/MyByteArray;

    const/16 v4, 0x30

    new-array v4, v4, [B

    invoke-direct {v7, v4}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>([B)V

    new-instance v8, Lcom/tencent/mm/algorithm/MyByteArray;

    const/16 v4, 0x20

    new-array v4, v4, [B

    invoke-direct {v8, v4}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>([B)V

    new-instance v4, Lcom/tencent/mm/algorithm/MyByteArray;

    const/16 v17, 0x9

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>([B)V

    new-instance v17, Lcom/tencent/mm/algorithm/MyByteArray;

    const/16 v18, 0x8

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>([B)V

    if-eqz p5, :cond_1

    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_1

    const-wide/16 v18, 0x7

    add-long v18, v18, p2

    const-wide/16 v20, -0x8

    and-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-nez v20, :cond_2

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_2
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v15, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    iget-object v0, v13, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v15, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    const/16 v20, 0x1c

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    iget-object v0, v13, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    iget-object v0, v6, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    const/16 v20, 0x20

    move/from16 v0, v20

    iput v0, v10, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    iget-object v0, v6, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    const/16 v20, 0x18

    move/from16 v0, v20

    invoke-static {v12, v0}, Lcom/tencent/mm/algorithm/MyDES;->a(Lcom/tencent/mm/algorithm/MyByteArray;I)V

    new-instance v20, Lcom/tencent/mm/algorithm/MyByteArray;

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>([B)V

    const/16 v21, 0x18

    move/from16 v0, p4

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    const/16 p4, 0x18

    :cond_3
    move-object/from16 v0, v20

    move/from16 v1, p4

    invoke-static {v12, v0, v1}, Lcom/tencent/mm/algorithm/MyDES;->d(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V

    const/16 v20, 0x38

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    const/16 v21, 0x30

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    fill-array-data v21, :array_1

    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    fill-array-data v22, :array_2

    const/16 v23, 0x40

    move/from16 v0, v23

    invoke-static {v13, v12, v0}, Lcom/tencent/mm/algorithm/MyDES;->b(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V

    const/16 v12, 0x38

    move-object/from16 v0, v20

    invoke-static {v13, v13, v0, v12, v11}, Lcom/tencent/mm/algorithm/MyDES;->a(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;[BILcom/tencent/mm/algorithm/MyByteArray;)V

    const/4 v12, 0x0

    :goto_2
    const/16 v20, 0x10

    move/from16 v0, v20

    if-ge v12, v0, :cond_4

    aget-byte v20, v22, v12

    move/from16 v0, v20

    invoke-static {v15, v11, v0}, Lcom/tencent/mm/algorithm/MyDES;->c(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V

    aget-byte v20, v22, v12

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v11, v1}, Lcom/tencent/mm/algorithm/MyDES;->c(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V

    aget-object v20, v5, v12

    const/16 v23, 0x30

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v13, v1, v2, v11}, Lcom/tencent/mm/algorithm/MyDES;->a(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;[BILcom/tencent/mm/algorithm/MyByteArray;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    iget v15, v14, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    iget v0, v3, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    move/from16 v16, v0

    invoke-static/range {v3 .. v11}, Lcom/tencent/mm/algorithm/MyDES;->a(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;[Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;)V

    const/16 v4, 0x8

    move-object/from16 v0, v17

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/algorithm/MyDES;->d(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V

    iget v4, v3, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/lit8 v4, v4, 0x8

    iput v4, v3, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    const-wide/16 v12, 0x0

    const/4 v4, 0x3

    shr-long v18, v18, v4

    :goto_3
    cmp-long v4, v12, v18

    if-gez v4, :cond_6

    const/4 v4, 0x0

    :goto_4
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ge v4, v0, :cond_5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    move/from16 v21, v0

    add-int v21, v21, v4

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    move/from16 v23, v0

    add-int v23, v23, v4

    aget-byte v22, v22, v23

    iget-object v0, v14, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    move-object/from16 v23, v0

    iget v0, v14, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    move/from16 v24, v0

    add-int v24, v24, v4

    aget-byte v23, v23, v24

    xor-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v20, v21

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v4, v17

    invoke-static/range {v3 .. v11}, Lcom/tencent/mm/algorithm/MyDES;->a(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;[Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;)V

    const/16 v4, 0x8

    move-object/from16 v0, v17

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/algorithm/MyDES;->d(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V

    const-wide/16 v20, 0x1

    add-long v12, v12, v20

    iget v4, v3, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/lit8 v4, v4, 0x8

    iput v4, v3, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    iget v4, v14, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/lit8 v4, v4, 0x8

    iput v4, v14, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    goto :goto_3

    :cond_6
    iput v15, v14, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    move/from16 v0, v16

    iput v0, v3, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    const/4 v3, 0x1

    goto/16 :goto_1

    nop

    :array_0
    .array-data 0x1
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x1bt
        0x13t
        0xbt
        0x3t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x3ft
        0x37t
        0x2ft
        0x27t
        0x1ft
        0x17t
        0xft
        0x7t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x1ct
        0x14t
        0xct
        0x4t
    .end array-data

    :array_1
    .array-data 0x1
        0xet
        0x11t
        0xbt
        0x18t
        0x1t
        0x5t
        0x3t
        0x1ct
        0xft
        0x6t
        0x15t
        0xat
        0x17t
        0x13t
        0xct
        0x4t
        0x1at
        0x8t
        0x10t
        0x7t
        0x1bt
        0x14t
        0xdt
        0x2t
        0x29t
        0x34t
        0x1ft
        0x25t
        0x2ft
        0x37t
        0x1et
        0x28t
        0x33t
        0x2dt
        0x21t
        0x30t
        0x2ct
        0x31t
        0x27t
        0x38t
        0x22t
        0x35t
        0x2et
        0x2at
        0x32t
        0x24t
        0x1dt
        0x20t
    .end array-data

    :array_2
    .array-data 0x1
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
    .end array-data
.end method

.method private static a(Lcom/tencent/mm/algorithm/MyByteArray;I)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    iget v3, p0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/2addr v3, v0

    aput-byte v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    iget v2, p0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/2addr v2, v0

    aget-byte v3, v1, v2

    iget-object v4, p1, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    iget v5, p1, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/2addr v5, v0

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;[BILcom/tencent/mm/algorithm/MyByteArray;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p4, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    iget v2, p4, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/2addr v2, v0

    iget-object v3, p1, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    iget v4, p1, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    aget-byte v5, p2, v0

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p4, p3}, Lcom/tencent/mm/algorithm/MyDES;->d(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V

    return-void
.end method

.method private static a(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;[Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;)V
    .locals 14

    const/16 v3, 0x40

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const/16 v4, 0x40

    new-array v5, v4, [B

    fill-array-data v5, :array_1

    const/16 v4, 0x40

    move-object/from16 v0, p3

    invoke-static {v0, p1, v4}, Lcom/tencent/mm/algorithm/MyDES;->b(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V

    const/16 v4, 0x40

    move-object/from16 v0, p3

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    invoke-static {v0, v1, v3, v4, v2}, Lcom/tencent/mm/algorithm/MyDES;->a(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;[BILcom/tencent/mm/algorithm/MyByteArray;)V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    const/16 v4, 0x20

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/algorithm/MyDES;->d(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V

    aget-object v4, p2, v3

    const/16 v6, 0x30

    new-array v6, v6, [B

    fill-array-data v6, :array_2

    const/16 v7, 0x20

    new-array v7, v7, [B

    fill-array-data v7, :array_3

    const/16 v8, 0x30

    move-object/from16 v0, p4

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-static {v0, v1, v6, v8, v2}, Lcom/tencent/mm/algorithm/MyDES;->a(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;[BILcom/tencent/mm/algorithm/MyByteArray;)V

    const/16 v6, 0x30

    move-object/from16 v0, p4

    invoke-static {v0, v4, v6}, Lcom/tencent/mm/algorithm/MyDES;->a(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V

    const/16 v4, 0x8

    new-array v6, v4, [[[B

    const/4 v4, 0x0

    const/4 v8, 0x4

    new-array v8, v8, [[B

    const/4 v9, 0x0

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_4

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_5

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_6

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_7

    aput-object v10, v8, v9

    aput-object v8, v6, v4

    const/4 v4, 0x1

    const/4 v8, 0x4

    new-array v8, v8, [[B

    const/4 v9, 0x0

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_8

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_9

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_a

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_b

    aput-object v10, v8, v9

    aput-object v8, v6, v4

    const/4 v4, 0x2

    const/4 v8, 0x4

    new-array v8, v8, [[B

    const/4 v9, 0x0

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_c

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_d

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_e

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_f

    aput-object v10, v8, v9

    aput-object v8, v6, v4

    const/4 v4, 0x3

    const/4 v8, 0x4

    new-array v8, v8, [[B

    const/4 v9, 0x0

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_11

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_12

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_13

    aput-object v10, v8, v9

    aput-object v8, v6, v4

    const/4 v4, 0x4

    const/4 v8, 0x4

    new-array v8, v8, [[B

    const/4 v9, 0x0

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_14

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_15

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_16

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_17

    aput-object v10, v8, v9

    aput-object v8, v6, v4

    const/4 v4, 0x5

    const/4 v8, 0x4

    new-array v8, v8, [[B

    const/4 v9, 0x0

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_18

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_19

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_1a

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_1b

    aput-object v10, v8, v9

    aput-object v8, v6, v4

    const/4 v4, 0x6

    const/4 v8, 0x4

    new-array v8, v8, [[B

    const/4 v9, 0x0

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_1c

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_1d

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_1e

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_1f

    aput-object v10, v8, v9

    aput-object v8, v6, v4

    const/4 v4, 0x7

    const/4 v8, 0x4

    new-array v8, v8, [[B

    const/4 v9, 0x0

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_20

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_21

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_22

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_23

    aput-object v10, v8, v9

    aput-object v8, v6, v4

    move-object/from16 v0, p4

    iget v8, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    move-object/from16 v0, p7

    iget v9, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    const/4 v4, 0x0

    :goto_1
    const/16 v10, 0x8

    if-ge v4, v10, :cond_0

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    move-object/from16 v0, p4

    iget v11, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/lit8 v11, v11, 0x0

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    move-object/from16 v0, p4

    iget v12, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/lit8 v12, v12, 0x5

    aget-byte v11, v11, v12

    add-int/2addr v10, v11

    int-to-byte v10, v10

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    move-object/from16 v0, p4

    iget v12, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/lit8 v12, v12, 0x1

    aget-byte v11, v11, v12

    shl-int/lit8 v11, v11, 0x3

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    move-object/from16 v0, p4

    iget v13, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/lit8 v13, v13, 0x2

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    move-object/from16 v0, p4

    iget v13, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/lit8 v13, v13, 0x3

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0x1

    add-int/2addr v11, v12

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    move-object/from16 v0, p4

    iget v13, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/lit8 v13, v13, 0x4

    aget-byte v12, v12, v13

    add-int/2addr v11, v12

    int-to-byte v11, v11

    new-instance v12, Lcom/tencent/mm/algorithm/MyByteArray;

    aget-object v13, v6, v4

    aget-object v10, v13, v10

    aget-byte v10, v10, v11

    invoke-direct {v12, v10}, Lcom/tencent/mm/algorithm/MyByteArray;-><init>(B)V

    const/4 v10, 0x4

    move-object/from16 v0, p7

    invoke-static {v0, v12, v10}, Lcom/tencent/mm/algorithm/MyDES;->b(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    move-object/from16 v0, p4

    iget v10, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/lit8 v10, v10, 0x6

    move-object/from16 v0, p4

    iput v10, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    move-object/from16 v0, p7

    iget v10, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p7

    iput v10, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    goto/16 :goto_1

    :cond_0
    move-object/from16 v0, p4

    iput v8, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    move-object/from16 v0, p7

    iput v9, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    const/16 v4, 0x20

    move-object/from16 v0, p7

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-static {v0, v1, v7, v4, v2}, Lcom/tencent/mm/algorithm/MyDES;->a(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;[BILcom/tencent/mm/algorithm/MyByteArray;)V

    const/16 v4, 0x20

    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/algorithm/MyDES;->a(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V

    const/16 v4, 0x20

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/algorithm/MyDES;->d(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x40

    move-object/from16 v0, p3

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    invoke-static {v0, v1, v5, v3, v2}, Lcom/tencent/mm/algorithm/MyDES;->a(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;[BILcom/tencent/mm/algorithm/MyByteArray;)V

    const/16 v3, 0x8

    invoke-static {p0, v3}, Lcom/tencent/mm/algorithm/MyDES;->a(Lcom/tencent/mm/algorithm/MyByteArray;I)V

    const/4 v3, 0x0

    :goto_2
    const/16 v4, 0x40

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    iget v5, p0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    shr-int/lit8 v6, v3, 0x3

    add-int/2addr v5, v6

    aget-byte v6, v4, v5

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    move-object/from16 v0, p3

    iget v8, v0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/2addr v8, v3

    aget-byte v7, v7, v8

    and-int/lit8 v8, v3, 0x7

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void

    :array_0
    .array-data 0x1
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x40t
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x1bt
        0x13t
        0xbt
        0x3t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ft
        0x37t
        0x2ft
        0x27t
        0x1ft
        0x17t
        0xft
        0x7t
    .end array-data

    :array_1
    .array-data 0x1
        0x28t
        0x8t
        0x30t
        0x10t
        0x38t
        0x18t
        0x40t
        0x20t
        0x27t
        0x7t
        0x2ft
        0xft
        0x37t
        0x17t
        0x3ft
        0x1ft
        0x26t
        0x6t
        0x2et
        0xet
        0x36t
        0x16t
        0x3et
        0x1et
        0x25t
        0x5t
        0x2dt
        0xdt
        0x35t
        0x15t
        0x3dt
        0x1dt
        0x24t
        0x4t
        0x2ct
        0xct
        0x34t
        0x14t
        0x3ct
        0x1ct
        0x23t
        0x3t
        0x2bt
        0xbt
        0x33t
        0x13t
        0x3bt
        0x1bt
        0x22t
        0x2t
        0x2at
        0xat
        0x32t
        0x12t
        0x3at
        0x1at
        0x21t
        0x1t
        0x29t
        0x9t
        0x31t
        0x11t
        0x39t
        0x19t
    .end array-data

    :array_2
    .array-data 0x1
        0x20t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x1t
    .end array-data

    :array_3
    .array-data 0x1
        0x10t
        0x7t
        0x14t
        0x15t
        0x1dt
        0xct
        0x1ct
        0x11t
        0x1t
        0xft
        0x17t
        0x1at
        0x5t
        0x12t
        0x1ft
        0xat
        0x2t
        0x8t
        0x18t
        0xet
        0x20t
        0x1bt
        0x3t
        0x9t
        0x13t
        0xdt
        0x1et
        0x6t
        0x16t
        0xbt
        0x4t
        0x19t
    .end array-data

    :array_4
    .array-data 0x1
        0xet
        0x4t
        0xdt
        0x1t
        0x2t
        0xft
        0xbt
        0x8t
        0x3t
        0xat
        0x6t
        0xct
        0x5t
        0x9t
        0x0t
        0x7t
    .end array-data

    :array_5
    .array-data 0x1
        0x0t
        0xft
        0x7t
        0x4t
        0xet
        0x2t
        0xdt
        0x1t
        0xat
        0x6t
        0xct
        0xbt
        0x9t
        0x5t
        0x3t
        0x8t
    .end array-data

    :array_6
    .array-data 0x1
        0x4t
        0x1t
        0xet
        0x8t
        0xdt
        0x6t
        0x2t
        0xbt
        0xft
        0xct
        0x9t
        0x7t
        0x3t
        0xat
        0x5t
        0x0t
    .end array-data

    :array_7
    .array-data 0x1
        0xft
        0xct
        0x8t
        0x2t
        0x4t
        0x9t
        0x1t
        0x7t
        0x5t
        0xbt
        0x3t
        0xet
        0xat
        0x0t
        0x6t
        0xdt
    .end array-data

    :array_8
    .array-data 0x1
        0xft
        0x1t
        0x8t
        0xet
        0x6t
        0xbt
        0x3t
        0x4t
        0x9t
        0x7t
        0x2t
        0xdt
        0xct
        0x0t
        0x5t
        0xat
    .end array-data

    :array_9
    .array-data 0x1
        0x3t
        0xdt
        0x4t
        0x7t
        0xft
        0x2t
        0x8t
        0xet
        0xct
        0x0t
        0x1t
        0xat
        0x6t
        0x9t
        0xbt
        0x5t
    .end array-data

    :array_a
    .array-data 0x1
        0x0t
        0xet
        0x7t
        0xbt
        0xat
        0x4t
        0xdt
        0x1t
        0x5t
        0x8t
        0xct
        0x6t
        0x9t
        0x3t
        0x2t
        0xft
    .end array-data

    :array_b
    .array-data 0x1
        0xdt
        0x8t
        0xat
        0x1t
        0x3t
        0xft
        0x4t
        0x2t
        0xbt
        0x6t
        0x7t
        0xct
        0x0t
        0x5t
        0xet
        0x9t
    .end array-data

    :array_c
    .array-data 0x1
        0xat
        0x0t
        0x9t
        0xet
        0x6t
        0x3t
        0xft
        0x5t
        0x1t
        0xdt
        0xct
        0x7t
        0xbt
        0x4t
        0x2t
        0x8t
    .end array-data

    :array_d
    .array-data 0x1
        0xdt
        0x7t
        0x0t
        0x9t
        0x3t
        0x4t
        0x6t
        0xat
        0x2t
        0x8t
        0x5t
        0xet
        0xct
        0xbt
        0xft
        0x1t
    .end array-data

    :array_e
    .array-data 0x1
        0xdt
        0x6t
        0x4t
        0x9t
        0x8t
        0xft
        0x3t
        0x0t
        0xbt
        0x1t
        0x2t
        0xct
        0x5t
        0xat
        0xet
        0x7t
    .end array-data

    :array_f
    .array-data 0x1
        0x1t
        0xat
        0xdt
        0x0t
        0x6t
        0x9t
        0x8t
        0x7t
        0x4t
        0xft
        0xet
        0x3t
        0xbt
        0x5t
        0x2t
        0xct
    .end array-data

    :array_10
    .array-data 0x1
        0x7t
        0xdt
        0xet
        0x3t
        0x0t
        0x6t
        0x9t
        0xat
        0x1t
        0x2t
        0x8t
        0x5t
        0xbt
        0xct
        0x4t
        0xft
    .end array-data

    :array_11
    .array-data 0x1
        0xdt
        0x8t
        0xbt
        0x5t
        0x6t
        0xft
        0x0t
        0x3t
        0x4t
        0x7t
        0x2t
        0xct
        0x1t
        0xat
        0xet
        0x9t
    .end array-data

    :array_12
    .array-data 0x1
        0xat
        0x6t
        0x9t
        0x0t
        0xct
        0xbt
        0x7t
        0xdt
        0xft
        0x1t
        0x3t
        0xet
        0x5t
        0x2t
        0x8t
        0x4t
    .end array-data

    :array_13
    .array-data 0x1
        0x3t
        0xft
        0x0t
        0x6t
        0xat
        0x1t
        0xdt
        0x8t
        0x9t
        0x4t
        0x5t
        0xbt
        0xct
        0x7t
        0x2t
        0xet
    .end array-data

    :array_14
    .array-data 0x1
        0x2t
        0xct
        0x4t
        0x1t
        0x7t
        0xat
        0xbt
        0x6t
        0x8t
        0x5t
        0x3t
        0xft
        0xdt
        0x0t
        0xet
        0x9t
    .end array-data

    :array_15
    .array-data 0x1
        0xet
        0xbt
        0x2t
        0xct
        0x4t
        0x7t
        0xdt
        0x1t
        0x5t
        0x0t
        0xft
        0xat
        0x3t
        0x9t
        0x8t
        0x6t
    .end array-data

    :array_16
    .array-data 0x1
        0x4t
        0x2t
        0x1t
        0xbt
        0xat
        0xdt
        0x7t
        0x8t
        0xft
        0x9t
        0xct
        0x5t
        0x6t
        0x3t
        0x0t
        0xet
    .end array-data

    :array_17
    .array-data 0x1
        0xbt
        0x8t
        0xct
        0x7t
        0x1t
        0xet
        0x2t
        0xdt
        0x6t
        0xft
        0x0t
        0x9t
        0xat
        0x4t
        0x5t
        0x3t
    .end array-data

    :array_18
    .array-data 0x1
        0xct
        0x1t
        0xat
        0xft
        0x9t
        0x2t
        0x6t
        0x8t
        0x0t
        0xdt
        0x3t
        0x4t
        0xet
        0x7t
        0x5t
        0xbt
    .end array-data

    :array_19
    .array-data 0x1
        0xat
        0xft
        0x4t
        0x2t
        0x7t
        0xct
        0x9t
        0x5t
        0x6t
        0x1t
        0xdt
        0xet
        0x0t
        0xbt
        0x3t
        0x8t
    .end array-data

    :array_1a
    .array-data 0x1
        0x9t
        0xet
        0xft
        0x5t
        0x2t
        0x8t
        0xct
        0x3t
        0x7t
        0x0t
        0x4t
        0xat
        0x1t
        0xdt
        0xbt
        0x6t
    .end array-data

    :array_1b
    .array-data 0x1
        0x4t
        0x3t
        0x2t
        0xct
        0x9t
        0x5t
        0xft
        0xat
        0xbt
        0xet
        0x1t
        0x7t
        0x6t
        0x0t
        0x8t
        0xdt
    .end array-data

    :array_1c
    .array-data 0x1
        0x4t
        0xbt
        0x2t
        0xet
        0xft
        0x0t
        0x8t
        0xdt
        0x3t
        0xct
        0x9t
        0x7t
        0x5t
        0xat
        0x6t
        0x1t
    .end array-data

    :array_1d
    .array-data 0x1
        0xdt
        0x0t
        0xbt
        0x7t
        0x4t
        0x9t
        0x1t
        0xat
        0xet
        0x3t
        0x5t
        0xct
        0x2t
        0xft
        0x8t
        0x6t
    .end array-data

    :array_1e
    .array-data 0x1
        0x1t
        0x4t
        0xbt
        0xdt
        0xct
        0x3t
        0x7t
        0xet
        0xat
        0xft
        0x6t
        0x8t
        0x0t
        0x5t
        0x9t
        0x2t
    .end array-data

    :array_1f
    .array-data 0x1
        0x6t
        0xbt
        0xdt
        0x8t
        0x1t
        0x4t
        0xat
        0x7t
        0x9t
        0x5t
        0x0t
        0xft
        0xet
        0x2t
        0x3t
        0xct
    .end array-data

    :array_20
    .array-data 0x1
        0xdt
        0x2t
        0x8t
        0x4t
        0x6t
        0xft
        0xbt
        0x1t
        0xat
        0x9t
        0x3t
        0xet
        0x5t
        0x0t
        0xct
        0x7t
    .end array-data

    :array_21
    .array-data 0x1
        0x1t
        0xft
        0xdt
        0x8t
        0xat
        0x3t
        0x7t
        0x4t
        0xct
        0x5t
        0x6t
        0xbt
        0x0t
        0xet
        0x9t
        0x2t
    .end array-data

    :array_22
    .array-data 0x1
        0x7t
        0xbt
        0x4t
        0x1t
        0x9t
        0xct
        0xet
        0x2t
        0x0t
        0x6t
        0xat
        0xdt
        0xft
        0x3t
        0x5t
        0x8t
    .end array-data

    :array_23
    .array-data 0x1
        0x2t
        0x1t
        0xet
        0x7t
        0x4t
        0xat
        0x8t
        0xdt
        0xft
        0xct
        0x9t
        0x0t
        0x3t
        0x5t
        0x6t
        0xbt
    .end array-data
.end method

.method private static b(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    iget v2, p0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/2addr v2, v0

    iget-object v3, p1, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    shr-int/lit8 v4, v0, 0x3

    iget v5, p1, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    and-int/lit8 v4, v0, 0x7

    shr-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static c(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1, p0, p2}, Lcom/tencent/mm/algorithm/MyDES;->d(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V

    move v1, v0

    :goto_0
    rsub-int/lit8 v2, p2, 0x1c

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    iget v3, p0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    iget v5, p0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/2addr v5, v1

    add-int/2addr v5, p2

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    iget v2, p0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1c

    sub-int/2addr v2, p2

    iget-object v3, p1, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    iget v4, p1, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static d(Lcom/tencent/mm/algorithm/MyByteArray;Lcom/tencent/mm/algorithm/MyByteArray;I)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    iget v2, p0, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/2addr v2, v0

    iget-object v3, p1, Lcom/tencent/mm/algorithm/MyByteArray;->a:[B

    iget v4, p1, Lcom/tencent/mm/algorithm/MyByteArray;->b:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
