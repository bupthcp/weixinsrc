.class public Lcom/tencent/qqpim/dao/SYSContactDaoV2;
.super Lcom/tencent/qqpim/dao/SYSContactDao;

# interfaces
.implements Lcom/tencent/qqpim/interfaces/IPhoneLookup;


# instance fields
.field private final ACCOUNT_NAME_SIM:Ljava/lang/String;

.field public final OPE_ADD:I

.field public final OPE_UPDATE:I

.field private cursor:Landroid/database/Cursor;

.field private groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDao;

.field private final strEmpty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/dao/SYSContactDao;-><init>(Landroid/content/Context;)V

    const-string v0, "sim"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->ACCOUNT_NAME_SIM:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->strEmpty:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->OPE_ADD:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->OPE_UPDATE:I

    iput-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDao;

    invoke-static {p1}, Lcom/tencent/qqpim/dao/SYSContactGroupDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/dao/SYSContactGroupDao;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDao;

    return-void
.end method

.method private clearEntity(Lcom/tencent/qqpim/interfaces/IEntity;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "SYSContactDaoV2"

    const-string v3, "clearEntity enter"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "raw_contact_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    const-string v1, "SYSContactDaoV2"

    const-string v2, "clearEntity enter"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v0

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearEntity Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private closeCursor()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "close Cursor  Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getEmail(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    :try_start_0
    new-instance v1, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v1}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v0, 0x0

    const-string v2, "EMAIL"

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v2, "data2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    const-string v0, "HOME"

    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V

    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const-string v0, "CELL"

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_3

    const-string v0, "WORK"

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const-string v0, "OTHER"

    goto :goto_0

    :cond_4
    if-nez v2, :cond_0

    const-string v0, "data3"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getEmail Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getEvent(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V
    .locals 4

    :try_start_0
    const-string v0, "data2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v1}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v2, 0x0

    const-string v3, "BDAY"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getEvent Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getGroupMemberShip(Landroid/database/Cursor;Ljava/lang/StringBuffer;)I
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "data1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDao;

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/dao/SYSContactGroupDao;->getGroupNameByGroupId(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SYSContactDaoV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getGroupMemberShip Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getHuaweiU8550QQ(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v1, 0x0

    const-string v2, "X-TC-IM"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v1, "QQ"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v1, "data8"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getEmail Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getIM(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v1}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v2, 0x0

    const-string v3, "X-TC-IM"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v2, "data5"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "AIM"

    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V

    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    const-string v0, "GTALK"

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    const-string v0, "ICQ"

    goto :goto_0

    :cond_3
    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    const-string v0, "JABBER"

    goto :goto_0

    :cond_4
    if-ne v2, v4, :cond_5

    const-string v0, "MSN"

    goto :goto_0

    :cond_5
    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    const-string v0, "X-NETMEETING"

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    const-string v0, "QQ"

    goto :goto_0

    :cond_7
    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    const-string v0, "SKYPE"

    goto :goto_0

    :cond_8
    if-ne v2, v5, :cond_9

    const-string v0, "YAHOO"

    goto :goto_0

    :cond_9
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v2, "data6"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getEmail Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getName(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V
    .locals 4

    :try_start_0
    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v1}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v2, 0x0

    const-string v3, "FN"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V

    :cond_0
    new-instance v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;

    invoke-direct {v0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;-><init>()V

    const-string v1, "data2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->FIRSTNAME:Ljava/lang/String;

    :cond_1
    const-string v1, "data5"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->MIDDLENAME:Ljava/lang/String;

    :cond_2
    const-string v1, "data3"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->LASTNAME:Ljava/lang/String;

    :cond_3
    const-string v1, "data4"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->PREFIX:Ljava/lang/String;

    :cond_4
    const-string v1, "data6"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->SUFFIX:Ljava/lang/String;

    :cond_5
    new-instance v1, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v1}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v2, 0x0

    const-string v3, "N"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->getStructedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getName Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNickName(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v1, 0x0

    const-string v2, "NICKNAME"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v1, "data1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNickName Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNote(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v1, 0x0

    const-string v2, "NOTE"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v1, "data1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getEmail Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getOperationFromAddress(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;
    .locals 11

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v3, 0x64

    if-ne p3, v3, :cond_9

    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {p1, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    const-string v0, ";"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v6, v2

    move v3, v2

    move v0, v2

    :goto_1
    if-nez v3, :cond_1

    array-length v3, v8

    if-lt v6, v3, :cond_a

    :cond_1
    if-nez v0, :cond_f

    const-string v1, "data3"

    invoke-virtual {v5, v1, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    move v2, v0

    move-object v0, v1

    :goto_2
    const-string v1, "data2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;

    invoke-virtual {p1, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->CITY:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "data7"

    iget-object v3, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->CITY:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_2
    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->COUNTRY:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "data10"

    iget-object v3, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->COUNTRY:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_3
    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->NEIGHBORHOOD:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "data6"

    iget-object v3, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->NEIGHBORHOOD:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_4
    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POBOX:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "data5"

    iget-object v3, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POBOX:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_5
    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POSTCODE:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v2, "data9"

    iget-object v3, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POSTCODE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_6
    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->REGION:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v2, "data8"

    iget-object v3, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->REGION:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_7
    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->STREET:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v2, "data4"

    iget-object v1, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->STREET:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_8
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_9
    const/16 v3, 0x65

    if-ne p3, v3, :cond_0

    const-string v3, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    aget-object v3, v8, v6

    const-string v9, "WORK"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v1

    move v3, v4

    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v10, v0

    move v0, v3

    move v3, v10

    goto/16 :goto_1

    :cond_b
    aget-object v3, v8, v6

    const-string v9, "HOME"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v0, v1

    move v3, v1

    goto :goto_3

    :cond_c
    aget-object v3, v8, v6

    const-string v9, "OTHER"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    aget-object v3, v8, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    const/4 v0, 0x3

    move v3, v0

    move v0, v1

    goto :goto_3

    :cond_e
    move v3, v0

    move v0, v2

    goto :goto_3

    :cond_f
    move v2, v0

    move-object v0, v5

    goto/16 :goto_2

    :cond_10
    move-object v0, v5

    goto/16 :goto_2
.end method

.method private getOperationFromEmail(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;
    .locals 11

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v3, 0x64

    if-ne p3, v3, :cond_2

    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "data1"

    invoke-virtual {p1, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {p1, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string v0, ";"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v6, v2

    move v3, v2

    move v0, v2

    :goto_1
    if-nez v3, :cond_1

    array-length v3, v8

    if-lt v6, v3, :cond_3

    :cond_1
    if-nez v0, :cond_9

    const-string v1, "data3"

    invoke-virtual {v5, v1, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    move v2, v0

    move-object v0, v1

    :goto_2
    const-string v1, "data2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v3, 0x65

    if-ne p3, v3, :cond_0

    const-string v3, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0

    :cond_3
    aget-object v3, v8, v6

    const-string v9, "HOME"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    move v3, v1

    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v10, v0

    move v0, v3

    move v3, v10

    goto :goto_1

    :cond_4
    aget-object v3, v8, v6

    const-string v9, "WORK"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    move v3, v4

    goto :goto_3

    :cond_5
    aget-object v3, v8, v6

    const-string v9, "CELL"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x4

    move v3, v0

    move v0, v1

    goto :goto_3

    :cond_6
    aget-object v3, v8, v6

    const-string v9, "OTHER"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    aget-object v3, v8, v6

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const/4 v0, 0x3

    move v3, v0

    move v0, v1

    goto :goto_3

    :cond_8
    move v3, v0

    move v0, v2

    goto :goto_3

    :cond_9
    move v2, v0

    move-object v0, v5

    goto :goto_2

    :cond_a
    move-object v0, v5

    goto :goto_2
.end method

.method private getOperationFromEvent(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;
    .locals 6

    const/4 v5, 0x3

    const/4 v3, 0x2

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p3, v1, :cond_1

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/tencent/qqpim/issue/IssueSettings;->birthdayDisplayError:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1, v3}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "data1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x65

    if-ne p3, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {p1, v3}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private getOperationFromIM(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;
    .locals 9

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p3, v1, :cond_2

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, -0x1

    if-eqz v4, :cond_e

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v8, v0

    move v0, v3

    move v3, v8

    :goto_1
    if-nez v0, :cond_1

    array-length v0, v5

    if-lt v3, v0, :cond_3

    :cond_1
    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    const-string v0, "data6"

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :goto_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getPhoneType()Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    move-result-object v2

    sget-object v3, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->HUAWEI_U8500:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    if-ne v2, v3, :cond_d

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p2, v0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOperationFromQQ_ForHuaweiU8550(IILjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v1, 0x65

    if-ne p3, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    aget-object v6, v5, v3

    const-string v7, "QQ"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v1, 0x4

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    aget-object v6, v5, v3

    const-string v7, "MSN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    aget-object v6, v5, v3

    const-string v7, "AIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    aget-object v6, v5, v3

    const-string v7, "GTALK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v1, 0x5

    goto :goto_4

    :cond_7
    aget-object v6, v5, v3

    const-string v7, "ICQ"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v1, 0x6

    goto :goto_4

    :cond_8
    aget-object v6, v5, v3

    const-string v7, "SKYPE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v1, 0x3

    goto :goto_4

    :cond_9
    aget-object v6, v5, v3

    const-string v7, "JABBER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v1, 0x7

    goto :goto_4

    :cond_a
    aget-object v6, v5, v3

    const-string v7, "YAHOO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v1, 0x2

    goto :goto_4

    :cond_b
    aget-object v6, v5, v3

    const-string v7, "X-NETMEETING"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/16 v1, 0x8

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    const-string v2, "data5"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto/16 :goto_3

    :cond_e
    move-object v0, v2

    goto/16 :goto_2
.end method

.method private getOperationFromName(Lcom/tencent/qqpim/object/Record;Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;
    .locals 4

    const/4 v3, 0x2

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p4, v1, :cond_7

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v1, "data1"

    invoke-virtual {p1, v3}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_1
    if-eqz p2, :cond_6

    new-instance v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;

    invoke-virtual {p2, v3}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->FIRSTNAME:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->FIRSTNAME:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "data2"

    iget-object v3, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->FIRSTNAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_2
    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->MIDDLENAME:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->MIDDLENAME:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "data5"

    iget-object v3, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->MIDDLENAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_3
    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->LASTNAME:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->LASTNAME:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "data3"

    iget-object v3, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->LASTNAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_4
    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->PREFIX:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->PREFIX:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "data4"

    iget-object v3, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_5
    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->SUFFIX:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->SUFFIX:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "data6"

    iget-object v1, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Name;->SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_6
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_7
    const/16 v1, 0x65

    if-ne p4, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getOperationFromNickname(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p3, v1, :cond_1

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x65

    if-ne p3, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method private getOperationFromNote(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p3, v1, :cond_1

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x65

    if-ne p3, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method private getOperationFromORG(Lcom/tencent/qqpim/object/Record;Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;
    .locals 11

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v3, 0x64

    if-ne p4, v3, :cond_4

    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_1
    :goto_1
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    if-eqz p1, :cond_b

    invoke-virtual {p1, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string v0, ";"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v6, v2

    move v3, v2

    move v0, v2

    :goto_2
    if-nez v3, :cond_2

    array-length v3, v8

    if-lt v6, v3, :cond_5

    :cond_2
    if-nez v0, :cond_9

    const-string v1, "data3"

    invoke-virtual {v5, v1, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    move v2, v0

    move-object v0, v1

    :goto_3
    const-string v1, "data2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {p1, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :goto_4
    if-eqz p2, :cond_3

    const-string v1, "data4"

    invoke-virtual {p2, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v3, 0x65

    if-ne p4, v3, :cond_1

    const-string v3, "raw_contact_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_1

    :cond_5
    aget-object v3, v8, v6

    const-string v9, "WORK"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v1

    move v3, v1

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move v10, v0

    move v0, v3

    move v3, v10

    goto :goto_2

    :cond_6
    aget-object v3, v8, v6

    const-string v9, "OTHER"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    aget-object v3, v8, v6

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    move v0, v1

    move v3, v4

    goto :goto_5

    :cond_8
    move v3, v0

    move v0, v2

    goto :goto_5

    :cond_9
    move v2, v0

    move-object v0, v5

    goto :goto_3

    :cond_a
    move-object v0, v5

    goto :goto_3

    :cond_b
    move-object v0, v5

    goto :goto_4
.end method

.method private getOperationFromPhone(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p3, v1, :cond_2

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {p1, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getPhoneTypeFromLabel(Ljava/lang/String;)I

    move-result v2

    const-string v3, "data2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/qqpim/object/Record;->isPref()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "is_super_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :goto_1
    if-nez v2, :cond_1

    const-string v2, "data3"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v1, 0x65

    if-ne p3, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v3, "is_primary"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "is_super_primary"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_1
.end method

.method private getOperationFromPhoto(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p3, v1, :cond_1

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data15"

    invoke-virtual {p1}, Lcom/tencent/qqpim/object/Record;->getBinaryData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x65

    if-ne p3, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method private getOperationFromQQ_ForHuaweiU8550(IILjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/qqnumber"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data8"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method private getOperationFromWebsite(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p3, v1, :cond_1

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x65

    if-ne p3, v1, :cond_0

    const-string v1, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method private getOrganization(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v1}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v2, 0x0

    const-string v3, "ORG"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v2, "data2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v5, :cond_2

    const-string v0, "WORK"

    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V

    const-string v0, "data4"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v1}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v2, 0x0

    const-string v3, "TITLE"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-ne v2, v4, :cond_3

    const-string v0, "OTHER"

    goto :goto_0

    :cond_3
    if-nez v2, :cond_0

    const-string v0, "data3"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getEmail Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getPhone(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v3}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v4, 0x0

    const-string v5, "TEL"

    invoke-virtual {v3, v4, v5}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v4, "data2"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "is_primary"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v2, :cond_0

    move v1, v2

    :cond_0
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    const-string v0, "WORK"

    :cond_1
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v3, v2, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/object/Record;->setPref(Z)V

    :cond_2
    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v3, v1, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V

    :goto_1
    return-void

    :cond_3
    const/16 v5, 0x11

    if-ne v4, v5, :cond_4

    const-string v0, "CELL;WORK"

    goto :goto_0

    :cond_4
    const/16 v5, 0x12

    if-ne v4, v5, :cond_5

    const-string v0, "PAGER;WORK"

    goto :goto_0

    :cond_5
    const/16 v5, 0x13

    if-ne v4, v5, :cond_6

    const-string v0, "X-ASSISTANT"

    goto :goto_0

    :cond_6
    const/16 v5, 0x8

    if-ne v4, v5, :cond_7

    const-string v0, "X-CALLBACK"

    goto :goto_0

    :cond_7
    const/16 v5, 0x9

    if-ne v4, v5, :cond_8

    const-string v0, "CAR"

    goto :goto_0

    :cond_8
    const/16 v5, 0xa

    if-ne v4, v5, :cond_9

    const-string v0, "X-COMPANY"

    goto :goto_0

    :cond_9
    const/4 v5, 0x5

    if-ne v4, v5, :cond_a

    const-string v0, "FAX;HOME"

    goto :goto_0

    :cond_a
    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    const-string v0, "FAX;WORK"

    goto :goto_0

    :cond_b
    if-ne v4, v2, :cond_c

    const-string v0, "HOME"

    goto :goto_0

    :cond_c
    const/16 v2, 0xb

    if-ne v4, v2, :cond_d

    const-string v0, "X-ISDN"

    goto :goto_0

    :cond_d
    const/16 v2, 0xc

    if-ne v4, v2, :cond_e

    const-string v0, "X-MAIN"

    goto :goto_0

    :cond_e
    if-ne v4, v6, :cond_f

    const-string v0, "CELL"

    goto :goto_0

    :cond_f
    const/4 v2, 0x7

    if-ne v4, v2, :cond_10

    const-string v0, "OTHER"

    goto :goto_0

    :cond_10
    const/16 v2, 0xd

    if-ne v4, v2, :cond_11

    const-string v0, "FAX"

    goto :goto_0

    :cond_11
    const/4 v2, 0x6

    if-ne v4, v2, :cond_12

    const-string v0, "PAGER"

    goto :goto_0

    :cond_12
    const/16 v2, 0xe

    if-ne v4, v2, :cond_13

    const-string v0, "RADIO"

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0xf

    if-ne v4, v2, :cond_14

    const-string v0, "X-NETMEETING"

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0x10

    if-ne v4, v2, :cond_15

    const-string v0, "X-TTY"

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0x14

    if-ne v4, v2, :cond_16

    const-string v0, "X-MMS"

    goto/16 :goto_0

    :cond_16
    if-nez v4, :cond_1

    const-string v0, "data3"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getEmail Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getPhoto(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V
    .locals 4

    :try_start_0
    const-string v0, "data15"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v1}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v2, 0x0

    const-string v3, "PHOTO"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/object/Record;->putBinaryData([B)V

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getEmail Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPostalAddress(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v0, "SYSContactDaoV2"

    const-string v1, "getPostalAddress enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;

    invoke-direct {v1}, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;-><init>()V

    const-string v2, "data5"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POBOX:Ljava/lang/String;

    :cond_0
    const-string v2, "data6"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->NEIGHBORHOOD:Ljava/lang/String;

    :cond_1
    const-string v2, "data4"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->STREET:Ljava/lang/String;

    :cond_2
    const-string v2, "data7"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->CITY:Ljava/lang/String;

    :cond_3
    const-string v2, "data8"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->REGION:Ljava/lang/String;

    :cond_4
    const-string v2, "data9"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POSTCODE:Ljava/lang/String;

    :cond_5
    const-string v2, "data10"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->COUNTRY:Ljava/lang/String;

    :cond_6
    new-instance v2, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v2}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v3, 0x0

    const-string v4, "ADR"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->getStructedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v1, "data2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v5, :cond_8

    const-string v0, "HOME"

    :cond_7
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "SYSContactDaoV2"

    const-string v1, "getPostalAddress leave"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    if-ne v1, v6, :cond_9

    :try_start_1
    const-string v0, "WORK"

    goto :goto_0

    :cond_9
    const/4 v3, 0x3

    if-ne v1, v3, :cond_a

    const-string v0, "OTHER"

    goto :goto_0

    :cond_a
    if-nez v1, :cond_7

    const-string v0, "data3"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPostalAddress Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getRelation(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V
    .locals 0

    return-void
.end method

.method private getWebsite(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v1, 0x0

    const-string v2, "URL"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v1, "data1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWebsite Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleOperationsFromCategory(Ljava/util/ArrayList;Lcom/tencent/qqpim/object/Record;II)V
    .locals 9

    const/16 v8, 0x65

    const/16 v7, 0x64

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDao;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->interpretGroupNames(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDao;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/dao/SYSContactGroupDao;->getGroupIdByGroupName(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-ne p4, v7, :cond_4

    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_3
    :goto_1
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "data1"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-ne p4, v8, :cond_3

    const-string v3, "raw_contact_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDao;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/dao/SYSContactGroupDao;->addGroup(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDao;

    invoke-virtual {v0}, Lcom/tencent/qqpim/dao/SYSContactGroupDao;->readAllGroups()V

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-ne p4, v7, :cond_7

    const-string v4, "raw_contact_id"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :cond_6
    :goto_2
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v4, "data1"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    if-ne p4, v8, :cond_6

    const-string v4, "raw_contact_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_2
.end method

.method private handleOperationsFromCategoryFromGroupIds(Ljava/util/ArrayList;Ljava/util/List;II)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDao;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/16 v3, 0x64

    if-ne p4, v3, :cond_4

    const-string v3, "raw_contact_id"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    :cond_3
    :goto_1
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v3, "data1"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/16 v3, 0x65

    if-ne p4, v3, :cond_3

    const-string v3, "raw_contact_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    goto :goto_1
.end method

.method private insertBatchIds(Ljava/util/ArrayList;)[J
    .locals 14

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v4, v9, [J

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v6, v2

    :goto_0
    if-lt v6, v9, :cond_0

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    if-lt v2, v9, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "blank "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v4

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/object/SYSContact;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v3, "aggregation_mode"

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v3, "dirty"

    const-string v11, "1"

    invoke-virtual {v1, v3, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/qqpim/object/SYSContact;->initData()V

    invoke-virtual {v0}, Lcom/tencent/qqpim/object/SYSContact;->isStarred()Z

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/qqpim/object/SYSContact;->getAccountName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    invoke-virtual {v0}, Lcom/tencent/qqpim/object/SYSContact;->getAccountType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    const-string v11, "account_name"

    invoke-virtual {v0}, Lcom/tencent/qqpim/object/SYSContact;->getAccountName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v11, "account_type"

    invoke-virtual {v0}, Lcom/tencent/qqpim/object/SYSContact;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_3
    const-string v3, "starred"

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_4
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ops.add i = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-object v0, v5

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-object v0, v5

    goto/16 :goto_2

    :cond_2
    aget-object v1, v0, v2

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v4, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ids = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v5, v4, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    move v0, v1

    move-object v1, v3

    goto :goto_3

    :cond_4
    move v0, v2

    move-object v1, v3

    goto :goto_3
.end method

.method private queryStaredById(Ljava/lang/String;)Lcom/tencent/qqpim/dao/QueryAccount;
    .locals 7

    const/4 v6, 0x0

    const-string v0, "SYSContactDaoV2"

    const-string v1, "queryStaredById  enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "starred"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "custom_ringtone"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/tencent/qqpim/dao/QueryAccount;

    invoke-direct {v0}, Lcom/tencent/qqpim/dao/QueryAccount;-><init>()V

    iput v1, v0, Lcom/tencent/qqpim/dao/QueryAccount;->starred:I

    iput-object v2, v0, Lcom/tencent/qqpim/dao/QueryAccount;->name:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/qqpim/dao/QueryAccount;->type:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/qqpim/dao/QueryAccount;->ringtone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    const-string v1, "SYSContactDaoV2"

    const-string v2, "queryStaredById leave"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    const-string v0, "SYSContactDaoV2"

    const-string v1, "queryStaredById leave"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryStaredById Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    const-string v0, "SYSContactDaoV2"

    const-string v1, "queryStaredById leave"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    const-string v1, "SYSContactDaoV2"

    const-string v2, "queryStaredById leave"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lcom/tencent/qqpim/interfaces/IEntity;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    const-string v0, "SYSContactDaoV2"

    const-string v1, "add  enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "SYSContactDaoV2"

    const-string v1, "add  leave entity = null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v6

    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v5, Lcom/tencent/qqpim/dao/QueryAccount;

    invoke-direct {v5}, Lcom/tencent/qqpim/dao/QueryAccount;-><init>()V

    const/16 v3, 0x64

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOperationFromEntity(Lcom/tencent/qqpim/interfaces/IEntity;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicBoolean;Lcom/tencent/qqpim/dao/QueryAccount;)V

    iget-object v0, v5, Lcom/tencent/qqpim/dao/QueryAccount;->type:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/tencent/qqpim/dao/QueryAccount;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/tencent/qqpim/dao/QueryAccount;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/tencent/qqpim/dao/QueryAccount;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/4 v1, 0x0

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "dirty"

    const-string v7, "1"

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v7, "starred"

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_1
    invoke-virtual {v3, v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "custom_ringtone"

    iget-object v4, v5, Lcom/tencent/qqpim/dao/QueryAccount;->ringtone:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_2
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_3
    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add  leave strEntityId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string v0, "0"

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "dirty"

    const-string v7, "1"

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v7, "starred"

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_4
    invoke-virtual {v3, v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "account_name"

    iget-object v4, v5, Lcom/tencent/qqpim/dao/QueryAccount;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "account_type"

    iget-object v4, v5, Lcom/tencent/qqpim/dao/QueryAccount;->type:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "custom_ringtone"

    iget-object v4, v5, Lcom/tencent/qqpim/dao/QueryAccount;->ringtone:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add RemoteException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_3

    :cond_4
    :try_start_2
    const-string v0, "0"
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add OperationApplicationException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_3

    :catch_2
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v0, v6

    goto/16 :goto_3
.end method

.method public add(Ljava/util/ArrayList;Ljava/util/ArrayList;[I)Z
    .locals 11

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->insertBatchIds(Ljava/util/ArrayList;)[J

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-lt v6, v7, :cond_1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "detail "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v9

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    :goto_2
    if-lt v0, v7, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    aget-wide v0, v8, v6

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/object/SYSContact;

    invoke-virtual {p2, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v6

    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/object/SYSContact;->setId(Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/qqpim/dao/QueryAccount;

    invoke-direct {v5}, Lcom/tencent/qqpim/dao/QueryAccount;-><init>()V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/interfaces/IEntity;

    const/16 v3, 0x65

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOperationFromEntity(Lcom/tencent/qqpim/interfaces/IEntity;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicBoolean;Lcom/tencent/qqpim/dao/QueryAccount;)V

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    const-string v1, "-1"

    :try_start_1
    aget-wide v3, v8, v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    :goto_4
    if-eqz v2, :cond_5

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v2

    aget v3, p3, v0

    if-eq v2, v3, :cond_4

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v2

    aput v2, p3, v0

    :cond_4
    :goto_5
    :try_start_2
    invoke-virtual {p2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_2
    move-exception v2

    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v2

    aput v2, p3, v0

    goto :goto_5

    :catch_3
    move-exception v1

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v1

    aput v1, p3, v0

    goto :goto_6
.end method

.method public delete(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    .locals 5

    const-string v0, "SYSContactDaoV2"

    const-string v1, "delete enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_2
    const-string v0, "SYSContactDaoV2"

    const-string v1, "delete leave"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0
.end method

.method public getAllEntityId([Ljava/lang/String;)Ljava/util/List;
    .locals 9

    const/4 v8, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNetForZTE:Z

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mode_id"

    aput-object v4, v2, v3

    const-string v3, "deleted=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    :goto_1
    return-object v6

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v8, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllEntityId Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    throw v0

    :cond_3
    :try_start_3
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "account_name"

    aput-object v4, v2, v3

    const-string v3, "deleted=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDao;

    invoke-virtual {v0}, Lcom/tencent/qqpim/dao/SYSContactGroupDao;->readAllGroups()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    goto/16 :goto_1

    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNet:Z

    if-eqz v1, :cond_8

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/issue/IssueSettings;->isContainedAccountName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllEntityId Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    goto/16 :goto_1

    :cond_8
    if-eqz v0, :cond_9

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_9
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    throw v0
.end method

.method public getGroupsMap(Ljava/util/HashMap;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getOperationFromEntity(Lcom/tencent/qqpim/interfaces/IEntity;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicBoolean;Lcom/tencent/qqpim/dao/QueryAccount;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v0, "SYSContactDaoV2"

    const-string v1, "getOperationFromEntity enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/16 v0, 0x64

    if-lt p3, v0, :cond_0

    const/16 v0, 0x65

    if-le p3, v0, :cond_1

    :cond_0
    const-string v0, "SYSContactDaoV2"

    const-string v1, "getOperationFromEntity leave  \u53c2\u6570\u4e0d\u5408\u6cd5 "

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToFirst()Z

    move-object v0, v3

    move-object v1, v3

    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->isEditGroupNumberData()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "entity.isEditGroupNumberData()"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getGroupIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getGroupIds()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, p2, v4, v7, p3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->handleOperationsFromCategoryFromGroupIds(Ljava/util/ArrayList;Ljava/util/List;II)V

    :cond_3
    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    invoke-direct {p0, v1, v0, v7, p3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOperationFromName(Lcom/tencent/qqpim/object/Record;Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1b

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    :goto_2
    move v4, v2

    :goto_3
    if-lt v4, v1, :cond_1c

    :cond_7
    :goto_4
    const-string v0, "SYSContactDaoV2"

    const-string v1, "getOperationFromEntity enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    :try_start_1
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/object/Record;

    move-result-object v4

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToNext()Z

    if-eqz v4, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v1, v4

    move-object v4, v3

    :goto_5
    if-eqz v4, :cond_2

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOperationFromEntity  Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    :try_start_2
    const-string v9, "N"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move-object v0, v4

    move-object v4, v3

    goto :goto_5

    :cond_a
    const-string v9, "TEL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-direct {p0, v4, v7, p3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOperationFromPhone(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto :goto_5

    :cond_b
    const-string v9, "ADR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-direct {p0, v4, v7, p3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOperationFromAddress(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto :goto_5

    :cond_c
    const-string v9, "EMAIL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-direct {p0, v4, v7, p3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOperationFromEmail(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto :goto_5

    :cond_d
    const-string v9, "NICKNAME"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-direct {p0, v4, v7, p3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOperationFromNickname(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto :goto_5

    :cond_e
    const-string v9, "NOTE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-direct {p0, v4, v7, p3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOperationFromNote(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto :goto_5

    :cond_f
    const-string v9, "ORG"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v3

    goto :goto_5

    :cond_10
    const-string v9, "TITLE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v3

    goto/16 :goto_5

    :cond_11
    const-string v9, "PHOTO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    sget-boolean v8, Lcom/tencent/qqpim/issue/IssueSettings;->photoDownloadTophoneFatalError:Z

    if-nez v8, :cond_1a

    invoke-direct {p0, v4, v7, p3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOperationFromPhoto(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto/16 :goto_5

    :cond_12
    const-string v9, "URL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-direct {p0, v4, v7, p3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOperationFromWebsite(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto/16 :goto_5

    :cond_13
    const-string v9, "X-TC-IM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-direct {p0, v4, v7, p3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOperationFromIM(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto/16 :goto_5

    :cond_14
    const-string v9, "BDAY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-direct {p0, v4, v7, p3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOperationFromEvent(Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto/16 :goto_5

    :cond_15
    const-string v9, "X-FOCUS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "1"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz p4, :cond_1a

    invoke-virtual {p4, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v4, v3

    goto/16 :goto_5

    :cond_16
    const-string v9, "CATEGORIES"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->isEditGroupNumberData()Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-direct {p0, p2, v4, v7, p3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->handleOperationsFromCategory(Ljava/util/ArrayList;Lcom/tencent/qqpim/object/Record;II)V

    move-object v4, v3

    goto/16 :goto_5

    :cond_17
    const-string v9, "ACCOUNTNAME"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p5, Lcom/tencent/qqpim/dao/QueryAccount;->name:Ljava/lang/String;

    move-object v4, v3

    goto/16 :goto_5

    :cond_18
    const-string v9, "ACCOUNTTYPE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p5, Lcom/tencent/qqpim/dao/QueryAccount;->type:Ljava/lang/String;

    move-object v4, v3

    goto/16 :goto_5

    :cond_19
    const-string v9, "RINGTONE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p5, Lcom/tencent/qqpim/dao/QueryAccount;->ringtone:Ljava/lang/String;

    :cond_1a
    move-object v4, v3

    goto/16 :goto_5

    :cond_1b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto/16 :goto_2

    :cond_1c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1e

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/object/Record;

    move-object v2, v0

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1f

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/object/Record;

    :goto_7
    invoke-direct {p0, v2, v0, v7, p3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOperationFromORG(Lcom/tencent/qqpim/object/Record;Lcom/tencent/qqpim/object/Record;II)Landroid/content/ContentProviderOperation;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1d
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_3

    :cond_1e
    move-object v2, v3

    goto :goto_6

    :cond_1f
    move-object v0, v3

    goto :goto_7
.end method

.method public getPhoneTypeFromLabel(Ljava/lang/String;)I
    .locals 14

    const/16 v8, 0xd

    const/4 v9, 0x7

    const/4 v1, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v9

    :cond_0
    :try_start_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move v10, v7

    move v0, v7

    move v2, v7

    move v3, v7

    move v4, v7

    move v5, v7

    move v6, v7

    :goto_1
    array-length v12, v11

    if-lt v10, v12, :cond_2

    if-eqz v6, :cond_13

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    :cond_1
    :goto_2
    move v9, v1

    goto :goto_0

    :cond_2
    aget-object v12, v11, v10

    const-string v13, "HOME"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v6, v1

    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    aget-object v12, v11, v10

    const-string v13, "WORK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v5, v1

    goto :goto_3

    :cond_5
    aget-object v12, v11, v10

    const-string v13, "CELL"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v4, v1

    goto :goto_3

    :cond_6
    aget-object v12, v11, v10

    const-string v13, "FAX"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move v2, v1

    goto :goto_3

    :cond_7
    aget-object v12, v11, v10

    const-string v13, "PAGER"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move v3, v1

    goto :goto_3

    :cond_8
    aget-object v12, v11, v10

    const-string v13, "OTHER"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    move v0, v1

    goto :goto_3

    :cond_9
    aget-object v12, v11, v10

    const-string v13, "X-CALLBACK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v7, 0x8

    goto :goto_3

    :cond_a
    aget-object v12, v11, v10

    const-string v13, "CAR"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v7, 0x9

    goto :goto_3

    :cond_b
    aget-object v12, v11, v10

    const-string v13, "X-COMPANY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v7, 0xa

    goto :goto_3

    :cond_c
    aget-object v12, v11, v10

    const-string v13, "X-ISDN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v7, 0xb

    goto :goto_3

    :cond_d
    aget-object v12, v11, v10

    const-string v13, "X-MAIN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/16 v7, 0xc

    goto :goto_3

    :cond_e
    aget-object v12, v11, v10

    const-string v13, "RADIO"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/16 v7, 0xe

    goto/16 :goto_3

    :cond_f
    aget-object v12, v11, v10

    const-string v13, "X-TELEX"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/16 v7, 0xf

    goto/16 :goto_3

    :cond_10
    aget-object v12, v11, v10

    const-string v13, "X-TTY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    const/16 v7, 0x10

    goto/16 :goto_3

    :cond_11
    aget-object v12, v11, v10

    const-string v13, "X-ASSISTANT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    const/16 v7, 0x13

    goto/16 :goto_3

    :cond_12
    aget-object v12, v11, v10

    const-string v13, "X-MMS"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-eqz v12, :cond_3

    const/16 v7, 0x14

    goto/16 :goto_3

    :cond_13
    if-eqz v5, :cond_17

    if-eqz v2, :cond_14

    const/4 v1, 0x4

    goto/16 :goto_2

    :cond_14
    if-eqz v3, :cond_15

    const/16 v1, 0x12

    goto/16 :goto_2

    :cond_15
    if-eqz v4, :cond_16

    const/16 v1, 0x11

    goto/16 :goto_2

    :cond_16
    const/4 v1, 0x3

    goto/16 :goto_2

    :cond_17
    if-eqz v4, :cond_18

    const/4 v1, 0x2

    goto/16 :goto_2

    :cond_18
    if-eqz v3, :cond_19

    const/4 v1, 0x6

    goto/16 :goto_2

    :cond_19
    if-eqz v0, :cond_1b

    if-eqz v2, :cond_1a

    move v1, v8

    goto/16 :goto_2

    :cond_1a
    move v1, v9

    goto/16 :goto_2

    :cond_1b
    if-eqz v2, :cond_1c

    move v1, v8

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move v1, v7

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPhoneTypeFromLabel Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1c
    move v1, v7

    goto/16 :goto_2
.end method

.method public isExisted(Ljava/lang/String;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_id=? and deleted=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    move v0, v6

    :goto_0
    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isExisted Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    move v0, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    throw v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public lookupFirstContactIDByPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/tencent/qqpim/utils/QQPimUtils;->getReversePhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "raw_contact_id"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const/4 v1, 0x1

    aput-object v0, v4, v1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "data1=? or data4=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v6

    :goto_0
    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->isExisted(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lookupFirstContactIdByPhone Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    throw v0

    :cond_2
    move-object v0, v6

    goto :goto_0
.end method

.method public lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    sget-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->anonymousDraftAfterBackupDisplayErrorName:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return-object v6

    :cond_0
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "display_name"

    aput-object v3, v2, v0

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    :goto_2
    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lookupFirstContactNameByPhone  Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    move-object v0, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    throw v0

    :cond_1
    move-object v0, v6

    goto :goto_1
.end method

.method public query(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IEntity;
    .locals 13

    const/4 v6, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    const-string v0, "SYSContactDaoV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query  enter strEntityId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->queryStaredById(Ljava/lang/String;)Lcom/tencent/qqpim/dao/QueryAccount;

    move-result-object v9

    if-eqz v9, :cond_0

    iget v0, v9, Lcom/tencent/qqpim/dao/QueryAccount;->starred:I

    if-gez v0, :cond_1

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    new-instance v7, Lcom/tencent/qqpim/object/SYSContact;

    invoke-direct {v7}, Lcom/tencent/qqpim/object/SYSContact;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x19

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "mimetype"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "raw_contact_id"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "is_primary"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "is_super_primary"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "data_version"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "data1"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "data2"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "data3"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "data4"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "data5"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "data6"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "data7"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "data8"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "data9"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "data10"

    aput-object v1, v2, v0

    const/16 v0, 0x10

    const-string v1, "data11"

    aput-object v1, v2, v0

    const/16 v0, 0x11

    const-string v1, "data12"

    aput-object v1, v2, v0

    const/16 v0, 0x12

    const-string v1, "data13"

    aput-object v1, v2, v0

    const/16 v0, 0x13

    const-string v1, "data14"

    aput-object v1, v2, v0

    const/16 v0, 0x14

    const-string v1, "data15"

    aput-object v1, v2, v0

    const/16 v0, 0x15

    const-string v1, "data_sync1"

    aput-object v1, v2, v0

    const/16 v0, 0x16

    const-string v1, "data_sync2"

    aput-object v1, v2, v0

    const/16 v0, 0x17

    const-string v1, "data_sync3"

    aput-object v1, v2, v0

    const/16 v0, 0x18

    const-string v1, "data_sync4"

    aput-object v1, v2, v0

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "raw_contact_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    const-string v2, "mimetype"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getEmail(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    :goto_2
    new-instance v1, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v1}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const-string v0, "X-FOCUS"

    invoke-virtual {v1, v11, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    iget v0, v9, Lcom/tencent/qqpim/dao/QueryAccount;->starred:I

    if-lez v0, :cond_14

    const-string v0, "1"

    :goto_3
    invoke-virtual {v1, v12, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {v7, v1}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const-string v1, "CATEGORIES"

    invoke-virtual {v0, v11, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V

    const-string v0, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query CATEGORY:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const-string v1, "ACCOUNTNAME"

    invoke-virtual {v0, v11, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    iget-object v1, v9, Lcom/tencent/qqpim/dao/QueryAccount;->name:Ljava/lang/String;

    invoke-virtual {v0, v12, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V

    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const-string v1, "ACCOUNTTYPE"

    invoke-virtual {v0, v11, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    iget-object v1, v9, Lcom/tencent/qqpim/dao/QueryAccount;->type:Ljava/lang/String;

    invoke-virtual {v0, v12, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V

    new-instance v0, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const-string v1, "RINGTONE"

    invoke-virtual {v0, v11, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    iget-object v1, v9, Lcom/tencent/qqpim/dao/QueryAccount;->ringtone:Ljava/lang/String;

    invoke-virtual {v0, v12, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V

    const-string v0, "SYSContactDaoV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query  leave entity.getCount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/tencent/qqpim/object/SYSContact;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v7, v10}, Lcom/tencent/qqpim/object/SYSContact;->setGroupIds(Ljava/util/List;)V

    :cond_5
    move-object v0, v7

    goto/16 :goto_0

    :cond_6
    :try_start_1
    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getEvent(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    goto/16 :goto_2

    :cond_7
    :try_start_3
    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v8}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getGroupMemberShip(Landroid/database/Cursor;Ljava/lang/StringBuffer;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    throw v0

    :cond_8
    :try_start_4
    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getIM(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V

    goto/16 :goto_1

    :cond_9
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getNickName(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V

    goto/16 :goto_1

    :cond_a
    const-string v1, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getNote(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V

    goto/16 :goto_1

    :cond_b
    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOrganization(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V

    goto/16 :goto_1

    :cond_c
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getPhone(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V

    goto/16 :goto_1

    :cond_d
    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->photoDownloadTophoneFatalError:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getPhoto(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V

    goto/16 :goto_1

    :cond_e
    const-string v1, "vnd.android.cursor.item/relation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getRelation(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V

    goto/16 :goto_1

    :cond_f
    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getName(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V

    goto/16 :goto_1

    :cond_10
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getPostalAddress(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V

    goto/16 :goto_1

    :cond_11
    const-string v1, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getWebsite(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V

    goto/16 :goto_1

    :cond_12
    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getPhoneType()Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;->HUAWEI_U8500:Lcom/tencent/qqpim/utils/QQPimUtils$PHONETYPE;

    if-ne v1, v2, :cond_3

    const-string v1, "vnd.android.cursor.item/qqnumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getHuaweiU8550QQ(Landroid/database/Cursor;Lcom/tencent/qqpim/object/SYSContact;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :cond_13
    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    move-object v0, v6

    goto/16 :goto_0

    :cond_14
    const-string v0, "0"

    goto/16 :goto_3
.end method

.method public query()Ljava/util/List;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getAllEntityId([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->query(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public queryNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const-string v0, "SYSContactDaoV2"

    const-string v1, "queryNameById  enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v2, v3

    const-string v3, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    :goto_1
    const-string v1, "SYSContactDaoV2"

    const-string v2, "queryNameById leave"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryNameById Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    throw v0

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method

.method public queryNumber()I
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "deleted = 0 AND (account_name is null or account_name <> \'SIM\')"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryNumber Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->closeCursor()V

    throw v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method public update(Lcom/tencent/qqpim/interfaces/IEntity;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    .locals 7

    const-string v0, "SYSContactDaoV2"

    const-string v1, "update enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->isExisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "SYSContactDaoV2"

    const-string v1, "update leave ENUM_IDaoReturnValue.ENTITY_NOT_FOUND"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_1
    sget-object v6, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v5, Lcom/tencent/qqpim/dao/QueryAccount;

    invoke-direct {v5}, Lcom/tencent/qqpim/dao/QueryAccount;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->clearEntity(Lcom/tencent/qqpim/interfaces/IEntity;)Z

    const/16 v3, 0x65

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->getOperationFromEntity(Lcom/tencent/qqpim/interfaces/IEntity;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicBoolean;Lcom/tencent/qqpim/dao/QueryAccount;)V

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v3, "starred"

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v3, v5, Lcom/tencent/qqpim/dao/QueryAccount;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "account_type"

    iget-object v3, v5, Lcom/tencent/qqpim/dao/QueryAccount;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "custom_ringtone"

    iget-object v3, v5, Lcom/tencent/qqpim/dao/QueryAccount;->ringtone:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    const-string v1, "SYSContactDaoV2"

    const-string v2, "update leave ENUM_IDaoReturnValue.ACTION_SUCCEED"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "0"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update RemoteException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update OperationApplicationException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "SYSContactDaoV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_2
.end method
