.class Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3$1;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3$1;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;

    iget-object v0, v1, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler$3;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->g()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v23

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v3}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->t()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v4}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->w()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v5}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/storage/Contact;->x()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v6}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/storage/Contact;->p()I

    move-result v6

    const/16 v7, 0x3f

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v8}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/mm/storage/Contact;->q()I

    move-result v8

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v9}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/mm/storage/Contact;->D()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v10}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tencent/mm/storage/Contact;->E()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v11}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tencent/mm/storage/Contact;->F()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v12}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tencent/mm/storage/Contact;->C()I

    move-result v12

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v13}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v13

    invoke-virtual {v13}, Lcom/tencent/mm/storage/Contact;->G()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v14}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v14

    invoke-virtual {v14}, Lcom/tencent/mm/storage/Contact;->H()I

    move-result v14

    move-object/from16 v0, v21

    iget-object v15, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v15}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v15

    invoke-virtual {v15}, Lcom/tencent/mm/storage/Contact;->J()I

    move-result v15

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/mm/storage/Contact;->K()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/mm/storage/Contact;->L()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/mm/storage/Contact;->S()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/mm/storage/Contact;->T()I

    move-result v20

    invoke-direct/range {v1 .. v20}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    invoke-static/range {v22 .. v22}, Lcom/tencent/mm/model/ContactStorageLogic;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->f(Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->n()Lcom/tencent/mm/storage/ChatroomMembersStorage;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ChatroomMembersStorage;->d(Ljava/lang/String;)Z

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->o(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)I

    move-result v1

    if-nez v1, :cond_1

    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-class v3, Lcom/tencent/mm/ui/MainTabUI;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    invoke-static/range {v22 .. v22}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->d(Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/storage/Contact;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ConversationStorage;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->c:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method
