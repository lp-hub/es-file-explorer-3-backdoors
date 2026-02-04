.class Lcom/estrongs/android/view/bf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/d/k;

.field final synthetic b:Lcom/estrongs/android/view/be;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/be;Lcom/estrongs/android/d/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bf;->b:Lcom/estrongs/android/view/be;

    iput-object p2, p0, Lcom/estrongs/android/view/bf;->a:Lcom/estrongs/android/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/bf;->a:Lcom/estrongs/android/d/k;

    iget-object v0, v0, Lcom/estrongs/android/d/k;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/bf;->a:Lcom/estrongs/android/d/k;

    iget-object v1, v1, Lcom/estrongs/android/d/k;->e:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bf;->b:Lcom/estrongs/android/view/be;

    iget-object v0, v0, Lcom/estrongs/android/view/be;->b:Lcom/estrongs/android/view/ar;

    iget-object v1, p0, Lcom/estrongs/android/view/bf;->a:Lcom/estrongs/android/d/k;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->b(Lcom/estrongs/android/d/k;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bf;->a:Lcom/estrongs/android/d/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/bf;->a:Lcom/estrongs/android/d/k;

    iget-object v0, v0, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/fs/g;

    invoke-static {v0}, Lcom/estrongs/fs/c/d;->c(Lcom/estrongs/fs/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/bf;->b:Lcom/estrongs/android/view/be;

    iget-object v0, v0, Lcom/estrongs/android/view/be;->b:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/view/bf;->a:Lcom/estrongs/android/d/k;

    iget-object v0, v0, Lcom/estrongs/android/d/k;->f:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/bf;->a:Lcom/estrongs/android/d/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bf;->a:Lcom/estrongs/android/d/k;

    iget-object v0, v0, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->isLink()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bf;->b:Lcom/estrongs/android/view/be;

    iget-object v0, v0, Lcom/estrongs/android/view/be;->b:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/view/bf;->a:Lcom/estrongs/android/d/k;

    iget-object v0, v0, Lcom/estrongs/android/d/k;->f:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
