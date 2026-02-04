.class Lcom/estrongs/android/ui/f/m;
.super Lcom/estrongs/android/ui/e/gq;


# instance fields
.field final synthetic g:Lcom/estrongs/android/ui/f/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/f/f;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/f/m;->g:Lcom/estrongs/android/ui/f/f;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/ui/e/gq;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/f/m;->g:Lcom/estrongs/android/ui/f/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/f/m;->g:Lcom/estrongs/android/ui/f/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/f/f;->a(Z)V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/e/gq;->d()V

    return-void
.end method
