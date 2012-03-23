.class Lcom/tencent/mm/ui/tools/WhatsNewUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/tools/WhatsNewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/WhatsNewUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$2;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$2;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->a(Lcom/tencent/mm/ui/tools/WhatsNewUI;)Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$2;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    const v1, 0x7f070094

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$2;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$2;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->a(Lcom/tencent/mm/ui/tools/WhatsNewUI;)Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$2;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$2;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->c(Lcom/tencent/mm/ui/tools/WhatsNewUI;)Lcom/tencent/mm/ui/MMPageControlView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/MMPageControlView;->b(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
