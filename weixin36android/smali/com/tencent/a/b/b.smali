.class public final Lcom/tencent/a/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/a/b/d;


# instance fields
.field private a:Landroid/telephony/SmsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/b;->a:Landroid/telephony/SmsManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/a/a/d;->a()Lcom/tencent/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/d;->b()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/b;->a:Landroid/telephony/SmsManager;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
