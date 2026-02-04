.class Lcom/estrongs/fs/b/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/h;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/ad;->a:Lcom/estrongs/fs/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/i;)V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->a:Lcom/estrongs/fs/b/ac;

    iget-wide v0, v0, Lcom/estrongs/fs/b/ac;->g:J

    iget-wide v2, p2, Lcom/estrongs/a/a/i;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->a:Lcom/estrongs/fs/b/ac;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p2, Lcom/estrongs/a/a/i;->d:J

    iget-object v5, p0, Lcom/estrongs/fs/b/ad;->a:Lcom/estrongs/fs/b/ac;

    iget-wide v5, v5, Lcom/estrongs/fs/b/ac;->g:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p2, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v0, v7, v1}, Lcom/estrongs/fs/b/ac;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ad;->a:Lcom/estrongs/fs/b/ac;

    iget-wide v1, p2, Lcom/estrongs/a/a/i;->d:J

    iput-wide v1, v0, Lcom/estrongs/fs/b/ac;->g:J

    :cond_0
    return-void
.end method
