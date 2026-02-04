.class Lcom/estrongs/android/pop/app/imageviewer/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

.field final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/au;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/au;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/o;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v4, v4, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v4, v4, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/o;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/imageviewer/gallery/f;)V

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/app/imageviewer/o;)Lcom/estrongs/android/pop/app/imageviewer/o;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/o;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/n;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/o;->a(Lcom/estrongs/android/pop/app/imageviewer/n;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 v1, 0x42a80000    # 84.0f

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/o;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/app/imageviewer/o;->b(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->j(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Lcom/estrongs/android/pop/app/imageviewer/au;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->j(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setSelection(I)V

    goto/16 :goto_0
.end method
