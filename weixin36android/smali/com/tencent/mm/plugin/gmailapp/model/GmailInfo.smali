.class public Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;->a:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;->b:I

    iput v1, p0, Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;->c:I

    iput v1, p0, Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;->f:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;->g:I

    iput v1, p0, Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;->h:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;->a:Ljava/lang/String;

    goto :goto_0
.end method
