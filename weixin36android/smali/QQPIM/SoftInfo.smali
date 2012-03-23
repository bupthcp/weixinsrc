.class public final LQQPIM/SoftInfo;
.super Lcom/a/a/a/g;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_asopt:I

.field static cache_picurls:Ljava/util/ArrayList;

.field static cache_procinfo:Ljava/util/ArrayList;

.field static cache_softkey:LQQPIM/SoftKey;


# instance fields
.field public asopt:I

.field public autostart:I

.field public description:Ljava/lang/String;

.field public downloadtimes:I

.field public filesize:I

.field public fileurl:Ljava/lang/String;

.field public function:Ljava/lang/String;

.field public iFileID:I

.field public iProductID:I

.field public iSoftID:I

.field public logourl:Ljava/lang/String;

.field public netaccess:I

.field public nick_name:Ljava/lang/String;

.field public official:I

.field public phonemonitor:I

.field public picurls:Ljava/util/ArrayList;

.field public procinfo:Ljava/util/ArrayList;

.field public publishtime:Ljava/lang/String;

.field public reportFeature:I

.field public score:I

.field public short_desc:Ljava/lang/String;

.field public smsmonitor:I

.field public softDescTimestamp:I

.field public softclass:Ljava/lang/String;

.field public softkey:LQQPIM/SoftKey;

.field public suser:I

.field public type:Ljava/lang/String;

.field public update:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/SoftInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/SoftInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    iput-object v2, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    iput-object v2, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    iput v1, p0, LQQPIM/SoftInfo;->smsmonitor:I

    iput v1, p0, LQQPIM/SoftInfo;->phonemonitor:I

    iput v1, p0, LQQPIM/SoftInfo;->netaccess:I

    iput v1, p0, LQQPIM/SoftInfo;->autostart:I

    iput v1, p0, LQQPIM/SoftInfo;->asopt:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftInfo;->reportFeature:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftInfo;->filesize:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftInfo;->downloadtimes:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    iput-object v2, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    iput v1, p0, LQQPIM/SoftInfo;->official:I

    iput v1, p0, LQQPIM/SoftInfo;->update:I

    iput v1, p0, LQQPIM/SoftInfo;->score:I

    iput v1, p0, LQQPIM/SoftInfo;->suser:I

    iput v1, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    iput v1, p0, LQQPIM/SoftInfo;->iProductID:I

    iput v1, p0, LQQPIM/SoftInfo;->iSoftID:I

    iput v1, p0, LQQPIM/SoftInfo;->iFileID:I

    return-void
.end method

.method public constructor <init>(LQQPIM/SoftKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IIIIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IIIIIIII)V
    .locals 2

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->smsmonitor:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->phonemonitor:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->netaccess:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->autostart:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->asopt:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->reportFeature:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->filesize:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->downloadtimes:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->official:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->update:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->score:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->suser:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->iProductID:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->iSoftID:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftInfo;->iFileID:I

    iput-object p1, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    iput-object p2, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    iput-object p4, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    iput-object p5, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    iput-object p6, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    iput p7, p0, LQQPIM/SoftInfo;->smsmonitor:I

    iput p8, p0, LQQPIM/SoftInfo;->phonemonitor:I

    iput p9, p0, LQQPIM/SoftInfo;->netaccess:I

    iput p10, p0, LQQPIM/SoftInfo;->autostart:I

    iput p11, p0, LQQPIM/SoftInfo;->asopt:I

    iput-object p12, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    iput p13, p0, LQQPIM/SoftInfo;->reportFeature:I

    move-object/from16 v0, p14

    iput-object v0, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    move/from16 v0, p15

    iput v0, p0, LQQPIM/SoftInfo;->filesize:I

    move-object/from16 v0, p16

    iput-object v0, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    move/from16 v0, p17

    iput v0, p0, LQQPIM/SoftInfo;->downloadtimes:I

    move-object/from16 v0, p18

    iput-object v0, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    move/from16 v0, p21

    iput v0, p0, LQQPIM/SoftInfo;->official:I

    move/from16 v0, p22

    iput v0, p0, LQQPIM/SoftInfo;->update:I

    move/from16 v0, p23

    iput v0, p0, LQQPIM/SoftInfo;->score:I

    move/from16 v0, p24

    iput v0, p0, LQQPIM/SoftInfo;->suser:I

    move/from16 v0, p25

    iput v0, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    move/from16 v0, p26

    iput v0, p0, LQQPIM/SoftInfo;->iProductID:I

    move/from16 v0, p27

    iput v0, p0, LQQPIM/SoftInfo;->iSoftID:I

    move/from16 v0, p28

    iput v0, p0, LQQPIM/SoftInfo;->iFileID:I

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftInfo"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v1, LQQPIM/SoftInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    const-string v2, "softkey"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Lcom/a/a/a/g;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    const-string v2, "short_desc"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    const-string v2, "softclass"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    const-string v2, "procinfo"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/util/Collection;Ljava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->smsmonitor:I

    const-string v2, "smsmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->phonemonitor:I

    const-string v2, "phonemonitor"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->netaccess:I

    const-string v2, "netaccess"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->autostart:I

    const-string v2, "autostart"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->asopt:I

    const-string v2, "asopt"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    const-string v2, "nick_name"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->reportFeature:I

    const-string v2, "reportFeature"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    const-string v2, "logourl"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->filesize:I

    const-string v2, "filesize"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    const-string v2, "publishtime"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->downloadtimes:I

    const-string v2, "downloadtimes"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    const-string v2, "function"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    const-string v2, "fileurl"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    const-string v2, "picurls"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/util/Collection;Ljava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->official:I

    const-string v2, "official"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->update:I

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->score:I

    const-string v2, "score"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->suser:I

    const-string v2, "suser"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    const-string v2, "softDescTimestamp"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->iProductID:I

    const-string v2, "iProductID"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->iSoftID:I

    const-string v2, "iSoftID"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftInfo;->iFileID:I

    const-string v2, "iFileID"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/SoftInfo;

    iget-object v0, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    iget-object v1, p1, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    iget-object v1, p1, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->smsmonitor:I

    iget v1, p1, LQQPIM/SoftInfo;->smsmonitor:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->phonemonitor:I

    iget v1, p1, LQQPIM/SoftInfo;->phonemonitor:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->netaccess:I

    iget v1, p1, LQQPIM/SoftInfo;->netaccess:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->autostart:I

    iget v1, p1, LQQPIM/SoftInfo;->autostart:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->asopt:I

    iget v1, p1, LQQPIM/SoftInfo;->asopt:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->reportFeature:I

    iget v1, p1, LQQPIM/SoftInfo;->reportFeature:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->filesize:I

    iget v1, p1, LQQPIM/SoftInfo;->filesize:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->downloadtimes:I

    iget v1, p1, LQQPIM/SoftInfo;->downloadtimes:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    iget-object v1, p1, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->official:I

    iget v1, p1, LQQPIM/SoftInfo;->official:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->update:I

    iget v1, p1, LQQPIM/SoftInfo;->update:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->score:I

    iget v1, p1, LQQPIM/SoftInfo;->score:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->suser:I

    iget v1, p1, LQQPIM/SoftInfo;->suser:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    iget v1, p1, LQQPIM/SoftInfo;->softDescTimestamp:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->iProductID:I

    iget v1, p1, LQQPIM/SoftInfo;->iProductID:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->iSoftID:I

    iget v1, p1, LQQPIM/SoftInfo;->iSoftID:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftInfo;->iFileID:I

    iget v1, p1, LQQPIM/SoftInfo;->iFileID:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAsopt()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->asopt:I

    return v0
.end method

.method public final getAutostart()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->autostart:I

    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadtimes()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->downloadtimes:I

    return v0
.end method

.method public final getFilesize()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->filesize:I

    return v0
.end method

.method public final getFileurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    return-object v0
.end method

.method public final getFunction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    return-object v0
.end method

.method public final getIFileID()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->iFileID:I

    return v0
.end method

.method public final getIProductID()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->iProductID:I

    return v0
.end method

.method public final getISoftID()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->iSoftID:I

    return v0
.end method

.method public final getLogourl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetaccess()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->netaccess:I

    return v0
.end method

.method public final getNick_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOfficial()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->official:I

    return v0
.end method

.method public final getPhonemonitor()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->phonemonitor:I

    return v0
.end method

.method public final getPicurls()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getProcinfo()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPublishtime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    return-object v0
.end method

.method public final getReportFeature()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->reportFeature:I

    return v0
.end method

.method public final getScore()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->score:I

    return v0
.end method

.method public final getShort_desc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getSmsmonitor()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->smsmonitor:I

    return v0
.end method

.method public final getSoftDescTimestamp()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    return v0
.end method

.method public final getSoftclass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    return-object v0
.end method

.method public final getSoftkey()LQQPIM/SoftKey;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    return-object v0
.end method

.method public final getSuser()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->suser:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdate()I
    .locals 1

    iget v0, p0, LQQPIM/SoftInfo;->update:I

    return v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, LQQPIM/SoftInfo;->cache_softkey:LQQPIM/SoftKey;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/SoftKey;

    invoke-direct {v0}, LQQPIM/SoftKey;-><init>()V

    sput-object v0, LQQPIM/SoftInfo;->cache_softkey:LQQPIM/SoftKey;

    :cond_0
    sget-object v0, LQQPIM/SoftInfo;->cache_softkey:LQQPIM/SoftKey;

    invoke-virtual {p1, v0, v2, v1}, Lcom/a/a/a/a;->a(Lcom/a/a/a/g;IZ)Lcom/a/a/a/g;

    move-result-object v0

    check-cast v0, LQQPIM/SoftKey;

    iput-object v0, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    invoke-virtual {p1, v1, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    sget-object v0, LQQPIM/SoftInfo;->cache_procinfo:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/SoftInfo;->cache_procinfo:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/ProcInfo;

    invoke-direct {v0}, LQQPIM/ProcInfo;-><init>()V

    sget-object v1, LQQPIM/SoftInfo;->cache_procinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LQQPIM/SoftInfo;->cache_procinfo:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setProcinfo(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/SoftInfo;->smsmonitor:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSmsmonitor(I)V

    iget v0, p0, LQQPIM/SoftInfo;->phonemonitor:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPhonemonitor(I)V

    iget v0, p0, LQQPIM/SoftInfo;->netaccess:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setNetaccess(I)V

    iget v0, p0, LQQPIM/SoftInfo;->autostart:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setAutostart(I)V

    iget v0, p0, LQQPIM/SoftInfo;->asopt:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setAsopt(I)V

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setNick_name(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftInfo;->reportFeature:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setReportFeature(I)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setLogourl(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftInfo;->filesize:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFilesize(I)V

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPublishtime(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftInfo;->downloadtimes:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setDownloadtimes(I)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFunction(Ljava/lang/String;)V

    const/16 v0, 0x12

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setFileurl(Ljava/lang/String;)V

    sget-object v0, LQQPIM/SoftInfo;->cache_picurls:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/SoftInfo;->cache_picurls:Ljava/util/ArrayList;

    const-string v0, ""

    sget-object v1, LQQPIM/SoftInfo;->cache_picurls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, LQQPIM/SoftInfo;->cache_picurls:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setPicurls(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/SoftInfo;->official:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setOfficial(I)V

    iget v0, p0, LQQPIM/SoftInfo;->update:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setUpdate(I)V

    iget v0, p0, LQQPIM/SoftInfo;->score:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setScore(I)V

    iget v0, p0, LQQPIM/SoftInfo;->suser:I

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSuser(I)V

    iget v0, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setSoftDescTimestamp(I)V

    iget v0, p0, LQQPIM/SoftInfo;->iProductID:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setIProductID(I)V

    iget v0, p0, LQQPIM/SoftInfo;->iSoftID:I

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setISoftID(I)V

    iget v0, p0, LQQPIM/SoftInfo;->iFileID:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftInfo;->setIFileID(I)V

    return-void
.end method

.method public final setAsopt(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->asopt:I

    return-void
.end method

.method public final setAutostart(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->autostart:I

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDownloadtimes(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->downloadtimes:I

    return-void
.end method

.method public final setFilesize(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->filesize:I

    return-void
.end method

.method public final setFileurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    return-void
.end method

.method public final setFunction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    return-void
.end method

.method public final setIFileID(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->iFileID:I

    return-void
.end method

.method public final setIProductID(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->iProductID:I

    return-void
.end method

.method public final setISoftID(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->iSoftID:I

    return-void
.end method

.method public final setLogourl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    return-void
.end method

.method public final setNetaccess(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->netaccess:I

    return-void
.end method

.method public final setNick_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    return-void
.end method

.method public final setOfficial(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->official:I

    return-void
.end method

.method public final setPhonemonitor(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->phonemonitor:I

    return-void
.end method

.method public final setPicurls(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    return-void
.end method

.method public final setProcinfo(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    return-void
.end method

.method public final setPublishtime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    return-void
.end method

.method public final setReportFeature(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->reportFeature:I

    return-void
.end method

.method public final setScore(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->score:I

    return-void
.end method

.method public final setShort_desc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    return-void
.end method

.method public final setSmsmonitor(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->smsmonitor:I

    return-void
.end method

.method public final setSoftDescTimestamp(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    return-void
.end method

.method public final setSoftclass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    return-void
.end method

.method public final setSoftkey(LQQPIM/SoftKey;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    return-void
.end method

.method public final setSuser(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->suser:I

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public final setUpdate(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftInfo;->update:I

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget-object v0, p0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Lcom/a/a/a/g;I)V

    iget-object v0, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftInfo;->short_desc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/SoftInfo;->description:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/SoftInfo;->type:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/SoftInfo;->softclass:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, LQQPIM/SoftInfo;->procinfo:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/util/Collection;I)V

    :cond_4
    iget v0, p0, LQQPIM/SoftInfo;->smsmonitor:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftInfo;->phonemonitor:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftInfo;->netaccess:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftInfo;->autostart:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftInfo;->asopt:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget-object v0, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, LQQPIM/SoftInfo;->nick_name:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_5
    iget v0, p0, LQQPIM/SoftInfo;->reportFeature:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget-object v0, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, LQQPIM/SoftInfo;->logourl:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_6
    iget v0, p0, LQQPIM/SoftInfo;->filesize:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget-object v0, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, LQQPIM/SoftInfo;->publishtime:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_7
    iget v0, p0, LQQPIM/SoftInfo;->downloadtimes:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget-object v0, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, LQQPIM/SoftInfo;->function:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_8
    iget-object v0, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, LQQPIM/SoftInfo;->fileurl:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_9
    iget-object v0, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, LQQPIM/SoftInfo;->picurls:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/util/Collection;I)V

    :cond_a
    iget v0, p0, LQQPIM/SoftInfo;->official:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftInfo;->update:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftInfo;->score:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftInfo;->suser:I

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftInfo;->softDescTimestamp:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftInfo;->iProductID:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftInfo;->iSoftID:I

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftInfo;->iFileID:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    return-void
.end method
