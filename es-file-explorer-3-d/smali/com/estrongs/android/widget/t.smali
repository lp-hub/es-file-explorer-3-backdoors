.class Lcom/estrongs/android/widget/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/br;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/android/widget/t;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "storage://"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->d(Lcom/estrongs/android/widget/g;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->e(Lcom/estrongs/android/widget/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->f(Lcom/estrongs/android/widget/g;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->f(Lcom/estrongs/android/widget/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->g(Lcom/estrongs/android/widget/g;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->g(Lcom/estrongs/android/widget/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/widget/g;->a(Lcom/estrongs/android/widget/g;Lcom/estrongs/fs/g;)Lcom/estrongs/fs/g;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->h(Lcom/estrongs/android/widget/g;)Lcom/estrongs/fs/g;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/g;->a(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v1, v0}, Lcom/estrongs/android/widget/g;->a(Lcom/estrongs/android/widget/g;Lcom/estrongs/fs/g;)Lcom/estrongs/fs/g;

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->h(Lcom/estrongs/android/widget/g;)Lcom/estrongs/fs/g;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->i(Lcom/estrongs/android/widget/g;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v1}, Lcom/estrongs/android/widget/g;->h(Lcom/estrongs/android/widget/g;)Lcom/estrongs/fs/g;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/d/d;->e(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->j(Lcom/estrongs/android/widget/g;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->b(Lcom/estrongs/android/widget/g;)Lcom/estrongs/android/view/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->M()Lcom/estrongs/fs/c/a/a;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->c(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/q;->p(Ljava/lang/String;)Lcom/estrongs/fs/c/a/a;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/widget/g;->a(Lcom/estrongs/android/widget/g;Lcom/estrongs/fs/c/a/a;)Lcom/estrongs/fs/c/a/a;

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->b(Lcom/estrongs/android/widget/g;)Lcom/estrongs/android/view/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v1}, Lcom/estrongs/android/widget/g;->k(Lcom/estrongs/android/widget/g;)Lcom/estrongs/fs/c/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/c/a/a;)V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0, p1}, Lcom/estrongs/android/widget/g;->a(Lcom/estrongs/android/widget/g;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->d(Lcom/estrongs/android/widget/g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->e(Lcom/estrongs/android/widget/g;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->f(Lcom/estrongs/android/widget/g;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->f(Lcom/estrongs/android/widget/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->g(Lcom/estrongs/android/widget/g;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->g(Lcom/estrongs/android/widget/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
