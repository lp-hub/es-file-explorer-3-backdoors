.class Lcom/estrongs/android/view/bd;
.super Lcom/estrongs/android/util/n;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/android/view/ar;

    invoke-direct {p0, p2}, Lcom/estrongs/android/util/n;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->e:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    :goto_0
    if-gt v2, v3, :cond_0

    iget-object v4, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/android/view/ar;

    iget-boolean v4, v4, Lcom/estrongs/android/view/ar;->R:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/android/view/ar;

    iget-boolean v4, v4, Lcom/estrongs/android/view/ar;->P:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/estrongs/android/util/n;->g:Z

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/android/view/ar;

    iget v4, v4, Lcom/estrongs/android/view/ar;->S:I

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/android/view/ar;

    iget v5, v5, Lcom/estrongs/android/view/ar;->T:I

    add-int/2addr v5, v2

    if-lez v4, :cond_2

    iget-object v6, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/android/view/ar;

    iget v6, v6, Lcom/estrongs/android/view/ar;->S:I

    if-ge v4, v6, :cond_2

    iget-object v6, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/android/view/ar;

    invoke-virtual {v6, v4}, Lcom/estrongs/android/view/ar;->k(I)Lcom/estrongs/fs/g;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/av;->G(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v4}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v4}, Lcom/estrongs/android/d/d;->b(Lcom/estrongs/fs/g;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v4}, Lcom/estrongs/android/d/d;->e(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/android/view/ar;

    iget v4, v4, Lcom/estrongs/android/view/ar;->T:I

    if-le v5, v4, :cond_3

    if-ge v5, v3, :cond_3

    iget-object v4, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/android/view/ar;

    invoke-virtual {v4, v5}, Lcom/estrongs/android/view/ar;->k(I)Lcom/estrongs/fs/g;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/av;->G(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v4}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Lcom/estrongs/android/d/d;->b(Lcom/estrongs/fs/g;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Lcom/estrongs/android/d/d;->e(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/android/view/ar;

    iget v6, v6, Lcom/estrongs/android/view/ar;->U:I

    if-ge v0, v6, :cond_2

    invoke-static {v4}, Lcom/estrongs/android/d/d;->c(Lcom/estrongs/fs/g;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Lcom/estrongs/android/d/d;->b(Lcom/estrongs/fs/g;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Lcom/estrongs/android/d/d;->e(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/android/view/ar;

    iget v5, v5, Lcom/estrongs/android/view/ar;->U:I

    if-ge v1, v5, :cond_3

    invoke-static {v4}, Lcom/estrongs/android/d/d;->c(Lcom/estrongs/fs/g;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/estrongs/android/d/d;->b(Lcom/estrongs/fs/g;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/estrongs/android/d/d;->e(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
