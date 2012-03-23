.class final Lcom/tencent/mm/ui/MMAppMgr$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMAppMgr$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/ui/MMAppMgr$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/ui/MMAppMgr$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/MMAppMgr$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMAppMgr$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/MMAppMgr$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAppMgr;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
