.class public Lcom/tencent/qqpim/dao/SYSContactDaoV1;
.super Lcom/tencent/qqpim/dao/SYSContactDao;


# static fields
.field private static final ADDRESSTYPE:[Ljava/lang/String; = null

.field private static final IMTYPE:[Ljava/lang/String; = null

.field private static final LABELLIST_INDEX_TAG_ADR:I = 0x1

.field private static final LABELLIST_INDEX_TAG_CATEGORIES:I = 0xc

.field private static final LABELLIST_INDEX_TAG_EMAIL:I = 0x2

.field private static final LABELLIST_INDEX_TAG_FN:I = 0x4

.field private static final LABELLIST_INDEX_TAG_N:I = 0x9

.field private static final LABELLIST_INDEX_TAG_NICKNAME:I = 0xa

.field private static final LABELLIST_INDEX_TAG_NOTE:I = 0x8

.field private static final LABELLIST_INDEX_TAG_ORG:I = 0x6

.field private static final LABELLIST_INDEX_TAG_PHOTO:I = 0x5

.field private static final LABELLIST_INDEX_TAG_RINGTONE:I = 0xd

.field private static final LABELLIST_INDEX_TAG_TEL:I = 0x0

.field private static final LABELLIST_INDEX_TAG_TITLE:I = 0x7

.field private static final LABELLIST_INDEX_TAG_X_FOCUS:I = 0xb

.field private static final LABELLIST_INDEX_TAG_X_TC_IM:I = 0x3

.field private static final METHODS_URI:Landroid/net/Uri; = null

.field private static final ODERBYCMID:Ljava/lang/String; = null

.field private static final ODERBYID:Ljava/lang/String; = null

.field private static final ODERBYORGID:Ljava/lang/String; = null

.field private static final ODERBYPHONEID:Ljava/lang/String; = null

.field private static final ORGTYPE:[Ljava/lang/String; = null

.field private static final ORG_URI:Landroid/net/Uri; = null

.field private static final PHONE_URI:Landroid/net/Uri; = null

.field private static final TELTYPE:[Ljava/lang/String; = null

.field static final chDivider:C = ';'

.field static final chNeedEscapeChars:[C

.field private static contactCursor:Landroid/database/Cursor;

.field private static groupId:J

.field private static id:Landroid/net/Uri;

.field private static final labelList:[Ljava/lang/String;

.field private static maxId:J

.field private static orgList:Ljava/util/ArrayList;

.field private static final tagMap:Ljava/util/Map;

.field private static titleList:Ljava/util/ArrayList;

.field private static values:Landroid/content/ContentValues;


# instance fields
.field private groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v2, "HOME"

    aput-object v2, v0, v5

    const-string v2, "CELL"

    aput-object v2, v0, v6

    const-string v2, "WORK"

    aput-object v2, v0, v7

    const-string v2, "FAX;WORK"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "FAX;HOME"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "PAGER"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "OTHER"

    aput-object v3, v0, v2

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->TELTYPE:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v2, "HOME"

    aput-object v2, v0, v5

    const-string v2, "WORK"

    aput-object v2, v0, v6

    const-string v2, "OTHER"

    aput-object v2, v0, v7

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ADDRESSTYPE:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "AIM"

    aput-object v2, v0, v1

    const-string v2, "MSN"

    aput-object v2, v0, v5

    const-string v2, "YAHOO"

    aput-object v2, v0, v6

    const-string v2, "SKYPE"

    aput-object v2, v0, v7

    const-string v2, "QQ"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "GTALK"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "ICQ"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "JABBER"

    aput-object v3, v0, v2

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->IMTYPE:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v2, "WORK"

    aput-object v2, v0, v5

    const-string v2, "OTHER"

    aput-object v2, v0, v6

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ORGTYPE:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->tagMap:Ljava/util/Map;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "TEL"

    aput-object v2, v0, v1

    const-string v2, "ADR"

    aput-object v2, v0, v5

    const-string v2, "EMAIL"

    aput-object v2, v0, v6

    const-string v2, "X-TC-IM"

    aput-object v2, v0, v7

    const-string v2, "FN"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "PHOTO"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "ORG"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "TITLE"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "NOTE"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "N"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "NICKNAME"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "X-FOCUS"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "CATEGORIES"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "RINGTONE"

    aput-object v3, v0, v2

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->labelList:[Ljava/lang/String;

    move v0, v1

    :goto_0
    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ODERBYID:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ODERBYPHONEID:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ODERBYCMID:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ODERBYORGID:Ljava/lang/String;

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->groupId:J

    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->maxId:J

    const-string v0, "content://contacts/organizations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ORG_URI:Landroid/net/Uri;

    const-string v0, "content://contacts/contact_methods"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->METHODS_URI:Landroid/net/Uri;

    const-string v0, "content://contacts/phones"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->PHONE_URI:Landroid/net/Uri;

    new-array v0, v8, [C

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->chNeedEscapeChars:[C

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->chNeedEscapeChars:[C

    const/16 v1, 0x3b

    aput-char v1, v0, v5

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->chNeedEscapeChars:[C

    const/16 v1, 0xd

    aput-char v1, v0, v6

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->chNeedEscapeChars:[C

    const/16 v1, 0xa

    aput-char v1, v0, v7

    return-void

    :cond_0
    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->tagMap:Ljava/util/Map;

    sget-object v3, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->labelList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/dao/SYSContactDao;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;

    invoke-static {p1}, Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;

    return-void
.end method

.method private static FixName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x3b

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-ne v2, v4, :cond_5

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private addContactEntity(Lcom/tencent/qqpim/object/SYSContact;)V
    .locals 19

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->moveToFirst()Z

    const/4 v6, 0x0

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v17, v0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, ""

    move/from16 v16, v8

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->interpretGroupNames(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->isEditGroupNumberData()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->getGroupIds()Ljava/util/List;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addUserByGroupIds(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->moveToFirst()Z

    :goto_2
    new-array v5, v15, [Landroid/content/ContentValues;

    new-array v6, v14, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v4, v1

    move v1, v2

    :goto_3
    move/from16 v0, v16

    if-lt v4, v0, :cond_b

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v1, :cond_1

    new-array v7, v1, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    move v3, v1

    :goto_4
    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ORG_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_1
    if-lez v15, :cond_2

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->PHONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_2
    if-lez v14, :cond_3

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->METHODS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_3
    return-void

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->getCurrentValue()Lcom/tencent/qqpim/object/Record;

    move-result-object v8

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->tagMap:Ljava/util/Map;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v17, v16

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_5

    add-int/lit8 v1, v15, 0x1

    move v8, v6

    move v6, v14

    move/from16 v18, v1

    move-object v1, v7

    move/from16 v7, v18

    :goto_5
    add-int/lit8 v9, v16, 0x1

    move/from16 v18, v9

    move v9, v8

    move/from16 v8, v18

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->moveToNext()Z

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move-object v7, v1

    move v6, v9

    goto/16 :goto_0

    :pswitch_1
    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, -0x1

    aput v6, v17, v16

    move v6, v14

    move v8, v1

    move-object v1, v7

    move v7, v15

    goto :goto_5

    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    aput v1, v17, v16

    move-object v1, v7

    move v8, v6

    move v7, v15

    move v6, v14

    goto :goto_5

    :pswitch_3
    const/4 v1, 0x2

    if-ge v6, v1, :cond_12

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, -0x1

    aput v6, v17, v16

    move v6, v14

    move v8, v1

    move-object v1, v7

    move v7, v15

    goto :goto_5

    :pswitch_4
    if-gtz v6, :cond_12

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, -0x1

    aput v6, v17, v16

    move v6, v14

    move v8, v1

    move-object v1, v7

    move v7, v15

    goto :goto_5

    :pswitch_5
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object v1, v7

    move v8, v6

    move v7, v15

    move v6, v14

    goto :goto_5

    :pswitch_6
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, v7

    move v8, v6

    move v7, v15

    move v6, v14

    goto :goto_5

    :pswitch_7
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v1

    move v7, v15

    move v8, v6

    move v6, v14

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v8, 0x4

    if-ge v1, v8, :cond_12

    add-int/lit8 v1, v14, 0x1

    move v8, v6

    move v6, v1

    move-object v1, v7

    move v7, v15

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v16, 0x1

    const/4 v8, -0x1

    aput v8, v17, v16

    move v8, v1

    move v9, v6

    move-object v1, v7

    move v6, v14

    move v7, v15

    goto/16 :goto_6

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->getGroupIds()Ljava/util/List;

    move-result-object v12

    move-object/from16 v6, p0

    move-object v7, v2

    move-object v8, v3

    move v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addUpdateUserByGroupIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addUser(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;)V

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->moveToFirst()Z

    goto/16 :goto_2

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->getId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v7, p0

    move-object v8, v2

    move-object v9, v3

    move v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addUpdateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_7

    :cond_b
    aget v2, v17, v4

    if-gez v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->moveToNext()Z

    :goto_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_3

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->getCurrentValue()Lcom/tencent/qqpim/object/Record;

    move-result-object v7

    aget v2, v17, v4

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_d

    aget v2, v17, v4

    sparse-switch v2, :sswitch_data_0

    move v2, v3

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/object/SYSContact;->moveToNext()Z

    move v3, v2

    goto :goto_8

    :sswitch_0
    add-int/lit8 v2, v3, 0x1

    invoke-static {v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addPhone(Lcom/tencent/qqpim/object/Record;)Landroid/content/ContentValues;

    move-result-object v7

    aput-object v7, v5, v3

    goto :goto_9

    :sswitch_1
    add-int/lit8 v2, v1, 0x1

    invoke-static {v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addEmailOrAddress(Lcom/tencent/qqpim/object/Record;)Landroid/content/ContentValues;

    move-result-object v7

    aput-object v7, v6, v1

    move v1, v2

    move v2, v3

    goto :goto_9

    :sswitch_2
    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_9

    :cond_d
    aget v2, v17, v4

    packed-switch v2, :pswitch_data_1

    :cond_e
    :goto_a
    :pswitch_8
    move v2, v3

    goto :goto_9

    :pswitch_9
    add-int/lit8 v2, v1, 0x1

    invoke-static {v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addEmailOrAddress(Lcom/tencent/qqpim/object/Record;)Landroid/content/ContentValues;

    move-result-object v7

    aput-object v7, v6, v1

    move v1, v2

    move v2, v3

    goto :goto_9

    :pswitch_a
    add-int/lit8 v2, v1, 0x1

    invoke-static {v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addIM(Lcom/tencent/qqpim/object/Record;)Landroid/content/ContentValues;

    move-result-object v7

    aput-object v7, v6, v1

    move v1, v2

    move v2, v3

    goto :goto_9

    :pswitch_b
    sget-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->photoDownloadTophoneAfterEditerNativePhotoError_1_5SDK:Z

    if-nez v2, :cond_e

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->id:Landroid/net/Uri;

    invoke-static {v2, v7}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addPhoto(Landroid/net/Uri;Lcom/tencent/qqpim/object/Record;)Z

    move v2, v3

    goto :goto_9

    :pswitch_c
    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_10

    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->id:Landroid/net/Uri;

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/object/Record;

    const-string v8, ""

    invoke-static {v4, v1, v8}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addORG(Landroid/net/Uri;Lcom/tencent/qqpim/object/Record;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    aput-object v1, v7, v3

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v2

    goto/16 :goto_4

    :cond_10
    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_11

    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->id:Landroid/net/Uri;

    const/4 v8, 0x0

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/object/Record;

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v8, v1}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addORG(Landroid/net/Uri;Lcom/tencent/qqpim/object/Record;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    aput-object v1, v7, v3

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v2

    goto/16 :goto_4

    :cond_11
    add-int/lit8 v4, v3, 0x1

    sget-object v8, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->id:Landroid/net/Uri;

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/object/Record;

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpim/object/Record;

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addORG(Landroid/net/Uri;Lcom/tencent/qqpim/object/Record;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    aput-object v1, v7, v3

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->orgList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->titleList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v4

    goto/16 :goto_4

    :cond_12
    move-object v1, v7

    move v8, v6

    move v7, v15

    move v6, v14

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method private addContactMethodList([Landroid/content/ContentValues;)Z
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->METHODS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private addContactToGroups(JLjava/util/ArrayList;)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p1, p2}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addToMyContactsGroup(J)V

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;->getGroupIdByGroupName(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;

    invoke-virtual {v0, p1, p2, v2}, Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;->addContactToGroup(JI)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;->addGroup(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;

    invoke-virtual {v0}, Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;->readAllGroups()V

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;

    long-to-int v2, v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;->addContactToGroup(JI)Z

    goto :goto_0
.end method

.method private addContactToGroupsByGroupIds(JLjava/util/List;)V
    .locals 3

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p1, p2}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addToMyContactsGroup(J)V

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, p1, p2, v0}, Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;->addContactToGroup(JI)Z

    goto :goto_0
.end method

.method private static addEmailOrAddress(Lcom/tencent/qqpim/object/Record;)Landroid/content/ContentValues;
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ADR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "kind"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "data"

    invoke-virtual {p0, v3}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qqpim/object/Tool;->combineString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/object/Tool;->parseLabelForV1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ADDRESSTYPE:[Ljava/lang/String;

    aget-object v3, v1, v4

    invoke-static {v2, v3}, Lcom/tencent/qqpim/object/Tool;->getIndexOfStringArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    const-string v2, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "label"

    aget-object v3, v1, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    array-length v1, v1

    if-le v1, v5, :cond_0

    const-string v1, "isprimary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "person"

    sget-wide v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->maxId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :cond_1
    const-string v1, "kind"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "data"

    invoke-virtual {p0, v3}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private static addIM(Lcom/tencent/qqpim/object/Record;)Landroid/content/ContentValues;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v4}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/object/Tool;->parseLabelForV1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->IMTYPE:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/object/Tool;->getIndexOfStringArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    sget-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->fetionCannotBeRestored:Z

    if-eqz v2, :cond_1

    const-string v2, "aux_data"

    const/16 v3, 0x8

    invoke-static {v3}, Landroid/provider/Contacts$ContactMethods;->encodePredefinedImProtocol(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    array-length v1, v1

    if-le v1, v4, :cond_0

    const-string v1, "isprimary"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "data"

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "person"

    sget-wide v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->maxId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "kind"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    :cond_1
    const-string v2, "aux_data"

    invoke-static {v4}, Landroid/provider/Contacts$ContactMethods;->encodePredefinedImProtocol(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "aux_data"

    invoke-static {v2}, Landroid/provider/Contacts$ContactMethods;->encodePredefinedImProtocol(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addNote(Landroid/net/Uri;Lcom/tencent/qqpim/object/Record;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "notes"

    invoke-virtual {p2, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static addORG(Landroid/net/Uri;Lcom/tencent/qqpim/object/Record;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/object/Tool;->parseLabelForV1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ORGTYPE:[Ljava/lang/String;

    aget-object v3, v1, v4

    invoke-static {v2, v3}, Lcom/tencent/qqpim/object/Tool;->getIndexOfStringArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    const-string v2, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "label"

    aget-object v3, v1, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    array-length v1, v1

    if-le v1, v5, :cond_0

    const-string v1, "isprimary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "company"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "person"

    sget-wide v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->maxId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :cond_2
    const-string v3, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private static addPhone(Lcom/tencent/qqpim/object/Record;)Landroid/content/ContentValues;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v5}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/object/Tool;->parseLabelForV1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->TELTYPE:[Ljava/lang/String;

    aget-object v3, v1, v4

    invoke-static {v2, v3}, Lcom/tencent/qqpim/object/Tool;->getIndexOfStringArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    const-string v2, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "label"

    aget-object v1, v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/object/Record;->isPref()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isprimary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "number"

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/tencent/qqpim/object/Record;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "person"

    sget-wide v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->maxId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :cond_1
    const-string v1, "type"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addPhoneList([Landroid/content/ContentValues;)Z
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->PHONE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static addPhoto(Landroid/net/Uri;Lcom/tencent/qqpim/object/Record;)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "data"

    invoke-virtual {p1}, Lcom/tencent/qqpim/object/Record;->getBinaryData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/tencent/qqpim/object/Record;->getBinaryData()[B

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static addToMyContactsGroup(J)V
    .locals 6

    const/4 v2, 0x0

    sget-wide v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->groupId:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "system_id=\'Contacts\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sput-wide v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->groupId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "person"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "group_id"

    sget-wide v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private addUpdateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v2, "starred"

    if-eqz p4, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-static {p1}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->fixName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "notes"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->maxId:J

    sget-wide v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->maxId:J

    invoke-direct {p0, v0, v1, p6}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addContactToGroups(JLjava/util/ArrayList;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addUpdateUserByGroupIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;)V
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v2, "starred"

    if-eqz p4, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-static {p1}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->fixName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "notes"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->maxId:J

    sget-wide v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->maxId:J

    invoke-direct {p0, v0, v1, p6}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addContactToGroupsByGroupIds(JLjava/util/List;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addUser(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    sget-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->contactGoogleTypeAndPhoneTypeError:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "extra_group"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v2, "starred"

    if-eqz p3, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-static {p1}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->fixName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "notes"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->maxId:J

    sget-wide v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->maxId:J

    invoke-direct {p0, v0, v1, p5}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addContactToGroups(JLjava/util/ArrayList;)V

    return-void

    :cond_2
    const-string v0, "0"

    goto :goto_0
.end method

.method private addUserByGroupIds(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;)V
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    sget-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->contactGoogleTypeAndPhoneTypeError:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "extra_group"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v2, "starred"

    if-eqz p3, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-static {p1}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->fixName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "notes"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->maxId:J

    sget-wide v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->maxId:J

    invoke-direct {p0, v0, v1, p5}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addContactToGroupsByGroupIds(JLjava/util/List;)V

    return-void

    :cond_2
    const-string v0, "0"

    goto :goto_0
.end method

.method private deleteInfo(Lcom/tencent/qqpim/interfaces/IEntity;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "notes"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v6, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "contact_methods"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v0, "phones"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "data"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "photo"

    invoke-static {v6, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "organizations"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto/16 :goto_0
.end method

.method private static fixName2(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [C

    const/16 v1, 0x5c

    aput-char v1, v0, v7

    const/16 v1, 0x3b

    aput-char v1, v0, v6

    const/16 v1, 0x72

    aput-char v1, v0, v4

    const/16 v1, 0x6e

    aput-char v1, v0, v5

    const/16 v1, 0x3b

    invoke-static {p0, v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->divideStringToList(Ljava/lang/String;[CC)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_e

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_d

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_c

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x4

    if-le v0, v9, :cond_b

    const/4 v0, 0x4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v6

    :goto_6
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    if-eqz v2, :cond_2

    const-string v2, " "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v6

    :goto_7
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    if-eqz v1, :cond_3

    const-string v1, " "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v6

    :cond_4
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    if-eqz v1, :cond_5

    const-string v1, " "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v6

    :cond_6
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    if-eqz v1, :cond_7

    const-string v1, " "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_7

    :cond_a
    move v2, v7

    goto :goto_6

    :cond_b
    move-object v0, v2

    goto :goto_5

    :cond_c
    move-object v5, v2

    goto :goto_4

    :cond_d
    move-object v4, v2

    goto/16 :goto_3

    :cond_e
    move-object v3, v2

    goto/16 :goto_2

    :cond_f
    move-object v1, v2

    goto/16 :goto_1
.end method

.method protected static getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/dao/SYSContactDaoV1;
    .locals 1

    new-instance v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static queryContactMethodLis(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "contact_methods"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v5, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ODERBYCMID:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v2}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const-string v0, "kind"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_4

    const-string v0, "EMAIL"

    invoke-virtual {v2, v9, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v0, "data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "label"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v2, v6

    goto :goto_0

    :cond_3
    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v10, :cond_1

    sget-object v3, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ADDRESSTYPE:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v7, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    if-ne v0, v8, :cond_6

    const-string v0, "ADR"

    invoke-virtual {v2, v9, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ";;"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->chNeedEscapeChars:[C

    invoke-static {v3, v4}, Lcom/tencent/qqpim/utils/QQPimUtils;->escapeString(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "label"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v10, :cond_1

    sget-object v3, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ADDRESSTYPE:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v7, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v0, "X-TC-IM"

    invoke-virtual {v2, v9, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v0, "data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v0, "aux_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_9

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v3, Lcom/tencent/qqpim/issue/IssueSettings;->fetionCannotBeRestored:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x7

    if-gt v0, v3, :cond_7

    sget-object v3, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->IMTYPE:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v7, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v0, "FETION"

    invoke-virtual {v2, v7, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x7

    if-gt v0, v3, :cond_1

    sget-object v3, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->IMTYPE:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v7, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v7, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    goto/16 :goto_1
.end method

.method private queryGroup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;

    invoke-virtual {v1, p1}, Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;->getGroupNamesFromContactId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v2}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v3, 0x0

    const-string v4, "CATEGORIES"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private queryGroup(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;->getGroupNamesFromContactId(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v2}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const/4 v3, 0x0

    const-string v4, "CATEGORIES"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static queryNameNotesAndStarred(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15

    const/4 v13, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v14, 0x2

    const/4 v7, 0x0

    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v7

    const-string v4, "notes"

    aput-object v4, v2, v6

    const-string v4, "starred"

    aput-object v4, v2, v14

    const-string v4, "custom_ringtone"

    aput-object v4, v2, v13

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v9, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v9}, Lcom/tencent/qqpim/object/Record;-><init>()V

    new-instance v10, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v10}, Lcom/tencent/qqpim/object/Record;-><init>()V

    new-instance v11, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v11}, Lcom/tencent/qqpim/object/Record;-><init>()V

    new-instance v12, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v12}, Lcom/tencent/qqpim/object/Record;-><init>()V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_6

    move v0, v6

    :goto_1
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v5, :cond_3

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "N"

    invoke-virtual {v9, v7, v6}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    if-eqz v5, :cond_2

    const-string v6, "\\"

    const-string v13, "\\\\"

    invoke-virtual {v5, v6, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    const-string v13, "\\;"

    invoke-virtual {v5, v6, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v14, v5}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v4, :cond_4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "NOTE"

    invoke-virtual {v10, v7, v5}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {v10, v14, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v4, "X-FOCUS"

    invoke-virtual {v12, v7, v4}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    if-eqz v0, :cond_7

    const-string v0, "1"

    :goto_3
    invoke-virtual {v12, v14, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "RINGTONE"

    invoke-virtual {v11, v7, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {v11, v14, v2}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    move-object v3, v1

    goto/16 :goto_0

    :cond_6
    move v0, v7

    goto :goto_1

    :cond_7
    const-string v0, "0"

    goto :goto_3

    :cond_8
    move-object v5, v4

    move-object v4, v2

    move-object v2, v0

    move v0, v7

    goto :goto_2
.end method

.method private static queryORG(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "person = ?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p0, v4, v7

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ODERBYORGID:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v1}, Lcom/tencent/qqpim/object/Record;-><init>()V

    new-instance v2, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v2}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const-string v3, "ORG"

    invoke-virtual {v1, v7, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v3, "TITLE"

    invoke-virtual {v2, v7, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v3, "company"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v3, "title"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v3, "label"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    const-string v3, "type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    sget-object v4, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ORGTYPE:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v1, v8, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v2, v6

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v8, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private static queryPhoneList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v7

    const-string v0, "type"

    aput-object v0, v2, v6

    const-string v0, "label"

    aput-object v0, v2, v8

    const/4 v0, 0x3

    const-string v1, "isprimary"

    aput-object v1, v2, v0

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "person = ?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p0, v4, v7

    sget-object v5, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ODERBYPHONEID:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v2}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const-string v3, "TEL"

    invoke-virtual {v2, v7, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v3, "number"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    const-string v3, "type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    sget-object v4, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->TELTYPE:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v6, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    :goto_2
    const-string v3, "isprimary"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {v2, v6}, Lcom/tencent/qqpim/object/Record;->setPref(Z)V

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v3, "label"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    goto :goto_2
.end method

.method private static queryPhoto(Ljava/lang/String;)Lcom/tencent/qqpim/object/Record;
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    new-instance v6, Lcom/tencent/qqpim/object/Record;

    invoke-direct {v6}, Lcom/tencent/qqpim/object/Record;-><init>()V

    const-string v0, "PHOTO"

    invoke-virtual {v6, v7, v0}, Lcom/tencent/qqpim/object/Record;->put(ILjava/lang/String;)V

    sget-object v1, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data"

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "person="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/tencent/qqpim/object/Record;->putBinaryData([B)V

    invoke-virtual {v6}, Lcom/tencent/qqpim/object/Record;->getBinaryData()[B

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v4, v6

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static transformInputstream(Ljava/io/InputStream;)[B
    .locals 3

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/tencent/qqpim/interfaces/IEntity;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Lcom/tencent/qqpim/object/SYSContact;

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->addContactEntity(Lcom/tencent/qqpim/object/SYSContact;)V

    sget-wide v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->maxId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

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

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->add(Lcom/tencent/qqpim/interfaces/IEntity;)Ljava/lang/String;

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
    .locals 3

    const/4 v2, 0x0

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
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0
.end method

.method public getAllEntityId([Ljava/lang/String;)Ljava/util/List;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNet:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    const-string v4, "source_name"

    aput-object v4, v2, v6

    sget-object v5, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ODERBYID:Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-object v3

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    sget-object v5, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ODERBYID:Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v1, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNet:Z

    if-eqz v1, :cond_5

    :cond_2
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->groupDao:Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;

    invoke-virtual {v0}, Lcom/tencent/qqpim/dao/SYSContactGroupDaoV1;->readAllGroups()V

    goto :goto_1

    :cond_3
    const-string v1, "SOURCE_SIM_CONTACTS"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3
.end method

.method public isExisted(Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    sget-object v5, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ODERBYID:Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_0
.end method

.method public lookupFirstContactIDByPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->PHONE_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "number_key=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "person"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v6

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

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
    .locals 3

    new-instance v0, Lcom/tencent/qqpim/object/SYSContact;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/SYSContact;-><init>()V

    invoke-static {p1}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->queryNameNotesAndStarred(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Ljava/util/ArrayList;)V

    invoke-static {p1}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->queryPhoneList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Ljava/util/ArrayList;)V

    invoke-static {p1}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->queryContactMethodLis(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Ljava/util/ArrayList;)V

    invoke-static {p1}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->queryORG(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Ljava/util/ArrayList;)V

    invoke-static {p1}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->queryPhoto(Ljava/lang/String;)Lcom/tencent/qqpim/object/Record;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Lcom/tencent/qqpim/object/Record;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->queryGroup(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/object/SYSContact;->setId(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/object/SYSContact;->setGroupIds(Ljava/util/List;)V

    return-object v0
.end method

.method public query()Ljava/util/List;
    .locals 7

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->ODERBYID:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contactCursor:Landroid/database/Cursor;

    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contactCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contactCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v6

    :cond_1
    new-instance v0, Lcom/tencent/qqpim/object/SYSContact;

    invoke-direct {v0}, Lcom/tencent/qqpim/object/SYSContact;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contactCursor:Landroid/database/Cursor;

    sget-object v3, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contactCursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/object/SYSContact;->setId(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->queryNameNotesAndStarred(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {v2}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->queryPhoneList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->queryContactMethodLis(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->queryORG(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v2}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->queryGroup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-boolean v3, Lcom/tencent/qqpim/issue/IssueSettings;->photoDownloadTophoneAfterEditerNativePhotoError_1_5SDK:Z

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->queryPhoto(Ljava/lang/String;)Lcom/tencent/qqpim/object/Record;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/object/SYSContact;->putValue(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/tencent/qqpim/object/SYSContact;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/object/SYSContact;->setId(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public queryNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    move-object v3, v0

    goto :goto_0

    :cond_2
    move-object v0, v6

    goto :goto_1
.end method

.method public queryNumber()I
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public update(Lcom/tencent/qqpim/interfaces/IEntity;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
    .locals 2

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->delete(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/dao/SYSContactDaoV1;->add(Lcom/tencent/qqpim/interfaces/IEntity;)Ljava/lang/String;

    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;

    goto :goto_0
.end method
