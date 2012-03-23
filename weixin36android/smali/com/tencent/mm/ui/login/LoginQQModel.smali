.class Lcom/tencent/mm/ui/login/LoginQQModel;
.super Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:[B


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginQQModel;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginQQModel;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginQQModel;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginQQModel;->d:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneAuth;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/LoginQQModel;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginQQModel;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/login/LoginQQModel;->e:Lcom/tencent/mm/ui/SecurityImage;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/SecurityImage;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/login/LoginQQModel;->e:Lcom/tencent/mm/ui/SecurityImage;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/SecurityImage;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/mm/modelsimple/NetSceneAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method

.method protected final b()V
    .locals 0

    return-void
.end method
