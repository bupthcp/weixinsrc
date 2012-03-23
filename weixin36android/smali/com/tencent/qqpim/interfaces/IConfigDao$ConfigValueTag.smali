.class public final enum Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ACTION_STATISTIC:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum ACTION_SUM:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum AUTO_LOGIN_FLAG:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum AUTO_LOGIN_FLAG_MOBILE:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum CHANNEL:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum DEFAULT_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum DEFAULT_MD5PWD:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum DEFAULT_MOBILE_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum DEFAULT_MOBILE_MD5PWD:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field private static final synthetic ENUM$VALUES:[Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum HAD_REPORT_CHANNEL:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum IMEI:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum IMSI:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum LAST_AUTO_LOGIN_ACCOUNT_TYPE:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum LAST_LC_CHECK_TIME_STAMP:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum LAST_LOCAL_CONTACT_CHANGE_CHECK_TIME_STAMP:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum LAST_LOGIN_ACCOUNT_TYPE:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum LAST_SHUT_DOWN_SUC:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum LAST_STATUS_AUTO_LOGIN:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum LAST_SYNC_TIME_STAMP:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum MARKETSOFT_LAST_UPDATE_TIME:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum QQPIM_DB_DIR:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum QQPIM_SERVER_URL:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum SAVED_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum SAVED_MOBILE_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum START_TIPS:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

.field public static final enum VERSION:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "DEFAULT_ACCOUNT"

    const-string v2, "DEFAULT_ACCOUNT"

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->DEFAULT_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "DEFAULT_MD5PWD"

    const-string v2, "DEFAULT_MD5PWD"

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->DEFAULT_MD5PWD:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "SAVED_ACCOUNT"

    const-string v2, "SAVED_ACCOUNT"

    invoke-direct {v0, v1, v6, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->SAVED_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "SAVED_MOBILE_ACCOUNT"

    const-string v2, "SAVED_MOBILE_ACCOUNT"

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->SAVED_MOBILE_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "DEFAULT_MOBILE_ACCOUNT"

    const-string v2, "DEFAULT_MOBILE_ACCOUNT"

    invoke-direct {v0, v1, v8, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->DEFAULT_MOBILE_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "DEFAULT_MOBILE_MD5PWD"

    const/4 v2, 0x5

    const-string v3, "DEFAULT_MOBILE_MD5PWD"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->DEFAULT_MOBILE_MD5PWD:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "AUTO_LOGIN_FLAG_MOBILE"

    const/4 v2, 0x6

    const-string v3, "MOBILE_AUTO_LOGIN_FLAG"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->AUTO_LOGIN_FLAG_MOBILE:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "AUTO_LOGIN_FLAG"

    const/4 v2, 0x7

    const-string v3, "AUTO_LOGIN_FLAG"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->AUTO_LOGIN_FLAG:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "QQPIM_SERVER_URL"

    const/16 v2, 0x8

    const-string v3, "QQPIM_SERVER_URL"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->QQPIM_SERVER_URL:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "QQPIM_DB_DIR"

    const/16 v2, 0x9

    const-string v3, "QQPIM_DB_DIR"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->QQPIM_DB_DIR:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "IMEI"

    const/16 v2, 0xa

    const-string v3, "IMEI"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->IMEI:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "IMSI"

    const/16 v2, 0xb

    const-string v3, "IMSI"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->IMSI:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "VERSION"

    const/16 v2, 0xc

    const-string v3, "VERSION"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->VERSION:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "ACTION_STATISTIC"

    const/16 v2, 0xd

    const-string v3, "ACTION_STATISTIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->ACTION_STATISTIC:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "ACTION_SUM"

    const/16 v2, 0xe

    const-string v3, "ACTION_SUM"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->ACTION_SUM:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "LAST_LC_CHECK_TIME_STAMP"

    const/16 v2, 0xf

    const-string v3, "LAST_LC_CHECK_TIME_STAMP"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_LC_CHECK_TIME_STAMP:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "LAST_SHUT_DOWN_SUC"

    const/16 v2, 0x10

    const-string v3, "LAST_SHUT_DOWN_SUC"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_SHUT_DOWN_SUC:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "LAST_LOCAL_CONTACT_CHANGE_CHECK_TIME_STAMP"

    const/16 v2, 0x11

    const-string v3, "LAST_LOCAL_CONTACT_CHANGE_CHECK_TIME_STAMP"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_LOCAL_CONTACT_CHANGE_CHECK_TIME_STAMP:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "LAST_SYNC_TIME_STAMP"

    const/16 v2, 0x12

    const-string v3, "LAST_SYNC_TIME_STAMP"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_SYNC_TIME_STAMP:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "LAST_AUTO_LOGIN_ACCOUNT_TYPE"

    const/16 v2, 0x13

    const-string v3, "LAST_AUTO_LOGIN_ACCOUNT_TYPE"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_AUTO_LOGIN_ACCOUNT_TYPE:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "LAST_LOGIN_ACCOUNT_TYPE"

    const/16 v2, 0x14

    const-string v3, "LAST_LOGIN_ACCOUNT_TYPE"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_LOGIN_ACCOUNT_TYPE:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "HAD_REPORT_CHANNEL"

    const/16 v2, 0x15

    const-string v3, "HAD_REPORT_CHANNEL"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->HAD_REPORT_CHANNEL:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "CHANNEL"

    const/16 v2, 0x16

    const-string v3, "CHANNEL"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->CHANNEL:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "START_TIPS"

    const/16 v2, 0x17

    const-string v3, "START_TIPS"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->START_TIPS:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "LAST_STATUS_AUTO_LOGIN"

    const/16 v2, 0x18

    const-string v3, "LAST_STATUS_AUTO_LOGIN"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_STATUS_AUTO_LOGIN:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    new-instance v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, "MARKETSOFT_LAST_UPDATE_TIME"

    const/16 v2, 0x19

    const-string v3, "MARKETSOFT_LAST_UPDATE_TIME"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->MARKETSOFT_LAST_UPDATE_TIME:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->DEFAULT_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->DEFAULT_MD5PWD:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->SAVED_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->SAVED_MOBILE_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->DEFAULT_MOBILE_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->DEFAULT_MOBILE_MD5PWD:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->AUTO_LOGIN_FLAG_MOBILE:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->AUTO_LOGIN_FLAG:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->QQPIM_SERVER_URL:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->QQPIM_DB_DIR:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->IMEI:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->IMSI:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->VERSION:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->ACTION_STATISTIC:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->ACTION_SUM:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_LC_CHECK_TIME_STAMP:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_SHUT_DOWN_SUC:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_LOCAL_CONTACT_CHANGE_CHECK_TIME_STAMP:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_SYNC_TIME_STAMP:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_AUTO_LOGIN_ACCOUNT_TYPE:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_LOGIN_ACCOUNT_TYPE:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->HAD_REPORT_CHANNEL:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->CHANNEL:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->START_TIPS:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_STATUS_AUTO_LOGIN:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->MARKETSOFT_LAST_UPDATE_TIME:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->ENUM$VALUES:[Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;
    .locals 1

    const-class v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->ENUM$VALUES:[Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->value:Ljava/lang/String;

    return-object v0
.end method
