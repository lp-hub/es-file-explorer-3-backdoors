.class Lcom/estrongs/android/widget/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/widget/j;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/j;

    iput-object p2, p0, Lcom/estrongs/android/widget/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/widget/k;->b:Lcom/estrongs/android/widget/j;

    iget-object v0, v0, Lcom/estrongs/android/widget/j;->b:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->c(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/k;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
