.class Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeTask;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelqrcode/DecodeFile;


# direct methods
.method synthetic constructor <init>(Lcom/tencent/mm/modelqrcode/DecodeFile;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeTask;-><init>(Lcom/tencent/mm/modelqrcode/DecodeFile;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/modelqrcode/DecodeFile;B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeTask;->a:Lcom/tencent/mm/modelqrcode/DecodeFile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/tencent/mm/modelqrcode/DecodeFile;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeTask;->a:Lcom/tencent/mm/modelqrcode/DecodeFile;

    invoke-static {v0}, Lcom/tencent/mm/modelqrcode/DecodeFile;->a(Lcom/tencent/mm/modelqrcode/DecodeFile;)Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeFinCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeTask;->a:Lcom/tencent/mm/modelqrcode/DecodeFile;

    invoke-static {v0}, Lcom/tencent/mm/modelqrcode/DecodeFile;->a(Lcom/tencent/mm/modelqrcode/DecodeFile;)Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeFinCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeFinCallback;->a(Ljava/lang/String;)I

    :cond_0
    return-void
.end method
