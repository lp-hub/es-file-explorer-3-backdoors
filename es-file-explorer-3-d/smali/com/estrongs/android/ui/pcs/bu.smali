.class Lcom/estrongs/android/ui/pcs/bu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/bt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/bu;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bu;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->a(Lcom/estrongs/android/ui/pcs/bt;)Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
