.class public final Lcom/tencent/a/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/a/b/d;


# instance fields
.field private a:Landroid/telephony/gsm/SmsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/c;->a:Landroid/telephony/gsm/SmsManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/a/b/c;->a:Landroid/telephony/gsm/SmsManager;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    const/4 v0, 0x1

    return v0
.end method
