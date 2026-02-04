.class Lcom/estrongs/fs/b/p;
.super Ljava/lang/Thread;


# instance fields
.field a:I

.field b:J

.field final synthetic c:Lcom/estrongs/fs/b/o;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/o;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/fs/b/p;->c:Lcom/estrongs/fs/b/o;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/estrongs/fs/b/p;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/fs/b/p;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/b/p;->c:Lcom/estrongs/fs/b/o;

    invoke-static {v0}, Lcom/estrongs/fs/b/o;->a(Lcom/estrongs/fs/b/o;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget v0, p0, Lcom/estrongs/fs/b/p;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-wide v0, p0, Lcom/estrongs/fs/b/p;->b:J

    iget-object v2, p0, Lcom/estrongs/fs/b/p;->c:Lcom/estrongs/fs/b/o;

    iget-object v2, v2, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v2, Lcom/estrongs/a/a/i;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/p;->c:Lcom/estrongs/fs/b/o;

    iget-object v0, v0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iget-wide v0, v0, Lcom/estrongs/a/a/i;->d:J

    iput-wide v0, p0, Lcom/estrongs/fs/b/p;->b:J

    iget-object v0, p0, Lcom/estrongs/fs/b/p;->c:Lcom/estrongs/fs/b/o;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/o;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/p;->c:Lcom/estrongs/fs/b/o;

    iget-object v1, p0, Lcom/estrongs/fs/b/p;->c:Lcom/estrongs/fs/b/o;

    iget-object v1, v1, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    invoke-static {v0, v1}, Lcom/estrongs/fs/b/o;->a(Lcom/estrongs/fs/b/o;Lcom/estrongs/a/a/i;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
