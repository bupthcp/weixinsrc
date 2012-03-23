.class final Lcom/tencent/mm/ui/MMAlert$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;

.field private synthetic c:Landroid/app/Dialog;

.field private synthetic d:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;Landroid/app/Dialog;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMAlert$9;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/ui/MMAlert$9;->b:Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;

    iput-object p3, p0, Lcom/tencent/mm/ui/MMAlert$9;->c:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/tencent/mm/ui/MMAlert$9;->d:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMAlert$9;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMAlert$9;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p3, -0x1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMAlert$9;->b:Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;

    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMAlert$9;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMAlert$9;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMAlert$9;->b:Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;

    invoke-interface {v0, p3}, Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMAlert$9;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMAlert$9;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_0
.end method
