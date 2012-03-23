.class Lcom/tencent/mm/ui/chatting/ChattingUI$38;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvideo/ImportVideo;

.field private synthetic b:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/modelvideo/ImportVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$38;->b:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$38;->a:Lcom/tencent/mm/modelvideo/ImportVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$38;->a:Lcom/tencent/mm/modelvideo/ImportVideo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/ImportVideo;->a()V

    return-void
.end method
