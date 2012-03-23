.class final La/a/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, La/a/b/a;->a:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x20t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x3at 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)C
    .locals 1

    sget-object v0, La/a/b/a;->a:[C

    array-length v0, v0

    if-lt p0, v0, :cond_0

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0

    :cond_0
    sget-object v0, La/a/b/a;->a:[C

    aget-char v0, v0, p0

    return v0
.end method

.method static a([BLa/a/b/q;La/a/b/b;Ljava/util/Map;)La/b/k;
    .locals 9

    new-instance v0, La/b/g;

    invoke-direct {v0, p0}, La/b/g;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    new-instance v4, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-virtual {v0}, La/b/g;->a()I

    move-result v2

    const/4 v5, 0x4

    if-ge v2, v5, :cond_2

    sget-object v2, La/a/b/o;->a:La/a/b/o;

    move-object v7, v2

    :goto_1
    sget-object v2, La/a/b/o;->a:La/a/b/o;

    if-eq v7, v2, :cond_f

    sget-object v2, La/a/b/o;->h:La/a/b/o;

    if-eq v7, v2, :cond_0

    sget-object v2, La/a/b/o;->i:La/a/b/o;

    if-ne v7, v2, :cond_3

    :cond_0
    const/4 v2, 0x1

    :goto_2
    sget-object v5, La/a/b/o;->a:La/a/b/o;

    if-ne v7, v5, :cond_10

    new-instance v2, La/b/k;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    :cond_1
    if-nez p2, :cond_e

    const/4 v0, 0x0

    :goto_3
    invoke-direct {v2, p0, v1, v4, v0}, La/b/k;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2

    :cond_2
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {v0, v2}, La/b/g;->a(I)I

    move-result v2

    invoke-static {v2}, La/a/b/o;->a(I)La/a/b/o;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v7, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0

    :cond_3
    sget-object v2, La/a/b/o;->d:La/a/b/o;

    if-ne v7, v2, :cond_4

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, La/b/g;->a(I)I

    move v2, v6

    goto :goto_2

    :cond_4
    sget-object v2, La/a/b/o;->f:La/a/b/o;

    if-ne v7, v2, :cond_8

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, La/b/g;->a(I)I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_5

    and-int/lit8 v2, v2, 0x7f

    :goto_4
    invoke-static {v2}, La/b/e;->a(I)La/b/e;

    move-result-object v3

    if-nez v3, :cond_f

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0

    :cond_5
    and-int/lit16 v3, v2, 0xc0

    const/16 v5, 0x80

    if-ne v3, v5, :cond_6

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, La/b/g;->a(I)I

    move-result v3

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    goto :goto_4

    :cond_6
    and-int/lit16 v3, v2, 0xe0

    const/16 v5, 0xc0

    if-ne v3, v5, :cond_7

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, La/b/g;->a(I)I

    move-result v3

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Bad ECI bits starting with byte "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    sget-object v2, La/a/b/o;->j:La/a/b/o;

    if-ne v7, v2, :cond_9

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, La/b/g;->a(I)I

    move-result v2

    invoke-virtual {v7, p1}, La/a/b/o;->a(La/a/b/q;)I

    move-result v5

    invoke-virtual {v0, v5}, La/b/g;->a(I)I

    move-result v5

    const/4 v8, 0x1

    if-ne v2, v8, :cond_f

    invoke-static {v0, v1, v5}, La/a/b/a;->a(La/b/g;Ljava/lang/StringBuilder;I)V

    move v2, v6

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v7, p1}, La/a/b/o;->a(La/a/b/q;)I

    move-result v2

    invoke-virtual {v0, v2}, La/b/g;->a(I)I

    move-result v2

    sget-object v5, La/a/b/o;->b:La/a/b/o;

    if-ne v7, v5, :cond_a

    invoke-static {v0, v1, v2}, La/a/b/a;->c(La/b/g;Ljava/lang/StringBuilder;I)V

    move v2, v6

    goto/16 :goto_2

    :cond_a
    sget-object v5, La/a/b/o;->c:La/a/b/o;

    if-ne v7, v5, :cond_b

    invoke-static {v0, v1, v2, v6}, La/a/b/a;->a(La/b/g;Ljava/lang/StringBuilder;IZ)V

    move v2, v6

    goto/16 :goto_2

    :cond_b
    sget-object v5, La/a/b/o;->e:La/a/b/o;

    if-ne v7, v5, :cond_c

    move-object v5, p3

    invoke-static/range {v0 .. v5}, La/a/b/a;->a(La/b/g;Ljava/lang/StringBuilder;ILa/b/e;Ljava/util/Collection;Ljava/util/Map;)V

    move v2, v6

    goto/16 :goto_2

    :cond_c
    sget-object v5, La/a/b/o;->g:La/a/b/o;

    if-ne v7, v5, :cond_d

    invoke-static {v0, v1, v2}, La/a/b/a;->b(La/b/g;Ljava/lang/StringBuilder;I)V

    move v2, v6

    goto/16 :goto_2

    :cond_d
    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0

    :cond_e
    invoke-virtual {p2}, La/a/b/b;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_f
    move v2, v6

    goto/16 :goto_2

    :cond_10
    move v6, v2

    goto/16 :goto_0
.end method

.method private static a(La/b/g;Ljava/lang/StringBuilder;I)V
    .locals 4

    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, La/b/g;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0

    :cond_0
    mul-int/lit8 v0, p2, 0x2

    new-array v2, v0, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-gtz p2, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "GB2312"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, La/b/g;->a(I)I

    move-result v0

    div-int/lit8 v3, v0, 0x60

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit8 v0, v0, 0x60

    or-int/2addr v0, v3

    const/16 v3, 0x3bf

    if-ge v0, v3, :cond_2

    const v3, 0xa1a1

    add-int/2addr v0, v3

    :goto_1
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    add-int/lit8 v0, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const v3, 0xa6a1

    add-int/2addr v0, v3

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0
.end method

.method private static a(La/b/g;Ljava/lang/StringBuilder;ILa/b/e;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3

    shl-int/lit8 v0, p2, 0x3

    invoke-virtual {p0}, La/b/g;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0

    :cond_0
    new-array v1, p2, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_1

    if-nez p3, :cond_2

    invoke-static {v1, p5}, La/b/i;->a([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, La/b/g;->a(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, La/b/e;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0
.end method

.method private static a(La/b/g;Ljava/lang/StringBuilder;IZ)V
    .locals 5

    const/16 v4, 0x25

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    if-gt p2, v3, :cond_2

    if-ne p2, v3, :cond_0

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, La/b/g;->a(I)I

    move-result v1

    invoke-static {v1}, La/a/b/a;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, La/b/g;->a(I)I

    move-result v1

    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, La/a/b/a;->a(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v1, v1, 0x2d

    invoke-static {v1}, La/a/b/a;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_5

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2
.end method

.method private static b(La/b/g;Ljava/lang/StringBuilder;I)V
    .locals 4

    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, La/b/g;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0

    :cond_0
    mul-int/lit8 v0, p2, 0x2

    new-array v2, v0, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-gtz p2, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "SJIS"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, La/b/g;->a(I)I

    move-result v0

    div-int/lit16 v3, v0, 0xc0

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit16 v0, v0, 0xc0

    or-int/2addr v0, v3

    const/16 v3, 0x1f00

    if-ge v0, v3, :cond_2

    const v3, 0x8140

    add-int/2addr v0, v3

    :goto_1
    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    add-int/lit8 v0, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const v3, 0xc140

    add-int/2addr v0, v3

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0
.end method

.method private static c(La/b/g;Ljava/lang/StringBuilder;I)V
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x4

    const/16 v2, 0xa

    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    invoke-virtual {p0}, La/b/g;->a()I

    move-result v0

    if-ge v0, v4, :cond_3

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, La/b/g;->a()I

    move-result v0

    if-ge v0, v2, :cond_1

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {p0, v2}, La/b/g;->a(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_2

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0

    :cond_2
    div-int/lit8 v1, v0, 0x64

    invoke-static {v1}, La/a/b/a;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v1, v0, 0xa

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1}, La/a/b/a;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, La/a/b/a;->a(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, La/b/g;->a(I)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_4

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0

    :cond_4
    div-int/lit8 v1, v0, 0xa

    invoke-static {v1}, La/a/b/a;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, La/a/b/a;->a(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    return-void

    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    invoke-virtual {p0}, La/b/g;->a()I

    move-result v0

    if-ge v0, v3, :cond_7

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0

    :cond_7
    invoke-virtual {p0, v3}, La/b/g;->a(I)I

    move-result v0

    if-lt v0, v2, :cond_8

    invoke-static {}, La/d;->a()La/d;

    move-result-object v0

    throw v0

    :cond_8
    invoke-static {v0}, La/a/b/a;->a(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
