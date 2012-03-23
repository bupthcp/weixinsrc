.class Lcom/tencent/mm/ui/bottle/BottleConversationUI$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$6;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$6;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->c(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lb/a/b;->a(Landroid/widget/ListView;)V

    return-void
.end method
