.class Lcom/estrongs/android/ui/pcs/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/pcs/as;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/as;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/av;->b:Lcom/estrongs/android/ui/pcs/as;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/av;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput v6, v2, Landroid/os/Message;->what:I

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/av;->a:Ljava/lang/String;

    const-string v1, "pcs"

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/i/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errno"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "uname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "uname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bduss"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ptoken"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/av;->b:Lcom/estrongs/android/ui/pcs/as;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/as;->a(Lcom/estrongs/android/ui/pcs/as;)Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quikreg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/cl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v5, v2, Landroid/os/Message;->what:I

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/av;->b:Lcom/estrongs/android/ui/pcs/as;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/as;->e(Lcom/estrongs/android/ui/pcs/as;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    const-string v1, "uname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-ne v1, v6, :cond_4

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/av;->b:Lcom/estrongs/android/ui/pcs/as;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/as;->c(Lcom/estrongs/android/ui/pcs/as;)I

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/av;->b:Lcom/estrongs/android/ui/pcs/as;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/as;->d(Lcom/estrongs/android/ui/pcs/as;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/av;->b:Lcom/estrongs/android/ui/pcs/as;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/as;->a(Lcom/estrongs/android/ui/pcs/as;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0486

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_4
    if-ne v1, v5, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/av;->b:Lcom/estrongs/android/ui/pcs/as;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/as;->a(Lcom/estrongs/android/ui/pcs/as;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0488

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const/4 v0, 0x5

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/av;->b:Lcom/estrongs/android/ui/pcs/as;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/as;->a(Lcom/estrongs/android/ui/pcs/as;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b046e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/av;->b:Lcom/estrongs/android/ui/pcs/as;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/as;->a(Lcom/estrongs/android/ui/pcs/as;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b046d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/av;->b:Lcom/estrongs/android/ui/pcs/as;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/as;->a(Lcom/estrongs/android/ui/pcs/as;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0125

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method
