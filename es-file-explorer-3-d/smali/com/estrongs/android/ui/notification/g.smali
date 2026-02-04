.class Lcom/estrongs/android/ui/notification/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/notification/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/notification/e;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    iput-object p2, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/q;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/i;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/o;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/at;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/g;

    if-eqz v0, :cond_13

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->ab()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_2
    invoke-static {}, Lcom/estrongs/android/util/ak;->c()Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    const-string v0, ""

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/i;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/i;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/i;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/i;->c()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/i;

    iget-object v0, v0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/i;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/i;->c()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_2
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    invoke-virtual {v3}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v3

    iget v3, v3, Lcom/estrongs/a/p;->a:I

    const/16 v5, 0xa

    if-ne v3, v5, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0b02ca

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/y;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v1}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v1

    const v5, 0x7f0b0011

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v1}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v1

    const v5, 0x7f0b0310

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0012

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0310

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/estrongs/android/ui/notification/c;->b(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/estrongs/android/ui/notification/c;->c(Ljava/lang/CharSequence;)V

    move-object v1, v0

    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/notification/c;->c(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/i;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/estrongs/android/ui/notification/e;->b()Ljava/util/Map;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/estrongs/android/ui/notification/e;->b()Ljava/util/Map;

    move-result-object v5

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/i;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/estrongs/android/ui/notification/e;->c()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/estrongs/android/ui/notification/e;->d()Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/estrongs/android/ui/notification/h;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/notification/h;-><init>(Lcom/estrongs/android/ui/notification/g;)V

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "remove_task_action"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v5

    invoke-static {}, Lcom/estrongs/android/ui/notification/e;->d()Landroid/content/BroadcastReceiver;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/estrongs/android/pop/FexApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_6
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v3, Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    const-class v5, Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-direct {v3, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "task_id"

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    invoke-virtual {v2}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v5

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "task_title"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "resume_task"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "task_source_names"

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    iget-object v1, v1, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/i;

    iget-object v1, v1, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "count_info"

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/i;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/fs/b/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "source"

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "target"

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "target"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/c;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/ui/notification/c;->a(Landroid/content/Intent;Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "remove_task_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "task_id"

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    invoke-virtual {v2}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v1}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/notification/c;->b(Landroid/content/Intent;Z)V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v0

    const v1, 0x7f020151

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/c;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/c;->a()V

    :goto_5
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_8
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/i;

    iget-object v0, v0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    invoke-virtual {v3}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v3

    iget v3, v3, Lcom/estrongs/a/p;->a:I

    const/16 v5, 0xb

    if-ne v3, v5, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0b02cb

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_3

    :cond_b
    iget-object v3, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    invoke-virtual {v3}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v3

    iget v3, v3, Lcom/estrongs/a/p;->a:I

    const/16 v5, 0x9

    if-ne v3, v5, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0b02cc

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_3

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/i;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v1}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v1

    const v5, 0x7f0b000f

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v1}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v1

    const v5, 0x7f0b0310

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0010

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0310

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/estrongs/android/ui/notification/c;->b(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/estrongs/android/ui/notification/c;->c(Ljava/lang/CharSequence;)V

    move-object v1, v0

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/o;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/o;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/o;->a()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/o;->a()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    :goto_6
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/o;->a()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b000e

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0310

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v7}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b000e

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v7}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b0310

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/estrongs/android/ui/notification/c;->b(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/estrongs/android/ui/notification/c;->c(Ljava/lang/CharSequence;)V

    move-object v2, v0

    goto/16 :goto_4

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/o;->a()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u2026"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_6

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/g;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/g;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/g;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/g;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/g;->a()Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\u2026"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v6}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b02f4

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0310

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v7}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b02f4

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v7}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b0310

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/estrongs/android/ui/notification/c;->b(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/estrongs/android/ui/notification/c;->c(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/at;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/at;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/at;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/at;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/at;->c()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/at;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/at;->c()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0145

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0310

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/estrongs/android/ui/notification/c;->b(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/estrongs/android/ui/notification/c;->c(Ljava/lang/CharSequence;)V

    move-object v2, v0

    goto/16 :goto_4

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/at;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/at;->c()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/q;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->a:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/q;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/q;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0307

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v5

    iget-object v6, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v6}, Lcom/estrongs/android/ui/notification/e;->b(Lcom/estrongs/android/ui/notification/e;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b0118

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/estrongs/android/ui/notification/c;->b(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v5}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/estrongs/android/ui/notification/c;->c(Ljava/lang/CharSequence;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, v0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/g;->b:Lcom/estrongs/android/ui/notification/e;

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/e;->a(Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/c;->e()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5

    :cond_14
    move-object v3, v0

    goto/16 :goto_3
.end method
