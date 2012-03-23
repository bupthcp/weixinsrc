.class public Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;
.implements Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;
.implements Lcom/tencent/mm/plugin/album/ui/IAlbumEvent;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;

.field private c:Landroid/widget/ImageButton;

.field private d:Ljava/lang/String;

.field private e:Landroid/app/AlertDialog;

.field private f:Landroid/app/ProgressDialog;

.field private g:Ljava/lang/String;

.field private h:Lcom/tencent/mm/ui/MMPullDownView;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;

.field private k:Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;

.field private l:Z

.field private m:Landroid/app/Dialog;

.field private n:Landroid/widget/ImageView;

.field private o:I

.field private p:Landroid/view/View;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/Button;

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->f:Landroid/app/ProgressDialog;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->j:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->l:Z

    iput-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->m:Landroid/app/Dialog;

    new-instance v0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$1;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->t:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->m:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->f:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->n:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;)Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->k:Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->e:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->c()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a01c5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x7f06

    new-instance v3, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$10;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$10;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0015

    new-instance v3, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$9;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$9;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->e:Landroid/app/AlertDialog;

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->e:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->q:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->l:Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->j:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->i:Ljava/lang/String;

    const-string v0, "MicroMsg.PhotoAlbumUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloading pcId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->t:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$13;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$13;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->k:Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->r:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->o:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->m:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->l:Z

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->k:Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->e:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f03000c

    return v0
.end method

.method public final a(IILcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 4

    invoke-virtual {p3}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_1

    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    :goto_0
    const-string v1, "MicroMsg.PhotoAlbumUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSceneProgressEnd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totalLen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$12;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$12;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "MicroMsg.PhotoAlbumUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneEnd: errType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->f:Landroid/app/ProgressDialog;

    :cond_0
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->l:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iput-boolean v3, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->i:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->b()V

    :cond_2
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x56

    if-eq v0, v1, :cond_3

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x57

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->q:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    if-nez p1, :cond_5

    if-eqz p2, :cond_6

    :cond_5
    :goto_0
    return-void

    :cond_6
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v0, "MicroMsg.PhotoAlbumUI"

    const-string v1, "albumAdapter notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->a_(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "MicroMsg.PhotoAlbumUI"

    const-string v1, "albumAdapter notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    const-string v0, "MicroMsg.PhotoAlbumUI"

    const-string v1, "albumAdapter notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    const-string v0, "MicroMsg.PhotoAlbumUI"

    const-string v1, "albumAdapter notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    const-string v0, "MicroMsg.PhotoAlbumUI"

    const-string v1, "albumAdapter notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7
    const-string v0, "MicroMsg.PhotoAlbumUI"

    const-string v1, "albumAdapter upload ok and notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_8
    const-string v0, "MicroMsg.PhotoAlbumUI"

    const-string v1, "albumAdapter batchget attr ok and notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->a_(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_1
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->i:Ljava/lang/String;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->j:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->l:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "MicroMsg.PhotoAlbumUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAcvityResult requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "MicroMsg.PhotoAlbumUI"

    const-string v1, "onActivityResult: not found this requestCode"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CropImage_bCrop"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CropImage_bPrev"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CropImage_ImgPath"

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v5}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/tencent/mm/platformtools/CameraUtil;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CropImage_bCrop"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CropImage_bPrev"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CropImage_ImgPath"

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v5}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_3
    const-string v0, "CropImage_ImgPath"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "MicroMsg.PhotoAlbumUI"

    const-string v1, " doSendImage : filePath is null or empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->t:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x2

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "album_userName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iput v3, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->o:I

    :goto_0
    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->o:I

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x56

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x4f

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    const v0, 0x7f0a0475

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->d(I)V

    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->a:Landroid/widget/ListView;

    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->c:Landroid/widget/ImageButton;

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->o:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->t:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$7;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$7;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_2
    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->o:I

    if-ne v0, v2, :cond_5

    new-instance v0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->d:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;-><init>(Landroid/content/Context;Lcom/tencent/mm/plugin/album/ui/IAlbumEvent;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;

    :goto_3
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMPullDownView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->h:Lcom/tencent/mm/ui/MMPullDownView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->h:Lcom/tencent/mm/ui/MMPullDownView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMPullDownView;->a(Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->h:Lcom/tencent/mm/ui/MMPullDownView;

    new-instance v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$2;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMPullDownView;->a(Lcom/tencent/mm/ui/MMPullDownView$OnLoadDataListener;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->p:Landroid/view/View;

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->q:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->p:Landroid/view/View;

    const v1, 0x7f070027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->r:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->p:Landroid/view/View;

    const v1, 0x7f070028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->s:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$3;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->s:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$4;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->q:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->r:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$6;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$6;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void

    :cond_2
    iput v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->o:I

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x53

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x57

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    goto/16 :goto_1

    :cond_4
    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->t:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$8;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$8;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_5
    new-instance v0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;

    invoke-direct {v0, p0, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;-><init>(Landroid/content/Context;Lcom/tencent/mm/plugin/album/ui/IAlbumEvent;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->n()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x56

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x4f

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->f:Landroid/app/ProgressDialog;

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x53

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x57

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    goto :goto_0
.end method
