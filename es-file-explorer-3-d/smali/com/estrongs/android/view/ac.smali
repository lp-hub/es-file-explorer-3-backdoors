.class Lcom/estrongs/android/view/ac;
.super Lcom/estrongs/android/d/i;


# instance fields
.field b:I

.field final synthetic c:Lcom/estrongs/android/view/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/x;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/ac;->c:Lcom/estrongs/android/view/x;

    invoke-direct {p0, p2}, Lcom/estrongs/android/d/i;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/ac;->b:I

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/d/k;)Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->c:Lcom/estrongs/android/view/x;

    iget-object v0, v0, Lcom/estrongs/android/view/x;->e:Lcom/estrongs/android/view/n;

    invoke-virtual {v0}, Lcom/estrongs/android/view/n;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/ac;->a()V

    iget-object v1, p0, Lcom/estrongs/android/view/ac;->c:Lcom/estrongs/android/view/x;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/estrongs/android/view/x;->f:Lcom/estrongs/android/d/i;

    :cond_0
    return v0
.end method

.method public b(Lcom/estrongs/android/d/k;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/ac;->a(Lcom/estrongs/android/d/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/view/ac;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/view/ac;->b:I

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->c:Lcom/estrongs/android/view/x;

    iget-object v0, v0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/view/ad;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/view/ad;-><init>(Lcom/estrongs/android/view/ac;Lcom/estrongs/android/d/k;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v0, p1, Lcom/estrongs/android/d/k;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/fs/g;

    invoke-static {v0}, Lcom/estrongs/android/d/d;->f(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/d/k;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    iget v0, p0, Lcom/estrongs/android/view/ac;->b:I

    iget-object v1, p0, Lcom/estrongs/android/view/ac;->c:Lcom/estrongs/android/view/x;

    iget-object v1, v1, Lcom/estrongs/android/view/x;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/view/ac;->a()V

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->c:Lcom/estrongs/android/view/x;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/view/x;->f:Lcom/estrongs/android/d/i;

    :cond_2
    return v2
.end method
