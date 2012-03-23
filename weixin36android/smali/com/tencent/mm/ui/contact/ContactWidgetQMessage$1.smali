.class Lcom/tencent/mm/ui/contact/ContactWidgetQMessage$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/contact/ContactWidgetQMessage;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/ContactWidgetQMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQMessage$1;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x2000

    const/16 v1, 0xc

    invoke-static {v0, v2, v1}, Lcom/tencent/mm/ui/contact/ContactWidgetQMessage;->a(IZI)V

    const/16 v0, 0x40

    const/4 v1, 0x5

    invoke-static {v0, v2, v1}, Lcom/tencent/mm/ui/contact/ContactWidgetQMessage;->a(IZI)V

    return-void
.end method
