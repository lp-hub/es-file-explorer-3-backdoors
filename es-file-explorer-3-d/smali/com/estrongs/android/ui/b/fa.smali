.class Lcom/estrongs/android/ui/b/fa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/ui/b/ey;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/ey;Lcom/estrongs/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/fa;->a:Lcom/estrongs/a/a;

    iput-object p3, p0, Lcom/estrongs/android/ui/b/fa;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const v3, 0x7f0b000f

    const-wide/16 v7, 0x0

    const v6, 0x7f0b0040

    const/16 v5, 0x8

    const v4, 0x7f0b0310

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->k(Lcom/estrongs/android/ui/b/ew;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->l(Lcom/estrongs/android/ui/b/ew;)J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ew;->d()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->f(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/android/view/af;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/view/af;->c:Lcom/estrongs/a/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/i;

    invoke-interface {v0, v1, v2}, Lcom/estrongs/a/a/h;->a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/i;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->j(Lcom/estrongs/android/ui/b/ew;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/fb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/fb;-><init>(Lcom/estrongs/android/ui/b/fa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/i;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/fa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/i;

    iget-wide v0, v0, Lcom/estrongs/a/a/i;->d:J

    cmp-long v0, v0, v7

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/i;

    iget-wide v0, v0, Lcom/estrongs/a/a/i;->f:J

    cmp-long v0, v0, v7

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->f(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/android/view/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/af;->c()V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/i;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/b/fc;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/b/fc;-><init>(Lcom/estrongs/android/ui/b/fa;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/ew;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/b/fd;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/b/fd;-><init>(Lcom/estrongs/android/ui/b/fa;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/ew;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_2
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->f(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/android/view/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/af;->b()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/y;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0011

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0011

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/o;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    const v3, 0x7f0b000e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/at;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0145

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/g;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    const v3, 0x7f0b02f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0118

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->f(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/android/view/af;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/estrongs/android/view/af;->d(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->f(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/android/view/af;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/estrongs/android/view/af;->e(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->f(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/android/view/af;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/estrongs/android/view/af;->c(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/b/fe;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/b/fe;-><init>(Lcom/estrongs/android/ui/b/fa;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/ew;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2
.end method
