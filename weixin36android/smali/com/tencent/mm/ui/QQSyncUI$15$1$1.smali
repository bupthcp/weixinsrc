.class Lcom/tencent/mm/ui/QQSyncUI$15$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/QQSyncUI$15$1;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/QQSyncUI$15$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/QQSyncUI$15$1$1;->a:Lcom/tencent/mm/ui/QQSyncUI$15$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15$1$1;->a:Lcom/tencent/mm/ui/QQSyncUI$15$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/QQSyncUI$15$1;->b:Lcom/tencent/mm/ui/QQSyncUI$15;

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$15$1$1;->a:Lcom/tencent/mm/ui/QQSyncUI$15$1;

    iget-object v1, v1, Lcom/tencent/mm/ui/QQSyncUI$15$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/QQSyncUI$15;->a(Lcom/tencent/mm/ui/QQSyncUI$15;Ljava/lang/String;)V

    return-void
.end method
