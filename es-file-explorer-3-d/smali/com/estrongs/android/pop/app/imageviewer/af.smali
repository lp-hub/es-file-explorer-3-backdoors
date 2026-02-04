.class Lcom/estrongs/android/pop/app/imageviewer/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ae;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/af;->a:Lcom/estrongs/android/pop/app/imageviewer/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/af;->a:Lcom/estrongs/android/pop/app/imageviewer/ae;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ae;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-string v0, ""

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/af;->a:Lcom/estrongs/android/pop/app/imageviewer/ae;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ae;->d:Landroid/view/View;

    const v2, 0x7f08021e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/af;->a:Lcom/estrongs/android/pop/app/imageviewer/ae;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ae;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/af;->a:Lcom/estrongs/android/pop/app/imageviewer/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ae;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/af;->a:Lcom/estrongs/android/pop/app/imageviewer/ae;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ae;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Landroid/view/View;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/app/Activity;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/af;->a:Lcom/estrongs/android/pop/app/imageviewer/ae;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ae;->c:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method
