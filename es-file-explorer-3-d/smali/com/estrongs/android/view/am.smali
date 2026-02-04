.class Lcom/estrongs/android/view/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/i;

.field final synthetic b:Lcom/estrongs/android/view/ah;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ah;Lcom/estrongs/a/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/am;->b:Lcom/estrongs/android/view/ah;

    iput-object p2, p0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/am;->b:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->l(Lcom/estrongs/android/view/af;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/am;->b:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->b(Lcom/estrongs/android/view/af;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/am;->b:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->b(Lcom/estrongs/android/view/af;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/am;->b:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->o(Lcom/estrongs/android/view/af;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/a/a/i;

    iget-boolean v0, v0, Lcom/estrongs/a/a/i;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/am;->b:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->o(Lcom/estrongs/android/view/af;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/am;->b:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->b(Lcom/estrongs/android/view/af;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/a/a/i;

    iget-boolean v0, v0, Lcom/estrongs/a/a/i;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/a/a/i;

    iget-boolean v0, v0, Lcom/estrongs/a/a/i;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/am;->b:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->w(Lcom/estrongs/android/view/af;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/am;->b:Lcom/estrongs/android/view/ah;

    iget-object v1, v1, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    iget-object v2, p0, Lcom/estrongs/android/view/am;->b:Lcom/estrongs/android/view/ah;

    iget-object v2, v2, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v2}, Lcom/estrongs/android/view/af;->c(Lcom/estrongs/android/view/af;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/a/a/i;

    iget-wide v4, v4, Lcom/estrongs/a/a/i;->f:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/a/a/i;

    iget v4, v4, Lcom/estrongs/a/a/i;->b:I

    invoke-static {v1, v2, v3, v4}, Lcom/estrongs/android/view/af;->a(Lcom/estrongs/android/view/af;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/am;->b:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->x(Lcom/estrongs/android/view/af;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/am;->b:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->B(Lcom/estrongs/android/view/af;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/a/a/i;

    iget v2, v2, Lcom/estrongs/a/a/i;->b:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
