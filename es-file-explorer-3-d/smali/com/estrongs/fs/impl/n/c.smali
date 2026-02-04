.class Lcom/estrongs/fs/impl/n/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/fs/impl/n/a;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/n/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/n/c;->b:Lcom/estrongs/fs/impl/n/a;

    iput-object p2, p0, Lcom/estrongs/fs/impl/n/c;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/impl/n/c;->b:Lcom/estrongs/fs/impl/n/a;

    invoke-static {v0}, Lcom/estrongs/fs/impl/n/a;->b(Lcom/estrongs/fs/impl/n/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/n/c;->b:Lcom/estrongs/fs/impl/n/a;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/n/a;->f()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/impl/n/c;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/estrongs/fs/impl/n/c;->b:Lcom/estrongs/fs/impl/n/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/impl/n/a;->c(Ljava/util/List;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
