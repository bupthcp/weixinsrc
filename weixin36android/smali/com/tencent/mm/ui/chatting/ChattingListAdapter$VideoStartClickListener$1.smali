.class Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener$1;->a:Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener$1;->a:Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;->a(Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->d(Ljava/lang/String;)I

    return-void
.end method
