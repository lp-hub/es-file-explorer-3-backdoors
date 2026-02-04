.class public Lcom/estrongs/android/pop/app/compress/x;
.super Landroid/os/HandlerThread;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field final synthetic f:Lcom/estrongs/android/pop/app/compress/l;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->d:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/compress/x;->e:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x1

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "charset_name"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->i(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "reload"

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->j(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->f(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->k(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/estrongs/io/archive/c;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/estrongs/io/archive/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/l;Lcom/estrongs/io/archive/h;)Lcom/estrongs/io/archive/h;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->l(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/pop/app/compress/am;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->l(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/pop/app/compress/am;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/compress/am;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->m(Lcom/estrongs/android/pop/app/compress/l;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->m(Lcom/estrongs/android/pop/app/compress/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/h;->a(Lcom/estrongs/io/a/b;)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->l(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/pop/app/compress/am;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->l(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/pop/app/compress/am;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/compress/am;->b()V

    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->j(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->g()V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->p(Lcom/estrongs/android/pop/app/compress/l;)I

    move-result v0

    if-eq v0, v7, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->p(Lcom/estrongs/android/pop/app/compress/l;)I

    move-result v0

    if-ne v0, v8, :cond_a

    :cond_4
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->q(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    :goto_2
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;Ljava/util/Set;)V
    :try_end_1
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_5
    :goto_3
    return-void

    :cond_6
    :try_start_2
    const-string v0, "false"

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->m(Lcom/estrongs/android/pop/app/compress/l;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/a/a/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/io/archive/h;->a(Ljava/util/List;Lcom/estrongs/io/a/b;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    const-string v1, "WRONG PASSWORD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/d;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/compress/y;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/y;-><init>(Lcom/estrongs/android/pop/app/compress/x;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->o(Lcom/estrongs/android/pop/app/compress/l;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->j(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->g()V

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->p(Lcom/estrongs/android/pop/app/compress/l;)I

    move-result v0

    if-eq v0, v7, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->p(Lcom/estrongs/android/pop/app/compress/l;)I

    move-result v0

    if-ne v0, v8, :cond_e

    :cond_9
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->q(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    :goto_5
    :try_start_4
    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;Ljava/util/Set;)V
    :try_end_4
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/bt;->b()V

    goto/16 :goto_3

    :cond_a
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->q(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/util/List;)V

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    invoke-static {}, Lcom/estrongs/fs/impl/h/b;->b()Lcom/estrongs/fs/impl/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/h/b;->a(Ljava/util/List;)V

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->b()Lcom/estrongs/fs/impl/p/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/util/List;)V
    :try_end_5
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/bt;->b()V

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->q(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    :try_start_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/util/List;)V

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    invoke-static {}, Lcom/estrongs/fs/impl/h/b;->b()Lcom/estrongs/fs/impl/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/h/b;->a(Ljava/util/List;)V

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->b()Lcom/estrongs/fs/impl/p/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/util/List;)V
    :try_end_6
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    :cond_12
    :try_start_7
    const-string v1, "NOT_SUPPORTED_ENC_ALG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "NOT_SUPPORTED_ENC_ALG"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0235

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_13
    :goto_6
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/d;

    move-result-object v2

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0210

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/estrongs/io/archive/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->j(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->g()V

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->p(Lcom/estrongs/android/pop/app/compress/l;)I

    move-result v0

    if-eq v0, v7, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->p(Lcom/estrongs/android/pop/app/compress/l;)I

    move-result v0

    if-ne v0, v8, :cond_1a

    :cond_15
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->q(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    :goto_7
    :try_start_8
    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;Ljava/util/Set;)V
    :try_end_8
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/bt;->b()V

    goto/16 :goto_3

    :cond_16
    :try_start_9
    const-string v1, "NOT_SUPPORTED_ENC_ALG_STRENGTH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "NOT_SUPPORTED_ENC_ALG"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0236

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_17
    const-string v1, "not a WinZip AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0235

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_18
    const-string v1, "FILENAME_CONFILCT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "FILENAME_CONFILCT"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0231

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_19
    const-string v1, "path_create_error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "path_create_error"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    goto/16 :goto_6

    :cond_1a
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->q(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1b
    :try_start_a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/util/List;)V

    :cond_1c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    invoke-static {}, Lcom/estrongs/fs/impl/h/b;->b()Lcom/estrongs/fs/impl/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/h/b;->a(Ljava/util/List;)V

    :cond_1d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/x;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->b()Lcom/estrongs/fs/impl/p/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/util/List;)V
    :try_end_a
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->j(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/h;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/io/archive/h;->g()V

    :cond_1e
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->p(Lcom/estrongs/android/pop/app/compress/l;)I

    move-result v1

    if-eq v1, v7, :cond_1f

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->p(Lcom/estrongs/android/pop/app/compress/l;)I

    move-result v1

    if-ne v1, v8, :cond_21

    :cond_1f
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/compress/l;->q(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->bp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    :goto_8
    :try_start_b
    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_20

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;Ljava/util/Set;)V
    :try_end_b
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_b .. :try_end_b} :catch_4

    :cond_20
    :goto_9
    throw v0

    :cond_21
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->q(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_22
    :try_start_c
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_23

    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/util/List;)V

    :cond_23
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    invoke-static {}, Lcom/estrongs/fs/impl/h/b;->b()Lcom/estrongs/fs/impl/h/b;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/impl/h/b;->a(Ljava/util/List;)V

    :cond_24
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/x;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_20

    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->b()Lcom/estrongs/fs/impl/p/b;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/x;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/util/List;)V
    :try_end_c
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_9

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/bt;->b()V

    goto :goto_9

    :cond_25
    move-object v0, v1

    goto/16 :goto_4
.end method
