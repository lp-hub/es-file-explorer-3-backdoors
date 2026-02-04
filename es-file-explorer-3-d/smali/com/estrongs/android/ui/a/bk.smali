.class Lcom/estrongs/android/ui/a/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bk;->a:Lcom/estrongs/android/ui/a/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bk;->a:Lcom/estrongs/android/ui/a/bj;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bj;->c:Lcom/estrongs/android/ui/a/bi;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bi;->d:Lcom/estrongs/android/ui/a/s;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/s;->notifyDataSetChanged()V

    return-void
.end method
