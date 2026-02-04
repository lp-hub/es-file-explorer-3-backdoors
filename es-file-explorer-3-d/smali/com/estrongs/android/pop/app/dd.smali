.class Lcom/estrongs/android/pop/app/dd;
.super Lcom/estrongs/android/ui/d/b;


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dd;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/dd;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/ui/d/b;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/estrongs/android/pop/app/de;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dd;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/de;-><init>(Lcom/estrongs/android/pop/app/dd;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/dd;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    sget-boolean v0, Lcom/estrongs/android/pop/m;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dd;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/dd;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dd;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dd;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/estrongs/android/pop/app/df;

    invoke-direct {v0, p0, v5}, Lcom/estrongs/android/pop/app/df;-><init>(Lcom/estrongs/android/pop/app/dd;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/dd;->a(Lcom/estrongs/android/ui/d/d;)V

    new-instance v0, Lcom/estrongs/android/pop/app/dg;

    invoke-direct {v0, p0, v5}, Lcom/estrongs/android/pop/app/dg;-><init>(Lcom/estrongs/android/pop/app/dd;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/dd;->a(Lcom/estrongs/android/ui/d/d;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/dd;->e(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dd;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dd;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/widget/RealViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(I)V

    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
