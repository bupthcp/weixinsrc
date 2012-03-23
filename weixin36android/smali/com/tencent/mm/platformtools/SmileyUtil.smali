.class public final Lcom/tencent/mm/platformtools/SmileyUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(C)I
    .locals 6

    const v5, 0xe401

    const v4, 0xe301

    const v3, 0xe201

    const v2, 0xe101

    const v1, 0xe001

    if-lt p0, v1, :cond_0

    const v0, 0xe05a

    if-gt p0, v0, :cond_0

    sub-int v0, p0, v1

    :goto_0
    return v0

    :cond_0
    if-lt p0, v2, :cond_1

    const v0, 0xe15a

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, 0x5a

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    if-lt p0, v3, :cond_2

    const v0, 0xe253

    if-gt p0, v0, :cond_2

    add-int/lit16 v0, p0, 0xb4

    sub-int/2addr v0, v3

    goto :goto_0

    :cond_2
    if-lt p0, v4, :cond_3

    const v0, 0xe34d

    if-gt p0, v0, :cond_3

    add-int/lit16 v0, p0, 0x107

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_3
    if-lt p0, v5, :cond_4

    const v0, 0xe44c

    if-gt p0, v0, :cond_4

    add-int/lit16 v0, p0, 0x154

    sub-int/2addr v0, v5

    goto :goto_0

    :cond_4
    const v0, 0xe501

    if-lt p0, v0, :cond_5

    const v0, 0xe537

    if-gt p0, v0, :cond_5

    add-int/lit16 v0, p0, 0x1a0

    const v1, 0xe501

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const-string v0, "MicroMsg.SmileyUtil"

    const-string v1, "setQQSmileyFailed, null context"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/tencent/mm/platformtools/SmileyUtil;->a:Ljava/util/regex/Pattern;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060011

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060012

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f060013

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f060014

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, v2

    move v1, v0

    :goto_1
    if-ge v1, v8, :cond_2

    aget-object v9, v2, v1

    invoke-static {v9}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "|"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    array-length v2, v3

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v8, v3, v1

    invoke-static {v8}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    array-length v2, v4

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_4

    aget-object v3, v4, v1

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    array-length v2, v5

    move v1, v0

    :goto_4
    if-ge v1, v2, :cond_5

    aget-object v3, v5, v1

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    array-length v1, v6

    :goto_5
    if-ge v0, v1, :cond_6

    aget-object v2, v6, v0

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/platformtools/SmileyUtil;->a:Ljava/util/regex/Pattern;

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-char v3, v2, v0

    invoke-static {v3}, Lcom/tencent/mm/platformtools/SmileyUtil;->a(C)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/mm/platformtools/SmileyUtil;->a:Ljava/util/regex/Pattern;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/tencent/mm/platformtools/SmileyUtil;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method
