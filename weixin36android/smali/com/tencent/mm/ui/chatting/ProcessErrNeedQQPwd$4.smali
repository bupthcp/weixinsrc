.class Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$4;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$4;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$4;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->b(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$4;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$4;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->b()V

    return-void
.end method
