.class Lcom/estrongs/android/widget/ba;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/az;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/az;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    invoke-static {v0}, Lcom/estrongs/android/widget/az;->a(Lcom/estrongs/android/widget/az;)J

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    iget-object v0, v0, Lcom/estrongs/android/widget/az;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    iget-object v1, v1, Lcom/estrongs/android/widget/az;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    invoke-static {v0}, Lcom/estrongs/android/widget/az;->b(Lcom/estrongs/android/widget/az;)Lcom/estrongs/android/widget/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    iget-object v1, v1, Lcom/estrongs/android/widget/az;->b:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    iget-object v2, v2, Lcom/estrongs/android/widget/az;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    iget-wide v3, v3, Lcom/estrongs/android/widget/az;->h:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/estrongs/android/widget/bd;->a(Landroid/widget/ProgressBar;Landroid/widget/TextView;J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    invoke-static {v0}, Lcom/estrongs/android/widget/az;->b(Lcom/estrongs/android/widget/az;)Lcom/estrongs/android/widget/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    iget-object v1, v1, Lcom/estrongs/android/widget/az;->b:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    iget-object v2, v2, Lcom/estrongs/android/widget/az;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    iget-wide v3, v3, Lcom/estrongs/android/widget/az;->i:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/estrongs/android/widget/bd;->b(Landroid/widget/ProgressBar;Landroid/widget/TextView;J)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    iget-wide v0, v0, Lcom/estrongs/android/widget/az;->i:J

    long-to-double v0, v0

    iget-object v2, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    iget-wide v2, v2, Lcom/estrongs/android/widget/az;->h:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    iget-object v2, v2, Lcom/estrongs/android/widget/az;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/widget/ba;->a:Lcom/estrongs/android/widget/az;

    iget-object v3, v3, Lcom/estrongs/android/widget/az;->f:Ljava/text/NumberFormat;

    invoke-virtual {v3, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
