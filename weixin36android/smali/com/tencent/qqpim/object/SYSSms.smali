.class public Lcom/tencent/qqpim/object/SYSSms;
.super Lcom/tencent/qqpim/object/SYSEntity;


# static fields
.field public static final TAG_FOLDER:Ljava/lang/String; = "FOLDER"

.field public static final TAG_INFORMATION:Ljava/lang/String; = "INFORMATION"

.field public static final TAG_SENDER_RECEIVER:Ljava/lang/String; = "SENDER"

.field public static final TAG_SEND_DATE:Ljava/lang/String; = "SENDDATE"

.field public static final TAG_SEND_RECEIVER_NAME:Ljava/lang/String; = "SENDNAME"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpim/object/SYSEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckSum()I
    .locals 6

    const/4 v2, 0x0

    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSSms;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v2, v0

    :goto_1
    return v2

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSSms;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/object/Record;

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getEntityType()Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;->VMESSAGE:Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    return-object v0
.end method
