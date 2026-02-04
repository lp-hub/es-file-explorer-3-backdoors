.class Lcom/estrongs/android/pop/app/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/bx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/bx;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ca;->a:Lcom/estrongs/android/pop/app/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ca;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bx;->f:Lcom/estrongs/android/pop/app/bw;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/bw;->b(Lcom/estrongs/android/pop/app/bw;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ca;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bx;->e:Landroid/view/View;

    const v1, 0x7f0801f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ca;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bx;->f:Lcom/estrongs/android/pop/app/bw;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ca;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/bx;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ca;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/bx;->f:Lcom/estrongs/android/pop/app/bw;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/bw;->b(Lcom/estrongs/android/pop/app/bw;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/bw;->a(Lcom/estrongs/android/pop/app/bw;Landroid/view/View;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ca;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bx;->f:Lcom/estrongs/android/pop/app/bw;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/bw;->notifyDataSetChanged()V

    goto :goto_0
.end method
