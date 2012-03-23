.class Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    new-instance v2, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10$1;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;)V

    invoke-static {v1, v3, v0, v3, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    return-void
.end method
