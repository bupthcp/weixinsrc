.class public Lcom/tencent/mm/plugin/gmailapp/model/GmailInfoStorage;
.super Lcom/tencent/mm/storagebase/MStorage;


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE IF NOT EXISTS gmailinfo ( gmailacct text  PRIMARY KEY , gmailswitch int  , gmailerrcode int  , isusing int  , reserved1 text  , reserved2 text  , reserved3 int  , reserved4 int  ) "

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/plugin/gmailapp/model/GmailInfoStorage;->a:[Ljava/lang/String;

    return-void
.end method
