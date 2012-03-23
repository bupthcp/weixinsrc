.class Lcom/tencent/mm/ui/ChoiceItem;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/ui/ChoiceItem;->b:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/tencent/mm/ui/ChoiceItem;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/RadioButton;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/ChoiceItem;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/tencent/mm/ui/ChoiceItem;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setId(I)V

    return-void
.end method
