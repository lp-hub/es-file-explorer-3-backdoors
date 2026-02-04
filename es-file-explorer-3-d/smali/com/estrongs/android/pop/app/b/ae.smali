.class Lcom/estrongs/android/pop/app/b/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/ae;->a:Lcom/estrongs/android/pop/app/b/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/ae;->a:Lcom/estrongs/android/pop/app/b/w;

    iget-object v1, v0, Lcom/estrongs/android/pop/app/b/w;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/ae;->a:Lcom/estrongs/android/pop/app/b/w;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/w;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/ae;->a:Lcom/estrongs/android/pop/app/b/w;

    iget v2, v2, Lcom/estrongs/android/pop/app/b/w;->h:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/ae;->a:Lcom/estrongs/android/pop/app/b/w;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/ae;->a:Lcom/estrongs/android/pop/app/b/w;

    iget v1, v1, Lcom/estrongs/android/pop/app/b/w;->h:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/ae;->a:Lcom/estrongs/android/pop/app/b/w;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/b/w;->g:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/b/w;->a(ILjava/lang/Object;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
