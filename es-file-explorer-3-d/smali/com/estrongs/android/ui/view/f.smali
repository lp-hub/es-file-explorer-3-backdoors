.class Lcom/estrongs/android/ui/view/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/f;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/f;->a:Lcom/estrongs/android/ui/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/f;->a:Lcom/estrongs/android/ui/view/e;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/e;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v0, p3}, Lcom/estrongs/android/ui/view/b;->a(Lcom/estrongs/android/ui/view/b;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/f;->a:Lcom/estrongs/android/ui/view/e;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/e;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/b;->g(Lcom/estrongs/android/ui/view/b;)Landroid/widget/Button;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/util/g;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/f;->a:Lcom/estrongs/android/ui/view/e;

    iget-object v2, v2, Lcom/estrongs/android/ui/view/e;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/b;->f(Lcom/estrongs/android/ui/view/b;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
