.class Lcom/tencent/mm/plugin/album/ui/MMHorList$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/album/ui/MMHorList;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/album/ui/MMHorList;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$1;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$1;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->requestLayout()V

    return-void
.end method
