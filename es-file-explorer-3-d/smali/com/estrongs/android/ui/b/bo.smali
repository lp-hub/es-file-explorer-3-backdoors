.class Lcom/estrongs/android/ui/b/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/h;


# instance fields
.field a:J

.field final synthetic b:Lcom/estrongs/android/ui/b/bk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/bk;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/b/bo;->b:Lcom/estrongs/android/ui/b/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/ui/b/bo;->a:J

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/i;)V
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/ui/b/bo;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/ui/b/bo;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/ui/b/bo;->a:J

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bo;->b:Lcom/estrongs/android/ui/b/bk;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/bk;->b(Lcom/estrongs/android/ui/b/bk;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bo;->b:Lcom/estrongs/android/ui/b/bk;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/bk;->c(Lcom/estrongs/android/ui/b/bk;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/b/bo;->b:Lcom/estrongs/android/ui/b/bk;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bo;->b:Lcom/estrongs/android/ui/b/bk;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/bk;->d(Lcom/estrongs/android/ui/b/bk;)Lcom/estrongs/android/ui/b/dm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/dm;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/bk;->a(Lcom/estrongs/android/ui/b/bk;Ljava/util/List;)V

    goto :goto_0
.end method
