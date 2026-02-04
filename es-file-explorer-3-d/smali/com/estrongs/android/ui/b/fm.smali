.class Lcom/estrongs/android/ui/b/fm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/ew;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/ew;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/fm;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fm;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/notification/e;->b(J)Lcom/estrongs/a/a;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fm;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fm;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/fm;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    const v2, 0x7f0b007f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fm;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->d(Lcom/estrongs/android/ui/b/ew;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fm;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->e(Lcom/estrongs/android/ui/b/ew;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fm;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->f(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/android/view/af;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/af;->c(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fm;->a:Lcom/estrongs/android/ui/b/ew;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fm;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->execute()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fm;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fm;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/fm;->a:Lcom/estrongs/android/ui/b/ew;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    const v2, 0x7f0b007e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
