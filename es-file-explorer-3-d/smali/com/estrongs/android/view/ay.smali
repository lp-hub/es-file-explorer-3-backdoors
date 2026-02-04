.class Lcom/estrongs/android/view/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/i;

.field final synthetic b:Lcom/estrongs/android/view/ax;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ax;Lcom/estrongs/a/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ay;->b:Lcom/estrongs/android/view/ax;

    iput-object p2, p0, Lcom/estrongs/android/view/ay;->a:Lcom/estrongs/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/ay;->b:Lcom/estrongs/android/view/ax;

    iget-object v0, v0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->U()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ay;->b:Lcom/estrongs/android/view/ax;

    iget-object v0, v0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/ar;

    iget-boolean v0, v0, Lcom/estrongs/android/view/ar;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ay;->b:Lcom/estrongs/android/view/ax;

    iget-object v0, v0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/ar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/view/ay;->b:Lcom/estrongs/android/view/ax;

    iget-object v2, v2, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/ar;

    iget-object v3, p0, Lcom/estrongs/android/view/ay;->b:Lcom/estrongs/android/view/ax;

    iget-object v3, v3, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/ar;

    invoke-virtual {v3}, Lcom/estrongs/android/view/ar;->W()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/ar;->n(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/ay;->a:Lcom/estrongs/a/a/i;

    iget-wide v2, v2, Lcom/estrongs/a/a/i;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/ay;->a:Lcom/estrongs/a/a/i;

    iget-wide v2, v2, Lcom/estrongs/a/a/i;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
