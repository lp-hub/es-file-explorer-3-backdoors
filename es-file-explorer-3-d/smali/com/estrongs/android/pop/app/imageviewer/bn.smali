.class Lcom/estrongs/android/pop/app/imageviewer/bn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/a;->b(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->b()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->d(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/o;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const v3, 0x7f0b01b4

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
