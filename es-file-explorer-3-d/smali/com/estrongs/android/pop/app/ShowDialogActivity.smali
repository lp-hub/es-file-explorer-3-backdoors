.class public Lcom/estrongs/android/pop/app/ShowDialogActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ShowDialogActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    return-wide v0
.end method

.method private a()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0143

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->b(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0019

    new-instance v2, Lcom/estrongs/android/pop/app/ie;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/ie;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0007

    new-instance v2, Lcom/estrongs/android/pop/app/id;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/id;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ic;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ic;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/b/ag;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/b/ag;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/b/ag;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/estrongs/android/pop/app/ik;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ik;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v1, "pathIsDir"

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const v0, 0x7f0b031d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/il;

    invoke-direct {v1, p0, v2, v3}, Lcom/estrongs/android/pop/app/il;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;Lcom/estrongs/android/ui/b/ag;)V

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/b/ag;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b031e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/in;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/app/in;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/b/ag;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_1
    invoke-virtual {v3}, Lcom/estrongs/android/ui/b/ag;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v1, Lcom/estrongs/android/pop/app/hy;

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/pop/app/hy;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0b031e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/b/ag;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b048f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/hz;

    invoke-direct {v1, p0, v3}, Lcom/estrongs/android/pop/app/hz;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Lcom/estrongs/android/ui/b/ag;)V

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/b/ag;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_1

    :cond_4
    const v0, 0x7f0b031e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/b/ag;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v13, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "task_id"

    invoke-virtual {v1, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    const-string v0, "resume_task"

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/notification/e;->a(J)Lcom/estrongs/a/a;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/estrongs/fs/b/i;

    iget-object v0, v0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/b/ew;

    const-string v2, "task_title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/b/ew;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZ)V

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/b/ew;->a(Z)Lcom/estrongs/android/ui/b/ew;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ew;->show()V

    new-instance v1, Lcom/estrongs/android/pop/app/hx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hx;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Lcom/estrongs/android/ui/b/ew;

    const-string v0, "task_title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "task_source_names"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "count_info"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "source"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "target"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, p0

    move v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/estrongs/android/ui/b/ew;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v13}, Lcom/estrongs/android/ui/b/ew;->a(Z)Lcom/estrongs/android/ui/b/ew;

    invoke-virtual {v5}, Lcom/estrongs/android/ui/b/ew;->show()V

    new-instance v0, Lcom/estrongs/android/pop/app/if;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/if;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v5, v0}, Lcom/estrongs/android/ui/b/ew;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_a

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Lcom/estrongs/a/a;->getTask(J)Lcom/estrongs/a/a;

    move-result-object v2

    if-eqz v2, :cond_8

    sget-object v0, Lcom/estrongs/android/a/a;->a:Ljava/util/Map;

    iget-wide v5, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/a;

    const-string v3, "needAuth"

    invoke-virtual {v1, v3, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/estrongs/android/a/a;->dismiss()V

    sget-object v0, Lcom/estrongs/android/a/a;->a:Ljava/util/Map;

    iget-wide v3, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-class v0, Lcom/estrongs/a/a/b;

    invoke-virtual {v2, v0}, Lcom/estrongs/a/a;->getDecisionData(Ljava/lang/Class;)Lcom/estrongs/a/a/c;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/b;

    new-instance v1, Lcom/estrongs/android/a/a;

    iget-object v3, v0, Lcom/estrongs/a/a/b;->a:Ljava/lang/String;

    invoke-direct {v1, p0, v3}, Lcom/estrongs/android/a/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Lcom/estrongs/android/a/a;->setCancelable(Z)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/estrongs/android/a/a;->a(I)V

    new-instance v3, Lcom/estrongs/android/pop/app/ig;

    invoke-direct {v3, p0, v0, v2}, Lcom/estrongs/android/pop/app/ig;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Lcom/estrongs/a/a/b;Lcom/estrongs/a/a;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/a/a;->a(Lcom/estrongs/android/a/d;)V

    const v3, 0x7f0b0007

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/pop/app/ih;

    invoke-direct {v4, p0, v0, v2}, Lcom/estrongs/android/pop/app/ih;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Lcom/estrongs/a/a/b;Lcom/estrongs/a/a;)V

    invoke-virtual {v1, v3, v4}, Lcom/estrongs/android/a/a;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    new-instance v0, Lcom/estrongs/android/pop/app/ii;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ii;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Lcom/estrongs/android/a/a;->show()V

    sget-object v0, Lcom/estrongs/android/a/a;->a:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/estrongs/android/ui/b/ew;->d:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/estrongs/android/ui/b/ew;->d:Ljava/util/Map;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->finish()V

    goto/16 :goto_0

    :cond_6
    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Lcom/estrongs/a/a;->getTask(J)Lcom/estrongs/a/a;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->finish()V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/estrongs/android/ui/b/ew;

    const-string v2, "task_title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Lcom/estrongs/a/a;->getTask(J)Lcom/estrongs/a/a;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v13}, Lcom/estrongs/android/ui/b/ew;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Z)V

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/b/ew;->a(Z)Lcom/estrongs/android/ui/b/ew;

    new-instance v1, Lcom/estrongs/android/pop/app/ij;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ij;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ew;->show()V

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->b:Z

    goto/16 :goto_0

    :cond_8
    const-string v0, "notification_id"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_9

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v2, "notification_id"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->finish()V

    goto/16 :goto_0

    :cond_a
    const-string v0, "openfileOrFolder"

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "compress"

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "application"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "notification_id"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_c

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v2, "notification_id"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_c
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->finish()V

    goto/16 :goto_0

    :cond_d
    const-string v0, "stop_ftp_server"

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->b:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/b/ew;->d:Ljava/util/Map;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/b/ew;->d:Ljava/util/Map;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v0, Lcom/estrongs/android/ui/b/ew;->d:Ljava/util/Map;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sget-object v0, Lcom/estrongs/android/ui/b/ew;->d:Ljava/util/Map;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/estrongs/android/a/a;->a:Ljava/util/Map;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p0, :cond_1

    sget-object v0, Lcom/estrongs/android/a/a;->a:Ljava/util/Map;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v0, v1}, Lcom/estrongs/a/a;->getTask(J)Lcom/estrongs/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/estrongs/a/a/b;

    invoke-virtual {v1, v0}, Lcom/estrongs/a/a;->getDecisionData(Ljava/lang/Class;)Lcom/estrongs/a/a/c;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/b;

    iput-boolean v4, v0, Lcom/estrongs/a/a/b;->d:Z

    const/4 v2, 0x5

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_1
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method
