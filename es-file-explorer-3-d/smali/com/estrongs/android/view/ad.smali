.class Lcom/estrongs/android/view/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/d/k;

.field final synthetic b:Lcom/estrongs/android/view/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ac;Lcom/estrongs/android/d/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ad;->b:Lcom/estrongs/android/view/ac;

    iput-object p2, p0, Lcom/estrongs/android/view/ad;->a:Lcom/estrongs/android/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/ad;->a:Lcom/estrongs/android/d/k;

    iget-object v0, v0, Lcom/estrongs/android/d/k;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/ad;->a:Lcom/estrongs/android/d/k;

    iget-object v1, v1, Lcom/estrongs/android/d/k;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ad;->a:Lcom/estrongs/android/d/k;

    iget-boolean v0, v0, Lcom/estrongs/android/d/k;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ad;->a:Lcom/estrongs/android/d/k;

    iget-object v0, v0, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/fs/g;

    invoke-static {v0}, Lcom/estrongs/android/d/d;->f(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ad;->a:Lcom/estrongs/android/d/k;

    iget-object v1, v1, Lcom/estrongs/android/d/k;->e:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method
