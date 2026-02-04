.class Lcom/estrongs/android/ui/pcs/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/ax;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v1, 0x3

    invoke-static {}, Lcom/estrongs/android/ui/pcs/ax;->b()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x2

    iput v0, v5, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0493

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    monitor-exit v4

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/app/Activity;)I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0481

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    monitor-exit v4

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v0, "pcs"

    invoke-static {v3, v1, v0}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_f

    const-string v2, "error_msg"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bduss"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e34\u65f6\u7528\u6237"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quikreg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/cl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, v5, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    monitor-exit v4

    goto/16 :goto_0

    :cond_7
    const-wide/16 v1, -0x1

    const-string v6, "error_code"

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_c

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "error_code"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    :goto_1
    const-wide/16 v6, 0x66

    cmp-long v2, v0, v6

    if-eqz v2, :cond_8

    const-wide/16 v6, 0x65

    cmp-long v2, v0, v6

    if-eqz v2, :cond_8

    const-wide/16 v6, 0x68

    cmp-long v0, v0, v6

    if-nez v0, :cond_d

    :cond_8
    :try_start_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0482

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_9
    const-string v0, "pcs"

    invoke-static {v3, v0}, Lcom/estrongs/fs/impl/i/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_16

    const-string v1, "force_reg_token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    const-string v1, "force_reg_token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "pcs"

    invoke-static {v3, v0, v1}, Lcom/estrongs/fs/impl/i/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_15

    const-string v0, "device_token"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_11

    const-string v1, "error_msg"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bduss"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uid"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e34\u65f6\u7528\u6237"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "quikreg:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/android/util/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/ui/pcs/cl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v5, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/q;->a(Ljava/lang/String;J)V

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "Direct_Register"

    const-string v2, "Direct_Register"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_b
    monitor-exit v4

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    move-wide v0, v1

    goto/16 :goto_1

    :cond_d
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0484

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    monitor-exit v4

    goto/16 :goto_0

    :cond_f
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0468

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ax;->b(Lcom/estrongs/android/ui/pcs/ax;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    monitor-exit v4

    goto/16 :goto_0

    :cond_11
    const-wide/16 v1, -0x1

    const-string v0, "error_code"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_13

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "error_code"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v0

    :goto_4
    const-wide/16 v2, 0x2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x2

    :try_start_5
    iput v0, v5, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0483

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    move-wide v0, v1

    goto :goto_4

    :cond_14
    const/4 v0, 0x2

    iput v0, v5, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0484

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_3

    :cond_15
    const/4 v0, 0x2

    iput v0, v5, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0468

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_3

    :cond_16
    const/4 v0, 0x2

    iput v0, v5, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ay;->a:Lcom/estrongs/android/ui/pcs/ax;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ax;->a(Lcom/estrongs/android/ui/pcs/ax;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0468

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    :cond_17
    move-object v3, v0

    goto/16 :goto_2
.end method
