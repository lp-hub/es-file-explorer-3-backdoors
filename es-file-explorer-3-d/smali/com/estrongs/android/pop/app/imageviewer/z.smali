.class Lcom/estrongs/android/pop/app/imageviewer/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/al;

.field final synthetic b:Z

.field final synthetic c:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;Lcom/estrongs/android/pop/app/imageviewer/al;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->c:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->a:Lcom/estrongs/android/pop/app/imageviewer/al;

    iput-boolean p3, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->c:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->a:Lcom/estrongs/android/pop/app/imageviewer/al;

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(Lcom/estrongs/android/pop/app/imageviewer/al;Z)V

    return-void
.end method
