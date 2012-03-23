.class Lcom/tencent/mm/ui/location/WebViewMap$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/location/WebViewMap;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/location/WebViewMap;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/location/WebViewMap$3;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap$3;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/location/WebViewMap;->finish()V

    return-void
.end method
