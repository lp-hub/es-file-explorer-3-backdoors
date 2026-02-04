.class Lcom/estrongs/android/pop/app/b/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/z;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/z;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/z;->c:Lcom/estrongs/android/pop/app/b/w;

    invoke-static {v0, p2}, Lcom/estrongs/android/pop/app/b/w;->a(Lcom/estrongs/android/pop/app/b/w;I)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/z;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/z;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/z;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/b/z;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/z;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/b/z;->c:Lcom/estrongs/android/pop/app/b/w;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/w;->a(Lcom/estrongs/android/pop/app/b/w;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
