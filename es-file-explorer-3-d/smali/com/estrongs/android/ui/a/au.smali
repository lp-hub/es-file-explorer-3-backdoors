.class Lcom/estrongs/android/ui/a/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/at;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/at;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/au;->a:Lcom/estrongs/android/ui/a/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/au;->a:Lcom/estrongs/android/ui/a/at;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/at;->b:Lcom/estrongs/android/ui/a/as;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/as;->a:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v1, 0x7f0b01df

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
