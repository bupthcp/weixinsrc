.class Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;->c:Ljava/lang/String;

    const-string v0, "emoji_33"

    iput-object v0, p0, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;->d:Ljava/lang/String;

    return-void
.end method
