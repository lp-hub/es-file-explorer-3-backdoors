.class Lcom/estrongs/android/ui/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/q;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/q;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/r;->a:Lcom/estrongs/android/ui/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/r;->a:Lcom/estrongs/android/ui/a/q;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/q;->b:Lcom/estrongs/android/ui/a/o;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/o;->notifyDataSetChanged()V

    return-void
.end method
