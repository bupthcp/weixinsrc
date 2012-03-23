.class Lcom/tencent/mm/ui/contact/ContactWidgetLBS$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/contact/ContactWidgetLBS;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$1;->a:Lcom/tencent/mm/ui/contact/ContactWidgetLBS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$1;->a:Lcom/tencent/mm/ui/contact/ContactWidgetLBS;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a(Landroid/content/Context;ZLcom/tencent/mm/ui/MListAdapter;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
