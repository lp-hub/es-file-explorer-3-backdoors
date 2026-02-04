.class Lcom/estrongs/android/pop/view/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/v;

.field final synthetic b:Lcom/estrongs/android/pop/view/at;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/at;Lcom/estrongs/android/ui/pcs/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/av;->b:Lcom/estrongs/android/pop/view/at;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/av;->a:Lcom/estrongs/android/ui/pcs/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/av;->b:Lcom/estrongs/android/pop/view/at;

    const v2, 0x7f0b0493

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/view/at;->a(Lcom/estrongs/android/pop/view/at;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/av;->b:Lcom/estrongs/android/pop/view/at;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/av;->a:Lcom/estrongs/android/ui/pcs/v;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/at;->a(Lcom/estrongs/android/pop/view/at;Lcom/estrongs/android/ui/pcs/v;)V

    return-void
.end method
