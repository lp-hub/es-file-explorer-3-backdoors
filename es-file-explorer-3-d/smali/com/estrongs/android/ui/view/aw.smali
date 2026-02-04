.class Lcom/estrongs/android/ui/view/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/av;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/av;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/aw;->a:Lcom/estrongs/android/ui/view/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aw;->a:Lcom/estrongs/android/ui/view/av;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/av;->a:Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/estrongs/android/ui/view/aw;->a:Lcom/estrongs/android/ui/view/av;

    iget-object v2, v2, Lcom/estrongs/android/ui/view/av;->a:Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;II)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
