.class public Lcom/tencent/qqpim/object/SYSContact;
.super Lcom/tencent/qqpim/object/SYSEntity;


# static fields
.field public static final LABEL_AIM:Ljava/lang/String; = "AIM"

.field public static final LABEL_CAR:Ljava/lang/String; = "CAR"

.field public static final LABEL_CELL:Ljava/lang/String; = "CELL"

.field public static final LABEL_CELL_WORK:Ljava/lang/String; = "CELL;WORK"

.field public static final LABEL_FAX:Ljava/lang/String; = "FAX"

.field public static final LABEL_FAX_HOME:Ljava/lang/String; = "FAX;HOME"

.field public static final LABEL_FAX_WORK:Ljava/lang/String; = "FAX;WORK"

.field public static final LABEL_GTALK:Ljava/lang/String; = "GTALK"

.field public static final LABEL_HOME:Ljava/lang/String; = "HOME"

.field public static final LABEL_HOME_FAX:Ljava/lang/String; = "HOME;FAX"

.field public static final LABEL_ICQ:Ljava/lang/String; = "ICQ"

.field public static final LABEL_JABBER:Ljava/lang/String; = "JABBER"

.field public static final LABEL_MEDIA:Ljava/lang/String; = "MEDIA"

.field public static final LABEL_MSN:Ljava/lang/String; = "MSN"

.field public static final LABEL_OTHER:Ljava/lang/String; = "OTHER"

.field public static final LABEL_PAGER:Ljava/lang/String; = "PAGER"

.field public static final LABEL_PAGER_WORK:Ljava/lang/String; = "PAGER;WORK"

.field public static final LABEL_PREF:Ljava/lang/String; = "PREF"

.field public static final LABEL_QQ:Ljava/lang/String; = "QQ"

.field public static final LABEL_RADIO:Ljava/lang/String; = "RADIO"

.field public static final LABEL_SKYPE:Ljava/lang/String; = "SKYPE"

.field public static final LABEL_WORK:Ljava/lang/String; = "WORK"

.field public static final LABEL_WORK_FAX:Ljava/lang/String; = "WORK;FAX"

.field public static final LABEL_X_ASSISTANT:Ljava/lang/String; = "X-ASSISTANT"

.field public static final LABEL_X_CALLBACK:Ljava/lang/String; = "X-CALLBACK"

.field public static final LABEL_X_COMPANY:Ljava/lang/String; = "X-COMPANY"

.field public static final LABEL_X_ISDN:Ljava/lang/String; = "X-ISDN"

.field public static final LABEL_X_MAIN:Ljava/lang/String; = "X-MAIN"

.field public static final LABEL_X_MMS:Ljava/lang/String; = "X-MMS"

.field public static final LABEL_X_NETMEETING:Ljava/lang/String; = "X-NETMEETING"

.field public static final LABEL_X_TELEX:Ljava/lang/String; = "X-TELEX"

.field public static final LABEL_X_TTY:Ljava/lang/String; = "X-TTY"

.field public static final LABEL_YAHOO:Ljava/lang/String; = "YAHOO"

.field public static final TAG_ACCOUNTNAME:Ljava/lang/String; = "ACCOUNTNAME"

.field public static final TAG_ACCOUNTTYPE:Ljava/lang/String; = "ACCOUNTTYPE"

.field public static final TAG_ADR:Ljava/lang/String; = "ADR"

.field public static final TAG_BDAY:Ljava/lang/String; = "BDAY"

.field public static final TAG_CATEGORIES:Ljava/lang/String; = "CATEGORIES"

.field public static final TAG_EMAIL:Ljava/lang/String; = "EMAIL"

.field public static final TAG_FN:Ljava/lang/String; = "FN"

.field public static final TAG_N:Ljava/lang/String; = "N"

.field public static final TAG_NICKNAME:Ljava/lang/String; = "NICKNAME"

.field public static final TAG_NOTE:Ljava/lang/String; = "NOTE"

.field public static final TAG_ORG:Ljava/lang/String; = "ORG"

.field public static final TAG_PHOTO:Ljava/lang/String; = "PHOTO"

.field public static final TAG_RINGTONE:Ljava/lang/String; = "RINGTONE"

.field public static final TAG_TEL:Ljava/lang/String; = "TEL"

.field public static final TAG_TITLE:Ljava/lang/String; = "TITLE"

.field public static final TAG_URL:Ljava/lang/String; = "URL"

.field public static final TAG_X_FOCUS:Ljava/lang/String; = "X-FOCUS"

.field public static final TAG_X_TC_IM:Ljava/lang/String; = "X-TC-IM"

.field public static lengthVcard:J


# instance fields
.field private contactAccount:Lcom/tencent/qqpim/dao/QueryAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/qqpim/object/SYSContact;->lengthVcard:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/object/SYSEntity;-><init>()V

    new-instance v0, Lcom/tencent/qqpim/dao/QueryAccount;

    invoke-direct {v0}, Lcom/tencent/qqpim/dao/QueryAccount;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/object/SYSContact;->contactAccount:Lcom/tencent/qqpim/dao/QueryAccount;

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSContact;->contactAccount:Lcom/tencent/qqpim/dao/QueryAccount;

    iget-object v0, v0, Lcom/tencent/qqpim/dao/QueryAccount;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSContact;->contactAccount:Lcom/tencent/qqpim/dao/QueryAccount;

    iget-object v0, v0, Lcom/tencent/qqpim/dao/QueryAccount;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSum()I
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSContact;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    sget-wide v0, Lcom/tencent/qqpim/object/SYSContact;->lengthVcard:J

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    int-to-long v5, v5

    add-long/2addr v0, v5

    sput-wide v0, Lcom/tencent/qqpim/object/SYSContact;->lengthVcard:J

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
    iget-object v0, p0, Lcom/tencent/qqpim/object/SYSContact;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/object/Record;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PHOTO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/tencent/qqpim/object/Record;->getBinaryData()[B

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v7}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/qqpim/object/Record;->getBinaryData()[B

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v7}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getEntityType()Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;->VCARD:Lcom/tencent/qqpim/interfaces/IEntity$ENUM_ENTITY_TYPE;

    return-object v0
.end method

.method public initData()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/tencent/qqpim/object/SYSContact;->moveToFirst()Z

    move v0, v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/object/SYSContact;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qqpim/object/SYSContact;->getCurrentValue()Lcom/tencent/qqpim/object/Record;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/qqpim/object/SYSContact;->moveToNext()Z

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "X-FOCUS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/object/SYSContact;->contactAccount:Lcom/tencent/qqpim/dao/QueryAccount;

    const/4 v3, 0x1

    iput v3, v2, Lcom/tencent/qqpim/dao/QueryAccount;->starred:I

    goto :goto_0

    :cond_3
    const-string v4, "ACCOUNTNAME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/tencent/qqpim/object/SYSContact;->contactAccount:Lcom/tencent/qqpim/dao/QueryAccount;

    invoke-virtual {v2, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/qqpim/dao/QueryAccount;->name:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const-string v4, "ACCOUNTTYPE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qqpim/object/SYSContact;->contactAccount:Lcom/tencent/qqpim/dao/QueryAccount;

    invoke-virtual {v2, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/qqpim/dao/QueryAccount;->type:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isStarred()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/qqpim/object/SYSContact;->contactAccount:Lcom/tencent/qqpim/dao/QueryAccount;

    iget v1, v1, Lcom/tencent/qqpim/dao/QueryAccount;->starred:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
