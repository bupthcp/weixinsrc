.class public Lcom/tencent/mm/ui/chatting/SpanUtil;
.super Ljava/lang/Object;


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final c:Ljava/util/regex/Pattern;

.field private static g:F

.field private static h:F

.field private static final i:Lcom/tencent/mm/algorithm/LRUMap;


# instance fields
.field private final a:Landroid/content/Context;

.field private d:Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

.field private e:Ljava/util/List;

.field private final f:Lcom/tencent/mm/ui/chatting/SpanUtil$OnSpanClick;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<a.+?href\\s*=\\s*\"\\s*(.+?)\\s*\"\\s*>(.+?)</a>"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->b:[Ljava/lang/String;

    const-string v0, "((?:(http|https|Http|Https):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnrwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eouw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(\\/(?:(?:[a-zA-Z0-9\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->c:Ljava/util/regex/Pattern;

    const v0, 0x402ccccd

    sput v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->g:F

    const v0, 0x3e555555

    sput v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->h:F

    new-instance v0, Lcom/tencent/mm/algorithm/LRUMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/tencent/mm/algorithm/LRUMap;-><init>(I)V

    sput-object v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->i:Lcom/tencent/mm/algorithm/LRUMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/SpanUtil$1;-><init>(Lcom/tencent/mm/ui/chatting/SpanUtil;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil;->f:Lcom/tencent/mm/ui/chatting/SpanUtil$OnSpanClick;

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/SpanUtil;->d:Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->i:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/algorithm/LRUMap;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->c(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    sget-object v2, Lcom/tencent/mm/ui/chatting/SpanUtil;->i:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mm/algorithm/LRUMap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "MicroMsg.SpanUtil"

    const-string v2, "update emojiSpannableString cache"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    int-to-float v4, p2

    sget v5, Lcom/tencent/mm/ui/chatting/SpanUtil;->h:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, p2

    sget v6, Lcom/tencent/mm/ui/chatting/SpanUtil;->h:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v4, Landroid/text/style/ImageSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v3, v0, 0x1

    const/16 v5, 0x21

    invoke-virtual {p1, v4, v0, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/ui/chatting/SmileyManager;->a()V

    invoke-static {}, Lcom/tencent/mm/ui/EmojiManager;->a()V

    sget-object v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->i:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v0}, Lcom/tencent/mm/algorithm/LRUMap;->a()V

    return-void
.end method

.method private static a(ILandroid/widget/TextView;Landroid/text/SpannableString;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tencent/mm/ui/chatting/SpanUtil;->g:F

    invoke-static {v0, v1}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {p2, p0, v2}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/mm/ui/chatting/SmileyManager;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/SmileyData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v1, Lcom/tencent/mm/ui/chatting/SmileyData;->a:I

    invoke-static {v2, v3}, Lcom/tencent/mm/ui/chatting/SmileyManager;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v0, v4

    invoke-virtual {v2, v5, v5, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/text/style/ImageSpan;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/SmileyData;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p0

    const/16 v2, 0x21

    invoke-virtual {p2, v0, p0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const v3, 0x7f0a0045

    const/high16 v6, 0x1000

    const/high16 v5, 0x400

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const-string v0, "weixin://contacts/microblog/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "weixin://contacts/micromessenger/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "weixin://contacts/all/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/GroupInfoLogic;->b(Ljava/lang/String;)Lcom/tencent/mm/storage/GroupInfo;

    move-result-object v0

    const-string v1, "weixin://contacts/microblog/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/GroupInfoLogic;->b(Ljava/lang/String;)Lcom/tencent/mm/storage/GroupInfo;

    move-result-object v0

    :cond_2
    const-string v1, "weixin://contacts/micromessenger/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/GroupInfoLogic;->b(Ljava/lang/String;)Lcom/tencent/mm/storage/GroupInfo;

    move-result-object v0

    :cond_3
    const-string v1, "weixin://contacts/all/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/GroupInfoLogic;->b(Ljava/lang/String;)Lcom/tencent/mm/storage/GroupInfo;

    move-result-object v0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/AddressUI;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "Contact_GroupFilter_Type"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Contact_GroupFilter_Str"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Contact_GroupFilter_DisplayName"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    const-string v1, "tab_address"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MainTabUI;->b(Ljava/lang/String;)V

    :cond_5
    const-string v0, "weixin://contacts/profile/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "weixin://contacts/profile/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "Contact_User"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_6
    const-string v0, "weixin://setting/bindphone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/MMWizardActivity;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_7
    const-string v0, "weixin://setting/setheadimage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "Contact_User"

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_Nick"

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "User_Avatar"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_8
    const-string v0, "weixin://setting/binddomain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "weixin://flowstat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    const-string v1, "tab_settings"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MainTabUI;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->d()V

    :cond_a
    const-string v0, "weixin://setting/binddomain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    const-string v1, "tab_settings"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MainTabUI;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a(Landroid/content/Intent;)V

    :cond_b
    const-string v0, "weixin://setting/notify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    const-string v1, "tab_settings"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MainTabUI;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a(Landroid/content/Intent;)V

    :cond_c
    const-string v0, "weixin://setting/plugin/qqmail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "qqmail"

    const-string v2, "Contact_User"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_d
    const-string v0, "weixin://setting/plugin/lomo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "weibo"

    const-string v2, "Contact_User"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_e
    const-string v0, "weixin://setting/blacklist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/GroupInfoLogic;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/GroupInfo;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/AddressUI;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "Contact_GroupFilter_Type"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_GroupFilter_DisplayName"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    const-string v2, "tab_settings"

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/MainTabUI;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a(Landroid/content/Intent;)V

    :cond_f
    const-string v0, "weixin://setting/privacy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    const-string v1, "tab_settings"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MainTabUI;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a(Landroid/content/Intent;)V

    :cond_10
    const-string v0, "weixin://findfriend/search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/ContactSearchUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_11
    const-string v0, "weixin://findfriend/share"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_12
    const-string v0, "weixin://findfriend/qq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/friend/QQGroupUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_13
    const-string v0, "weixin://findfriend/mobile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/friend/MobileFriendUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_14
    const-string v0, "MicroMsg.SpanUtil"

    const-string v1, "no such link"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/widget/TextView;Landroid/text/SpannableString;)V
    .locals 10

    const/16 v9, 0x21

    const/4 v8, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    const/16 v4, 0x2f

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_2

    invoke-static {v0, p0, p1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(ILandroid/widget/TextView;Landroid/text/SpannableString;)V

    goto :goto_0

    :cond_3
    :goto_1
    const/16 v4, 0x5b

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v1, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_3

    invoke-static {v0, p0, p1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(ILandroid/widget/TextView;Landroid/text/SpannableString;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/tencent/mm/ui/chatting/SpanUtil;->g:F

    invoke-static {v0, v4}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v0

    move v0, v2

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_6

    aget-char v5, v3, v0

    invoke-static {v5}, Lcom/tencent/mm/platformtools/SmileyUtil;->a(C)I

    move-result v5

    if-eq v5, v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/tencent/mm/ui/EmojiManager;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5, v2, v2, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v5, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v6, v0, v5, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_3
    array-length v1, v3

    if-ge v0, v1, :cond_0

    aget-char v1, v3, v0

    const/16 v5, 0x20

    if-ne v1, v5, :cond_7

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    int-to-float v5, v4

    sget v6, Lcom/tencent/mm/ui/chatting/SpanUtil;->h:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v6, v4

    sget v7, Lcom/tencent/mm/ui/chatting/SpanUtil;->h:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v1, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v1, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v5, v0, v1, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/ui/chatting/SpanUtil;->i:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/algorithm/LRUMap;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->c(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/widget/TextView;)Landroid/text/SpannableString;
    .locals 2

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/widget/TextView;Landroid/text/SpannableString;)V

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil;->d:Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    packed-switch p2, :pswitch_data_0

    :goto_0
    sget v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->g:F

    invoke-static {p0, v0}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v0

    add-int v4, p2, v0

    move v0, v1

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    aget-char v5, v3, v0

    invoke-static {v5}, Lcom/tencent/mm/platformtools/SmileyUtil;->a(C)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-static {p0, v5}, Lcom/tencent/mm/ui/EmojiManager;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5, v1, v1, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v6, Landroid/text/style/ImageSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v5, v0, 0x1

    const/16 v7, 0x21

    invoke-virtual {v2, v6, v0, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f090002

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f090003

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/widget/TextView;)V
    .locals 7

    sget-object v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    :goto_0
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    new-instance v0, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;)V
    .locals 16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v1, Lcom/tencent/mm/ui/chatting/SpanUtil;->i:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v1, v14}, Lcom/tencent/mm/algorithm/LRUMap;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableString;

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/tencent/mm/ui/chatting/SpanUtil;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    add-int v3, v2, v1

    invoke-virtual {v15, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x2

    if-lt v1, v5, :cond_1b

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "http"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_1b

    move-object v1, v12

    move-object v2, v13

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://contacts/all/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->a:Landroid/content/Context;

    const v5, 0x7f0a0044

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v5, Lcom/tencent/mm/storage/GroupInfo;

    const-string v6, "@all.android"

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/tencent/mm/storage/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v6, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v10, 0x17

    move v7, v2

    move v8, v3

    move-object v9, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://contacts/microblog/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->a:Landroid/content/Context;

    const v5, 0x7f0a0046

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/GroupInfoLogic;->b(Ljava/lang/String;)Lcom/tencent/mm/storage/GroupInfo;

    move-result-object v6

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v5, 0x16

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://contacts/micromessenger/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->a:Landroid/content/Context;

    const v5, 0x7f0a0045

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v5, Lcom/tencent/mm/storage/GroupInfo;

    const-string v6, "@micromsg.qq.com"

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/tencent/mm/storage/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v6, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/4 v10, 0x2

    move v7, v2

    move v8, v3

    move-object v9, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://contacts/profile/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://contacts/profile/"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/4 v5, 0x3

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://findfriend/verifycontact"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://setting/bindphone"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://setting/setheadimage"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://setting/bindemail"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://setting/binddomain"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://setting/notify"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://setting/plugin/qqmail"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://setting/plugin/sxmsg"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://setting/plugin/lomo"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://setting/plugin/qqmsg"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://setting/blacklist"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_11
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://setting/privacy"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://flowstat"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_13
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://findfriend/search"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v5, 0x11

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_14
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://findfriend/share"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v5, 0x12

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_15
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://findfriend/qq"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v5, 0x13

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_16
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://findfriend/mobile"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_17
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "weixin://contacts/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_18

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_18
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->a:Landroid/content/Context;

    const v6, 0x7f0a0047

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/mm/model/GroupInfoLogic;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/storage/GroupInfo;

    move-result-object v6

    new-instance v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    const/16 v5, 0x15

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;-><init>(IILjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/widget/TextView;Landroid/text/SpannableString;)V

    invoke-direct/range {p0 .. p1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->c(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;

    new-instance v4, Lcom/tencent/mm/ui/chatting/SpanUtil$IntentSpan;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/ui/chatting/SpanUtil;->f:Lcom/tencent/mm/ui/chatting/SpanUtil$OnSpanClick;

    invoke-direct {v4, v5, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$IntentSpan;-><init>(Lcom/tencent/mm/ui/chatting/SpanUtil$OnSpanClick;Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;)V

    iget v5, v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->a:I

    iget v1, v1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->b:I

    const/16 v6, 0x21

    invoke-virtual {v2, v4, v5, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_1a
    sget-object v1, Lcom/tencent/mm/ui/chatting/SpanUtil;->i:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v1, v14, v2}, Lcom/tencent/mm/algorithm/LRUMap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "MicroMsg.SpanUtil"

    const-string v3, "update span cache"

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    goto/16 :goto_0

    :cond_1b
    move-object v1, v12

    move-object v2, v13

    goto/16 :goto_1
.end method
