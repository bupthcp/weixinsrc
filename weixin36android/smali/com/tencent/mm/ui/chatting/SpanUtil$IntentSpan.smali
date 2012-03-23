.class Lcom/tencent/mm/ui/chatting/SpanUtil$IntentSpan;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field private final a:Lcom/tencent/mm/ui/chatting/SpanUtil$OnSpanClick;

.field private final b:Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/chatting/SpanUtil$OnSpanClick;Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$IntentSpan;->a:Lcom/tencent/mm/ui/chatting/SpanUtil$OnSpanClick;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$IntentSpan;->b:Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$IntentSpan;->a:Lcom/tencent/mm/ui/chatting/SpanUtil$OnSpanClick;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$IntentSpan;->b:Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnSpanClick;->a(Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;)V

    return-void
.end method
