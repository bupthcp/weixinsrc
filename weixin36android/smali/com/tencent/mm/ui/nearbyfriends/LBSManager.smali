.class public Lcom/tencent/mm/ui/nearbyfriends/LBSManager;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static b:F

.field private static c:F

.field private static d:I

.field private static e:J


# instance fields
.field a:Z

.field private f:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

.field private g:Landroid/location/LocationManager;

.field private h:Landroid/content/Context;

.field private i:Landroid/app/PendingIntent;

.field private j:Z

.field private k:I

.field private l:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

.field private m:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x3b86

    sput v0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->b:F

    sput v0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->c:F

    const/16 v0, -0x3e8

    sput v0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean v2, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->j:Z

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/nearbyfriends/LBSManager$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager$1;-><init>(Lcom/tencent/mm/ui/nearbyfriends/LBSManager;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->m:Lcom/tencent/mm/platformtools/MTimerHandler;

    iput-object p2, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->f:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

    iput-boolean v2, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->a:Z

    iput v2, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->k:I

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->h:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->g:Landroid/location/LocationManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "filter_gps"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x800

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->i:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/nearbyfriends/LBSManager;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->j:Z

    return v0
.end method

.method private g()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->g:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->g:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->m:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-virtual {p0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->g()Z

    move-result v1

    sget-wide v2, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->e:J

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v2

    const-wide/32 v7, 0x2bf20

    cmp-long v0, v2, v7

    if-gtz v0, :cond_0

    sget v0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->d:I

    if-gtz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->f:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

    if-eqz v0, :cond_3

    const-string v0, "MicroMsg.LBSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location by GPS cache ok:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->c:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accuracy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->f:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

    sget v1, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->b:F

    sget v2, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->c:F

    sget v3, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->d:I

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v0 .. v7}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;->a(FFIILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->c()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-boolean v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->j:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->j:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->k:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->c()V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->m:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_1

    :cond_4
    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "MicroMsg.LBSManager"

    const-string v1, "get location by network failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->f:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->f:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

    const/high16 v1, -0x3b86

    const/high16 v2, -0x3b86

    const/16 v3, -0x3e8

    const/4 v4, 0x1

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;->a(FFIILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    const-string v0, "MicroMsg.LBSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get location by network ok, macs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cell ids :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->f:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->f:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

    const/high16 v1, -0x3b86

    const/high16 v2, -0x3b86

    const/16 v3, -0x3e8

    const/4 v4, 0x1

    const/4 v7, 0x1

    invoke-interface/range {v0 .. v7}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;->a(FFIILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    const-string v0, "MicroMsg.LBSManager"

    const-string v1, "removed gps update"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->g:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->g:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->h:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.LBSManager"

    const-string v1, "sensor receiver has already unregistered"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->h()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "MicroMsg.LBSManager"

    const-string v1, "requested gps update"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "filter_gps"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->h:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->g:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->i:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->g:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->i:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    :cond_2
    new-instance v0, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-direct {v0}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->l:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->g:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->g:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    const-string v0, "MicroMsg.LBSManager"

    const-string v1, "removed gps update on destroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->m:Lcom/tencent/mm/platformtools/MTimerHandler;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->i()V

    :cond_1
    iput-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->f:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

    iput-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->h:Landroid/content/Context;

    iput-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->m:Lcom/tencent/mm/platformtools/MTimerHandler;

    iput-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->g:Landroid/location/LocationManager;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->h:Landroid/content/Context;

    invoke-static {v0}, Lb/a/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->h:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.LBSManager"

    const-string v1, "no wifi service"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "MicroMsg.LBSManager"

    const-string v1, "WIFILocation wifi info null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v4, Lcom/tencent/mm/modelsimple/NetSceneLbsFind$MacInfo;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind$MacInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/location/Location;

    iget v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->k:I

    if-eqz v3, :cond_3

    const-string v0, "gps"

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MicroMsg.LBSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceived time:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->l:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-virtual {v4}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x4348

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    if-nez v0, :cond_3

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x442f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    :cond_1
    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v2, v4

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-int v4, v4

    if-eqz v4, :cond_2

    sput v1, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->b:F

    sput v2, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->c:F

    sput v4, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->d:I

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v1

    sput-wide v1, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->e:J

    :cond_2
    const-string v1, "MicroMsg.LBSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location by GPS ok:["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "accuracy:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  retry count:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->k:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isGpsProvider:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->f:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->a:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->i()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_4

    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->f:Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    double-to-float v2, v8

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-int v3, v3

    invoke-interface/range {v0 .. v7}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;->a(FFIILjava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void

    :cond_4
    move v4, v7

    goto :goto_0
.end method
