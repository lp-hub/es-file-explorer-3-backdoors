.class Lcom/estrongs/android/ui/b/fx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/b/fw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/fw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/fx;->b:Lcom/estrongs/android/ui/b/fw;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/fx;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fx;->b:Lcom/estrongs/android/ui/b/fw;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/fw;->a:Lcom/estrongs/android/ui/b/fr;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/fr;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/fx;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
