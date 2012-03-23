.class public Lcom/tencent/qqpim/dao/SYSSmsDaoV1;
.super Lcom/tencent/qqpim/dao/SYSSmsDao;


# static fields
.field private static sysSmsDaoV1:Lcom/tencent/qqpim/dao/SYSSmsDaoV1;


# instance fields
.field private final DB_COLUMN_ADDRESS:Ljava/lang/String;

.field private final DB_COLUMN_BODY:Ljava/lang/String;

.field private final DB_COLUMN_DATE:Ljava/lang/String;

.field private final DB_COLUMN_ID:Ljava/lang/String;

.field private final DB_COLUMN_PERSON:Ljava/lang/String;

.field private final DB_COLUMN_PROTOCOL:Ljava/lang/String;

.field private final DB_COLUMN_READ:Ljava/lang/String;

.field private final DB_COLUMN_SEEN:Ljava/lang/String;

.field private final DB_COLUMN_THREAD_ID:Ljava/lang/String;

.field private final DB_COLUMN_TYPE:Ljava/lang/String;

.field private final SMS_URI:Ljava/lang/String;

.field private final TYPE_DRAFT:I

.field private final TYPE_ERROR_SEND_BOX:I

.field private final TYPE_OUTBOX:I

.field private final TYPE_RECV_BOX:I

.field private final TYPE_SENT_BOX:I

.field private final TYPE_UNSENT:I

.field public final URI_SMS_CONVERSATION:Landroid/net/Uri;

.field private final VCARD_DRAFT_TYPE:Ljava/lang/String;

.field private final VCARD_INBOX_TYPE:Ljava/lang/String;

.field private final VCARD_OUTBOX_TYPE:Ljava/lang/String;

.field private final VCARD_SENT_TYPE:Ljava/lang/String;

.field private addressColumnIndex:I

.field private bodyColumnIndex:I

.field private columnIndexMapped:Z

.field private contentResolver:Landroid/content/ContentResolver;

.field private context:Landroid/content/Context;

.field private dateColumnIndex:I

.field private dbTypeToVcardType:Ljava/util/HashMap;

.field private hasColumnSeen:Z

.field private idColumnIndex:I

.field private idToContactNameMap:Ljava/util/HashMap;

.field private personColumnIndex:I

.field private phoneToContactNameMap:Ljava/util/HashMap;

.field private protocolColumnIndex:I

.field private smsUri:Landroid/net/Uri;

.field private threadIdColumnIndex:I

.field private typeColumnIndex:I

.field private vcardTypeToDbType:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->sysSmsDaoV1:Lcom/tencent/qqpim/dao/SYSSmsDaoV1;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/dao/SYSSmsDao;-><init>(Landroid/content/Context;)V

    const-string v0, "content://sms"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->SMS_URI:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->smsUri:Landroid/net/Uri;

    const-string v0, "content://sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->URI_SMS_CONVERSATION:Landroid/net/Uri;

    const-string v0, "_id"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->DB_COLUMN_ID:Ljava/lang/String;

    const-string v0, "address"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->DB_COLUMN_ADDRESS:Ljava/lang/String;

    const-string v0, "body"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->DB_COLUMN_BODY:Ljava/lang/String;

    const-string v0, "type"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->DB_COLUMN_TYPE:Ljava/lang/String;

    const-string v0, "protocol"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->DB_COLUMN_PROTOCOL:Ljava/lang/String;

    const-string v0, "thread_id"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->DB_COLUMN_THREAD_ID:Ljava/lang/String;

    const-string v0, "date"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->DB_COLUMN_DATE:Ljava/lang/String;

    const-string v0, "person"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->DB_COLUMN_PERSON:Ljava/lang/String;

    const-string v0, "read"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->DB_COLUMN_READ:Ljava/lang/String;

    const-string v0, "seen"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->DB_COLUMN_SEEN:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->idColumnIndex:I

    iput v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->addressColumnIndex:I

    iput v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->bodyColumnIndex:I

    iput v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->typeColumnIndex:I

    iput v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->protocolColumnIndex:I

    iput v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->threadIdColumnIndex:I

    iput v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->dateColumnIndex:I

    iput v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->personColumnIndex:I

    iput-boolean v2, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->columnIndexMapped:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->TYPE_RECV_BOX:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->TYPE_SENT_BOX:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->TYPE_DRAFT:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->TYPE_OUTBOX:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->TYPE_UNSENT:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->TYPE_ERROR_SEND_BOX:I

    const-string v0, "INBOX"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->VCARD_INBOX_TYPE:Ljava/lang/String;

    const-string v0, "SENT"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->VCARD_SENT_TYPE:Ljava/lang/String;

    const-string v0, "DRAFT"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->VCARD_DRAFT_TYPE:Ljava/lang/String;

    const-string v0, "OUTBOX"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->VCARD_OUTBOX_TYPE:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->hasColumnSeen:Z

    iput-object p1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->smsUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->initHashMaps()V

    return-void
.end method

.method private getContentValues(Lcom/tencent/qqpim/interfaces/IEntity;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/content/ContentValues;
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "read"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->isSDKVersionLargerOrEquals2_2()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->hasColumnSeen:Z

    if-eqz v0, :cond_2

    const-string v0, "seen"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->anonymousDraftCanNotBeRestored:Z

    if-eqz v0, :cond_10

    if-nez v1, :cond_4

    const-string v0, "address"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v0, v4

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/object/Record;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToNext()Z

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "FOLDER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->vcardTypeToDbType:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_8

    move-object v0, v3

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_9
    const-string v5, "type"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_2
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToNext()Z

    move v1, v0

    goto :goto_1

    :cond_a
    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SENDER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v5, :cond_b

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const-string v0, "address"

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 v1, 0x1

    move v0, v1

    goto :goto_2

    :cond_c
    const-string v0, "address"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SENDDATE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {v5}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v5, "date"

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    :cond_e
    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "INFORMATION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "body"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    move v0, v1

    goto :goto_2

    :cond_10
    if-nez v1, :cond_4

    move-object v0, v3

    goto/16 :goto_0
.end method

.method private getDraftSenderAddrByThreadId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "recipient_ids from threads where _id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "address from canonical_addresses where _id = "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "--"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    :goto_1
    :try_start_3
    const-string v3, "SYSSmsDao.getDraftSenderAddrBySmsId"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Throwable t: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    const-string v0, ""

    :goto_2
    invoke-static {v3, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v0, v6

    goto :goto_0

    :cond_9
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v7, v6

    :goto_3
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v6, v1

    move-object v7, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v7

    goto :goto_1
.end method

.method private getDraftSenderAddrByThreadId_2(Ljava/lang/String;)Ljava/util/List;
    .locals 12

    const/4 v8, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "recipient_ids from threads where _id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    if-eqz v9, :cond_2

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    move v10, v8

    move-object v8, v6

    :goto_0
    :try_start_2
    array-length v0, v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    if-lt v10, v0, :cond_4

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v7

    :goto_1
    return-object v0

    :cond_2
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_1

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "address from canonical_addresses where _id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v11, v10

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    move-object v8, v1

    goto :goto_0

    :cond_5
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v6

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    :goto_2
    :try_start_5
    const-string v3, "SYSSmsDao.getDraftSenderAddrBySmsId"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Throwable t: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    const-string v0, ""

    :goto_3
    invoke-static {v3, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v0, v6

    goto/16 :goto_1

    :cond_a
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v9, v6

    :goto_4
    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v6, v8

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v6, v1

    move-object v9, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v6

    move-object v2, v9

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v9

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v8

    move-object v2, v9

    goto :goto_2
.end method

.method protected static getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/dao/SYSSmsDaoV1;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->sysSmsDaoV1:Lcom/tencent/qqpim/dao/SYSSmsDaoV1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->sysSmsDaoV1:Lcom/tencent/qqpim/dao/SYSSmsDaoV1;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->sysSmsDaoV1:Lcom/tencent/qqpim/dao/SYSSmsDaoV1;

    return-object v0
.end method

.method private getSMSEntity(Landroid/database/Cursor;)Lcom/tencent/qqpim/interfaces/IEntity;
    .locals 13

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->mapColumnIndex(Landroid/database/Cursor;)V

    iget-boolean v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->columnIndexMapped:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v5, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v5}, Lcom/tencent/qqpim/object/Record;-><init>()V

    new-instance v6, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v6}, Lcom/tencent/qqpim/object/Record;-><init>()V

    new-instance v7, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v7}, Lcom/tencent/qqpim/object/Record;-><init>()V

    new-instance v8, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v8}, Lcom/tencent/qqpim/object/Record;-><init>()V

    new-instance v9, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v9}, Lcom/tencent/qqpim/object/Record;-><init>()V

    iget v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->idColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const-string v1, "FOLDER"

    invoke-virtual {v5, v0, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    iget v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->typeColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->dbTypeToVcardType:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    const/4 v1, 0x2

    invoke-virtual {v5, v1, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "SENDER"

    invoke-virtual {v6, v0, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    iget v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->addressColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    if-ne v3, v1, :cond_e

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    :cond_3
    iget v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->threadIdColumnIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->draftHasMoreCantactsUploadDisplayWrong:Z

    if-eqz v2, :cond_b

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v1}, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->getDraftSenderAddrByThreadId_2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_a

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v1

    :goto_2
    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->isSDKVersionBelow2()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v6, v0, v2}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "SENDNAME"

    invoke-virtual {v7, v0, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    iget v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->personColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/dao/SYSContactDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/dao/SYSContactDao;

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->phoneToContactNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/tencent/qqpim/issue/IssueSettings;->draftHasMoreCantactsUploadDisplayWrong:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x3

    if-ne v3, v1, :cond_d

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_c

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_5

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move-object v1, v2

    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->phoneToContactNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/4 v0, 0x2

    invoke-virtual {v7, v0, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "SENDDATE"

    invoke-virtual {v8, v0, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    iget v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->dateColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUTCStringFromTime(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v8, v1, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "INFORMATION"

    invoke-virtual {v9, v0, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    iget v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->bodyColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v9, v1, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    new-instance v0, Lcom/tencent/qqpim/object/SYSSms;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/SYSSms;-><init>()V

    invoke-virtual {v0, v10}, Lcom/tencent/qqpim/object/SYSSms;->setId(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/tencent/qqpim/object/SYSSms;->putValue(Lcom/tencent/qqpim/object/Record;)V

    invoke-virtual {v0, v6}, Lcom/tencent/qqpim/object/SYSSms;->putValue(Lcom/tencent/qqpim/object/Record;)V

    invoke-virtual {v0, v7}, Lcom/tencent/qqpim/object/SYSSms;->putValue(Lcom/tencent/qqpim/object/Record;)V

    invoke-virtual {v0, v8}, Lcom/tencent/qqpim/object/SYSSms;->putValue(Lcom/tencent/qqpim/object/Record;)V

    invoke-virtual {v0, v9}, Lcom/tencent/qqpim/object/SYSSms;->putValue(Lcom/tencent/qqpim/object/Record;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "Exception Happen..."

    :cond_8
    const-string v1, "SYSSmsDao Error"

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    :try_start_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v11, ","

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0, v1}, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->getDraftSenderAddrByThreadId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v0

    goto/16 :goto_2

    :cond_c
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/dao/SYSContactDao;->lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/dao/SYSContactDao;->lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_4

    :cond_e
    move-object v4, v0

    goto/16 :goto_2
.end method

.method private initHashMaps()V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->dbTypeToVcardType:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->vcardTypeToDbType:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->dbTypeToVcardType:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "INBOX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->dbTypeToVcardType:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SENT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->dbTypeToVcardType:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DRAFT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->dbTypeToVcardType:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OUTBOX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->dbTypeToVcardType:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OUTBOX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->dbTypeToVcardType:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OUTBOX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->vcardTypeToDbType:Ljava/util/HashMap;

    const-string v1, "INBOX"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->vcardTypeToDbType:Ljava/util/HashMap;

    const-string v1, "SENT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->vcardTypeToDbType:Ljava/util/HashMap;

    const-string v1, "DRAFT"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->vcardTypeToDbType:Ljava/util/HashMap;

    const-string v1, "OUTBOX"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->idToContactNameMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->phoneToContactNameMap:Ljava/util/HashMap;

    return-void
.end method

.method private mapColumnIndex(Landroid/database/Cursor;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->columnIndexMapped:Z

    if-nez v0, :cond_0

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->idColumnIndex:I

    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->addressColumnIndex:I

    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->bodyColumnIndex:I

    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->typeColumnIndex:I

    const-string v0, "protocol"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->protocolColumnIndex:I

    const-string v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->threadIdColumnIndex:I

    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->dateColumnIndex:I

    const-string v0, "person"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->personColumnIndex:I

    iget v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->idColumnIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->addressColumnIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->bodyColumnIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->typeColumnIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->protocolColumnIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->threadIdColumnIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->dateColumnIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->personColumnIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->columnIndexMapped:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/tencent/qqpim/interfaces/IEntity;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->getContentValues(Lcom/tencent/qqpim/interfaces/IEntity;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "_id"

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->smsUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SYSSmsDao Exception"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public add(Ljava/util/ArrayList;Ljava/util/ArrayList;[I)Z
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/interfaces/IEntity;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->add(Lcom/tencent/qqpim/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v1

    goto :goto_1
.end method

.method public delete(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    .locals 5

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->smsUri:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0
.end method

.method public getAllEntityId([Ljava/lang/String;)Ljava/util/List;
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gtz v0, :cond_0

    const-string v2, "PHONE_NUMBERS_EQUAL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "address"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->smsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v7

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v6

    :goto_2
    return-object v0

    :cond_0
    const-string v2, "PHONE_NUMBERS_EQUAL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_2

    :cond_3
    move-object v3, v4

    goto :goto_1
.end method

.method public isExisted(Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->smsUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->contentResolver:Landroid/content/ContentResolver;

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v7, v0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method public query(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IEntity;
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->smsUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->contentResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    invoke-direct {p0, v0}, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->getSMSEntity(Landroid/database/Cursor;)Lcom/tencent/qqpim/interfaces/IEntity;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public query()Ljava/util/List;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->smsUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->mapColumnIndex(Landroid/database/Cursor;)V

    :cond_0
    iget-boolean v3, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->columnIndexMapped:Z

    if-nez v3, :cond_3

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-direct {p0, v1}, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->getSMSEntity(Landroid/database/Cursor;)Lcom/tencent/qqpim/interfaces/IEntity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v2, v0

    goto :goto_0
.end method

.method public queryNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryNumber()I
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->smsUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const-string v0, "seen"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->hasColumnSeen:Z

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v6, v1

    :cond_0
    return v6

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method public update(Lcom/tencent/qqpim/interfaces/IEntity;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    .locals 5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->smsUri:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->getContentValues(Lcom/tencent/qqpim/interfaces/IEntity;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->delete(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->add(Lcom/tencent/qqpim/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "SYSSmsDao"

    const-string v1, "update IllegalArgumentException"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0
.end method

.method public updateAllThreadTime()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->URI_SMS_CONVERSATION:Landroid/net/Uri;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSSmsDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "type=3"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
