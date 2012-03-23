.class public Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;
.super Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;
    .locals 1

    new-instance v0, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;

    invoke-direct {v0, p0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
