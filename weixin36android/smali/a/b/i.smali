.class public final La/b/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/b/i;->a:Ljava/lang/String;

    const-string v0, "SJIS"

    sget-object v1, La/b/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EUC_JP"

    sget-object v1, La/b/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, La/b/i;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLjava/util/Map;)Ljava/lang/String;
    .locals 14

    if-eqz p1, :cond_0

    sget-object v0, La/l;->d:La/l;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, -0x11

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    const/16 v1, -0x45

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v1, -0x41

    if-ne v0, v1, :cond_1

    const-string v0, "UTF8"

    goto :goto_0

    :cond_1
    array-length v13, p0

    const/4 v9, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v11, v0

    move v12, v1

    move v1, v2

    move v0, v8

    move v2, v4

    move v4, v9

    :goto_1
    if-ge v11, v13, :cond_2

    if-nez v4, :cond_4

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    :cond_2
    if-lez v7, :cond_3

    const/4 v0, 0x0

    :cond_3
    if-eqz v2, :cond_17

    sget-boolean v7, La/b/i;->b:Z

    if-eqz v7, :cond_17

    const-string v0, "SJIS"

    goto :goto_0

    :cond_4
    aget-byte v8, p0, v11

    and-int/lit16 v9, v8, 0xff

    const/16 v8, 0x80

    if-lt v9, v8, :cond_11

    const/16 v8, 0xbf

    if-gt v9, v8, :cond_11

    if-lez v7, :cond_1d

    add-int/lit8 v7, v7, -0x1

    move v8, v0

    :cond_5
    :goto_2
    const/16 v0, 0xc2

    if-eq v9, v0, :cond_6

    const/16 v0, 0xc3

    if-ne v9, v0, :cond_9

    :cond_6
    add-int/lit8 v0, v13, -0x1

    if-ge v11, v0, :cond_9

    add-int/lit8 v0, v11, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v10, 0xbf

    if-gt v0, v10, :cond_9

    const/16 v10, 0xc2

    if-ne v9, v10, :cond_7

    const/16 v10, 0xa0

    if-ge v0, v10, :cond_8

    :cond_7
    const/16 v10, 0xc3

    if-ne v9, v10, :cond_9

    const/16 v10, 0x80

    if-lt v0, v10, :cond_9

    :cond_8
    const/4 v0, 0x1

    move v5, v0

    :cond_9
    const/16 v0, 0x7f

    if-lt v9, v0, :cond_a

    const/16 v0, 0x9f

    if-gt v9, v0, :cond_a

    const/4 v0, 0x0

    move v4, v0

    :cond_a
    const/16 v0, 0xa1

    if-lt v9, v0, :cond_b

    const/16 v0, 0xdf

    if-gt v9, v0, :cond_b

    if-nez v12, :cond_b

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    :cond_b
    if-nez v12, :cond_e

    const/16 v0, 0xf0

    if-lt v9, v0, :cond_c

    const/16 v0, 0xff

    if-le v9, v0, :cond_d

    :cond_c
    const/16 v0, 0x80

    if-eq v9, v0, :cond_d

    const/16 v0, 0xa0

    if-ne v9, v0, :cond_e

    :cond_d
    const/4 v2, 0x0

    :cond_e
    const/16 v0, 0x81

    if-lt v9, v0, :cond_f

    const/16 v0, 0x9f

    if-le v9, v0, :cond_10

    :cond_f
    const/16 v0, 0xe0

    if-lt v9, v0, :cond_16

    const/16 v0, 0xef

    if-gt v9, v0, :cond_16

    :cond_10
    if-nez v12, :cond_16

    const/4 v0, 0x1

    array-length v9, p0

    add-int/lit8 v9, v9, -0x1

    if-lt v11, v9, :cond_13

    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    move v12, v0

    move v0, v8

    goto/16 :goto_1

    :cond_11
    if-lez v7, :cond_1c

    const/4 v8, 0x0

    :goto_4
    const/16 v0, 0xc0

    if-lt v9, v0, :cond_5

    const/16 v0, 0xfd

    if-gt v9, v0, :cond_5

    const/4 v0, 0x1

    move v6, v7

    move v7, v9

    :goto_5
    and-int/lit8 v10, v7, 0x40

    if-nez v10, :cond_12

    move v7, v6

    move v6, v0

    goto/16 :goto_2

    :cond_12
    add-int/lit8 v10, v6, 0x1

    shl-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v10

    goto :goto_5

    :cond_13
    add-int/lit8 v9, v11, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x40

    if-lt v9, v10, :cond_14

    const/16 v10, 0xfc

    if-le v9, v10, :cond_15

    :cond_14
    const/4 v2, 0x0

    goto :goto_3

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_16
    const/4 v0, 0x0

    goto :goto_3

    :cond_17
    if-eqz v0, :cond_18

    if-eqz v6, :cond_18

    const-string v0, "UTF8"

    goto/16 :goto_0

    :cond_18
    if-eqz v2, :cond_1a

    const/4 v0, 0x3

    if-ge v1, v0, :cond_19

    mul-int/lit8 v0, v3, 0x14

    if-le v0, v13, :cond_1a

    :cond_19
    const-string v0, "SJIS"

    goto/16 :goto_0

    :cond_1a
    if-nez v5, :cond_1b

    if-eqz v4, :cond_1b

    const-string v0, "ISO8859_1"

    goto/16 :goto_0

    :cond_1b
    sget-object v0, La/b/i;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1c
    move v8, v0

    goto :goto_4

    :cond_1d
    move v8, v0

    goto/16 :goto_2
.end method
