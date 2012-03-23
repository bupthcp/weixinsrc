.class Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr$1;
.super Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
