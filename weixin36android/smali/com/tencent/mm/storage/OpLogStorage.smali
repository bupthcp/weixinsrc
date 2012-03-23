.class public Lcom/tencent/mm/storage/OpLogStorage;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/mm/storage/OpLogStorage;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->b:Z

    invoke-direct {p0}, Lcom/tencent/mm/storage/OpLogStorage;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->d:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/tencent/mm/storage/OpLogStorage$Operation;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c()V
    .locals 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "op.tem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/storage/OpLogStorage;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "op.log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d()Ljava/util/List;
    .locals 27

    invoke-direct/range {p0 .. p0}, Lcom/tencent/mm/storage/OpLogStorage;->c()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v2, "MicroMsg.OpLogStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOPListFromFiles, file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/storage/OpLogStorage;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "op.log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/storage/OpLogStorage;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "op.log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v2, v4

    new-array v2, v2, [B

    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/4 v2, 0x0

    move/from16 v22, v2

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    aget-object v2, v24, v22

    const-string v3, "MicroMsg.OpLogStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operation:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/mm/storage/OpLogStorage$Concat;->a(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    const-string v2, "MicroMsg.OpLogStorage"

    const-string v3, "invalid operation, arg equals to 0"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v22, 0x1

    move/from16 v22, v2

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/tencent/mm/storage/OpLogStorage$Helper;->a([Ljava/lang/Object;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v21

    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const-string v2, "MicroMsg.OpLogStorage"

    const-string v3, "getOPListFromFiles: not found this opid"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "MicroMsg.OpLogStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOPListFromFiles failed, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :cond_2
    return-object v23

    :sswitch_0
    :try_start_3
    move-object/from16 v0, v21

    array-length v2, v0

    const/16 v3, 0x13

    if-gt v2, v3, :cond_3

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    const/4 v5, 0x3

    aget-object v5, v21, v5

    const/4 v6, 0x4

    aget-object v6, v21, v6

    const/4 v7, 0x5

    aget-object v7, v21, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x6

    aget-object v8, v21, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x7

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x9

    aget-object v10, v21, v10

    const/16 v11, 0xa

    aget-object v11, v21, v11

    const/16 v12, 0xb

    aget-object v12, v21, v12

    const/16 v13, 0xc

    aget-object v13, v21, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0xd

    aget-object v14, v21, v14

    const/16 v15, 0xe

    aget-object v15, v21, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0xf

    aget-object v16, v21, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x10

    aget-object v17, v21, v17

    const/16 v18, 0x11

    aget-object v18, v21, v18

    const/16 v19, 0x12

    aget-object v19, v21, v19

    const-string v20, ""

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    const/4 v5, 0x3

    aget-object v5, v21, v5

    const/4 v6, 0x4

    aget-object v6, v21, v6

    const/4 v7, 0x5

    aget-object v7, v21, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x6

    aget-object v8, v21, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x7

    aget-object v9, v21, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x9

    aget-object v10, v21, v10

    const/16 v11, 0xa

    aget-object v11, v21, v11

    const/16 v12, 0xb

    aget-object v12, v21, v12

    const/16 v13, 0xc

    aget-object v13, v21, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0xd

    aget-object v14, v21, v14

    const/16 v15, 0xe

    aget-object v15, v21, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0xf

    aget-object v16, v21, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x10

    aget-object v17, v21, v17

    const/16 v18, 0x11

    aget-object v18, v21, v18

    const/16 v19, 0x12

    aget-object v19, v21, v19

    const/16 v20, 0x13

    aget-object v20, v21, v20

    const/16 v26, 0x14

    aget-object v21, v21, v26

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-direct/range {v2 .. v21}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_1
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpDelContact;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/storage/OpLogStorage$OpDelContact;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_2
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    aget-object v5, v21, v5

    const/4 v6, 0x4

    aget-object v6, v21, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_3
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpModTXNewsCategory;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/storage/OpLogStorage$OpModTXNewsCategory;-><init>(I)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, v21

    array-length v2, v0

    const/16 v3, 0xf

    if-gt v2, v3, :cond_4

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    const/4 v5, 0x3

    aget-object v5, v21, v5

    const/4 v6, 0x4

    aget-object v6, v21, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    aget-object v7, v21, v7

    const/4 v8, 0x6

    aget-object v8, v21, v8

    const/4 v9, 0x7

    aget-object v9, v21, v9

    const/16 v10, 0x8

    aget-object v10, v21, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x9

    aget-object v11, v21, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0xa

    aget-object v12, v21, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v13, 0xb

    aget-object v13, v21, v13

    const/16 v14, 0xc

    aget-object v14, v21, v14

    const/16 v15, 0xd

    aget-object v15, v21, v15

    const/16 v16, 0xe

    aget-object v16, v21, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const-string v17, ""

    const/16 v18, 0x0

    const-string v19, ""

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v20}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, v21

    array-length v2, v0

    const/16 v3, 0x10

    if-gt v2, v3, :cond_5

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    const/4 v5, 0x3

    aget-object v5, v21, v5

    const/4 v6, 0x4

    aget-object v6, v21, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    aget-object v7, v21, v7

    const/4 v8, 0x6

    aget-object v8, v21, v8

    const/4 v9, 0x7

    aget-object v9, v21, v9

    const/16 v10, 0x8

    aget-object v10, v21, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x9

    aget-object v11, v21, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0xa

    aget-object v12, v21, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v13, 0xb

    aget-object v13, v21, v13

    const/16 v14, 0xc

    aget-object v14, v21, v14

    const/16 v15, 0xd

    aget-object v15, v21, v15

    const/16 v16, 0xe

    aget-object v16, v21, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0xf

    aget-object v17, v21, v17

    const/16 v18, 0x0

    const-string v19, ""

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v20}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    const/4 v5, 0x3

    aget-object v5, v21, v5

    const/4 v6, 0x4

    aget-object v6, v21, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    aget-object v7, v21, v7

    const/4 v8, 0x6

    aget-object v8, v21, v8

    const/4 v9, 0x7

    aget-object v9, v21, v9

    const/16 v10, 0x8

    aget-object v10, v21, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x9

    aget-object v11, v21, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0xa

    aget-object v12, v21, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v13, 0xb

    aget-object v13, v21, v13

    const/16 v14, 0xc

    aget-object v14, v21, v14

    const/16 v15, 0xd

    aget-object v15, v21, v15

    const/16 v16, 0xe

    aget-object v16, v21, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0xf

    aget-object v17, v21, v17

    const/16 v18, 0x10

    aget-object v18, v21, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x11

    aget-object v19, v21, v19

    const/16 v20, 0x12

    aget-object v20, v21, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-direct/range {v2 .. v20}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_5
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpDelContactMsg;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpDelContactMsg;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_6
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpDelChatContact;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/storage/OpLogStorage$OpDelChatContact;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_7
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpDelMsg;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpDelMsg;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_8
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpReport;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x3

    aget-object v6, v21, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/mm/storage/OpLogStorage$OpReport;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_9
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpOpenQQMicroBlog;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/storage/OpLogStorage$OpOpenQQMicroBlog;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_a
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpCloseMicroBlog;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/storage/OpLogStorage$OpCloseMicroBlog;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_b
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpModNotifyStatus;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpModNotifyStatus;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_c
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    aget-object v5, v21, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;-><init>(ZII)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_d
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomMember;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    const/4 v5, 0x3

    aget-object v5, v21, v5

    const/4 v6, 0x4

    aget-object v6, v21, v6

    const/4 v7, 0x5

    aget-object v7, v21, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x6

    aget-object v8, v21, v8

    const/4 v9, 0x7

    aget-object v9, v21, v9

    const/16 v10, 0x8

    aget-object v10, v21, v10

    const/16 v11, 0x9

    aget-object v11, v21, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct/range {v2 .. v11}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomMember;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_e
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpQuitChatRoom;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpQuitChatRoom;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_f
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomNotify;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomNotify;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_10
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomTopic;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomTopic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_11
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpDelUserDomainEmail;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpDelUserDomainEmail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_12
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpFunctionSwitch;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpFunctionSwitch;-><init>(II)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_13
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpUpdateStat;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/storage/OpLogStorage$OpUpdateStat;-><init>(I)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_14
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpDeleteBottle;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpDeleteBottle;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_15
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpModUserImg;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    const/4 v5, 0x3

    aget-object v5, v21, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserImg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_16
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpPsmStat;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpPsmStat;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_17
    const/4 v2, 0x1

    aget-object v2, v21, v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_6

    aget-object v6, v3, v2

    new-instance v7, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;

    invoke-direct {v7}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;-><init>()V

    invoke-virtual {v7, v6}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;->a(Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;

    invoke-direct {v2, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_18
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpTheme;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpTheme;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_19
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpInviteFriendOpen;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpInviteFriendOpen;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_1a
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpGmailSwitch;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpGmailSwitch;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_1b
    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpMediaNote;

    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpMediaNote;-><init>(II)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_1c
    new-instance v3, Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;

    const/4 v4, 0x1

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    check-cast v2, [B

    invoke-direct {v3, v4, v2}, Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;-><init>(I[B)V

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6a -> :sswitch_6
        0x6b -> :sswitch_7
        0x6c -> :sswitch_8
        0x6d -> :sswitch_9
        0x6e -> :sswitch_a
        0x6f -> :sswitch_b
        0x70 -> :sswitch_d
        0x71 -> :sswitch_e
        0x72 -> :sswitch_f
        0x73 -> :sswitch_11
        0x74 -> :sswitch_12
        0x75 -> :sswitch_13
        0x76 -> :sswitch_10
        0x77 -> :sswitch_c
        0x78 -> :sswitch_14
        0x79 -> :sswitch_15
        0x7a -> :sswitch_16
        0x7b -> :sswitch_17
        0x7c -> :sswitch_18
        0x7d -> :sswitch_19
        0x7e -> :sswitch_1a
        0x7f -> :sswitch_1b
        0x80 -> :sswitch_3
        0x2710 -> :sswitch_1c
    .end sparse-switch
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->b:Z

    if-nez v0, :cond_0

    const-string v0, "op.log"

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "op.tem"

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->d:Ljava/util/List;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "op.log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "op.tem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/storage/OpLogStorage;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "op.log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->b:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/tencent/mm/storage/OpLogStorage;->c()V

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->b:Z

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage;->c:Ljava/util/List;

    goto :goto_0
.end method
