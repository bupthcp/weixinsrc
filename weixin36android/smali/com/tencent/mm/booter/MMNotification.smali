.class public Lcom/tencent/mm/booter/MMNotification;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/model/IOnNewMsgNotify;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Z

.field private f:J

.field private g:Landroid/content/Context;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    new-instance v0, Lcom/tencent/mm/booter/MMNotification$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/booter/MMNotification$1;-><init>(Lcom/tencent/mm/booter/MMNotification;)V

    iput-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/booter/MMNotification;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/booter/MMNotification;->e:Z

    invoke-static {p0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(Lcom/tencent/mm/model/IOnNewMsgNotify;)V

    invoke-static {p0}, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->a(Lcom/tencent/mm/model/IOnNewMsgNotify;)V

    invoke-static {p0}, Lcom/tencent/mm/modelemoji/EmojiService;->a(Lcom/tencent/mm/model/IOnNewMsgNotify;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/booter/MMNotification;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const v5, 0x7f0a00cf

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/booter/MMNotification;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "@bottle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const v1, 0x7f0a00d0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/tencent/mm/booter/MMNotification;->c:I

    sparse-switch v1, :sswitch_data_0

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_0
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const v2, 0x7f0a00cb

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const v2, 0x7f0a00cc

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    iget-object v1, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const v2, 0x7f0a00ce

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    iget-object v1, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const v2, 0x7f0a00cd

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_4
    iget-object v1, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const v2, 0x7f0a00d1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const v2, 0x7f0a00ca

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xd -> :sswitch_0
        0x17 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_3
        0x2f -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic a(Lcom/tencent/mm/booter/MMNotification;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    const/4 v11, -0x2

    const v10, 0x7f0a00db

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "keep_app_silent"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MicroMsg.MMNotification"

    const-string v3, "shouldKeepSilent: is locked"

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->k()Z

    move-result v3

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->o()I

    move-result v4

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->p()I

    move-result v5

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->F(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    iget v3, v6, Landroid/text/format/Time;->hour:I

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/platformtools/Util;->a(III)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->I(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    move v3, v2

    :goto_1
    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v0}, Lcom/tencent/mm/booter/MMNotification;->a(Z)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const-string v3, "com.tencent.mm_preferences"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "settings_shake"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Z)V

    const-string v2, "settings_sound"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keep_chatting_silent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v9}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-wide v3, p0, Lcom/tencent/mm/booter/MMNotification;->f:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_4

    const-string v0, "MicroMsg.MMNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldKeepSilent: lastNotSilentTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/tencent/mm/booter/MMNotification;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/tencent/mm/booter/MMNotification;->f:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/tencent/mm/booter/MMNotification;->f:J

    const-wide/16 v7, 0x1388

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    const-string v0, "MicroMsg.MMNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldKeepSilent: lastNotSilentTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/tencent/mm/booter/MMNotification;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/mm/booter/MMNotification;->e:Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@chatroom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->d()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_1

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/booter/MMNotification;->a()V

    invoke-direct {p0, v0}, Lcom/tencent/mm/booter/MMNotification;->a(Z)V

    iget-object v3, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const-string v4, "com.tencent.mm_preferences"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v3, "settings_new_msg_notification"

    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "@chatroom"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->I(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    move v3, v2

    :goto_3
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    const v6, 0x7f0201f4

    iput v6, v5, Landroid/app/Notification;->icon:I

    const v6, -0xff0100

    iput v6, v5, Landroid/app/Notification;->ledARGB:I

    const/16 v6, 0x12c

    iput v6, v5, Landroid/app/Notification;->ledOnMS:I

    const/16 v6, 0x3e8

    iput v6, v5, Landroid/app/Notification;->ledOffMS:I

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroid/app/Notification;->flags:I

    const-string v6, "settings_sound"

    invoke-interface {v4, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v0, :cond_7

    if-eqz v3, :cond_7

    iget v6, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroid/app/Notification;->defaults:I

    :cond_7
    const-string v6, "settings_shake"

    invoke-interface {v4, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v0, :cond_8

    if-eqz v3, :cond_8

    iget v0, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v5, Landroid/app/Notification;->defaults:I

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3, v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    sget-object v4, Lcom/tencent/mm/model/ContactStorageLogic;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/ConversationStorage;->h(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    sget-object v4, Lcom/tencent/mm/model/ContactStorageLogic;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/ConversationStorage;->i(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/booter/MMNotification;->d:I

    invoke-static {p1}, Lcom/tencent/mm/ui/MMAppMgr;->b(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mm/booter/MMNotification;->d:I

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    const-string v4, "floatbottle"

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/ConversationStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/storage/Conversation;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v0

    move v4, v0

    :goto_4
    sub-int v0, v4, v6

    if-nez v0, :cond_a

    if-lez v4, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const v6, 0x7f0a00d0

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_5
    iget-object v6, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    invoke-direct {p0, p1, v1}, Lcom/tencent/mm/booter/MMNotification;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v11}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const-class v8, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "nofification_type"

    const-string v8, "new_msg_nofification"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "talkerCount"

    iget v8, p0, Lcom/tencent/mm/booter/MMNotification;->d:I

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v7, p0, Lcom/tencent/mm/booter/MMNotification;->d:I

    if-gt v7, v1, :cond_e

    const-string v1, "Intro_Is_Muti_Talker"

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "Intro_Bottle_unread_count"

    invoke-virtual {v6, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_6
    const-string v1, "Main_User"

    invoke-virtual {v6, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MainUI_User_Last_Msg_Type"

    invoke-virtual {v6, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x2000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    invoke-static {v1, v3, v11}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const/4 v4, -0x1

    invoke-static {v3, v0, v4}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const/high16 v7, 0x800

    invoke-static {v4, v2, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v5, v3, v0, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v2, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_9
    invoke-static {p1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->k(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    if-lez v6, :cond_b

    if-lez v4, :cond_b

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const v7, 0x7f0a00c8

    new-array v8, v9, [Ljava/lang/Object;

    iget v9, p0, Lcom/tencent/mm/booter/MMNotification;->d:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-virtual {v3, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_b
    if-le v6, v1, :cond_d

    iget v0, p0, Lcom/tencent/mm/booter/MMNotification;->d:I

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const v7, 0x7f0a00c8

    new-array v8, v9, [Ljava/lang/Object;

    iget v9, p0, Lcom/tencent/mm/booter/MMNotification;->d:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-virtual {v3, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_c
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const v7, 0x7f0a00c9

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v2

    invoke-virtual {v3, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_d
    invoke-direct {p0, p1, v2}, Lcom/tencent/mm/booter/MMNotification;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_e
    const-string v4, "Intro_Is_Muti_Talker"

    invoke-virtual {v6, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :cond_f
    move v4, v2

    goto/16 :goto_4

    :cond_10
    move v3, v1

    goto/16 :goto_3

    :cond_11
    move v3, v1

    goto/16 :goto_1
.end method

.method private a(Z)V
    .locals 4

    const-string v0, "MicroMsg.MMNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotifyInfo: silent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/booter/MMNotification;->e:Z

    if-nez p1, :cond_0

    const-string v0, "MicroMsg.MMNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotifyInfo : modify lastNotSilentTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/booter/MMNotification;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/booter/MMNotification;->f:J

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/booter/MMNotification;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/booter/MMNotification;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/booter/MMNotification;->c:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "MicroMsg.MMNotification"

    const-string v1, "cancelNotification"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/tencent/mm/booter/MMNotification;->e:Z

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const-class v2, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "nofification_type"

    const-string v2, "update_nofification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "show_update_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "update_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f0201f4

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const v4, 0x7f0a0030

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const v5, 0x7f0a0031

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    return-void
.end method

.method public final a(Lcom/tencent/mm/storage/MsgInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/booter/MMNotification;->c:I

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    const/high16 v6, 0x1000

    const/4 v5, 0x0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const v0, 0x7f0201f4

    iput v0, v1, Landroid/app/Notification;->icon:I

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const-class v3, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Intro_Notify"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "Intro_Notify_User"

    iget-object v3, p0, Lcom/tencent/mm/booter/MMNotification;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->g:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MicroMsg.MMNotification"

    const-string v1, "get NotificationManager failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->b:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/booter/MMNotification;->c:I

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
