.class Lcom/estrongs/android/ui/view/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/IndicatorView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/IndicatorView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ai;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ai;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/IndicatorView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x15

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ai;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/IndicatorView;->e(Lcom/estrongs/android/ui/view/IndicatorView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ai;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/IndicatorView;->d(Lcom/estrongs/android/ui/view/IndicatorView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ai;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v2, v1}, Lcom/estrongs/android/ui/view/IndicatorView;->a(Lcom/estrongs/android/ui/view/IndicatorView;I)I

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/view/ai;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/IndicatorView;->invalidate()V

    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x16

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ai;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/IndicatorView;->e(Lcom/estrongs/android/ui/view/IndicatorView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ai;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/IndicatorView;->d(Lcom/estrongs/android/ui/view/IndicatorView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ai;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v2, v1}, Lcom/estrongs/android/ui/view/IndicatorView;->a(Lcom/estrongs/android/ui/view/IndicatorView;I)I

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/view/ai;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/IndicatorView;->invalidate()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
