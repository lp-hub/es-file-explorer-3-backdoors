.class Lcom/estrongs/android/ui/b/bp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/bk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/bp;->a:Lcom/estrongs/android/ui/b/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bp;->a:Lcom/estrongs/android/ui/b/bk;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/bk;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/b/bp;->a:Lcom/estrongs/android/ui/b/bk;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/bk;->d(Lcom/estrongs/android/ui/b/bk;)Lcom/estrongs/android/ui/b/dm;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/android/ui/b/dm;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/bp;->a:Lcom/estrongs/android/ui/b/bk;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/bk;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/bp;->a:Lcom/estrongs/android/ui/b/bk;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/bk;->d(Lcom/estrongs/android/ui/b/bk;)Lcom/estrongs/android/ui/b/dm;

    move-result-object v2

    iget v2, v2, Lcom/estrongs/android/ui/b/dm;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/bp;->a:Lcom/estrongs/android/ui/b/bk;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/bk;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bp;->a:Lcom/estrongs/android/ui/b/bk;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bp;->a:Lcom/estrongs/android/ui/b/bk;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/bk;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/bp;->a:Lcom/estrongs/android/ui/b/bk;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/bk;->d(Lcom/estrongs/android/ui/b/bk;)Lcom/estrongs/android/ui/b/dm;

    move-result-object v2

    iget-wide v2, v2, Lcom/estrongs/android/ui/b/dm;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/ui/b/bk;->a(Lcom/estrongs/android/ui/b/bk;Landroid/widget/TextView;J)V

    return-void
.end method
