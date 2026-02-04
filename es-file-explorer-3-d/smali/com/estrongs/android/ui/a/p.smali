.class Lcom/estrongs/android/ui/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/a/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/o;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/p;->b:Lcom/estrongs/android/ui/a/o;

    iput p2, p0, Lcom/estrongs/android/ui/a/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/p;->b:Lcom/estrongs/android/ui/a/o;

    iget v1, p0, Lcom/estrongs/android/ui/a/p;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/o;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/guesture/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/p;->b:Lcom/estrongs/android/ui/a/o;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/o;->a(Lcom/estrongs/android/ui/a/o;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/p;->b:Lcom/estrongs/android/ui/a/o;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/o;->a(Lcom/estrongs/android/ui/a/o;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b041c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/p;->b:Lcom/estrongs/android/ui/a/o;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/o;->notifyDataSetChanged()V

    return-void
.end method
