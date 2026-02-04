.class Lcom/estrongs/android/ui/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/g/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/g/b;->a:Lcom/estrongs/android/ui/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/ax;->c()Lcom/estrongs/android/util/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ax;->f()V

    invoke-static {}, Lcom/estrongs/android/util/ax;->c()Lcom/estrongs/android/util/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ax;->g()V

    invoke-static {}, Lcom/estrongs/android/util/ax;->c()Lcom/estrongs/android/util/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ax;->d()V

    iget-object v0, p0, Lcom/estrongs/android/ui/g/b;->a:Lcom/estrongs/android/ui/g/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/g/a;->a(Lcom/estrongs/android/ui/g/a;)Lcom/estrongs/android/ui/a/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/ce;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/ui/g/b;->a:Lcom/estrongs/android/ui/g/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/a;->g()V

    return-void
.end method
