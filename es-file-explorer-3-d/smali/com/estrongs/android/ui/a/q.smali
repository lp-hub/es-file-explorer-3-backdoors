.class Lcom/estrongs/android/ui/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/a/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/o;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/q;->b:Lcom/estrongs/android/ui/a/o;

    iput p2, p0, Lcom/estrongs/android/ui/a/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/q;->b:Lcom/estrongs/android/ui/a/o;

    iget v1, p0, Lcom/estrongs/android/ui/a/q;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/o;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/cd;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/q;->b:Lcom/estrongs/android/ui/a/o;

    invoke-static {v2}, Lcom/estrongs/android/ui/a/o;->a(Lcom/estrongs/android/ui/a/o;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/b/cd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/ui/a/r;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/r;-><init>(Lcom/estrongs/android/ui/a/q;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/cd;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/cd;->a()V

    return-void
.end method
