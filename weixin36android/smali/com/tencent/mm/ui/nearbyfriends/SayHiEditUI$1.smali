.class Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:I

.field private synthetic c:Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI$1;->c:Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI$1;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI$1;->c:Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;->a(Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/modelverify/NetSceneVerifyUser;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/tencent/mm/modelverify/NetSceneVerifyUser;-><init>(ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI$1;->c:Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI$1;->c:Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;->c()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI$1;->c:Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;

    const v4, 0x7f0a0010

    invoke-virtual {v2, v4}, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI$1;->c:Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;

    const v5, 0x7f0a031d

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI$1$1;

    invoke-direct {v6, p0, v3}, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI$1$1;-><init>(Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI$1;Lcom/tencent/mm/modelverify/NetSceneVerifyUser;)V

    invoke-static {v1, v2, v4, v5, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;->a(Lcom/tencent/mm/ui/nearbyfriends/SayHiEditUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
