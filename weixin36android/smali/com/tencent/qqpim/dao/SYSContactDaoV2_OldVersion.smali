.class public Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;
.super Lcom/tencent/qqpim/dao/SYSContactDao;


# instance fields
.field private final ACCOUNT_NAME:Ljava/lang/String;

.field private final ACCOUNT_TYPE:Ljava/lang/String;

.field private final AUTHORITY:Ljava/lang/String;

.field private final AUTHORITY_URI:Landroid/net/Uri;

.field private final COLUMN_ID:Ljava/lang/String;

.field private final COLUMN_MIMETYPES:Ljava/lang/String;

.field private final CONTENT_ITEM_TYPE_EMAIL:Ljava/lang/String;

.field private final CONTENT_ITEM_TYPE_GROUPMEMBERSHIP:Ljava/lang/String;

.field private final CONTENT_ITEM_TYPE_IM:Ljava/lang/String;

.field private final CONTENT_ITEM_TYPE_NAME:Ljava/lang/String;

.field private final CONTENT_ITEM_TYPE_NICKNAME:Ljava/lang/String;

.field private final CONTENT_ITEM_TYPE_NOTE:Ljava/lang/String;

.field private final CONTENT_ITEM_TYPE_ORG:Ljava/lang/String;

.field private final CONTENT_ITEM_TYPE_PHONE:Ljava/lang/String;

.field private final CONTENT_ITEM_TYPE_PHOTO:Ljava/lang/String;

.field private final CONTENT_ITEM_TYPE_POSTAL:Ljava/lang/String;

.field private final CONTENT_ITEM_TYPE_WEBSITE:Ljava/lang/String;

.field private InfoMap:Ljava/util/Map;

.field private final RAW_CONTACT_ID:Ljava/lang/String;

.field private final TABLE_DATA:Ljava/lang/String;

.field private final TABLE_RAW_CONTACTS:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/dao/SYSContactDao;-><init>(Landroid/content/Context;)V

    const-string v0, "com.android.contacts"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->AUTHORITY:Ljava/lang/String;

    const-string v0, "content://com.android.contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v0, "data"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->TABLE_DATA:Ljava/lang/String;

    const-string v0, "raw_contacts"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->TABLE_RAW_CONTACTS:Ljava/lang/String;

    const-string v0, "_id"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->COLUMN_ID:Ljava/lang/String;

    const-string v0, "mimetype"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->COLUMN_MIMETYPES:Ljava/lang/String;

    const-string v0, "raw_contact_id"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->RAW_CONTACT_ID:Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/email_v2"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->CONTENT_ITEM_TYPE_EMAIL:Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/im"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->CONTENT_ITEM_TYPE_IM:Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->CONTENT_ITEM_TYPE_POSTAL:Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/nickname"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->CONTENT_ITEM_TYPE_NICKNAME:Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/website"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->CONTENT_ITEM_TYPE_WEBSITE:Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/note"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->CONTENT_ITEM_TYPE_NOTE:Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/phone_v2"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->CONTENT_ITEM_TYPE_PHONE:Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/organization"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->CONTENT_ITEM_TYPE_ORG:Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/name"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->CONTENT_ITEM_TYPE_NAME:Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/photo"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->CONTENT_ITEM_TYPE_PHOTO:Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/group_membership"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->CONTENT_ITEM_TYPE_GROUPMEMBERSHIP:Ljava/lang/String;

    const-string v0, "account_name"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->ACCOUNT_NAME:Ljava/lang/String;

    const-string v0, "account_type"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->ACCOUNT_TYPE:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->InfoMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->InfoMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->InfoMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactEmail;

    invoke-direct {v2, p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactEmail;-><init>(Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->InfoMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactAdr;

    invoke-direct {v2, p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactAdr;-><init>(Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->InfoMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactOther;

    invoke-direct {v2, p0, v3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactOther;-><init>(Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactOther;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->InfoMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/website"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactOther;

    invoke-direct {v2, p0, v3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactOther;-><init>(Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactOther;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->InfoMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/note"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactOther;

    invoke-direct {v2, p0, v3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactOther;-><init>(Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactOther;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->InfoMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactTelPhone;

    invoke-direct {v2, p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactTelPhone;-><init>(Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->InfoMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactOrg;

    invoke-direct {v2, p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactOrg;-><init>(Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->InfoMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/name"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactName;

    invoke-direct {v2, p0, v3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactName;-><init>(Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactName;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->InfoMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactPhoto;

    invoke-direct {v2, p0, v3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactPhoto;-><init>(Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactPhoto;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->InfoMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/im"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactIM;

    invoke-direct {v2, p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactIM;-><init>(Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->InfoMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->AUTHORITY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->dealContactLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addContactInfo(Lcom/tencent/qqpim/interfaces/IEntity;J)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToFirst()Z

    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Landroid/content/ContentValues;

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    const-string v0, "Add Contact Information"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lRawContactId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/object/Record;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToNext()Z

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->getInfoTagType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->InfoMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactInfoDao;

    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/object/Record;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "N"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/object/Record;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToNext()Z

    :cond_4
    const-string v5, "vnd.android.cursor.item/organization"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/object/Record;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "TITLE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/object/Record;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->moveToNext()Z

    :cond_5
    if-eqz v0, :cond_2

    invoke-interface {v0, p2, p3, v4, v2}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactInfoDao;->getContentValues(JLjava/util/List;Ljava/util/List;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2
.end method

.method private static dealContactLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "FAX;WORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FAX;WORK"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FAX;HOME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FAX;HOME"

    goto :goto_0

    :cond_1
    const-string v0, "CELL;WORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CELL;WORK"

    goto :goto_0

    :cond_2
    const-string v0, "PAGER;WORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "PAGER;WORK"

    goto :goto_0

    :cond_3
    const-string v0, "HOME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "HOME"

    goto :goto_0

    :cond_4
    const-string v0, "CELL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CELL"

    goto :goto_0

    :cond_5
    const-string v0, "WORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "WORK"

    goto :goto_0

    :cond_6
    const-string v0, "PAGER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "PAGER"

    goto :goto_0

    :cond_7
    const-string v0, "OTHER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "OTHER"

    goto :goto_0

    :cond_8
    const-string v0, "AIM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "AIM"

    goto :goto_0

    :cond_9
    const-string v0, "MSN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "MSN"

    goto :goto_0

    :cond_a
    const-string v0, "YAHOO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "YAHOO"

    goto :goto_0

    :cond_b
    const-string v0, "SKYPE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "SKYPE"

    goto/16 :goto_0

    :cond_c
    const-string v0, "GTALK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "GTALK"

    goto/16 :goto_0

    :cond_d
    const-string v0, "QQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "QQ"

    goto/16 :goto_0

    :cond_e
    const-string v0, "ICQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "ICQ"

    goto/16 :goto_0

    :cond_f
    const-string v0, "JABBER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "JABBER"

    goto/16 :goto_0

    :cond_10
    const-string v0, "X-CALLBACK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "X-CALLBACK"

    goto/16 :goto_0

    :cond_11
    const-string v0, "CAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CAR"

    goto/16 :goto_0

    :cond_12
    const-string v0, "X-COMPANY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "X-COMPANY"

    goto/16 :goto_0

    :cond_13
    const-string v0, "X-ISDN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "X-ISDN"

    goto/16 :goto_0

    :cond_14
    const-string v0, "X-MAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "X-MAIN"

    goto/16 :goto_0

    :cond_15
    const-string v0, "FAX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "FAX"

    goto/16 :goto_0

    :cond_16
    const-string v0, "RADIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "RADIO"

    goto/16 :goto_0

    :cond_17
    const-string v0, "X-TTY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "X-TTY"

    goto/16 :goto_0

    :cond_18
    const-string v0, "X-TELEX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "X-TELEX"

    goto/16 :goto_0

    :cond_19
    const-string v0, "X-ASSISTANT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "X-ASSISTANT"

    goto/16 :goto_0

    :cond_1a
    const-string v0, "MEDIA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "MEDIA"

    goto/16 :goto_0

    :cond_1b
    const-string v0, "PREF"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private delContactInfo(J)I
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->contentResolver:Landroid/content/ContentResolver;

    const-string v3, "raw_contact_id= ?"

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "Delete Contact Information"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lRawContactId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x5c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getContactInfo(J)Lcom/tencent/qqpim/object/SYSContact;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->contentResolver:Landroid/content/ContentResolver;

    const-string v3, "raw_contact_id=?"

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/tencent/qqpim/object/SYSContact;

    invoke-direct {v2}, Lcom/tencent/qqpim/object/SYSContact;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/object/SYSContact;->setId(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v6

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    :cond_1
    const-string v0, "mimetype"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->InfoMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactInfoDao;

    if-eqz v0, :cond_2

    invoke-interface {v0, v3, v4}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion$ContactInfoDao;->read(Landroid/database/Cursor;Ljava/util/List;)V

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/object/Record;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private getInfoTagType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "FN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "N"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "vnd.android.cursor.item/name"

    goto :goto_0

    :cond_3
    const-string v1, "TEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "vnd.android.cursor.item/phone_v2"

    goto :goto_0

    :cond_4
    const-string v1, "PHOTO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "vnd.android.cursor.item/photo"

    goto :goto_0

    :cond_5
    const-string v1, "EMAIL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "vnd.android.cursor.item/email_v2"

    goto :goto_0

    :cond_6
    const-string v1, "ORG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "vnd.android.cursor.item/organization"

    goto :goto_0

    :cond_7
    const-string v1, "NOTE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "vnd.android.cursor.item/note"

    goto :goto_0

    :cond_8
    const-string v1, "URL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "vnd.android.cursor.item/website"

    goto :goto_0

    :cond_9
    const-string v1, "NICKNAME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "vnd.android.cursor.item/nickname"

    goto :goto_0

    :cond_a
    const-string v1, "ADR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    goto :goto_0

    :cond_b
    const-string v1, "X-TC-IM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "vnd.android.cursor.item/im"

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;
    .locals 1

    new-instance v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getNewRawContactId()J
    .locals 5

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "raw_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "account_name"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    const-string v2, "Get a new contact ID: "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lRawContactId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static parseRecordContent(Ljava/lang/String;)Ljava/util/List;
    .locals 8

    const/16 v7, 0x5c

    const/16 v6, 0x3b

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_4

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-ne v3, v6, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public add(Lcom/tencent/qqpim/interfaces/IEntity;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->getNewRawContactId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    const-string v0, "Add Contact"

    const-string v3, "begin"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->addContactInfo(Lcom/tencent/qqpim/interfaces/IEntity;J)Z

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Add Contact"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end  id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public add(Ljava/util/ArrayList;Ljava/util/ArrayList;[I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public delete(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    .locals 6

    const/4 v5, 0x1

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "Delete Contact"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "begin: _id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "raw_contacts"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "_id = ?"

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v2, "Delete Contact"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "end: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne v1, v5, :cond_1

    const-string v0, "succeed"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v5, :cond_2

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_1
    const-string v0, "failed"

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0
.end method

.method public getAllEntityId([Ljava/lang/String;)Ljava/util/List;
    .locals 8

    const/4 v4, 0x1

    const/4 v7, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "raw_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->contentResolver:Landroid/content/ContentResolver;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "deleted = ?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    goto :goto_0

    :cond_2
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public isExisted(Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v7

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "raw_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "_id = ? and deleted = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->contentResolver:Landroid/content/ContentResolver;

    new-array v2, v6, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v6

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_2
    const-string v1, "Contact Existed"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lRawContactId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is existed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_2
.end method

.method public lookupFirstContactIDByPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v6

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->contentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v3
.end method

.method public query(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IEntity;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->getContactInfo(J)Lcom/tencent/qqpim/object/SYSContact;

    move-result-object v0

    goto :goto_0
.end method

.method public query()Ljava/util/List;
    .locals 6

    const-string v0, "Query Contact"

    const-string v1, "begin"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->getAllEntityId([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    const-string v0, "Query Contact"

    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->getContactInfo(J)Lcom/tencent/qqpim/object/SYSContact;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public queryNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    const-string v2, "vnd.android.cursor.item/name"

    aput-object v2, v4, v0

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "data1"

    aput-object v5, v2, v3

    const-string v3, "raw_contact_id = ? and mimetype=?"

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "data1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "V2 queryNameById error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryNumber()I
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method public update(Lcom/tencent/qqpim/interfaces/IEntity;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    .locals 5

    const-string v0, "Update Contact"

    const-string v1, "begin"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "Update Contact"

    const-string v1, "The ID of the contact is invalidate!"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->isExisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->delContactInfo(J)I

    invoke-direct {p0, p1, v1, v2}, Lcom/tencent/qqpim/dao/SYSContactDaoV2_OldVersion;->addContactInfo(Lcom/tencent/qqpim/interfaces/IEntity;J)Z

    const-string v0, "Update Contact"

    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_3
    const-string v0, "Update Contact"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lRawContactId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not existed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0
.end method
