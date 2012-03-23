.class public Lcom/tencent/mm/modelvoice/VoiceRecorder;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field private static f:I


# instance fields
.field private b:Lcom/tencent/mm/modelvoice/MediaRecorder;

.field private c:Ljava/lang/String;

.field private d:Lcom/tencent/mm/modelvoice/VoiceRecorder$OnErrorListener;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->a:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0xdac

    sput v0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->a:I

    const/16 v0, 0x64

    sput v0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->d:Lcom/tencent/mm/modelvoice/VoiceRecorder$OnErrorListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->e:I

    new-instance v0, Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-direct {v0, p1}, Lcom/tencent/mm/modelvoice/MediaRecorder;-><init>(Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;)V

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/VoiceRecorder;)Lcom/tencent/mm/modelvoice/VoiceRecorder$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->d:Lcom/tencent/mm/modelvoice/VoiceRecorder$OnErrorListener;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelvoice/VoiceRecorder;)Lcom/tencent/mm/modelvoice/MediaRecorder;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/modelvoice/VoiceRecorder;)I
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->e:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->e:I

    return v0
.end method

.method public final a(Lcom/tencent/mm/modelvoice/VoiceRecorder$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->d:Lcom/tencent/mm/modelvoice/VoiceRecorder$OnErrorListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v2, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-direct {v2}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v1, "VoiceRecorder"

    const-string v2, "Duplicate Call startRecord , maybe Stop Fail Before"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->c:Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder;

    new-instance v4, Lcom/tencent/mm/modelvoice/VoiceRecorder$1;

    invoke-direct {v4, p0}, Lcom/tencent/mm/modelvoice/VoiceRecorder$1;-><init>(Lcom/tencent/mm/modelvoice/VoiceRecorder;)V

    invoke-virtual {v3, v4}, Lcom/tencent/mm/modelvoice/MediaRecorder;->a(Lcom/tencent/mm/modelvoice/MediaRecorder$OnErrorListener;)V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/MediaRecorder;->c()V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/MediaRecorder;->d()V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/MediaRecorder;->b()V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder;

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/mm/modelvoice/MediaRecorder;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/MediaRecorder;->a()V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/MediaRecorder;->g()V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/MediaRecorder;->f()V

    const-string v3, "VoiceRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StartRecord File["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] start time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput v1, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->e:I

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VoiceRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartRecord File["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ErrMsg["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->e:I

    goto/16 :goto_0
.end method

.method public final b()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvoice/MediaRecorder;->i()Z

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvoice/MediaRecorder;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->c:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->e:I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "VoiceRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StopRecord File["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ErrMsg["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->e:I

    move v0, v1

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->e()I

    move-result v0

    sget v1, Lcom/tencent/mm/modelvoice/VoiceRecorder;->f:I

    if-le v0, v1, :cond_0

    sput v0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->f:I

    :cond_0
    mul-int/lit8 v0, v0, 0x64

    sget v1, Lcom/tencent/mm/modelvoice/VoiceRecorder;->f:I

    div-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
