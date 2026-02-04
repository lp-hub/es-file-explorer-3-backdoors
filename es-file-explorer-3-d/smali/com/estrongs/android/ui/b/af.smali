.class Lcom/estrongs/android/ui/b/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/h;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/y;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/af;->a:Lcom/estrongs/android/ui/b/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/i;)V
    .locals 7

    const-wide/16 v2, 0x0

    iget-wide v0, p2, Lcom/estrongs/a/a/i;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p2, Lcom/estrongs/a/a/i;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/af;->a:Lcom/estrongs/android/ui/b/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/b/af;->a:Lcom/estrongs/android/ui/b/y;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/y;->d(Lcom/estrongs/android/ui/b/y;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b048d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/af;->a:Lcom/estrongs/android/ui/b/y;

    iget-wide v3, p2, Lcom/estrongs/a/a/i;->h:J

    iget-wide v5, p2, Lcom/estrongs/a/a/i;->e:J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/estrongs/android/ui/b/y;->a(Lcom/estrongs/android/ui/b/y;JJ)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/b/y;->a(Lcom/estrongs/android/ui/b/y;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
