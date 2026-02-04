.class Lcom/estrongs/android/ui/h/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/h/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/h/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/h/l;->a:Lcom/estrongs/android/ui/h/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/h/l;->a:Lcom/estrongs/android/ui/h/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/h/h;->i(Lcom/estrongs/android/ui/h/h;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/h/l;->a:Lcom/estrongs/android/ui/h/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/h/h;->h(Lcom/estrongs/android/ui/h/h;)Lcom/estrongs/android/ui/h/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/h/l;->a:Lcom/estrongs/android/ui/h/h;

    invoke-static {v1}, Lcom/estrongs/android/ui/h/h;->e(Lcom/estrongs/android/ui/h/h;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/h/c;->g(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
