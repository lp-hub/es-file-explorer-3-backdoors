.class Lcom/estrongs/android/pop/view/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/av;


# instance fields
.field a:I

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/j;->a:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/estrongs/android/util/aw;->a(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/ar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/view/ar;)Lcom/estrongs/android/view/ar;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/ui/e/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/w;->c(Z)V

    return-void
.end method

.method public a(IF)V
    .locals 6

    const v4, 0x38d1b717    # 1.0E-4f

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v2, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/ui/e/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/w;->c(Z)V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/ui/d/e;->c()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    cmpl-float v0, v2, v4

    if-lez v0, :cond_1

    cmpl-float v0, p2, v5

    if-ltz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    rem-int/2addr v0, v3

    move v1, v0

    :goto_1
    cmpg-float v0, p2, v5

    if-gez v0, :cond_4

    add-int/lit8 v0, p1, 0x1

    rem-int/2addr v0, v3

    :goto_2
    iget-object v3, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n:Lcom/estrongs/android/ui/d/b;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    invoke-virtual {v3, p1, v4}, Lcom/estrongs/android/ui/d/b;->a(IF)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n:Lcom/estrongs/android/ui/d/b;

    invoke-virtual {v3, v1, v2}, Lcom/estrongs/android/ui/d/b;->a(IF)V

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n:Lcom/estrongs/android/ui/d/b;

    invoke-virtual {v1, v0, v5}, Lcom/estrongs/android/ui/d/b;->a(IF)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p1, -0x1

    add-int/2addr v0, v3

    rem-int/2addr v0, v3

    move v1, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, p1, -0x1

    add-int/2addr v0, v3

    rem-int/2addr v0, v3

    goto :goto_2
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/ui/e/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/w;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n:Lcom/estrongs/android/ui/d/b;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/d/b;->e(I)V

    return-void
.end method

.method public c(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->a()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n:Lcom/estrongs/android/ui/d/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n:Lcom/estrongs/android/ui/d/b;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/d/b;->d(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput p1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ltz p1, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->c()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/ui/d/e;->c(I)Lcom/estrongs/android/ui/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/d;->b()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/pop/view/k;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/k;-><init>(Lcom/estrongs/android/pop/view/j;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->C(Lcom/estrongs/android/pop/view/FileExplorerActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->D(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/view/ar;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->D(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/view/ar;

    move-result-object v1

    if-eq v1, v0, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->D(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/view/ar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/view/ar;->b_()V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->D(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/view/ar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/view/ar;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->D(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/view/ar;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/estrongs/android/view/ar;->a(Z)V

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/view/ar;)Lcom/estrongs/android/view/ar;

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O:Lcom/estrongs/android/view/br;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/estrongs/android/view/br;->a(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0800b1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->F()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->l()V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/estrongs/android/pop/app/b/a;->a()Lcom/estrongs/android/pop/app/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/a;->c()V

    :cond_7
    const-string v0, "edit_mode"

    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    :cond_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v4, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Z

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Z

    if-eqz v0, :cond_6

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v4, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Z

    goto :goto_2
.end method

.method public d(I)V
    .locals 0

    return-void
.end method
