.class Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$10;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$10;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$10$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$10$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$10;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$10;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->e(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
