.class Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend$2;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend$2;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;->a(Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;->a(Landroid/content/Context;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
