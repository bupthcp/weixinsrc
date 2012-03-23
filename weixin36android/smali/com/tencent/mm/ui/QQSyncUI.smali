.class public Lcom/tencent/mm/ui/QQSyncUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/app/ProgressDialog;

.field private d:Lcom/tencent/qqpim/interfaces/ISyncModel;

.field private e:Lcom/tencent/qqpim/interfaces/ILoginModel;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/app/AlertDialog;

.field private m:Landroid/app/AlertDialog;

.field private n:Z

.field private o:Z

.field private p:Lcom/tencent/qqpim/interfaces/IConfigDao;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/tencent/mm/storage/Contact;

.field private s:Landroid/os/Handler;

.field private t:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Sync"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->c:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->l:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->m:Landroid/app/AlertDialog;

    new-instance v0, Lcom/tencent/mm/ui/QQSyncUI$15;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/QQSyncUI$15;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->s:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/ui/QQSyncUI$16;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/QQSyncUI$16;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->t:Landroid/os/Handler;

    return-void
.end method

.method protected static a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/QQSyncUI;Lcom/tencent/qqpim/interfaces/ILoginModel;)Lcom/tencent/qqpim/interfaces/ILoginModel;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/QQSyncUI;->e:Lcom/tencent/qqpim/interfaces/ILoginModel;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/QQSyncUI;Lcom/tencent/qqpim/interfaces/ISyncModel;)Lcom/tencent/qqpim/interfaces/ISyncModel;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/QQSyncUI;->d:Lcom/tencent/qqpim/interfaces/ISyncModel;

    return-object p1
.end method

.method static synthetic a(Landroid/content/Context;ZLcom/tencent/qqpim/interfaces/ISyncModel;)Ljava/lang/String;
    .locals 4

    const v0, 0x7f0a0081

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    const v0, 0x7f0a039d

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/tencent/mm/ui/QQSyncUI;->b(Landroid/content/Context;ZLcom/tencent/qqpim/interfaces/ISyncModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0a039e

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    new-instance v0, Lcom/tencent/qqpim/model/SyncModel;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/model/SyncModel;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->clearLoginInformation()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/QQSyncUI;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/QQSyncUI;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/tencent/mm/algorithm/UIN;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/algorithm/UIN;-><init>(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/algorithm/UIN;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/mm/ui/QQSyncUI;->o:Z

    new-instance v1, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;

    invoke-direct {v1, p0, v0, p1}, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;-><init>(Lcom/tencent/mm/ui/QQSyncUI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/QQSyncUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/QQSyncUI;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ILoginModel;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->e:Lcom/tencent/qqpim/interfaces/ILoginModel;

    return-object v0
.end method

.method private static b(Landroid/content/Context;ZLcom/tencent/qqpim/interfaces/ISyncModel;)Ljava/lang/String;
    .locals 10

    const v9, 0x7f0a03a3

    const v7, 0x7f0a03a2

    const v6, 0x7f0a03a1

    const/4 v5, 0x1

    const/4 v8, 0x0

    const v0, 0x7f0a03a6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0a03a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    if-eqz p1, :cond_7

    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getServerAdddedNum()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getServerAdddedNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getServerModifiededNum()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getServerModifiededNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getServerDeletedNum()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getServerDeletedNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v9, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a03a4

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getUploadBytes()J

    move-result-wide v4

    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getDownloadBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Util;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_6

    const v0, 0x7f0a03a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_7
    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getClientAddedNum()I

    move-result v3

    if-lez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getClientAddedNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getClientModifiededNum()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getClientModifiededNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getClientDeletedNum()I

    move-result v3

    if-lez v3, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getClientDeletedNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v9, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a03a4

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getUploadBytes()J

    move-result-wide v4

    invoke-interface {p2}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getDownloadBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Util;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_e

    const v0, 0x7f0a03a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private b()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->n:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a038d

    :goto_0
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/ui/QQSyncUI$9;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/QQSyncUI$9;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    invoke-static {p0, v1, v0, v5, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->c:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;->start()V

    return-void

    :cond_0
    const v0, 0x7f0a038e

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/qqpim/interfaces/ISyncModel;)V
    .locals 2

    const-string v0, "dump sync model:\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "total backup/restore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getTotalBackupNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getTotalRestoreNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "from server add/del/mod = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getServerAdddedNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getServerDeletedNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getServerModifiededNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "from client add/del/mod = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getClientAddedNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getClientDeletedNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getClientModifiededNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.QQSyncUI"

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/QQSyncUI;)V
    .locals 4

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->a()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0a038f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/QQSyncUI$8;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/QQSyncUI$8;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, 0x10104

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->c(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->d:Lcom/tencent/qqpim/interfaces/ISyncModel;

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->isLogined()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/mm/ui/QQSyncUI;->b()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/ui/QQSyncUI;->o()V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 9

    const v0, 0x7f0a0397

    const v3, 0x7f0a0002

    const v8, 0x7f0702c9

    const v2, 0x7f030104

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f0a03ae

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0a03af

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/QQSyncUI$10;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/QQSyncUI$10;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    invoke-static {p0, v2, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v0, Lcom/tencent/mm/ui/MMAlert$7;

    invoke-direct {v0}, Lcom/tencent/mm/ui/MMAlert$7;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/mm/ui/MMAlert$8;

    invoke-direct {v2, v1, p0}, Lcom/tencent/mm/ui/MMAlert$8;-><init>(Landroid/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {p0, v0, v2, v7}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v3

    new-instance v0, Lcom/tencent/mm/ui/MMAlert$5;

    invoke-direct {v0}, Lcom/tencent/mm/ui/MMAlert$5;-><init>()V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/ui/MMAlert$6;

    invoke-direct {v1, v3, p0}, Lcom/tencent/mm/ui/MMAlert$6;-><init>(Landroid/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/mm/storage/Contact;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->r:Lcom/tencent/mm/storage/Contact;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ISyncModel;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->d:Lcom/tencent/qqpim/interfaces/ISyncModel;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/QQSyncUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/QQSyncUI;->o()V

    return-void
.end method

.method static synthetic h(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->l:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/QQSyncUI;)V
    .locals 4

    new-instance v0, Lcom/tencent/mm/ui/QQSyncUI$13;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/QQSyncUI$13;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    new-instance v1, Lcom/tencent/mm/ui/QQSyncUI$14;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/QQSyncUI$14;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/QQSyncUI;->m:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    const v2, 0x7f0a0396

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/QQSyncUI;->g:Landroid/view/View;

    invoke-static {p0, v2, v3, v0, v1}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->m:Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->m:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/QQSyncUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->o:Z

    return v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/QQSyncUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/QQSyncUI;->b()V

    return-void
.end method

.method static synthetic o(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->c:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private o()V
    .locals 4

    new-instance v0, Lcom/tencent/mm/ui/QQSyncUI$11;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/QQSyncUI$11;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    new-instance v1, Lcom/tencent/mm/ui/QQSyncUI$12;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/QQSyncUI$12;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/QQSyncUI;->l:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    const v2, 0x7f0a0396

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/QQSyncUI;->f:Landroid/view/View;

    invoke-static {p0, v2, v3, v0, v1}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->l:Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/QQSyncUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->n:Z

    return v0
.end method

.method static synthetic q(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/app/ProgressDialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->c:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic r(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcom/tencent/mm/ui/QQSyncUI;)V
    .locals 4

    iget-boolean v1, p0, Lcom/tencent/mm/ui/QQSyncUI;->n:Z

    iget-object v2, p0, Lcom/tencent/mm/ui/QQSyncUI;->d:Lcom/tencent/qqpim/interfaces/ISyncModel;

    if-eqz v1, :cond_0

    const v0, 0x7f0a039f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v1, v2}, Lcom/tencent/mm/ui/QQSyncUI;->b(Landroid/content/Context;ZLcom/tencent/qqpim/interfaces/ISyncModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->n:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0a0391

    :goto_1
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v0, 0x7f0a03a0

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0393

    goto :goto_1
.end method

.method static synthetic t(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->t:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300a9

    return v0
.end method

.method protected final a(Lcom/tencent/qqpim/interfaces/ISyncModel;)V
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getUploadBytes()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getDownloadBytes()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {p0}, Lcom/tencent/mm/network/NetService;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0, v3}, Lcom/tencent/mm/modelstat/NetStatStorageLogic;->a(III)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1, v0, v3}, Lcom/tencent/mm/modelstat/NetStatStorageLogic;->b(III)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f070240

    const v5, 0x7f0300d7

    const v3, 0x10105

    const/16 v2, 0x81

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/QQSyncUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    new-instance v0, Lcom/tencent/qqpim/model/SyncModel;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/QQSyncUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/tencent/qqpim/model/SyncModel;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->d:Lcom/tencent/qqpim/interfaces/ISyncModel;

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->d:Lcom/tencent/qqpim/interfaces/ISyncModel;

    invoke-interface {v0, p0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->addContactAdapter(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/QQSyncUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->p:Lcom/tencent/qqpim/interfaces/IConfigDao;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/QQSyncUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/model/LoginModel;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/ILoginModel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->e:Lcom/tencent/qqpim/interfaces/ILoginModel;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    const-string v1, "qqsync"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->r:Lcom/tencent/mm/storage/Contact;

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->r:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const v0, 0x7f0a03ad

    const v1, 0x7f0a03ac

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    :cond_1
    const v0, 0x7f0701bd

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->a:Landroid/view/View;

    const v0, 0x7f0701be

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->b:Landroid/view/View;

    invoke-static {p0, v5, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->f:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->h:Landroid/widget/TextView;

    const v1, 0x7f0a0395

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->f:Landroid/view/View;

    const v1, 0x7f070241

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->i:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    invoke-static {p0, v5, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->g:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->k:Landroid/widget/TextView;

    const v1, 0x7f0a03b0

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->g:Landroid/view/View;

    const v1, 0x7f070241

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    const v0, 0x7f0701bc

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->q:Landroid/widget/TextView;

    const v0, 0x7f0701bf

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/ui/QQSyncUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/QQSyncUI$1;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701c0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/ui/QQSyncUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/QQSyncUI$2;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701c1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "http://ic.qq.com"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "http://pt.3g.qq.com/i/h/"

    new-instance v3, Lcom/tencent/mm/ui/QQSyncUI$3;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/QQSyncUI$3;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    invoke-static {v0, v1, v2, v4, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI;->r:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/storage/Conversation;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->d()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v4, v0, p0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->a:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/QQSyncUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/QQSyncUI$4;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->b:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/QQSyncUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/QQSyncUI$5;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/QQSyncUI$6;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/QQSyncUI$6;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/QQSyncUI;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/QQSyncUI$7;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/QQSyncUI$7;-><init>(Lcom/tencent/mm/ui/QQSyncUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;

    const/4 v2, 0x6

    const-string v3, "5"

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;

    invoke-direct {v2, v0}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->q:Landroid/widget/TextView;

    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->d:Lcom/tencent/qqpim/interfaces/ISyncModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->d:Lcom/tencent/qqpim/interfaces/ISyncModel;

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI;->c:Landroid/app/ProgressDialog;

    :cond_1
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI;->r:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->e(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/QQSyncUI;->finish()V

    :cond_0
    return-void
.end method
