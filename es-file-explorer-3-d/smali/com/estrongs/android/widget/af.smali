.class Lcom/estrongs/android/widget/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ab;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const-wide/16 v10, 0x1f4

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    invoke-static {v0}, Lcom/estrongs/android/widget/ab;->e(Lcom/estrongs/android/widget/ab;)Lcom/estrongs/android/widget/RealViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->h()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    iget-object v0, v0, Lcom/estrongs/android/widget/ab;->e:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_0

    iget-object v9, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lcom/estrongs/android/widget/ab;->e:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    iget-object v0, v0, Lcom/estrongs/android/widget/ab;->e:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v9, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lcom/estrongs/android/widget/ab;->f:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    iget-object v0, v0, Lcom/estrongs/android/widget/ab;->f:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    invoke-static {v0}, Lcom/estrongs/android/widget/ab;->e(Lcom/estrongs/android/widget/ab;)Lcom/estrongs/android/widget/RealViewSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    iget-object v1, v1, Lcom/estrongs/android/widget/ab;->e:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    invoke-static {v0}, Lcom/estrongs/android/widget/ab;->e(Lcom/estrongs/android/widget/ab;)Lcom/estrongs/android/widget/RealViewSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    iget-object v1, v1, Lcom/estrongs/android/widget/ab;->f:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    iget-object v0, v0, Lcom/estrongs/android/widget/ab;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    invoke-static {v1}, Lcom/estrongs/android/widget/ab;->f(Lcom/estrongs/android/widget/ab;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f02003b

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    iget-object v0, v0, Lcom/estrongs/android/widget/ab;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    invoke-static {v1}, Lcom/estrongs/android/widget/ab;->g(Lcom/estrongs/android/widget/ab;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ab;

    invoke-static {v0}, Lcom/estrongs/android/widget/ab;->e(Lcom/estrongs/android/widget/ab;)Lcom/estrongs/android/widget/RealViewSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(I)V

    :cond_1
    return-void
.end method
