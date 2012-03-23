.class public Lcom/tencent/mm/modelemoji/EmojiInfoStorage;
.super Lcom/tencent/mm/storagebase/MStorage;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/mm/algorithm/LRUMap;

.field private c:Lcom/tencent/mm/storagebase/SqliteDB;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE IF NOT EXISTS emojiinfo ( md5 TEXT PRIMARY KEY COLLATE NOCASE, svrid TEXT, catalog INT, type INT, size INT, start INT, state INT, name TEXT, content TEXT, reserved1 TEXT, reserved2 TEXT, reserved3 INT, reserved4 INT ) "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CREATE INDEX IF NOT EXISTS emojiGroupIndex ON emojiinfo ( catalog ) "

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storagebase/SqliteDB;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorage;-><init>()V

    new-instance v0, Lcom/tencent/mm/algorithm/LRUMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/tencent/mm/algorithm/LRUMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->b:Lcom/tencent/mm/algorithm/LRUMap;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "c0059fa4f781a2a500ec03fade10e9b1"

    aput-object v1, v0, v3

    const-string v1, "e6f269a19ff2fb61fdb847b39c86ebca"

    aput-object v1, v0, v4

    const-string v1, "d629cb3c544fb719405f2b9f16ed6e6c"

    aput-object v1, v0, v5

    const-string v1, "e2e2e96798bfbd55b35c3111d89b2e17"

    aput-object v1, v0, v6

    const-string v1, "d13e21be9fd71777f727e0c34b0d3994"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "68f9864ca5c0a5d823ed7184e113a4aa"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1483ce786912099e29551915e0bc2125"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "31574013280aac3897722cc7e3e49ee4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "a00d1de64298d9eaa145ec848a9cc8af"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "6257411b26d5aa873762490769625bb9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "5a7fc462d63ef845e6d99c1523bbc91e"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "72ebfa527add152c6872219044b151c3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "6a9284bc5ce0bf059375e970a49fa2c5"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "6ae79b62bab61132981f1e85ad7070c4"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "aab84584b5a3f262286cb38bb107b53e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "bb82ce58f5ed6fdd2b5e34fc2a8e347a"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->e:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "846f30447c5c4c9beefeb5a61bec0ba3"

    aput-object v1, v0, v3

    const-string v1, "5883b606506766a8733afde516166dad"

    aput-object v1, v0, v4

    const-string v1, "b25b5a719caeaca7525dd9d0ef0be4bb"

    aput-object v1, v0, v5

    const-string v1, "8690f2ec5676b9d2d70f7cba012e772e"

    aput-object v1, v0, v6

    const-string v1, "5ce1249c690762727b97efa75b685e2b"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "b51826394461eb67e2ecbdd8900a25d9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "a13aac17bb8c649dc7797dd5ad0bf97f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "5462d752e528d1635816e38469ce4151"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ed18d9a312413ea32838bb4d7bb8317c"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "3cdca9051658348b5a11ba14dc6a3aca"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "0e1dcfa77dbbdfe984edd644cfb5da79"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "7590a6e186522063b994eaf8f45673bf"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1280edfca8cb1dcf78e44789358e35d6"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "c6345f716d706b8b9df53b0b6fff82cd"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ca17f472025f0943917b443faeaee999"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "9cf03d450b27e8011bba02a652bc357a"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->f:[Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c:Lcom/tencent/mm/storagebase/SqliteDB;

    iput-object p2, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d:Ljava/lang/String;

    return-void
.end method

.method private a(IILjava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/modelemoji/EmojiInfo;

    iget-object v2, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/tencent/mm/modelemoji/EmojiInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->c(I)V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->d(I)V

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->l:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->g(I)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->b(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([Ljava/io/InputStream;)Ljava/util/List;
    .locals 14

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    array-length v8, p1

    move v1, v2

    :goto_0
    if-ge v1, v8, :cond_5

    aget-object v0, p1, v1

    if-eqz v0, :cond_4

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v3, "catalog"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    move v5, v2

    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v5, v0, :cond_4

    new-instance v3, Lcom/tencent/mm/modelemoji/EmojiInfo;

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d:Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v4, "id"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v4, "md5"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v10}, Lcom/tencent/mm/modelemoji/EmojiInfo;->c(I)V

    const-string v4, "type"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/modelemoji/EmojiInfo;->d(I)V

    const-string v4, "name"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/modelemoji/EmojiInfo;->c(Ljava/lang/String;)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v3, "emoji"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    move v4, v2

    :goto_2
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_3

    new-instance v12, Lcom/tencent/mm/modelemoji/EmojiInfo;

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d:Ljava/lang/String;

    invoke-direct {v12, v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v3, "md5"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/tencent/mm/modelemoji/EmojiInfo;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v12, v10}, Lcom/tencent/mm/modelemoji/EmojiInfo;->c(I)V

    const-string v3, "name"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->c(Ljava/lang/String;)V

    const-string v3, "type"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->d(I)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v3, v0, Lorg/w3c/dom/CharacterData;

    if-eqz v3, :cond_2

    check-cast v0, Lorg/w3c/dom/CharacterData;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v12}, Lcom/tencent/mm/modelemoji/EmojiInfo;->j()I

    move-result v0

    sget v13, Lcom/tencent/mm/modelemoji/EmojiInfo;->j:I

    if-ne v0, v13, :cond_6

    new-instance v0, Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/algorithm/Base64;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    :goto_4
    invoke-virtual {v12, v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->d(Ljava/lang/String;)V

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_2
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.EmojiInfoStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse xml error; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v6

    :cond_6
    move-object v0, v3

    goto :goto_4
.end method

.method private b(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a()Landroid/content/ContentValues;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v4, "emojiinfo"

    const-string v5, "md5"

    invoke-virtual {v3, v4, v5, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->b(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private d(I)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v3, "emojiinfo"

    const-string v4, "catalog=?"

    new-array v5, v0, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v0

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/platformtools/ChannelUtil;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->e:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->e:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->f:[Ljava/lang/String;

    aget-object p1, v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;III)Lcom/tencent/mm/modelemoji/EmojiInfo;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v0, Lcom/tencent/mm/modelemoji/EmojiInfo;

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->c(I)V

    invoke-virtual {v0, p4}, Lcom/tencent/mm/modelemoji/EmojiInfo;->d(I)V

    invoke-virtual {v0, p5}, Lcom/tencent/mm/modelemoji/EmojiInfo;->e(I)V

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->k:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->g(I)V

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->b(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v2, "emojiinfo"

    const-string v3, "catalog=? OR catalog=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/tencent/mm/modelemoji/EmojiInfo;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/tencent/mm/modelemoji/EmojiInfo;->g:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    new-instance v2, Lcom/tencent/mm/modelemoji/EmojiInfo;

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(Landroid/database/Cursor;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public final a(I)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->b(I)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    new-instance v2, Lcom/tencent/mm/modelemoji/EmojiInfo;

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(Landroid/database/Cursor;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 12

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v2, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "EmojiArtCatalog"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_7

    const-string v0, ".EmojiArtCatalog.$id"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    const-string v0, ".EmojiArtCatalog.$name"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MicroMsg.EmojiInfoStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "art eomji updated, name:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    const-string v1, ".EmojiArtCatalog.Icon"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/algorithm/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->b:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(I)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->n()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_1
    sget v8, Lcom/tencent/mm/modelemoji/EmojiInfo;->c:I

    if-eq v4, v8, :cond_3

    invoke-direct {p0, v4}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(I)Z

    :cond_3
    :goto_2
    if-nez v1, :cond_8

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->b:I

    sget v4, Lcom/tencent/mm/modelemoji/EmojiInfo;->h:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/tencent/mm/modelemoji/EmojiInfo;->b:I

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v4, v8}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(IILjava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v1

    move-object v4, v1

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v1, 0x6

    if-lt v5, v1, :cond_5

    const/4 v1, 0x5

    :goto_4
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->e(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    move v5, v3

    :goto_5
    const/16 v0, 0x3e8

    if-ge v5, v0, :cond_7

    if-nez v5, :cond_6

    const-string v0, ""

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ".EmojiArtCatalog.EmojiArt"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".$name"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/algorithm/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Lcom/tencent/mm/modelemoji/EmojiInfo;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget v8, Lcom/tencent/mm/modelemoji/EmojiInfo;->j:I

    invoke-direct {p0, v1, v8, v7}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(IILjava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->e(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_5

    :cond_4
    move v4, v3

    goto/16 :goto_1

    :cond_5
    move v1, v5

    goto/16 :goto_4

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_8
    move-object v4, v1

    goto/16 :goto_3

    :cond_9
    move-object v1, v4

    goto/16 :goto_2
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v0, "86cb157e9c44b2c9934e4e430790776d"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v0

    const-string v2, "68f9864ca5c0a5d823ed7184e113a4aa"

    invoke-virtual {p0, v2}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v2

    const-string v3, "846f30447c5c4c9beefeb5a61bec0ba3"

    invoke-virtual {p0, v3}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v3

    sget v4, Lcom/tencent/mm/modelemoji/EmojiInfo;->b:I

    invoke-virtual {p0, v4}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c(I)I

    move-result v4

    if-nez v0, :cond_2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/tencent/mm/platformtools/ChannelUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    if-gt v4, v5, :cond_3

    :cond_2
    sget v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->a:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(I)Z

    sget v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->e:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(I)Z

    sget v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->d:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(I)Z

    :cond_3
    sget v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->a:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c(I)I

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    :goto_0
    return v6

    :cond_5
    :try_start_0
    const-string v0, "MicroMsg.EmojiInfoStorage"

    const-string v2, "init start."

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "custom_emoji/manifest.xml"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    if-nez v4, :cond_6

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "art_emoji/manifest.xml"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a([Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->b(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    const-string v3, "MicroMsg.EmojiInfoStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init db error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_7
    :try_start_4
    const-string v0, "MicroMsg.EmojiInfoStorage"

    const-string v3, "init end."

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_8
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v2, v1

    goto :goto_2
.end method

.method public final a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "emoji info null"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const-string v0, "emoji info invalid"

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->g()Z

    move-result v3

    invoke-static {v0, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v3, "emojiinfo"

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "md5=?"

    new-array v6, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->b(Ljava/lang/String;)V

    :cond_0
    if-lez v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select content from emojiinfo where type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mm/modelemoji/EmojiInfo;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c:Lcom/tencent/mm/storagebase/SqliteDB;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "MicroMsg.EmojiInfoStorage"

    const-string v3, "isArtEmojiExist false"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_3
    const-string v2, "MicroMsg.EmojiInfoStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isArtEmojiExist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final b(I)Landroid/database/Cursor;
    .locals 7

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "emojiinfo"

    const-string v2, "catalog=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)I
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "select count(*) from emojiinfo where catalog= ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1
.end method

.method public final c(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;
    .locals 2

    sget v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->c:I

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->j:I

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(IILjava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v3, "emojiinfo"

    const-string v4, "md5=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v0, Lcom/tencent/mm/modelemoji/EmojiInfo;

    iget-object v2, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/tencent/mm/modelemoji/EmojiInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(Landroid/database/Cursor;)V

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-direct {p0, p1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v4, "emojiinfo"

    const-string v5, "md5=?"

    new-array v6, v1, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
