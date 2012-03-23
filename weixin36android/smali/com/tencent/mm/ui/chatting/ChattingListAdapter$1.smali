.class Lcom/tencent/mm/ui/chatting/ChattingListAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field private synthetic b:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingListAdapter;Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$1;->b:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$1;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$1;->b:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Lcom/tencent/mm/ui/chatting/ChattingListAdapter;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$1;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
