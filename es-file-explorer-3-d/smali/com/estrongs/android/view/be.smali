.class Lcom/estrongs/android/view/be;
.super Lcom/estrongs/android/d/i;


# instance fields
.field final synthetic b:Lcom/estrongs/android/view/ar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/be;->b:Lcom/estrongs/android/view/ar;

    invoke-direct {p0}, Lcom/estrongs/android/d/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/d/k;)Z
    .locals 2

    iget-object v0, p1, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/fs/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/be;->b:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/android/d/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/estrongs/android/d/k;->b:I

    iget-object v1, p0, Lcom/estrongs/android/view/be;->b:Lcom/estrongs/android/view/ar;

    iget v1, v1, Lcom/estrongs/android/view/ar;->S:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/estrongs/android/d/k;->b:I

    iget-object v1, p0, Lcom/estrongs/android/view/be;->b:Lcom/estrongs/android/view/ar;

    iget v1, v1, Lcom/estrongs/android/view/ar;->T:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/estrongs/android/d/k;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/be;->a(Lcom/estrongs/android/d/k;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/be;->b:Lcom/estrongs/android/view/ar;

    invoke-static {v0}, Lcom/estrongs/android/view/ar;->d(Lcom/estrongs/android/view/ar;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/view/bf;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/view/bf;-><init>(Lcom/estrongs/android/view/be;Lcom/estrongs/android/d/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p1, Lcom/estrongs/android/d/k;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/estrongs/android/d/k;->d:Lcom/estrongs/fs/g;

    invoke-static {v1}, Lcom/estrongs/android/d/d;->f(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/d/k;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method
