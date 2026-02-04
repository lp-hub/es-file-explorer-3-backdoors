.class Lcom/estrongs/android/pop/app/imageviewer/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/p;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/p;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/q;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/q;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/q;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/p;->a:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/q;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/p;->c:Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/o;->a(Lcom/estrongs/android/pop/app/imageviewer/o;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/q;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/q;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/p;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/q;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/p;->c:Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/o;->b(Lcom/estrongs/android/pop/app/imageviewer/o;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/q;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/p;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
