.class Lcom/estrongs/android/ui/b/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/c/b;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/at;

.field private b:J


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/at;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/b/au;->a:Lcom/estrongs/android/ui/b/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/ui/b/au;->b:J

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 5

    iget-wide v0, p0, Lcom/estrongs/android/ui/b/au;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/ui/b/au;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/ui/b/au;->b:J

    iget-object v0, p0, Lcom/estrongs/android/ui/b/au;->a:Lcom/estrongs/android/ui/b/at;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/b/au;->a:Lcom/estrongs/android/ui/b/at;

    iget-object v4, v4, Lcom/estrongs/android/ui/b/at;->a:Lcom/estrongs/fs/c/a;

    invoke-virtual {v4}, Lcom/estrongs/fs/c/a;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/estrongs/android/ui/b/au;->a:Lcom/estrongs/android/ui/b/at;

    iget-object v3, v3, Lcom/estrongs/android/ui/b/at;->a:Lcom/estrongs/fs/c/a;

    invoke-virtual {v3}, Lcom/estrongs/fs/c/a;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/at;->a(Lcom/estrongs/android/ui/b/at;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
