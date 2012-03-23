.class Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private synthetic c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingListAdapter;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/16 v3, 0xc6

    const/4 v2, 0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b(Lcom/tencent/mm/ui/chatting/ChattingListAdapter;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;->b:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->e(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->h()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->i()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->h(I)V

    :goto_1
    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(J)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->b(J)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->c(J)V

    const/16 v1, 0xf00

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(I)V

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->a(Lcom/tencent/mm/modelvideo/VideoInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->j()Lcom/tencent/mm/modelvideo/VideoService$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoService$Service;->a()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->h(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->c(Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;->a:Ljava/lang/String;

    new-instance v1, Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-direct {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;-><init>()V

    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->h(I)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->b(J)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->c(J)V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(Ljava/lang/String;)V

    const/16 v0, 0xd00

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(I)V

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/VideoLogic;->a(Lcom/tencent/mm/modelvideo/VideoInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->j()Lcom/tencent/mm/modelvideo/VideoService$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoService$Service;->a()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b(Lcom/tencent/mm/ui/chatting/ChattingListAdapter;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/network/NetService;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->a:Z

    if-nez v0, :cond_6

    sput-boolean v2, Lcom/tencent/mm/ui/chatting/ChattingUI;->a:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b(Lcom/tencent/mm/ui/chatting/ChattingListAdapter;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    const v1, 0x7f0a0331

    const v2, 0x7f0a0010

    new-instance v3, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener$1;-><init>(Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;)V

    new-instance v4, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener$2;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener$2;-><init>(Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->d(Ljava/lang/String;)I

    goto/16 :goto_0
.end method
