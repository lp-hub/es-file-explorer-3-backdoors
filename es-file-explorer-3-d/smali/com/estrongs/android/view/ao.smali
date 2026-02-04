.class Lcom/estrongs/android/view/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/f;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/an;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/an;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ao;->a:Lcom/estrongs/android/view/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ao;->a:Lcom/estrongs/android/view/an;

    iget-object v0, v0, Lcom/estrongs/android/view/an;->p:Lcom/estrongs/android/ui/drag/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ao;->a:Lcom/estrongs/android/view/an;

    iget-object v0, v0, Lcom/estrongs/android/view/an;->p:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ao;->a:Lcom/estrongs/android/view/an;

    iget-object v0, v0, Lcom/estrongs/android/view/an;->p:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/d;->b()V

    iget-object v0, p0, Lcom/estrongs/android/view/ao;->a:Lcom/estrongs/android/view/an;

    invoke-virtual {v0}, Lcom/estrongs/android/view/an;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ao;->a:Lcom/estrongs/android/view/an;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/an;->d(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
