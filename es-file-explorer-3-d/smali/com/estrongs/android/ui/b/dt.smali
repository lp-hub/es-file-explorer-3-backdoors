.class Lcom/estrongs/android/ui/b/dt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/dn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/dn;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/dt;->a:Lcom/estrongs/android/ui/b/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dt;->a:Lcom/estrongs/android/ui/b/dn;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dt;->a:Lcom/estrongs/android/ui/b/dn;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/dn;->j(Lcom/estrongs/android/ui/b/dn;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dt;->a:Lcom/estrongs/android/ui/b/dn;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/dn;->k(Lcom/estrongs/android/ui/b/dn;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dt;->a:Lcom/estrongs/android/ui/b/dn;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/dn;->i(Lcom/estrongs/android/ui/b/dn;)Lcom/estrongs/android/ui/b/dm;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/android/ui/b/dm;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/dt;->a:Lcom/estrongs/android/ui/b/dn;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dt;->a:Lcom/estrongs/android/ui/b/dn;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/dn;->l(Lcom/estrongs/android/ui/b/dn;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/dt;->a:Lcom/estrongs/android/ui/b/dn;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/dn;->i(Lcom/estrongs/android/ui/b/dn;)Lcom/estrongs/android/ui/b/dm;

    move-result-object v2

    iget-wide v2, v2, Lcom/estrongs/android/ui/b/dm;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/ui/b/dn;->a(Lcom/estrongs/android/ui/b/dn;Landroid/widget/TextView;J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dt;->a:Lcom/estrongs/android/ui/b/dn;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/dn;->i(Lcom/estrongs/android/ui/b/dn;)Lcom/estrongs/android/ui/b/dm;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/android/ui/b/dm;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dt;->a:Lcom/estrongs/android/ui/b/dn;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/dn;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dt;->a:Lcom/estrongs/android/ui/b/dn;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/dn;->i(Lcom/estrongs/android/ui/b/dn;)Lcom/estrongs/android/ui/b/dm;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/android/ui/b/dm;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dt;->a:Lcom/estrongs/android/ui/b/dn;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/dn;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dt;->a:Lcom/estrongs/android/ui/b/dn;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/dn;->k(Lcom/estrongs/android/ui/b/dn;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
