.class Lcom/estrongs/android/ui/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/e;->a:Lcom/estrongs/android/ui/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/util/b;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/e;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/b;->e(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/e;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/b;->f(Lcom/estrongs/android/ui/view/b;)I

    move-result v2

    new-instance v3, Lcom/estrongs/android/ui/view/f;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/view/f;-><init>(Lcom/estrongs/android/ui/view/e;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/util/b;-><init>(Landroid/content/Context;ILcom/estrongs/android/util/f;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/b;->a()V

    return-void
.end method
