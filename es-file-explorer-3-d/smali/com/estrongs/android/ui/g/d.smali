.class Lcom/estrongs/android/ui/g/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/g/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/g/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/g/d;->a:Lcom/estrongs/android/ui/g/c;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/g/d;->a:Lcom/estrongs/android/ui/g/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/g/c;->a(Lcom/estrongs/android/ui/g/c;)Lcom/estrongs/android/ui/a/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/ce;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/ui/g/d;->a:Lcom/estrongs/android/ui/g/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/c;->g()V

    return-void
.end method
