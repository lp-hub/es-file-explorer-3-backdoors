.class Lcom/estrongs/android/view/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ah;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ak;->a:Lcom/estrongs/android/view/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->a:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->z(Lcom/estrongs/android/view/af;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->a:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->l(Lcom/estrongs/android/view/af;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->a:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->b(Lcom/estrongs/android/view/af;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->a:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->b(Lcom/estrongs/android/view/af;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->a:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->o(Lcom/estrongs/android/view/af;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->a:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->A(Lcom/estrongs/android/view/af;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0316

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
