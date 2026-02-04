.class Lcom/estrongs/android/ui/b/ge;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/ga;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/ga;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ge;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ge;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ga;->k(Lcom/estrongs/android/ui/b/ga;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/b/ge;->a:Lcom/estrongs/android/ui/b/ga;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ge;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ga;->l(Lcom/estrongs/android/ui/b/ga;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/estrongs/android/ui/b/ga;->a(Lcom/estrongs/android/ui/b/ga;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ge;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ga;->l(Lcom/estrongs/android/ui/b/ga;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ge;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ga;->m(Lcom/estrongs/android/ui/b/ga;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ge;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ga;->m(Lcom/estrongs/android/ui/b/ga;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
