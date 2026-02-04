.class Lcom/estrongs/android/ui/b/dj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/util/n;

.field final synthetic b:Lcom/estrongs/android/ui/b/df;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/df;Lcom/estrongs/android/util/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/dj;->b:Lcom/estrongs/android/ui/b/df;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/dj;->a:Lcom/estrongs/android/util/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dj;->a:Lcom/estrongs/android/util/n;

    invoke-virtual {v0}, Lcom/estrongs/android/util/n;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dj;->a:Lcom/estrongs/android/util/n;

    invoke-virtual {v0}, Lcom/estrongs/android/util/n;->a()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
