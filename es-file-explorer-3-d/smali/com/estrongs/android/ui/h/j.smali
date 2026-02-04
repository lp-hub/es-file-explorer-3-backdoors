.class Lcom/estrongs/android/ui/h/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/h/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/h/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/h/j;->a:Lcom/estrongs/android/ui/h/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/h/j;->a:Lcom/estrongs/android/ui/h/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/h/h;->f(Lcom/estrongs/android/ui/h/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/h/j;->a:Lcom/estrongs/android/ui/h/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/h/h;->d(Lcom/estrongs/android/ui/h/h;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/h/j;->a:Lcom/estrongs/android/ui/h/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/h/h;->g(Lcom/estrongs/android/ui/h/h;)V

    goto :goto_0
.end method
