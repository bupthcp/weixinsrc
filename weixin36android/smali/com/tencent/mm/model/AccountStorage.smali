.class public Lcom/tencent/mm/model/AccountStorage;
.super Ljava/lang/Object;


# instance fields
.field private A:Lcom/tencent/mm/modeltmsg/TContactStorage;

.field private B:Lcom/tencent/mm/modelbottle/BottleInfoStorage;

.field private C:Lcom/tencent/mm/modelshake/ShakeItemStorage;

.field private D:Lcom/tencent/mm/modelstat/NetStatStorage;

.field private E:Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

.field private F:Lcom/tencent/mm/modelfriend/InviteFriendOpenStorage;

.field private G:Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;

.field private H:Lcom/tencent/mm/modelpackage/PackageInfoStorage;

.field private I:Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;

.field private J:Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;

.field private K:Lcom/tencent/mm/plugin/album/model/AlbumExtStorage;

.field private L:Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;

.field private M:Lcom/tencent/mm/modelfriend/FacebookFriendStorage;

.field private N:Lcom/tencent/mm/plugin/album/model/AlbumCommentStorage;

.field private O:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

.field private P:Lcom/tencent/mm/storagebase/SqliteDB;

.field private Q:I

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Lcom/tencent/mm/model/ErrLog;

.field private final V:Lcom/tencent/mm/model/AccountStorage$IEvent;

.field private a:Lcom/tencent/mm/storage/ConfigStorage;

.field private b:Lcom/tencent/mm/storage/ContactStorage;

.field private c:Lcom/tencent/mm/storage/MsgInfoStorage;

.field private d:Lcom/tencent/mm/storage/ConversationStorage;

.field private e:Lcom/tencent/mm/modelimage/ImgInfoStorage;

.field private f:Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

.field private g:Lcom/tencent/mm/storage/OpLogStorage;

.field private h:Lcom/tencent/mm/modelfriend/QQListStorage;

.field private i:Lcom/tencent/mm/modelfriend/QQGroupStorage;

.field private j:Lcom/tencent/mm/storage/RoleStorage;

.field private k:Lcom/tencent/mm/modelvoice/VoiceStorage;

.field private l:Lcom/tencent/mm/modelvideo/VideoInfoStorage;

.field private m:Lcom/tencent/mm/storage/ChatroomMembersStorage;

.field private n:Lcom/tencent/mm/modelfriend/AddrUploadStorage;

.field private o:Lcom/tencent/mm/modelfriend/FriendExtStorage;

.field private p:Lcom/tencent/mm/modelverify/VerifyContactStorage;

.field private q:Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

.field private r:Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;

.field private s:Lcom/tencent/mm/modelgetcontact/GetContactService;

.field private t:Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;

.field private u:Lcom/tencent/mm/modelavatar/AvatarStorage;

.field private v:Lcom/tencent/mm/modelqrcode/QRCodeStorage;

.field private w:Lcom/tencent/mm/modelavatar/ImgFlagStorage;

.field private x:Lcom/tencent/mm/modelavatar/HDHeadImgInfoStorage;

.field private y:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;

.field private z:Lcom/tencent/mm/modelqmsg/QContactStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$3;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$3;-><init>()V

    const-string v1, "CONFIG_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$4;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$4;-><init>()V

    const-string v1, "CONTACT_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$5;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$5;-><init>()V

    const-string v1, "CHATROOM_MEMBERS_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$6;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$6;-><init>()V

    const-string v1, "CONVERSATION_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$7;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$7;-><init>()V

    const-string v1, "MESSAGE_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$8;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$8;-><init>()V

    const-string v1, "ROLEINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$9;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$9;-><init>()V

    const-string v1, "IMGINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$10;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$10;-><init>()V

    const-string v1, "VOICE_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$11;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$11;-><init>()V

    const-string v1, "ADDR_UPLOAD_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$12;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$12;-><init>()V

    const-string v1, "IMGFLAG_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$13;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$13;-><init>()V

    const-string v1, "VERIFY_CONTACT_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$14;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$14;-><init>()V

    const-string v1, "QQLIST_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$15;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$15;-><init>()V

    const-string v1, "QQGROUP_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$16;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$16;-><init>()V

    const-string v1, "FRIENDEXT_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$17;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$17;-><init>()V

    const-string v1, "VIDEOINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$18;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$18;-><init>()V

    const-string v1, "NETSTAT_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$19;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$19;-><init>()V

    const-string v1, "QCONTACT_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$20;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$20;-><init>()V

    const-string v1, "TCONTACT_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$21;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$21;-><init>()V

    const-string v1, "HDHEADIMGINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$22;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$22;-><init>()V

    const-string v1, "THROWBOTTLEINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$23;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$23;-><init>()V

    const-string v1, "THEMEINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$24;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$24;-><init>()V

    const-string v1, "SHAKEITEM_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$25;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$25;-><init>()V

    const-string v1, "INVITEFRIENDOPEN_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$26;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$26;-><init>()V

    const-string v1, "VUSERINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$27;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$27;-><init>()V

    const-string v1, "EMOJIINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$28;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$28;-><init>()V

    const-string v1, "PACKAGEINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$29;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$29;-><init>()V

    const-string v1, "CHATTINGBGINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$30;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$30;-><init>()V

    const-string v1, "GETCONTACTINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$31;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$31;-><init>()V

    const-string v1, "MASSENDINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$32;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$32;-><init>()V

    const-string v1, "READERAPPINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    new-instance v0, Lcom/tencent/mm/model/AccountStorage$33;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountStorage$33;-><init>()V

    const-string v1, "FACEBOOKFRIEND_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Lcom/tencent/mm/storagebase/SqliteDB$IFactory;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/mm/model/AccountStorage$IEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    iput-object p1, p0, Lcom/tencent/mm/model/AccountStorage;->R:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/model/AccountStorage;->V:Lcom/tencent/mm/model/AccountStorage$IEvent;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/model/AccountStorage;)Lcom/tencent/mm/storage/ConfigStorage;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    return-object v0
.end method

.method static synthetic ab()Z
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/AccountStorage;->ac()Z

    move-result v0

    return v0
.end method

.method private static ac()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tencent/mm/storage/ConstantsStorage;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private ad()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "voice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ae()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private af()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ag()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "package/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/model/AccountStorage;)Lcom/tencent/mm/model/ErrLog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->U:Lcom/tencent/mm/model/ErrLog;

    return-object v0
.end method

.method public static b(I)V
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->b()V

    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetTMessage;->b()V

    :cond_1
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetQMessage;->b()V

    :cond_2
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetFloatBottle;->b()V

    :cond_3
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetQQSync;->b()V

    :cond_4
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetShake;->b()V

    :cond_5
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b()V

    :cond_6
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetMediaNote;->b()V

    :cond_7
    and-int/lit16 v0, p0, 0x4000

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppNews;->b()V

    :cond_8
    const/high16 v0, 0x4

    and-int/2addr v0, p0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo;->b()V

    :cond_9
    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/model/AccountStorage;)Lcom/tencent/mm/storage/OpLogStorage;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->g:Lcom/tencent/mm/storage/OpLogStorage;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/model/AccountStorage;)Lcom/tencent/mm/storage/ContactStorage;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->b:Lcom/tencent/mm/storage/ContactStorage;

    return-object v0
.end method


# virtual methods
.method public final A()Lcom/tencent/mm/modelqrcode/QRCodeStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->v:Lcom/tencent/mm/modelqrcode/QRCodeStorage;

    return-object v0
.end method

.method public final B()Lcom/tencent/mm/modelavatar/ImgFlagStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->w:Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    return-object v0
.end method

.method public final C()Lcom/tencent/mm/modelavatar/HDHeadImgInfoStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->x:Lcom/tencent/mm/modelavatar/HDHeadImgInfoStorage;

    return-object v0
.end method

.method public final D()Lcom/tencent/mm/modelqmsg/QContactStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->z:Lcom/tencent/mm/modelqmsg/QContactStorage;

    return-object v0
.end method

.method public final E()Lcom/tencent/mm/modelfriend/FriendExtStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->o:Lcom/tencent/mm/modelfriend/FriendExtStorage;

    return-object v0
.end method

.method public final F()Lcom/tencent/mm/modeltmsg/TContactStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->A:Lcom/tencent/mm/modeltmsg/TContactStorage;

    return-object v0
.end method

.method public final G()Lcom/tencent/mm/modelstat/NetStatStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->D:Lcom/tencent/mm/modelstat/NetStatStorage;

    return-object v0
.end method

.method public final H()Lcom/tencent/mm/modelbottle/BottleInfoStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->B:Lcom/tencent/mm/modelbottle/BottleInfoStorage;

    return-object v0
.end method

.method public final I()Lcom/tencent/mm/modelshake/ShakeItemStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->C:Lcom/tencent/mm/modelshake/ShakeItemStorage;

    return-object v0
.end method

.method public final J()Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->J:Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;

    return-object v0
.end method

.method public final K()Lcom/tencent/mm/plugin/album/model/AlbumExtStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->K:Lcom/tencent/mm/plugin/album/model/AlbumExtStorage;

    return-object v0
.end method

.method public final L()Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->L:Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;

    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "emoji/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mailapp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final P()Lcom/tencent/mm/modelfriend/InviteFriendOpenStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->F:Lcom/tencent/mm/modelfriend/InviteFriendOpenStorage;

    return-object v0
.end method

.method public final Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->E:Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    return-object v0
.end method

.method public final R()Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->G:Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;

    return-object v0
.end method

.method public final S()Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->O:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    return-object v0
.end method

.method public final T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->H:Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    return-object v0
.end method

.method public final U()Lcom/tencent/mm/plugin/album/model/AlbumCommentStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->N:Lcom/tencent/mm/plugin/album/model/AlbumCommentStorage;

    return-object v0
.end method

.method public final V()Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->I:Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;

    return-object v0
.end method

.method public final W()Lcom/tencent/mm/model/ErrLog;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->U:Lcom/tencent/mm/model/ErrLog;

    return-object v0
.end method

.method public final X()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->T:Ljava/lang/String;

    return-object v0
.end method

.method public final Y()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    const-string v0, "MicroMsg.AccountStorage"

    const-string v1, "account storage reset"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Z()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->e:Lcom/tencent/mm/modelimage/ImgInfoStorage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->e:Lcom/tencent/mm/modelimage/ImgInfoStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->u:Lcom/tencent/mm/modelavatar/AvatarStorage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->u:Lcom/tencent/mm/modelavatar/AvatarStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->b:Lcom/tencent/mm/storage/ContactStorage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->b:Lcom/tencent/mm/storage/ContactStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ContactStorage;->a()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->w:Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->w:Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->a()V

    :cond_3
    return-void
.end method

.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    return v0
.end method

.method public final a(I)V
    .locals 10

    const v7, 0x22020028

    const/high16 v6, 0x2200

    const/16 v9, 0xe

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->V:Lcom/tencent/mm/model/AccountStorage$IEvent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->V:Lcom/tencent/mm/model/AccountStorage$IEvent;

    invoke-interface {v0}, Lcom/tencent/mm/model/AccountStorage$IEvent;->a()V

    :cond_2
    const-string v0, "MicroMsg.AccountStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "has set uin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mm"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/model/AccountStorage;->R:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->S:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/com.tencent.mm/MicroMsg/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->T:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->T:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "MicroMsg.db"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/mm/model/AccountStorage;->T:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->T:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/model/AccountStorage;->S:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/mm/model/AccountStorage;->S:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/io/File;)V

    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/mm/model/AccountStorage;->S:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_4
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_5
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/tencent/mm/model/AccountStorage;->N()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_6
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/tencent/mm/model/AccountStorage;->O()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_7
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/tencent/mm/model/AccountStorage;->ad()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_8
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/tencent/mm/model/AccountStorage;->ae()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_9
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/tencent/mm/model/AccountStorage;->af()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_a
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/tencent/mm/model/AccountStorage;->ag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_b
    invoke-static {}, Lcom/tencent/mm/model/AccountStorage;->ac()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->R:Ljava/lang/String;

    sget-object v4, Lcom/tencent/mm/storage/ConstantsStorage;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lcom/tencent/mm/model/AccountStorage$MoveDataFiles;

    iget-object v4, p0, Lcom/tencent/mm/model/AccountStorage;->T:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/model/AccountStorage;->S:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/tencent/mm/model/AccountStorage$MoveDataFiles;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage$MoveDataFiles;->start()V

    :cond_c
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_d

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/tencent/mm/model/AccountStorage;->ad()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_e
    :goto_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/tencent/mm/model/AccountStorage;->ae()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_f

    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_f
    :goto_3
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/tencent/mm/model/AccountStorage;->ag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_10

    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_10
    :goto_4
    new-instance v3, Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v3}, Lcom/tencent/mm/storagebase/SqliteDB;-><init>()V

    iput-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    invoke-direct {v0}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>()V

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->u:Lcom/tencent/mm/modelavatar/AvatarStorage;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->u:Lcom/tencent/mm/modelavatar/AvatarStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b()V

    :cond_12
    new-instance v0, Lcom/tencent/mm/storage/ConfigStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/storage/ConfigStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    new-instance v0, Lcom/tencent/mm/storage/OpLogStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->S:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/tencent/mm/storage/OpLogStorage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->g:Lcom/tencent/mm/storage/OpLogStorage;

    new-instance v0, Lcom/tencent/mm/storage/ContactStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/storage/ContactStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->b:Lcom/tencent/mm/storage/ContactStorage;

    new-instance v0, Lcom/tencent/mm/storage/MsgInfoStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->c:Lcom/tencent/mm/storage/MsgInfoStorage;

    new-instance v0, Lcom/tencent/mm/storage/ConversationStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/storage/ConversationStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->d:Lcom/tencent/mm/storage/ConversationStorage;

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->c:Lcom/tencent/mm/storage/MsgInfoStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->d:Lcom/tencent/mm/storage/ConversationStorage;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/IOnMsgChange;)V

    new-instance v0, Lcom/tencent/mm/storage/RoleStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/storage/RoleStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->j:Lcom/tencent/mm/storage/RoleStorage;

    new-instance v0, Lcom/tencent/mm/modelimage/ImgInfoStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {p0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/tencent/mm/modelimage/ImgInfoStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->e:Lcom/tencent/mm/modelimage/ImgInfoStorage;

    new-instance v0, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {p0}, Lcom/tencent/mm/model/AccountStorage;->N()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->f:Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    new-instance v0, Lcom/tencent/mm/storage/ChatroomMembersStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/storage/ChatroomMembersStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->m:Lcom/tencent/mm/storage/ChatroomMembersStorage;

    new-instance v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;

    invoke-direct {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->r:Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;

    new-instance v0, Lcom/tencent/mm/modelgetcontact/GetContactService;

    invoke-direct {v0}, Lcom/tencent/mm/modelgetcontact/GetContactService;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->s:Lcom/tencent/mm/modelgetcontact/GetContactService;

    new-instance v0, Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->t:Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;

    new-instance v0, Lcom/tencent/mm/modelavatar/AvatarStorage;

    invoke-virtual {p0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelavatar/AvatarStorage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->u:Lcom/tencent/mm/modelavatar/AvatarStorage;

    new-instance v0, Lcom/tencent/mm/modelqrcode/QRCodeStorage;

    invoke-virtual {p0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelqrcode/QRCodeStorage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->v:Lcom/tencent/mm/modelqrcode/QRCodeStorage;

    new-instance v0, Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->w:Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    new-instance v0, Lcom/tencent/mm/modelavatar/HDHeadImgInfoStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {p0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelavatar/HDHeadImgInfoStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->x:Lcom/tencent/mm/modelavatar/HDHeadImgInfoStorage;

    new-instance v0, Lcom/tencent/mm/modelvoice/VoiceStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {p0}, Lcom/tencent/mm/model/AccountStorage;->ad()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/tencent/mm/modelvoice/VoiceStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->k:Lcom/tencent/mm/modelvoice/VoiceStorage;

    new-instance v0, Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {p0}, Lcom/tencent/mm/model/AccountStorage;->ae()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->l:Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    new-instance v0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->q:Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

    new-instance v0, Lcom/tencent/mm/modelfriend/QQListStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelfriend/QQListStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->h:Lcom/tencent/mm/modelfriend/QQListStorage;

    new-instance v0, Lcom/tencent/mm/modelfriend/QQGroupStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelfriend/QQGroupStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->i:Lcom/tencent/mm/modelfriend/QQGroupStorage;

    new-instance v0, Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->n:Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    new-instance v0, Lcom/tencent/mm/modelfriend/FriendExtStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelfriend/FriendExtStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->o:Lcom/tencent/mm/modelfriend/FriendExtStorage;

    new-instance v0, Lcom/tencent/mm/modelverify/VerifyContactStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelverify/VerifyContactStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->p:Lcom/tencent/mm/modelverify/VerifyContactStorage;

    new-instance v0, Lcom/tencent/mm/modelbottle/BottleInfoStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelbottle/BottleInfoStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->B:Lcom/tencent/mm/modelbottle/BottleInfoStorage;

    new-instance v0, Lcom/tencent/mm/modelshake/ShakeItemStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelshake/ShakeItemStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->C:Lcom/tencent/mm/modelshake/ShakeItemStorage;

    new-instance v0, Lcom/tencent/mm/modelstat/NetStatStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    iget-object v4, p0, Lcom/tencent/mm/model/AccountStorage;->T:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/tencent/mm/modelstat/NetStatStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->D:Lcom/tencent/mm/modelstat/NetStatStorage;

    new-instance v0, Lcom/tencent/mm/modelfriend/InviteFriendOpenStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelfriend/InviteFriendOpenStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->F:Lcom/tencent/mm/modelfriend/InviteFriendOpenStorage;

    new-instance v0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {p0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->G:Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;

    new-instance v0, Lcom/tencent/mm/modeltmsg/TContactStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modeltmsg/TContactStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->A:Lcom/tencent/mm/modeltmsg/TContactStorage;

    new-instance v0, Lcom/tencent/mm/modelqmsg/QContactStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelqmsg/QContactStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->z:Lcom/tencent/mm/modelqmsg/QContactStorage;

    new-instance v0, Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {p0}, Lcom/tencent/mm/model/AccountStorage;->ag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->H:Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    new-instance v0, Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->I:Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;

    new-instance v0, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {p0}, Lcom/tencent/mm/model/AccountStorage;->af()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->E:Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    new-instance v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->y:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;

    new-instance v0, Lcom/tencent/mm/modelfriend/FacebookFriendStorage;

    iget-object v3, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelfriend/FacebookFriendStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->M:Lcom/tencent/mm/modelfriend/FacebookFriendStorage;

    new-instance v0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-direct {v0}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->O:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->V:Lcom/tencent/mm/model/AccountStorage$IEvent;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->V:Lcom/tencent/mm/model/AccountStorage$IEvent;

    invoke-interface {v0}, Lcom/tencent/mm/model/AccountStorage$IEvent;->c()V

    :cond_13
    const-string v0, "/data/data/com.tencent.mm/MicroMsg/errLog.cfg"

    new-instance v3, Lcom/tencent/mm/model/AccountStorage$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/model/AccountStorage$1;-><init>(Lcom/tencent/mm/model/AccountStorage;)V

    invoke-static {v0, v3}, Lcom/tencent/mm/model/ErrLog;->a(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/tencent/mm/model/ErrLog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->U:Lcom/tencent/mm/model/ErrLog;

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    invoke-virtual {v0, v9}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v3

    sget v4, Lcom/tencent/mm/protocal/ConstantsProtocal;->b:I

    if-ne v4, v3, :cond_15

    move v0, v1

    :goto_5
    iget-object v5, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v5}, Lcom/tencent/mm/storagebase/SqliteDB;->b()I

    move-result v5

    if-eqz v0, :cond_14

    iget-object v6, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/16 v7, 0x2005

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/16 v7, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_14
    if-eq v3, v4, :cond_17

    const-string v6, "MicroMsg.AccountStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account storage version changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", init="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v3, 0x1e

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v3, 0x1f

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const v1, -0x7a0013a1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const v1, -0x7a0013a0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const v1, -0x7a00139f

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const v1, -0x7a00139e

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const v1, -0x7a00139d

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const v1, -0x7a00139c

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/16 v1, 0x27

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/model/AccountStorage$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/model/AccountStorage$2;-><init>(Lcom/tencent/mm/model/AccountStorage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_6
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->V:Lcom/tencent/mm/model/AccountStorage$IEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->V:Lcom/tencent/mm/model/AccountStorage$IEvent;

    invoke-interface {v0}, Lcom/tencent/mm/model/AccountStorage$IEvent;->b()V

    goto/16 :goto_0

    :cond_15
    if-le v4, v6, :cond_16

    if-gt v3, v6, :cond_16

    move v0, v2

    goto/16 :goto_5

    :cond_16
    if-le v4, v7, :cond_18

    if-gt v3, v7, :cond_18

    move v0, v2

    goto/16 :goto_5

    :cond_17
    const-string v0, "show_whatsnew"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->a(Ljava/lang/String;)Z

    goto :goto_6

    :catch_0
    move-exception v3

    goto/16 :goto_1

    :catch_1
    move-exception v3

    goto/16 :goto_2

    :catch_2
    move-exception v3

    goto/16 :goto_3

    :catch_3
    move-exception v3

    goto/16 :goto_4

    :cond_18
    move v0, v1

    goto/16 :goto_5
.end method

.method public final a(Lcom/tencent/mm/protocal/MMProfile$Resp;)V
    .locals 5

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/16 v2, 0x2a

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/16 v2, 0x9

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/4 v2, 0x5

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/4 v2, 0x6

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/4 v2, 0x7

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/16 v2, 0x15

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/16 v2, 0x16

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/16 v2, 0x11

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->v()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/16 v2, 0x19

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->w()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/16 v2, 0x1d

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const/16 v2, 0x22

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->D()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    const v2, -0x5b88a1de

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const-string v1, "MicroMsg.AccountStorage"

    const-string v2, "update user profile:"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.AccountStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|--username = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.AccountStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|--nickname = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.AccountStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|--qquin    = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->j()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/algorithm/UIN;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.AccountStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|--email    = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.AccountStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|--mobile   = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.AccountStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|--fsUrl   = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.AccountStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|--status   = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->m()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/mm/protocal/MMProfile;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.AccountStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|--pushmail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->v()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/mm/protocal/MMSync$CmdFunctionSwitch;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.AccountStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "`--sendcard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->w()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/mm/protocal/MMSendCard;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.AccountStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|--qqmail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMProfile$Resp;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    iget-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MicroMsg.AccountStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remounted on path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sysPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/model/AccountStorage;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->R:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/model/AccountStorage;->R:Ljava/lang/String;

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/model/AccountStorage;->a(I)V

    goto :goto_0
.end method

.method public final aa()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.tencent.mm/MicroMsg/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/model/AccountStorage;->T:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/mm/storage/ConstantsStorage;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MicroMsg.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    const-string v1, "MicroMsg.db.dump"

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/model/AccountStorage;->T:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MicroMsg.db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;II)[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    return-void
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/tencent/mm/model/AccountStorage;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->R:Ljava/lang/String;

    sget-object v2, Lcom/tencent/mm/storage/ConstantsStorage;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/model/AccountStorage;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    :cond_0
    return-void
.end method

.method public final e()Lcom/tencent/mm/storagebase/SqliteDB;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->P:Lcom/tencent/mm/storagebase/SqliteDB;

    return-object v0
.end method

.method public final f()Lcom/tencent/mm/storage/ConfigStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->a:Lcom/tencent/mm/storage/ConfigStorage;

    return-object v0
.end method

.method public final g()Lcom/tencent/mm/storage/OpLogStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->g:Lcom/tencent/mm/storage/OpLogStorage;

    return-object v0
.end method

.method public final h()Lcom/tencent/mm/storage/ContactStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->b:Lcom/tencent/mm/storage/ContactStorage;

    return-object v0
.end method

.method public final i()Lcom/tencent/mm/storage/MsgInfoStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->c:Lcom/tencent/mm/storage/MsgInfoStorage;

    return-object v0
.end method

.method public final j()Lcom/tencent/mm/storage/ConversationStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->d:Lcom/tencent/mm/storage/ConversationStorage;

    return-object v0
.end method

.method public final k()Lcom/tencent/mm/modelimage/ImgInfoStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->e:Lcom/tencent/mm/modelimage/ImgInfoStorage;

    return-object v0
.end method

.method public final l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->f:Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    return-object v0
.end method

.method public final m()Lcom/tencent/mm/storage/RoleStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->j:Lcom/tencent/mm/storage/RoleStorage;

    return-object v0
.end method

.method public final n()Lcom/tencent/mm/storage/ChatroomMembersStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->m:Lcom/tencent/mm/storage/ChatroomMembersStorage;

    return-object v0
.end method

.method public final o()Lcom/tencent/mm/modelvoice/VoiceStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->k:Lcom/tencent/mm/modelvoice/VoiceStorage;

    return-object v0
.end method

.method public final p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->l:Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    return-object v0
.end method

.method public final q()Lcom/tencent/mm/modelfriend/QQListStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->h:Lcom/tencent/mm/modelfriend/QQListStorage;

    return-object v0
.end method

.method public final r()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->y:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;

    return-object v0
.end method

.method public final s()Lcom/tencent/mm/modelfriend/QQGroupStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->i:Lcom/tencent/mm/modelfriend/QQGroupStorage;

    return-object v0
.end method

.method public final t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->n:Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    return-object v0
.end method

.method public final u()Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->q:Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

    return-object v0
.end method

.method public final v()Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->r:Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;

    return-object v0
.end method

.method public final w()Lcom/tencent/mm/modelgetcontact/GetContactService;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->s:Lcom/tencent/mm/modelgetcontact/GetContactService;

    return-object v0
.end method

.method public final x()Lcom/tencent/mm/modelfriend/FacebookFriendStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->M:Lcom/tencent/mm/modelfriend/FacebookFriendStorage;

    return-object v0
.end method

.method public final y()Lcom/tencent/mm/modelavatar/AvatarStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->u:Lcom/tencent/mm/modelavatar/AvatarStorage;

    return-object v0
.end method

.method public final z()Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/model/AccountStorage;->Q:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/AccountNotReadyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/AccountNotReadyException;-><init>(B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/AccountStorage;->t:Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;

    return-object v0
.end method
