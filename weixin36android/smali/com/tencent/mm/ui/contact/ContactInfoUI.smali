.class public Lcom/tencent/mm/ui/contact/ContactInfoUI;
.super Lcom/tencent/mm/ui/MMPreference;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Lcom/tencent/mm/storage/Contact;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.ContactInfoUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " item has been clicked!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;->a(Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d_()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMPreference;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    invoke-interface {v0, p1, p3}, Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;->a(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21

    invoke-super/range {p0 .. p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Contact_Scene"

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->e:I

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Chat_Readonly"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->c:Z

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Contact_User"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Contact_Alias"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "Contact_Nick"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "Contact_Sex"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "Contact_Province"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "Contact_City"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "Contact_Signature"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "Contact_VUser_Info_Flag"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "Contact_VUser_Info"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "Contact_Distance"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "Contact_KWeibo_flag"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "Contact_KWeibo"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "Contact_KWeiboNick"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v16, "Contact_KFacebookName"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string v17, "Contact_KFacebookId"

    const-wide/16 v18, 0x0

    invoke-virtual/range {v16 .. v19}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "User_From_Fmessage"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/mm/ui/contact/ContactInfoUI;->d:Z

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "Contact_verify_Scene"

    const/16 v20, 0x9

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-gtz v19, :cond_4

    :cond_0
    new-instance v19, Lcom/tencent/mm/storage/Contact;

    invoke-direct/range {v19 .. v19}, Lcom/tencent/mm/storage/Contact;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/Contact;->f(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v19, "Contact_PyInitial"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/Contact;->d(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v19, "Contact_QuanPin"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/Contact;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v5}, Lcom/tencent/mm/storage/Contact;->c(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v6}, Lcom/tencent/mm/storage/Contact;->i(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v7}, Lcom/tencent/mm/storage/Contact;->j(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v8}, Lcom/tencent/mm/storage/Contact;->h(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v9}, Lcom/tencent/mm/storage/Contact;->j(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v10}, Lcom/tencent/mm/storage/Contact;->o(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v11}, Lcom/tencent/mm/storage/Contact;->p(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->k(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v13}, Lcom/tencent/mm/storage/Contact;->q(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v12}, Lcom/tencent/mm/storage/Contact;->m(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v14}, Lcom/tencent/mm/storage/Contact;->r(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/storage/Contact;->b(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v15}, Lcom/tencent/mm/storage/Contact;->c(Ljava/lang/String;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const v3, 0x10121

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v5, v2, v3}, Lcom/tencent/mm/storage/Contact;->b(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const v5, 0x10122

    invoke-virtual {v2, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/tencent/mm/storage/Contact;->c(Ljava/lang/String;)V

    :cond_1
    :goto_2
    const-string v3, "initView: contact username is null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    const/4 v2, 0x1

    :goto_3
    invoke-static {v3, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-static {v4}, Lcom/tencent/mm/model/ContactStorageLogic;->E(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const v2, 0x7f0a01a1

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->d(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0a0235

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->d(I)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "User_Avatar"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetSetAvatar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->c:Z

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->e:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;->a(Lcom/tencent/mm/ui/IPreferenceScreen;Lcom/tencent/mm/storage/Contact;ZI)Z

    :cond_3
    new-instance v2, Lcom/tencent/mm/ui/contact/ContactInfoUI$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactInfoUI$1;-><init>(Lcom/tencent/mm/ui/contact/ContactInfoUI;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->p()I

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v5}, Lcom/tencent/mm/storage/Contact;->c(I)V

    :cond_5
    if-eqz v6, :cond_6

    const-string v2, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v6}, Lcom/tencent/mm/storage/Contact;->i(Ljava/lang/String;)V

    :cond_6
    if-eqz v7, :cond_7

    const-string v2, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v7}, Lcom/tencent/mm/storage/Contact;->j(Ljava/lang/String;)V

    :cond_7
    if-eqz v8, :cond_8

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v8}, Lcom/tencent/mm/storage/Contact;->h(Ljava/lang/String;)V

    :cond_8
    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v9}, Lcom/tencent/mm/storage/Contact;->j(I)V

    :cond_9
    if-eqz v10, :cond_a

    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v10}, Lcom/tencent/mm/storage/Contact;->o(Ljava/lang/String;)V

    :cond_a
    if-eqz v3, :cond_b

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v11}, Lcom/tencent/mm/storage/Contact;->p(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->k(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/storage/Contact;->b(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2, v15}, Lcom/tencent/mm/storage/Contact;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-wide/16 v2, 0x0

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const/16 v3, 0x3005

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const/16 v5, 0x3004

    invoke-virtual {v2, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    if-eq v3, v5, :cond_d

    const-string v5, ""

    if-eq v2, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v5, v3}, Lcom/tencent/mm/storage/Contact;->i(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3, v2}, Lcom/tencent/mm/storage/Contact;->j(Ljava/lang/String;)V

    :cond_d
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const/16 v3, 0x3002

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const/16 v5, 0x3003

    invoke-virtual {v2, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v5, v3}, Lcom/tencent/mm/storage/Contact;->c(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3, v2}, Lcom/tencent/mm/storage/Contact;->h(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_f
    const v2, 0x7f0a0233

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetFMessage;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetFMessage;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    const v2, 0x7f0a01a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->d(I)V

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetFloatBottle;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetFloatBottle;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    const v2, 0x7f0a01a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->d(I)V

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetTMessage;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetTMessage;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    const v2, 0x7f0a01a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->d(I)V

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetQMessage;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQMessage;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    const v2, 0x7f0a01a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/ContactInfoUI;->d(I)V

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    goto/16 :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetQQSync;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQSync;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->t(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetBottleContact;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetBottleContact;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->x(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetShake;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetShake;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetMediaNote;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetMediaNote;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->z(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppNews;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppNews;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    goto/16 :goto_5

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->A(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetReaderAppWeibo;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetFacebookapp;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetFacebookapp;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    goto/16 :goto_5

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->B(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    goto/16 :goto_5

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->C(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    goto/16 :goto_5

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->n(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetMassSend;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetMassSend;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    goto/16 :goto_5

    :cond_22
    new-instance v2, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    goto/16 :goto_5
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactInfoUI;->b:Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;

    invoke-interface {v0}, Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;->a()Z

    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onDestroy()V

    return-void
.end method
