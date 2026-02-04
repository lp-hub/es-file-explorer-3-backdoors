.class Lcom/estrongs/android/pop/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/c;

.field final synthetic b:Lcom/estrongs/a/a;

.field final synthetic c:Lcom/estrongs/android/pop/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/g;Lcom/estrongs/a/a/c;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/h;->c:Lcom/estrongs/android/pop/g;

    iput-object p2, p0, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    iput-object p3, p0, Lcom/estrongs/android/pop/h;->b:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x5

    const/4 v2, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    iget v0, v0, Lcom/estrongs/a/a/c;->h:I

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    check-cast v0, Lcom/estrongs/a/a/e;

    iget-object v1, v0, Lcom/estrongs/a/a/e;->c:Lcom/estrongs/fs/g;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/estrongs/a/a/e;->c:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/estrongs/a/a/e;->d:Lcom/estrongs/fs/g;

    if-nez v1, :cond_2

    :cond_0
    iput v2, v0, Lcom/estrongs/a/a/e;->g:I

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->b:Lcom/estrongs/a/a;

    const/16 v2, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    iget-object v4, p0, Lcom/estrongs/android/pop/h;->c:Lcom/estrongs/android/pop/g;

    invoke-static {v4}, Lcom/estrongs/android/pop/g;->a(Lcom/estrongs/android/pop/g;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0208

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->b:Lcom/estrongs/a/a;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-virtual {v1, v9, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/h;->c:Lcom/estrongs/android/pop/g;

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->b:Lcom/estrongs/a/a;

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/pop/g;->a(Lcom/estrongs/android/pop/g;Lcom/estrongs/a/a;Lcom/estrongs/a/a/e;)Lcom/estrongs/android/ui/b/ag;

    move-result-object v1

    iget-object v2, v0, Lcom/estrongs/a/a/e;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v0, v0, Lcom/estrongs/a/a/e;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->c:Lcom/estrongs/android/pop/g;

    invoke-static {v0}, Lcom/estrongs/android/pop/g;->a(Lcom/estrongs/android/pop/g;)Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0b02a5

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/ag;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/h;->c:Lcom/estrongs/android/pop/g;

    invoke-static {v3}, Lcom/estrongs/android/pop/g;->a(Lcom/estrongs/android/pop/g;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b02a6

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/ag;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/ag;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/h;->c:Lcom/estrongs/android/pop/g;

    invoke-static {v0}, Lcom/estrongs/android/pop/g;->a(Lcom/estrongs/android/pop/g;)Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0b0044

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/ag;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/h;->c:Lcom/estrongs/android/pop/g;

    invoke-static {v3}, Lcom/estrongs/android/pop/g;->a(Lcom/estrongs/android/pop/g;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0231

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/h;->c:Lcom/estrongs/android/pop/g;

    invoke-static {v3}, Lcom/estrongs/android/pop/g;->a(Lcom/estrongs/android/pop/g;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b01dd

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/ag;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    iget v0, v0, Lcom/estrongs/a/a/c;->h:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    iput v2, v0, Lcom/estrongs/a/a/c;->g:I

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    iput-boolean v7, v0, Lcom/estrongs/a/a/c;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->b:Lcom/estrongs/a/a;

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    aput-object v2, v1, v8

    invoke-virtual {v0, v9, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    iget v0, v0, Lcom/estrongs/a/a/c;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    check-cast v0, Lcom/estrongs/a/a/f;

    new-instance v1, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->c:Lcom/estrongs/android/pop/g;

    invoke-static {v2}, Lcom/estrongs/android/pop/g;->a(Lcom/estrongs/android/pop/g;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/i;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/i;-><init>(Lcom/estrongs/android/pop/h;)V

    iget-object v0, v0, Lcom/estrongs/a/a/f;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$PrivacyOptionCallback;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->show()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    iget v0, v0, Lcom/estrongs/a/a/c;->h:I

    if-ne v0, v9, :cond_7

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->c:Lcom/estrongs/android/pop/g;

    invoke-static {v0}, Lcom/estrongs/android/pop/g;->a(Lcom/estrongs/android/pop/g;)Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "needAuth"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "task_id"

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->b:Lcom/estrongs/a/a;

    invoke-virtual {v2}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->c:Lcom/estrongs/android/pop/g;

    invoke-static {v0}, Lcom/estrongs/android/pop/g;->a(Lcom/estrongs/android/pop/g;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->c:Lcom/estrongs/android/pop/g;

    invoke-static {v2}, Lcom/estrongs/android/pop/g;->a(Lcom/estrongs/android/pop/g;)Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v2, v8, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v8, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    iget v0, v0, Lcom/estrongs/a/a/c;->h:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    check-cast v0, Lcom/estrongs/a/a/g;

    new-instance v1, Lcom/estrongs/android/a/p;

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->c:Lcom/estrongs/android/pop/g;

    invoke-static {v2}, Lcom/estrongs/android/pop/g;->a(Lcom/estrongs/android/pop/g;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Lcom/estrongs/a/a/g;->a:Lcom/estrongs/fs/g;

    new-instance v4, Lcom/estrongs/android/pop/j;

    invoke-direct {v4, p0, v0}, Lcom/estrongs/android/pop/j;-><init>(Lcom/estrongs/android/pop/h;Lcom/estrongs/a/a/g;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/android/a/p;-><init>(Landroid/content/Context;Lcom/estrongs/fs/g;Lcom/estrongs/android/a/s;)V

    invoke-virtual {v1}, Lcom/estrongs/android/a/p;->show()V

    goto/16 :goto_0
.end method
