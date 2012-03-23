.class public Lcom/tencent/qqpim/tccsync/TccSyncDb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tccsync/ITccSyncDbAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private cur_pos:I

.field private dao:Lcom/tencent/qqpim/interfaces/IDao;

.field private id_list:Ljava/util/List;

.field private mSelection:[Ljava/lang/String;

.field private type:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field private vcard:Lcom/tencent/qqpim/interfaces/IVcard;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->context:Landroid/content/Context;

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->type:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->cur_pos:I

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->vcard:Lcom/tencent/qqpim/interfaces/IVcard;

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->mSelection:[Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->type:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;[Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->context:Landroid/content/Context;

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->type:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->cur_pos:I

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->vcard:Lcom/tencent/qqpim/interfaces/IVcard;

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->mSelection:[Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->type:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object p3, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->mSelection:[Ljava/lang/String;

    return-void
.end method

.method public static getITccSyncDbAdapter(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Lcom/tencent/tccsync/ITccSyncDbAdapter;
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "getITccSyncDbAdapter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/qqpim/tccsync/TccSyncDb;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qqpim/tccsync/TccSyncDb;-><init>(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)V

    return-object v0
.end method

.method public static getITccSyncDbAdapter(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;[Ljava/lang/String;)Lcom/tencent/tccsync/ITccSyncDbAdapter;
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "getITccSyncDbAdapter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/qqpim/tccsync/TccSyncDb;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/qqpim/tccsync/TccSyncDb;-><init>(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/util/ArrayList;Ljava/util/ArrayList;[I[I)I
    .locals 9

    const/16 v1, -0x64

    const/4 v2, 0x0

    sget-boolean v0, Lcom/tencent/qqpim/utils/QQPimUtils;->userStoppedSync:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v2

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v3, "add enter"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v2

    :goto_1
    if-lt v4, v7, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    invoke-interface {v0, v6, v5, p4}, Lcom/tencent/qqpim/interfaces/IDao;->add(Ljava/util/ArrayList;Ljava/util/ArrayList;[I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    sget-object v3, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v3

    aput v3, p4, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->vcard:Lcom/tencent/qqpim/interfaces/IVcard;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {v8, v0}, Lcom/tencent/qqpim/interfaces/IVcard;->parseVcard([B)Lcom/tencent/qqpim/interfaces/IEntity;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    :try_start_2
    sget-object v3, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v3

    aput v3, p4, v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v0

    :goto_2
    :try_start_3
    invoke-virtual {v6, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_3
    sget-object v3, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v3

    aput v3, p4, v4

    move-object v3, v0

    goto :goto_2

    :cond_2
    const-string v0, "sdcard/vcard.txt"

    invoke-static {v3, v0}, Lcom/tencent/qqpim/utils/QQPimTestUtils;->writeEntityToFile(Lcom/tencent/qqpim/interfaces/IEntity;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move v1, v2

    :goto_4
    if-lt v1, v7, :cond_3

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "TccSyncDb"

    const-string v3, "add , parseVcard failed!"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TccSyncDb"

    const-string v3, "add OperationReturnValue.TCC_ERR_DATA_INVALID"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v2

    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    invoke-interface {v4, v0}, Lcom/tencent/qqpim/interfaces/IDao;->query(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IEntity;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v1

    const/4 v0, 0x0

    aput v0, p3, v1

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_4
    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/IEntity;->getCheckSum()I

    move-result v0

    aput v0, p3, v1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    invoke-virtual {p2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v1

    aput v2, p3, v1

    goto :goto_5

    :catch_3
    move-exception v0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v1

    aput v2, p3, v1

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v0, v3

    goto :goto_3
.end method

.method public add([BLjava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;
    .locals 4

    sget-boolean v0, Lcom/tencent/qqpim/utils/QQPimUtils;->userStoppedSync:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "add enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->vcard:Lcom/tencent/qqpim/interfaces/IVcard;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/interfaces/IVcard;->parseVcard([B)Lcom/tencent/qqpim/interfaces/IEntity;

    move-result-object v0

    const-string v1, "sdcard/vcard.txt"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimTestUtils;->writeEntityToFile(Lcom/tencent/qqpim/interfaces/IEntity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/interfaces/IDao;->add(Lcom/tencent/qqpim/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "TccSyncDb"

    const-string v1, "add OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILE 1"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "TccSyncDb"

    const-string v1, "add , parseVcard failed!"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TccSyncDb"

    const-string v1, "add OperationReturnValue.TCC_ERR_DATA_INVALID"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/interfaces/IDao;->query(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IEntity;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "TccSyncDb"

    const-string v1, "add OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILE 2"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_2
    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add query and entity.getCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/IEntity;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/IEntity;->getCheckSum()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "TccSyncDb"

    const-string v1, "add OperationReturnValue.TCC_ERR_NONE"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject , UnsupportedEncodingException"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TccSyncDb"

    const-string v1, "add OperationReturnValue.TCC_ERR 4"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "TccSyncDb"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto/16 :goto_0
.end method

.method public del([B)Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;
    .locals 2

    sget-boolean v0, Lcom/tencent/qqpim/utils/QQPimUtils;->userStoppedSync:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "del enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "TccSyncDb"

    const-string v1, "del OperationReturnValue.TCC_ERR_DATA_INVALID"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/interfaces/IDao;->delete(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    if-ne v0, v1, :cond_2

    const-string v0, "TccSyncDb"

    const-string v1, "del OperationReturnValue.TCC_ERR_DATA_NOT_FOUND"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_NOT_FOUND:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    if-ne v0, v1, :cond_3

    const-string v0, "TccSyncDb"

    const-string v1, "del OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_3
    const-string v0, "TccSyncDb"

    const-string v1, "del OperationReturnValue.TCC_ERR_NONE"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0
.end method

.method public getCurrObject(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;
    .locals 4

    sget-boolean v0, Lcom/tencent/qqpim/utils/QQPimUtils;->userStoppedSync:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject  enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject  GetCurrObjectReturnValue.TCC_ERR 1"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->cur_pos:I

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject GetCurrObjectReturnValue.TCC_ERR 2"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR_EOF:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    iget v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->cur_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/interfaces/IDao;->query(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IEntity;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrObject GetCurrObjectReturnValue.TCC_ERR 3 strContactId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->vcard:Lcom/tencent/qqpim/interfaces/IVcard;

    invoke-interface {v2, v1}, Lcom/tencent/qqpim/interfaces/IVcard;->composeVcard(Lcom/tencent/qqpim/interfaces/IEntity;)[B

    move-result-object v2

    if-nez v2, :cond_4

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject GetCurrObjectReturnValue.TCC_ERR 4"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Lcom/tencent/qqpim/interfaces/IEntity;->getCheckSum()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject GetCurrObjectReturnValue.TCC_RRR_NONE"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_RRR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject , UnsupportedEncodingException"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject GetCurrObjectReturnValue.TCC_ERR 5"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto/16 :goto_0
.end method

.method public getCurrObjectInfo(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;
    .locals 2

    sget-boolean v0, Lcom/tencent/qqpim/utils/QQPimUtils;->userStoppedSync:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 1"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->cur_pos:I

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_EOF"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR_EOF:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    iget v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->cur_pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/interfaces/IDao;->query(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IEntity;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 2"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lcom/tencent/qqpim/interfaces/IEntity;->getCheckSum()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_RRR_NONE"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_RRR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject , UnsupportedEncodingException"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 3"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 4"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0
.end method

.method public getSyncDataType()Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "getSyncDataType"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->type:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    return-object v0
.end method

.method public hasEnoughStorageSpace(J)Z
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "hasEnoughStorageSpace"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isAtEnd()Z
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "isAtEnd enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->cur_pos:I

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const-string v0, "TccSyncDb"

    const-string v1, "isAtEnd  true"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "isAtEnd false"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExist([B)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "TccSyncDb"

    const-string v2, "isExist enter"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "TccSyncDb"

    const-string v2, "isExist false"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isExist "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IDao;->isExisted(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "TccSyncDb"

    const-string v2, "oidInputError"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public mdf([B[BLjava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;
    .locals 3

    sget-boolean v0, Lcom/tencent/qqpim/utils/QQPimUtils;->userStoppedSync:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "mdf enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_DATA_INVALID"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "sdcard/vcard.txt"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->vcard:Lcom/tencent/qqpim/interfaces/IVcard;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/interfaces/IVcard;->parseVcard([B)Lcom/tencent/qqpim/interfaces/IEntity;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "TccSyncDb"

    const-string v1, "mdf entity == null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "TccSyncDb"

    const-string v1, "mdf , parseVcard failed!"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_DATA_INVALID"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IEntity;->setId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    invoke-interface {v2, v0}, Lcom/tencent/qqpim/interfaces/IDao;->update(Lcom/tencent/qqpim/interfaces/IEntity;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    move-result-object v0

    sget-object v2, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    if-ne v0, v2, :cond_4

    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_DATA_NOT_FOUND"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_NOT_FOUND:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    if-ne v0, v2, :cond_5

    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IDao;->query(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IEntity;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto/16 :goto_0

    :cond_6
    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/IEntity;->getCheckSum()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_NONE"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public seekFirst(Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "TccSyncDb"

    const-string v2, "seekFirst  enter"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v1, "TccSyncDb"

    const-string v2, "seekFirst  false"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iput v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->cur_pos:I

    iget-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "TccSyncDb"

    const-string v1, "seekFirst  true"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public seekNext()Z
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "seekNext  enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->cur_pos:I

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v0, "TccSyncDb"

    const-string v1, "seekNext leave  true"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->cur_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->cur_pos:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "seekNext  leave false"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 3

    const/4 v0, 0x0

    const-string v1, "TccSyncDb"

    const-string v2, "size  enter"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "TccSyncDb"

    const-string v2, "size  false"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iput v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->cur_pos:I

    iget-object v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "TccSyncDb"

    const-string v2, "size  true"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public syncFreeze()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TccSyncDb"

    const-string v1, "syncFreeze  enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    iput-object v2, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->cur_pos:I

    iput-object v2, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->vcard:Lcom/tencent/qqpim/interfaces/IVcard;

    iput-object v2, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->mSelection:[Ljava/lang/String;

    const-string v0, "TccSyncDb"

    const-string v1, "syncFreeze  true"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public syncInit()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "TccSyncDb"

    const-string v2, "syncInit enter"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->type:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BOOKMARK:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1, v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/qqpim/dao/SYSBookmarkDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    iget-object v2, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->mSelection:[Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/interfaces/IDao;->getAllEntityId([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->id_list:Ljava/util/List;

    if-nez v1, :cond_5

    const-string v1, "TccSyncDb"

    const-string v2, "syncInit false"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->type:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1, v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/qqpim/dao/SYSCallLogDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->type:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1, v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/qqpim/dao/SYSContactDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->type:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1, v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/qqpim/dao/SYSSmsDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->dao:Lcom/tencent/qqpim/interfaces/IDao;

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/tencent/qqpim/dao/VCard;

    invoke-direct {v1}, Lcom/tencent/qqpim/dao/VCard;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->vcard:Lcom/tencent/qqpim/interfaces/IVcard;

    iput v0, p0, Lcom/tencent/qqpim/tccsync/TccSyncDb;->cur_pos:I

    const-string v0, "TccSyncDb"

    const-string v1, "syncInit  true"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1
.end method
