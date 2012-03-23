.class final Lcom/tencent/mm/ui/contact/ContactWidgetQQSync$2;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/tencent/mm/ui/MListAdapter;


# direct methods
.method constructor <init>(ZLcom/tencent/mm/ui/MListAdapter;)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQSync$2;->a:Z

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQSync$2;->b:Lcom/tencent/mm/ui/MListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQSync$2;->a:Z

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQSync;->a(Z)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQSync$2;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetQQSync;->b()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQSync$2;->b:Lcom/tencent/mm/ui/MListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQSync$2;->b:Lcom/tencent/mm/ui/MListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MListAdapter;->a_(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
