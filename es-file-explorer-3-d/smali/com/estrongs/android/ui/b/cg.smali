.class Lcom/estrongs/android/ui/b/cg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/cf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/cg;->a:Lcom/estrongs/android/ui/b/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cg;->a:Lcom/estrongs/android/ui/b/cf;

    invoke-static {v0, p2}, Lcom/estrongs/android/ui/b/cf;->a(Lcom/estrongs/android/ui/b/cf;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cg;->a:Lcom/estrongs/android/ui/b/cf;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/cf;->c(Lcom/estrongs/android/ui/b/cf;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cg;->a:Lcom/estrongs/android/ui/b/cf;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/cf;->a(Lcom/estrongs/android/ui/b/cf;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/cg;->a:Lcom/estrongs/android/ui/b/cf;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/cf;->b(Lcom/estrongs/android/ui/b/cf;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
