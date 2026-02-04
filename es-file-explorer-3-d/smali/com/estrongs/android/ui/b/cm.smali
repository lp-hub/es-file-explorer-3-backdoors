.class Lcom/estrongs/android/ui/b/cm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/cl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/cl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/cm;->a:Lcom/estrongs/android/ui/b/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cm;->a:Lcom/estrongs/android/ui/b/cl;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/cl;->f:Lcom/estrongs/android/ui/b/cf;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/cf;->d(Lcom/estrongs/android/ui/b/cf;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cm;->a:Lcom/estrongs/android/ui/b/cl;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/cl;->f:Lcom/estrongs/android/ui/b/cf;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/cf;->d(Lcom/estrongs/android/ui/b/cf;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0045

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/estrongs/android/a/t;->a()V

    return-void
.end method
