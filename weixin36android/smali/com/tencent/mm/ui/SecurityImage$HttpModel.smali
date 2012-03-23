.class public Lcom/tencent/mm/ui/SecurityImage$HttpModel;
.super Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;-><init>()V

    new-instance v0, Lcom/tencent/mm/ui/SecurityImage$HttpModel$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/SecurityImage$HttpModel$1;-><init>(Lcom/tencent/mm/ui/SecurityImage$HttpModel;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/SecurityImage$HttpModel;->c:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/mm/ui/SecurityImage$HttpModel;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/SecurityImage$HttpModel;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/SecurityImage$HttpModel;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/SecurityImage$HttpModel;)V
    .locals 3

    iget-object v1, p0, Lcom/tencent/mm/ui/SecurityImage$HttpModel;->e:Lcom/tencent/mm/ui/SecurityImage;

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage$HttpModel;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/tencent/mm/ui/SecurityImage$HttpModel;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ui/SecurityImage;->a(ZLandroid/graphics/Bitmap;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/SecurityImage$HttpModel;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage$HttpModel;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/SecurityImage$HttpModel;->b:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/tencent/mm/ui/SecurityImage$HttpModel$HttpGetTask;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/SecurityImage$HttpModel$HttpGetTask;-><init>(Lcom/tencent/mm/ui/SecurityImage$HttpModel;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/ui/SecurityImage$HttpModel;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/SecurityImage$HttpModel$HttpGetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/SecurityImage;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/SecurityImage$HttpModel;->e:Lcom/tencent/mm/ui/SecurityImage;

    return-void
.end method

.method protected final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/SecurityImage$HttpModel;->a()V

    return-void
.end method
