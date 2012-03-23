.class Lcom/tencent/mm/ui/contact/ContactWidgetQMessage$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/preference/CheckBoxPreference;

.field private synthetic b:Lcom/tencent/mm/ui/contact/ContactWidgetQMessage;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/ContactWidgetQMessage;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQMessage$2;->b:Lcom/tencent/mm/ui/contact/ContactWidgetQMessage;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQMessage$2;->a:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQMessage$2;->a:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQMessage$2;->b:Lcom/tencent/mm/ui/contact/ContactWidgetQMessage;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQMessage;->a(Lcom/tencent/mm/ui/contact/ContactWidgetQMessage;)V

    return-void
.end method
