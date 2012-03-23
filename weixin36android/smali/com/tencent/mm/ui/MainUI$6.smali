.class Lcom/tencent/mm/ui/MainUI$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MainUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MainUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MainUI$6;->a:Lcom/tencent/mm/ui/MainUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    const/16 v2, 0x3008

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->b(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI$6;->a:Lcom/tencent/mm/ui/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/MainUI;->c(Lcom/tencent/mm/ui/MainUI;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI$6;->a:Lcom/tencent/mm/ui/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/MainUI;->c(Lcom/tencent/mm/ui/MainUI;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI$6;->a:Lcom/tencent/mm/ui/MainUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$6;->a:Lcom/tencent/mm/ui/MainUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/MainUI$6;->a:Lcom/tencent/mm/ui/MainUI;

    const v3, 0x7f0a0131

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/MainUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMToast;->a(Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;J)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MainUI;->a(Lcom/tencent/mm/ui/MainUI;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
