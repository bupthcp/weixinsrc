.class Lcom/tencent/mm/ui/tools/CropImageUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/tools/CropImageUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/CropImageUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/CropImageUI$2;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$2;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(Lcom/tencent/mm/ui/tools/CropImageUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$2;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->l(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$2;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->m(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    return-void
.end method
