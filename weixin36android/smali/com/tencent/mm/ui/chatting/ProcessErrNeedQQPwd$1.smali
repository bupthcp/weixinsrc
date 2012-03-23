.class Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$1;->b:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$1;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$1;->b:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$1;->b:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->b(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$1;->b:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$1;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;Ljava/lang/String;)V

    return-void
.end method
