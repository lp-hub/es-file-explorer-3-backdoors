.class Lcom/estrongs/android/ui/b/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/bh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/bh;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/bj;->a:Lcom/estrongs/android/ui/b/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bj;->a:Lcom/estrongs/android/ui/b/bh;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/bh;->a(Lcom/estrongs/android/ui/b/bh;)Lcom/estrongs/android/ui/b/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/bk;->b()V

    return-void
.end method
