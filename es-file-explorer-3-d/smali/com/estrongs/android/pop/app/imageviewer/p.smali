.class Lcom/estrongs/android/pop/app/imageviewer/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/t;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/estrongs/android/pop/app/imageviewer/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/o;ILandroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/p;->c:Lcom/estrongs/android/pop/app/imageviewer/o;

    iput p2, p0, Lcom/estrongs/android/pop/app/imageviewer/p;->a:I

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/p;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/graphics/Bitmap;)V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/p;->a:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/p;->c:Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/o;->a(Lcom/estrongs/android/pop/app/imageviewer/o;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/p;->c:Lcom/estrongs/android/pop/app/imageviewer/o;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/o;->b:Lcom/estrongs/android/pop/app/imageviewer/n;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/q;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/pop/app/imageviewer/q;-><init>(Lcom/estrongs/android/pop/app/imageviewer/p;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/n;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
